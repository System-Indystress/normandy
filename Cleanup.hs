module Cleanup where
import Data.List as L
import Data.List.Split as Sp
import qualified Data.Text as T
import qualified System.Directory as D
import Control.Monad (mapM)

template :: String -> String -> String -> String
template cat cl body = concat $
  ["module Language.Thesaurus.RogetLite." ++ upper cat ++ " where \n"
  ,"import Language.Thesaurus\n"
  , lower cat ++ " :: ThProg\n"
  , lower cat ++ " = [thesaurus|\n"
  , "# " ++ upper cl ++ "\n"
  , "## " ++ upper cat ++ "\n"
  , body ++ "\n"
  , "|]\n"
  ]
    where
      upper = T.unpack . T.toUpper . T.pack
      lower = T.unpack . T.toLower . T.pack

cleanAll :: String -> IO ()
cleanAll dir =
  let makeFile (file,str)
       | ".hs" `L.isSuffixOf` file = return ()
       | otherwise =
           do
             let [cat,cl] = Sp.splitOn "_" file
             writeFile (dir ++ "/" ++ cat ++ ".hs") (template cat cl str)
  in
    do
      files <- D.getDirectoryContents dir
      let files' = filter (/= ".") files
      let files'' = filter (/= "..") files'
      let files''' = map ((dir ++ "/") ++) files''
      strs <- mapM clean files'''
      mapM makeFile (zip files strs)
      return ()

clean :: String -> IO (String)
clean file = do
  text <- readFile file
  return $ (ws . starLine . (square False) . noun . verb . adj . adv . semi  . (paren False) . redund . dot ) text

noun :: String -> String
noun [] = []
noun s@(h:t) = case L.stripPrefix "[Nouns]" s of
           Just rest -> "noun:\n*" ++ (noun rest)
           Nothing   -> h : (noun t)

verb :: String -> String
verb [] = []
verb s@(h:t) = case L.stripPrefix "[Verbs]" s of
          Just rest -> "verb:\n*" ++ (verb rest)
          Nothing   -> h : (verb t)

adj :: String -> String
adj [] = []
adj s@(h:t) = case L.stripPrefix "[Adjectives]" s of
           Just rest -> "adj:\n*" ++ (adj rest)
           Nothing   -> h : (adj t)

adv :: String -> String
adv [] = []
adv s@(h:t) = case L.stripPrefix "[Adverbs]" s of
          Just rest -> "adv:\n*" ++ (adv rest)
          Nothing   -> h : (adv t)

semi :: String -> String
semi [] = []
semi (';':rest) = ',' : (semi rest)
semi (h:t) = h : (semi t)

square :: Bool -> String -> String
square _ [] = []
square _ ('[':rest) = square True rest
square _ (']':rest) = square False rest
square True (_:rest) = square True rest
square False (h:t) = h : (square False t)

paren :: Bool -> String -> String
paren _ [] = []
paren _ ('(':rest) = paren True rest
paren _ (')':rest) = paren False rest
paren True (_:rest) = paren True rest
paren False (h:t) = h : (paren False t)

dot :: String -> String
dot [] = []
dot ('.':'\n':rest) = "\n*" ++ dot rest
dot (h:t) = h : (dot t)

redund :: String -> String
redund [] = []
redund ('*':'[':rest) = '[' : (redund rest)
redund (h:t) = h : (redund t)

starLine :: String -> String
starLine [] = []
starLine ('*':rest) =
  let (word, rest') = takeUntilComma rest ""
  in "*" ++ word ++ "\n" ++ (starLine rest')
starLine (h:t) = h : (starLine t)


takeUntilComma :: String -> String -> (String,String)
takeUntilComma (',':rest) acc = (acc,rest)
takeUntilComma [] acc = (acc,[])
takeUntilComma (a:rest) acc = takeUntilComma rest (acc ++ [a])

ws :: String -> String
ws = (L.dropWhileEnd (\a -> a == '*' || a == '\n' || a == ' '))
