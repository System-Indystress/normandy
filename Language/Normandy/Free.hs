module Language.Normandy.Free where

import Control.Monad.Free

import Language.Normandy.Parser as NP

import qualified Data.Text as T
import Data.Text (Text(..))
import qualified Data.Set as S
import Data.Set (Set(..))

data NFree a next = NTopicF Text next
                  | NOutlineF (Maybe Text) (Maybe Text) (Maybe Text) next
                  | NProseF a next
                  | NHoleF (Maybe next) next
                  | NCommentF Text next
                  | NIdeasF (Set Text) next

instance Functor (NFree a) where
  fmap f (NTopicF t n)          = NTopicF t           (f n)
  fmap f (NOutlineF ms ma mo n) = NOutlineF ms ma mo  (f n)
  fmap f (NProseF t n)          = NProseF t           (f n)
  fmap f (NHoleF Nothing n)     = NHoleF Nothing      (f n)
  fmap f (NHoleF (Just c) n)    = NHoleF (Just $ f c) (f n)
  fmap f (NCommentF t n)        = NCommentF t         (f n)
  fmap f (NIdeasF s n)          = NIdeasF s (f n)


type Story a = Free (NFree a) ()

parsedToFree :: NP.NVal -> Story Text
parsedToFree (NTopicV str)   = Free (NTopicF   (T.pack str) $ Pure ())
parsedToFree (NCommentV str) = Free (NCommentF (T.pack str) $ Pure ())
parsedToFree (NProseV str)   = Free (NProseF   (T.pack str) $ Pure ())
parsedToFree (NOutlineV ms ma mo) =
  let mp (Just str) = (Just . T.pack) str
      mp Nothing    = Nothing
  in  Free (NOutlineF (mp ms) (mp ma) (mp mo) $ Pure ())
parsedToFree (NHoleV (Just val)) = Free (NHoleF (Just $ parsedToFree val) $ Pure ())
parsedToFree (NHoleV Nothing) = Free (NHoleF Nothing $ Pure ())
parsedToFree (NIdeasV is) = Free (NIdeasF (S.map T.pack $ S.fromList is) $ Pure ())

-- %! Current Topic
topic :: String -> Story Text
topic = parsedToFree . NTopicV

-- %| a | b | c |
interaction :: String -> String -> String -> Story Text
interaction ag ac ob = parsedToFree $ NOutlineV (Just ag) (Just ac) (Just ob)

-- %| a | ? | ? |
subject :: String -> Story Text
subject ag = parsedToFree $ NOutlineV (Just ag) Nothing Nothing

-- %| a | b | ? |
action :: String -> String -> Story Text
action ag ac = parsedToFree $ NOutlineV (Just ag) (Just ac) Nothing

-- %|a | ? | c |
relation :: String -> String -> Story Text
relation ag ob = parsedToFree $ NOutlineV (Just ag) Nothing (Just ob)

-- lorem ipsum
prose :: String -> Story Text
prose = parsedToFree . NProseV

-- %???
hole :: Story Text
hole = parsedToFree $ NHoleV Nothing

-- %TODO Weak Topic
todo :: String -> Story Text
todo = parsedToFree . NHoleV . Just . NTopicV

-- % This is what some free form text not to be edited, can be used as flags
comment :: String -> Story Text
comment = parsedToFree . NCommentV

-- %{idea1, idea2, idea3}
ideas :: [String] -> Story Text
ideas = parsedToFree . NIdeasV
-- default interpretters and instances

prettyPrint :: Story Text -> String
prettyPrint (Free (NTopicF topic next)) =
  "%! " ++ T.unpack topic ++ "\n" ++ prettyPrint next
prettyPrint (Free (NOutlineF ms ma mo next)) =
  "%| " ++ munpack ms ++ " | " ++ munpack ma ++ " | " ++ munpack mo ++ " |\n" ++ prettyPrint next
  where
    munpack (Just txt) = T.unpack txt
    munpack Nothing = "?"
prettyPrint (Free (NProseF txt next)) =
  T.unpack txt ++ "\n" ++ prettyPrint next
prettyPrint (Free (NCommentF txt next)) =
  "%" ++ T.unpack txt ++ "\n" ++ prettyPrint next
prettyPrint (Free (NHoleF Nothing next)) =
  "%???\n" ++ prettyPrint next
prettyPrint (Free (NHoleF (Just nprog) next)) =
  "%TODO " ++ (unwords $ lines $ prettyPrint nprog) ++ "\n" ++ prettyPrint next
prettyPrint (Free (NIdeasF ideas next)) =
  let ideasList = S.toList ideas
      f txt acc = acc `T.append` txt `T.append` (T.pack ", ")
      ideasString = T.unpack $ 2 `T.dropEnd` (foldr f T.empty ideasList)
  in  "%{ " ++ ideasString ++ " }\n" ++ prettyPrint next
prettyPrint (Pure _) = ""
