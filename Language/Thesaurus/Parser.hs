{-#LANGUAGE TemplateHaskell, QuasiQuotes#-}
module Language.Thesaurus.Parser where
-- helpers
import qualified Data.List as L
import qualified Data.Char as C
-- syntax

import Language.Haskell.TH
import Language.Haskell.TH.Syntax
import Debug.Trace (trace)
-- parsec
import Text.ParserCombinators.Parsec
import qualified Text.Parsec.String     as PS
import qualified Text.Parsec.Prim       as PP
import qualified Text.Parsec.Token      as PT
import qualified Text.Parsec.Expr       as PE
import qualified Text.Parsec.Combinator as PC
import Text.ParserCombinators.Parsec.Language (haskellStyle, reservedOpNames, reservedNames)
import Text.ParserCombinators.Parsec.Pos      (newPos)
data ThExp = THCatClE String
           | THCatE String
           | NounE
           | VerbE
           | AdjE
           | AdvE
           | ClusKeyE String
           | ClusValsE [String]

sE :: String -> Exp
sE = LitE . StringL
instance Lift ThExp where
  -- lift :: ThExp -> Q Exp
  lift (THCatClE s) = [|THCatClE $(return $ sE s)|]
  lift (THCatE s) = [|THCatE $(return $ sE s)|]
  lift NounE = [|NounE |]
  lift VerbE = [|VerbE |]
  lift AdjE = [| AdjE|]
  lift AdvE = [|AdvE|]
  lift (ClusKeyE s) = [|ClusKeyE $(return $ sE s)|]
  lift (ClusValsE ss) = [|ClusValsE $(return $ ListE $ map sE ss)|]

------------------------------------------------------------------------------
-- Or-Try Combinator (tries two parsers, one after the other)
(<||>) a b = try a <|> try b

parseThesaurus :: SourceName -> Line -> Column -> String -> Either ParseError [ThExp]
parseThesaurus fileName line column input =
  PP.parse tExps fileName input
  where
    tExps = do {
      setPosition (newPos fileName line column)
    ; whiteSpaceOrComment
    ; x <- thExps
    ; whiteSpaceOrComment
    ; eof <|> errorParse
    ; return x
    }
    errorParse = do{
      rest <- manyTill anyToken eof
    ; unexpected rest }

thExps :: PS.Parser [ThExp]
thExps = many thExp

thExp :: PS.Parser ThExp
thExp = thCat <||> thClass <||> thNoun <||>
        thVerb <||> thAdj <||> thAdv <||>
        thKey <||> thWords
  where
    thClass = do
      whiteSpaceOrComment
      reservedOp "#"
      whiteSpace
      cl <- manyTill anyChar newline
      whiteSpaceOrComment
      return $ THCatClE cl
    thCat = do
      whiteSpaceOrComment
      reservedOp "##"
      whiteSpace
      cat <- manyTill anyChar newline
      whiteSpaceOrComment
      return $ THCatE cat
    thNoun = do
      whiteSpaceOrComment
      reserved "noun:"
      whiteSpaceOrComment
      return NounE
    thVerb = do
      whiteSpaceOrComment
      reserved "verb:"
      whiteSpaceOrComment
      return VerbE
    thAdj = do
      whiteSpaceOrComment
      reserved "adj:"
      whiteSpaceOrComment
      return AdjE
    thAdv = do
      whiteSpaceOrComment
      reserved "adv:"
      whiteSpaceOrComment
      return AdvE
    thKey = do
      whiteSpaceOrComment
      reservedOp "*"
      whiteSpace
      key <- line
      return $ ClusKeyE $ trim key
        where
          trim = L.dropWhileEnd C.isSpace . L.dropWhile C.isSpace
    thWords = do
      whiteSpaceOrComment
      ws <- commaSep1 entry
      whiteSpaceOrComment
      optional $ reservedOp ","
      optional newline
      whiteSpaceOrComment
      return $ ClusValsE  ws
      where
        entry = do
                  whiteSpaceOrComment
                  optional $ reservedOp ","
                  someTerm <- many1 $ satisfy (\c -> c /= '\n' && c /= ',')
                  return $ trim someTerm
        trim = L.dropWhileEnd C.isSpace . L.dropWhile C.isSpace
whiteSpaceOrComment = comment <||> whiteSpace
  where
    comment = do
      whiteSpace
      reservedOp "--"
      (manyTill anyChar $ try $ string "\n") <||> (manyTill anyChar $ try $ string "\r")
      return ()

line = many $ noneOf "\n"

------------------------------------------------------------------------------
-- Lexer
lexer :: PT.TokenParser ()
lexer = PT.makeTokenParser $ haskellStyle
  { reservedOpNames = ["#", "##","*",",",";"]
  , reservedNames   = ["noun:", "verb:", "adj:", "adv:"]
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
semiSep1      = PT.semiSep1    lexer
parens        = PT.parens      lexer
braces        = PT.braces      lexer
brackets      = PT.brackets    lexer


expr = PE.buildExpressionParser table term
       <?> "expression"
term = natural
       <?> "simple expression"
table = [ [prefix "-" negate, prefix "+" id ] ]
prefix   name fun = PE.Prefix $ reservedOp name >> return fun
