module Language.Normandy.Pass.Rhyme where

import Language.Normandy.Pass.Class
import Language.Normandy.Free
import Language.Thesaurus

import Control.Monad.Free
import Data.Monoid
import Data.List (isPrefixOf, isSuffixOf)
import qualified Data.Text as T
-- Parsec
import Text.ParserCombinators.Parsec
import qualified Text.Parsec.String     as PS
import qualified Text.Parsec.Prim       as PP
import qualified Text.Parsec.Token      as PT
import qualified Text.Parsec.Expr       as PE
import qualified Text.Parsec.Combinator as PC
import Text.ParserCombinators.Parsec.Language (haskellStyle, reservedOpNames, reservedNames)
import Text.ParserCombinators.Parsec.Pos      (newPos)
--

newtype SyllabicString = SylStr String [Phoneme]
instance Monoid SyllabicString where
  mempty = SylStr "" []
  mappend (SylStr s1 ps1) (SylStr s2 ps2) = SylStr (s1 `mappend` s2) (ps1 `mappend` ps2)
-- http://www.speech.cs.cmu.edu/cgi-bin/cmudict
--             Syl   e.g.
data Phoneme = AA -- odd
             | AE -- at
             | AH -- hut
             | AO -- ought
             | AW -- cow
             | AY -- hide
             | B  -- be
             | CH -- cheese
             | D  -- dee
             | DH -- thee
             | EH -- Ed
             | ER -- hurt
             | EY -- ate
             | F  -- fee
             | G  -- green
             | HH -- he
             | IH -- it
             | IY -- eat
             | JH -- gee
             | K  -- key
             | L  -- lee
             | M  -- me
             | N  -- knee
             | NG -- ping
             | OW -- oat
             | OY -- toy
             | P  -- plea
             | R  -- read
             | S  -- sea
             | SH -- she
             | T  -- tea
             | TH -- theta
             | UH -- hood
             | UW -- two
             | V  -- vee
             | W  -- we
             | Y  -- yield
             | Z  -- zee
             | ZH -- seizure
             | Space
             | Pause

data RhymeScheme =
  RS { liftRS  :: Story Text -> Story SyllabicString
     , lowerRS :: Story SyllabicString -> Story Text
     }
instance Pass RhymeScheme where
-- pass :: RhymeScheme -> Story Text -> Story Text
  pass (RS lRS loRS) = lRS . loRS


couplets = RS liftCouplet lowerCouplet
  where
    liftCouplet :: Story Text -> Story SyllabicString
    liftCouplet (Free (NProse p next)) = (Free (NProse (proseToSS $ T.unpack p) (liftCouplet next)))
    liftCouplet (Free prog) = (Free $ fmap (annotated tgr) prog)
    liftCouplet p = p
    lowerCouplet :: (Thesaurus a) => a -> Story SyllabicString -> Story Text
    lowerCouplet (Free (NProse p next)) = undefined
    lowerCouplet (Free prog) = (Free $ fmap (annotated tgr) prog)
    lowerCouplet p = p

proseToSS :: String -> SyllabicString
proseToSS s =
  case parseProse s of
    Left _ ->  SylStr s []
    Right ss -> ss


parseProse :: String -> Either ParseError SyllabicString
parseProse input =
  PP.parse result "prose" input
    where
      result = do
        whiteSpace
        x <- syls
        whiteSpace
        eof <|> errorParse
        return x
      errorParse = do
        rest <- manyTill anyToken eof
        unexpected rest

syls :: PS.Parser SyllabicString
syls = do
  sylstrs <- many syl
  return $ mconcat sylstrs

syl = ws <||> dot <||> bang <||> interro <||> other
  where
    ws = do
      whiteSpace
      return $ SylStr " " [Space]
    dot     = undefined
    bang    = undefined
    interro = undefined
    other   = undefined

------------------------------------------------------------------------------
-- Or-Try Combinator (tries two parsers, one after the other)
(<||>) a b = try a <|> try b
------------------------------------------------------------------------------
-- Lexer
lexer :: PT.TokenParser ()
lexer = PT.makeTokenParser $ haskellStyle
  { reservedOpNames = []
  , reservedNames   = []
  }

whiteSpace    = PT.whiteSpace  lexer
identifier    = PT.identifier  lexer
operator      = PT.operator    lexer
reserved      = PT.reserved    lexer
reservedOp    = PT.reservedOp  lexer
charLiteral   = PT.charLiteral lexer
stringLiteral = PT.stringLiteral  lexer
integer       = PT.integer     lexer
natural       = PT.natural     lexer
commaSep1     = PT.commaSep1   lexer
parens        = PT.parens      lexer
braces        = PT.braces      lexer
brackets      = PT.brackets    lexer


expr = PE.buildExpressionParser table term
       <?> "expression"
term = natural
       <?> "simple expression"
table = [ [prefix "-" negate, prefix "+" id ] ]
prefix   name fun = PE.Prefix $ reservedOp name >> return fun
