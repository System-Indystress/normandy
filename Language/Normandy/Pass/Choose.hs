module Language.Normandy.Pass.Choose where

import Language.Normandy.Free
import Language.Thesaurus
import Control.Monad.Free
import Data.Text (Text(..))
import qualified Data.Set as S
import qualified Data.Map as M
import Data.List ((!!))

chooseAnyTopic :: (Thesaurus t) => t -> (Int -> Int) -> Int -> Story Text -> Story Text
chooseAnyTopic th nextFn seed story@(Free (NHoleF Nothing next)) =
  let cls = classes th
  in case S.size cls of
       0 -> story
       n -> let cl       = S.elemAt (seed `mod` n) cls
                seed'    = nextFn seed
                cats     = toCats th cl
                (Cat c)  = S.elemAt (seed' `mod` S.size cats) cats
            in  (Free (NTopicF c $ chooseAnyTopic th nextFn (nextFn seed') next))
chooseAnyTopic th nextFn seed (Free rest) = (Free $ fmap (chooseAnyTopic th nextFn seed) rest)
chooseAnyTopic _ _ _ pur = pur

chooseAnyIdea :: (Thesaurus t) => t -> (Int -> Int) -> Int -> Story Text -> Story Text
chooseAnyIdea th nextFn seed story@(Free (NTopicF c next)) =
  let cs :: TextCluster
      cs = nouns th (Cat c)
  in case M.size cs of
       0 -> story
       n -> let key  = M.keys cs !! (seed `mod` n)
                val  = M.lookup key cs
                seed' = nextFn seed
                idea  = case val of
                          Just v  -> S.elemAt (seed' `mod` S.size v) v
                          Nothing -> key
                seed'' = nextFn seed'
            in  (Free (NTopicF c
                  (Free (NProseF idea $
                    chooseAnyIdea th nextFn seed' next))))
chooseAnyIdea th nextFn seed (Free rest) = (Free $ fmap (chooseAnyIdea th nextFn seed) rest)
chooseAnyIdea _ _ _ pur = pur
