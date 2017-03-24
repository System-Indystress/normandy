{-# LANGUAGE QuasiQuotes, TemplateHaskell #-}
module Language.Normandy.Quote
( normandy
) where

import Prelude hiding (exp, init)
import System.IO.Unsafe (unsafePerformIO)

import qualified Language.Haskell.TH as TH
import Language.Haskell.TH.Quote (QuasiQuoter(..))

import qualified Language.Normandy.Parser as NP
import qualified Language.Normandy.Free   as NF

import Control.Monad.Free

normandy :: QuasiQuoter
normandy = QuasiQuoter nparse
                     (error "parse pattern")
                     (error "parse type")
                     (error "parse expression")


--   parser in quasiquotation monad
nparse :: String -> TH.Q TH.Exp
nparse input = do
 -- TODO: replace bad error showing with
 --       debugging information (filename, line #, column) in parser
 loc <- TH.location
 let fileName = TH.loc_filename loc
 let (line,column) = TH.loc_start loc

 case NP.parseNormandy fileName line column input of
   Left err -> unsafePerformIO $ fail $ show err
   Right x  -> normandy_val x


normandy_val :: [NP.NVal] -> TH.Q TH.Exp
normandy_val ast = [| foldr ((>>) . NF.parsedToFree) (Pure ()) ast|]
