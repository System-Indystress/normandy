{-# LANGUAGE DeriveDataTypeable,TemplateHaskell,ScopedTypeVariables,KindSignatures #-}
module Language.Thesaurus.Quote
   (thesaurus)
    where

import Prelude hiding (exp, init)
import System.IO.Unsafe (unsafePerformIO)

import qualified Language.Haskell.TH as TH
import Language.Haskell.TH.Quote (QuasiQuoter(..))

import qualified Language.Thesaurus.Parser as TP
import qualified Language.Thesaurus.Free as TF
import qualified Text.Parsec.Prim   as PP
import Control.Monad.Free

-- Top-level QuasiQuoter
thesaurus :: QuasiQuoter
thesaurus = QuasiQuoter eparse
                     (error "parse pattern")
                     (error "parse type")
                     (error "parse expression")

--   parser in quasiquotation monad
eparse :: String -> TH.Q TH.Exp
eparse input = do
  -- TODO: replace bad error showing with
  --       debugging information (filename, line #, column) in parser
  loc <- TH.location
  let fileName = TH.loc_filename loc
  let (line,column) = TH.loc_start loc

  case TP.parseThesaurus fileName line column input of
    Left err -> unsafePerformIO $ fail $ show err
    Right x  -> thesaurus_exp x

thesaurus_exp :: [TP.ThExp] -> TH.Q TH.Exp
thesaurus_exp ast = [| foldr ((>>) . TF.parsedToFree) (Pure ()) ast|]
