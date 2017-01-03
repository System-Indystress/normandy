module Language.Normandy.Pass.POS where

import Language.Normandy.Free

import Control.Monad.Free

import Language.Normandy.Pass.Class
import Data.Text (Text(..))
-- chatter and other NLP libaries
import NLP.POS
import NLP.Types

-- annotate Normandy Program with Part of Speech information
annotated :: Tag t => POSTagger t -> Story Text -> Story Text
annotated tgr (Free (NProseF txt next)) = (Free (NProseF (tagText tgr txt) (annotated tgr next)))
annotated tgr (Free prog) = (Free $ fmap (annotated tgr) prog)
annotated tgr p = p
