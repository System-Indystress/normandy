module Language.Normandy.Pass.Choose where

import Language.Normandy.Free
import Language.Thesaurus
import Control.Monad.Free
import Data.Text (Text(..))
import qualified Data.Text as T
import qualified Data.Set as S
import qualified Data.Map as M
import Data.List ((!!))

chooseAnyTopic :: (Thesaurus t) => t -> (Int -> Int) -> Int -> Story Text -> Story Text
chooseAnyTopic th nextFn seed story@(Free (NHoleF Nothing next)) =
  let cls = classes th
      cats = S.foldr (\cl s -> toCats th cl `S.union` s) S.empty cls
  in case S.size cats of
       0 -> story
       n -> let (Cat c)  = S.elemAt (seed `mod` n) cats
            in  (Free (NTopicF [c] $ chooseAnyTopic th nextFn (nextFn seed) next))
chooseAnyTopic th nextFn seed (Free rest) = (Free $ fmap (chooseAnyTopic th nextFn seed) rest)
chooseAnyTopic _ _ _ pur = pur

chooseAnyIdea :: (Thesaurus t) => t -> (Int -> Int) -> Int -> Story Text -> Story Text
chooseAnyIdea = chooseNIdeas 1


chooseNIdeas :: (Thesaurus t) => Int -> t -> (Int -> Int) -> Int -> Story Text -> Story Text
chooseNIdeas n th nextFn seed story@(Free (NTopicF someTopics next)) =
  let
      someCats :: S.Set Category
      someCats = S.foldr
                  (\c acc -> Cat (T.toTitle c) `S.insert` indexes th (T.toLower c) `S.union` acc)
                   S.empty
                  (S.fromList someTopics)
      cs :: TextCluster
      cs = S.foldr M.union M.empty $ S.map (nouns th) someCats
  in case M.size cs of
       0 -> story
       m -> let seeds = take n $ iterate nextFn seed
                keys  = map (\s -> M.keys cs !! (s `mod` m)) seeds
                vals  = map (\key -> M.lookup key cs) keys
                seeds' = map nextFn seeds
                pairs = zip seeds' vals
                f (_, Nothing) acc = acc
                f (s', Just someNouns) acc = S.insert ((s' `mod` (S.size someNouns)) `S.elemAt` someNouns) acc
                ideas  = foldr f S.empty pairs
                seed'' = nextFn $ last seeds'
            in  case next of
                  (Free (NIdeasF ideas' next')) ->
                    (Free (NTopicF someTopics
                      (Free (NIdeasF (ideas `S.union` ideas') $
                        chooseNIdeas n th nextFn seed'' next'))))
                  _ ->
                    (Free (NTopicF someTopics
                      (Free (NIdeasF ideas $
                        chooseNIdeas n th nextFn seed'' next))))
chooseNIdeas n th nextFn seed (Free rest) = (Free $ fmap (chooseNIdeas n th nextFn seed) rest)
chooseNIdeas _ _ _ _ pur = pur
