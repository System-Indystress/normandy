{-#LANGUAGE QuasiQuotes, TemplateHaskell#-}
module Language.Normandy.Parser where
import Data.Text (Text(..))
import Data.Text as T
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
-- Debugging
import Debug.Trace (trace)
-- Syntax
data NVal = NTopicV [String]
          | NOutlineV (Maybe String) (Maybe String) (Maybe String)
          | NProseV String
          | NHoleV (Maybe NVal)
          | NCommentV String
          | NIdeasV [String]
          | NRegionV String (Maybe String)
  deriving (Show, Eq)

-- Parser
sE :: String -> Exp
sE = LitE . StringL

msE :: Maybe String -> Exp
msE Nothing = ConE $ mkName "Nothing"
msE (Just s) = AppE (ConE $ mkName "Just") (sE s)
instance Lift NVal where
  -- lift :: ThExp -> Q Exp
  lift (NTopicV s)             = [| NTopicV $(return $ ListE $ Prelude.map sE s) |]
  lift (NOutlineV ms1 ms2 ms3) = [| NOutlineV $(return $ msE ms1) $(return $ msE ms2) $(return $ msE ms3)|]
  lift (NProseV s)             = [| NProseV $(return $ sE s)|]
  lift (NHoleV Nothing)        = [| NHoleV Nothing |]
  lift (NHoleV (Just v))       = [| NHoleV (Just $(lift v)) |]
  lift (NCommentV s)           = [| NCommentV $(return $ sE s) |]
  lift (NIdeasV is)            = [| NIdeasV $(return $ ListE $ Prelude.map sE is) |]
  lift (NRegionV i annot)      = [| NRegionV $(return $ sE i) $(return $ msE annot) |]

------------------------------------------------------------------------------
-- Or-Try Combinator (tries two parsers, one after the other)
(<||>) a b = try a <|> try b

parseNormandy :: SourceName -> Line -> Column -> String -> Either ParseError [NVal]
parseNormandy fileName line column input =
  PP.parse result fileName input
  where
    result = do {
      setPosition (newPos fileName line column)
    ; whiteSpace
    ; x <- nVals
    ; whiteSpace
    ; eof <|> errorParse
    ; return x
    }
    errorParse = do{
      rest <- manyTill anyToken eof
    ; unexpected rest }



-- Parser combinators begin

nVals :: PS.Parser [NVal]
nVals = many nVal

nVal :: PS.Parser NVal
nVal = opVal <||> prose


opVal :: PS.Parser NVal
opVal = topic <||> outline <||> hole   <||>
        todo  <||> ideas   <||> region <||> comment

topic :: PS.Parser NVal
topic = do
  whiteSpace
  reservedOp "%!"
  whiteSpace
  str <- getTopics
  trace (show str) $ return $ NTopicV str
    where
      getTopics :: PS.Parser [String]
      getTopics = do {
        whiteSpace
      ; s <- manyTill anyToken (try $ do {optional whiteSpace; reservedOp "&"})
      ; rest <- getTopics
      ; return $ s : rest
      } <||> do {
        whiteSpace
      ; s <- manyTill anyToken nlOrEof
      ; return [Prelude.takeWhile (\c -> c /= '\n' && c /= '\r') s]
      }




outline :: PS.Parser NVal
outline = do
  whiteSpace
  reservedOp "%|"
  whiteSpace
  str1 <- manyTill anyChar $ reservedOp "|"
  whiteSpace
  str2 <- manyTill anyChar $ reservedOp "|"
  whiteSpace
  str3 <- manyTill anyChar $ reservedOp "|"
  whiteSpace
  return $ NOutlineV (check str1) (check str2) (check str3)
  where
    check "?" = Nothing
    check s   = Just s

hole :: PS.Parser NVal
hole = do
  whiteSpace
  reservedOp "%???"
  return $ NHoleV Nothing

todo :: PS.Parser NVal
todo = do
  whiteSpace
  reservedOp "%TODO"
  whiteSpace
  nval <- nVal
  return $ NHoleV $ Just nval

ideas :: PS.Parser NVal
ideas = do
  whiteSpace
  reservedOp "%{"
  whiteSpace
  is <- getIs
  whiteSpace
  return $ NIdeasV is
  where
    getIs = c <||> b
    c     = do
      whiteSpace
      i <- manyTill anyToken (reservedOp ",")
      whiteSpace
      rest <- getIs
      return $ i : rest
    b     = do
      i <- manyTill anyToken (reservedOp "}")
      return [i]
region :: PS.Parser NVal
region = do
  whiteSpace
  reservedOp "%<"
  whiteSpace
  someId <- manyTill anyToken (reservedOp ">")
  whiteSpace
  annotation <- manyTill anyToken nlOrEof
  let ma = case annotation of
             "" -> Nothing
             a  -> Just a
  return $ NRegionV someId ma

comment :: PS.Parser NVal
comment = do
  whiteSpace
  reservedOp "%"
  whiteSpace
  str <- manyTill anyToken nlOrEof
  return $ NCommentV str

prose :: PS.Parser NVal
prose = prose'' <||> prose'
  where
    prose' = do
      whiteSpace
      str <- many1 anyChar
      notFollowedBy anyToken
      return $ NProseV str
    prose'' = do
      whiteSpace
      str <- (manyTill anyChar $ lookAhead opVal)
      return $ NProseV str

-- Parser combinators end

whiteSpaceOrComment = comment <||> whiteSpace
  where
    comment = do
      whiteSpace
      reservedOp "--"
      (manyTill anyChar $ try $ string "\n") <||> (manyTill anyChar $ try $ string "\r")
      return ()
nlOrEof :: PS.Parser ()
nlOrEof = do
  v <- optionMaybe newline
  case v of
    Just _   -> return ()
    Nothing  -> eof
------------------------------------------------------------------------------
-- Lexer
lexer :: PT.TokenParser ()
lexer = PT.makeTokenParser $ haskellStyle
  { reservedOpNames = ["%|", "|","%!","%???", "%TODO", "%{", "}","%", "%<", ">", "&", ","]
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
commaSep      = PT.commaSep    lexer
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
