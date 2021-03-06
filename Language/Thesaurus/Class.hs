module Language.Thesaurus.Class where
import Data.Map (Map(..))
import Data.Map as Map
import Data.Text (Text(..))
import Data.Text as T
import Data.List as L
import qualified Data.Set as S
import Data.Set (Set(..))

type TextCluster = Map Text (Set Text)
containing :: Text -> TextCluster -> Set Text
containing word tc =
  let find aSet acc = if S.member word aSet then S.union acc aSet else acc
  in  Map.foldr find S.empty tc


class Thesaurus t where
  nouns    :: t -> Category -> TextCluster
  verbs    :: t -> Category -> TextCluster
  adjs     :: t -> Category -> TextCluster
  advs     :: t -> Category -> TextCluster
  toCats   :: t -> CatClass -> Set Category
  toClass  :: t -> Category -> Maybe CatClass
  classes  :: t -> Set CatClass
  indexes  :: t -> Text     -> Set Category
  combineT :: (Thesaurus t1) => t1 -> t -> DfltThesaurus
  combineT t1 t2 =
    DThes { dNouns = \c -> Map.union (nouns t1 c) (nouns t2 c)
          , dVerbs = \c -> Map.union (verbs t1 c) (verbs t2 c)
          , dAdjs  = \c -> Map.union (adjs  t1 c) (adjs  t2 c)
          , dAdvs  = \c -> Map.union (advs  t1 c) (advs  t2 c)
          , dToCats = \cl -> (toCats t1 cl) `S.union` (toCats t2 cl)
          , dToClass = \c -> (case (toClass t1 c) of
                               Nothing -> (toClass t2 c)
                               v       -> v)
          , dIndexes = \txt -> (indexes t1 txt) `S.union` (indexes t2 txt)
          , dClasses = classes t1 `S.union` classes t2
          }

catCl :: String -> CatClass
catCl = CatCl . T.pack

data CatClass = CatCl Text
  deriving (Show, Eq, Ord)

cat :: String -> Category
cat = Cat . T.pack
data Category = Cat Text
  deriving (Show, Eq, Ord)

data DfltThesaurus =
  DThes { dNouns   :: (Category -> TextCluster)
        , dVerbs   :: (Category -> TextCluster)
        , dAdjs    :: (Category -> TextCluster)
        , dAdvs    :: (Category -> TextCluster)
        , dToCats  :: (CatClass -> Set Category)
        , dToClass :: (Category -> Maybe CatClass)
        , dIndexes :: (Text     -> Set Category)
        , dClasses :: Set CatClass
        }

instance Thesaurus (DfltThesaurus) where
  nouns d = (dNouns d)
  verbs d = (dVerbs d)
  adjs  d = (dAdjs  d)
  advs  d = (dAdvs  d)
  toCats d = (dToCats d)
  toClass d = (dToClass d)
  indexes  d = (dIndexes d)
  classes d = (dClasses d)
