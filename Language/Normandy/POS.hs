module Language.Normandy.POS where

import Language.Normandy.Free

import Control.Monad.Free

-- chatter and other NLP libaries
import NLP.POS
import NLP.Types

-- annotate Normandy Program with Part of Speech information
annotated :: Tag t => POSTagger t -> NormProg -> NormProg
annotated tgr (Free (NProseF txt next)) = (Free (NProseF (tagText tgr txt) (annotated tgr next)))
annotated tgr (Free prog) = (Free $ fmap (annotated tgr) prog)
annotated tgr p = p
