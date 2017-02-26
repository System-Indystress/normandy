module Language.Normandy.Pass.Vocab where

-- Text, Set
import Data.Text (Text(..))
import qualified Data.Text as T
import Data.Set (Set(..))
import qualified Data.Set as S

-- Story
import Language.Normandy.Free
import Control.Monad.Free
-- Thesaurus
import Language.Thesaurus

swap :: (Thesaurus t) => t -> Text -> (t -> Text -> Set Category) -> (Set Text -> Text -> Text) -> Story Text -> Story Text
swap t word cFn fn (Free (NProseF txt next)) =
  let potential :: Set Text
      potential = S.foldr (\cat acc -> containing word (cFn t cat) `S.union` acc) S.empty (indexes t word)
      prose = T.unwords $ map (fn potential) $ T.words txt
  in Free (NProseF prose $ swapNoun t word fn next)
swap t word cFn fn (Free prog) = (Free $ fmap (swapNoun t word cFn fn) prog)
swap t word cFn fn p = p
