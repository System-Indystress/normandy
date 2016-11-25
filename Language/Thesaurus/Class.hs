module Language.Thesaurus.Class where
import Data.Map (Map(..))
import Data.Map as Map
import Data.Text (Text(..))
import Data.Text as T
import Data.List as L


type TextCluster = Map Text [Text]

class Thesaurus t where
  nouns    :: t -> Category -> TextCluster
  verbs    :: t -> Category -> TextCluster
  adjs     :: t -> Category -> TextCluster
  advs     :: t -> Category -> TextCluster
  toCats   :: t -> CatClass -> [Category]
  toClass  :: t -> Category -> Maybe CatClass
  indexes    :: t -> Text     -> [Category]
  combineT :: (Thesaurus t1) => t1 -> t -> DfltThesaurus
  combineT t1 t2 =
    DThes { dNouns = \c -> Map.union (nouns t1 c) (nouns t2 c)
          , dVerbs = \c -> Map.union (verbs t1 c) (verbs t2 c)
          , dAdjs  = \c -> Map.union (adjs  t1 c) (adjs  t2 c)
          , dAdvs  = \c -> Map.union (advs  t1 c) (advs  t2 c)
          , dToCats = \cl -> (toCats t1 cl) `L.union` (toCats t2 cl)
          , dToClass = \c -> (case (toClass t1 c) of
                               Nothing -> (toClass t2 c)
                               v       -> v)
          , dIndexes = \txt -> (indexes t1 txt) `L.union` (indexes t2 txt)
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
        , dToCats  :: (CatClass -> [Category])
        , dToClass :: (Category -> Maybe CatClass)
        , dIndexes :: (Text     -> [Category])
        }

instance Thesaurus (DfltThesaurus) where
  nouns d = (dNouns d)
  verbs d = (dVerbs d)
  adjs  d = (dAdjs  d)
  advs  d = (dAdvs  d)
  toCats d = (dToCats d)
  toClass d = (dToClass d)
  indexes  d = (dIndexes d)
