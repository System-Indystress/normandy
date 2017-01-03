module Language.Thesaurus.Free where
import Control.Monad.Free
import Control.Monad.State
import Language.Thesaurus.Class
import Language.Haskell.TH.Syntax
import qualified Data.Text as T
import Data.Text (Text(..))
import qualified Data.Map as Map
import Data.Map (Map(..))
import qualified Language.Thesaurus.Parser as TP

-- Imperative Syntax
data ThExp next = THCatClE String next
                | THCatE String next
                | NounE next
                | VerbE next
                | AdjE  next
                | AdvE  next
                | ClusKeyE String next
                | ClusValE String next
instance Functor ThExp where
  fmap f (THCatClE s n) = (THCatClE s $ f n)
  fmap f (THCatE s n) = (THCatE s $ f n)
  fmap f (NounE n) = (NounE $ f n)
  fmap f (VerbE n) = (VerbE $ f n)
  fmap f (AdjE  n) = (AdjE $ f n)
  fmap f (AdvE  n) = (AdvE $ f n)
  fmap f (ClusKeyE s n) = (ClusKeyE s $ f n)
  fmap f (ClusValE s n) = (ClusValE s $ f n)

parsedToFree :: TP.ThExp -> ThProg
parsedToFree (TP.THCatClE s) = Free (THCatClE s $ Pure ())
parsedToFree (TP.THCatE s) = Free (THCatE s $ Pure ())
parsedToFree (TP.NounE) = Free (NounE $ Pure ())
parsedToFree (TP.VerbE) = Free (VerbE $ Pure ())
parsedToFree (TP.AdjE) = Free (AdjE $ Pure ())
parsedToFree (TP.AdvE) = Free (AdvE $ Pure ())
parsedToFree (TP.ClusKeyE s) = Free (ClusKeyE s $ (ClusValE s $ Pure ()))
parsedToFree (TP.ClusValsE ss) =
  let f str free = Free (ClusValE str free)
  in  foldr f (Pure ()) ss

type ThProg = Free ThExp ()
---------------
-- interpretter
data PosState = NounS | VerbS | AdjS | AdvS
  deriving (Show, Eq, Ord)
data EntryState = ES { curCCl :: Maybe CatClass
                     , curCat :: Maybe Category
                     , curPOS :: Maybe PosState
                     , curKey :: Maybe Text }
  deriving (Show, Eq, Ord)
mkES = ES Nothing Nothing Nothing Nothing
type WordState  = Map EntryState [Text]
type IndexState = Map Text [Category]
type CatClState = Map Category CatClass
data ThState =
  THS { wordMap :: WordState
      , catMap  :: CatClState
      , indMap  :: IndexState
      }
  deriving (Show)
mkThState :: ThState
mkThState = THS (Map.empty) (Map.empty) (Map.empty)



addWord  :: EntryState -> String -> ThState -> ThState
addWord es value (ths @ THS{wordMap = wm}) =
  ths {wordMap = addWord' es value wm}

addWord' :: EntryState -> String -> WordState -> WordState
addWord' key value m =
  let f (Just txt) = Just $ (T.pack value) : txt
      f Nothing    = Just [T.pack value]
  in  Map.alter f key m

addIndex :: EntryState -> String -> ThState -> ThState
addIndex es value (ths @ THS{indMap = im}) =
  ths {indMap = addIndex' es value im}

addIndex' :: EntryState -> String -> IndexState -> IndexState
addIndex' (ES{curCat = Just cc}) value is =
  let f (Just cats) = Just $ cc : cats
      f Nothing     = Just [cc]
  in  Map.alter f (T.pack value) is
addIndex' _ _ is = is

addCat :: EntryState -> ThState -> ThState
addCat es (ths @ THS{catMap= cm}) =
  ths{catMap = addCat' es cm}

addCat' :: EntryState -> CatClState -> CatClState
addCat' (ES{curCCl = Just ccl, curCat = Just cc}) m =
  Map.insert cc ccl m
addCat' _ m = m




buildTh :: ThProg -> ThState
buildTh prog =
  let (ths, es) = runState (buildTh' mkThState prog) mkES
  in  ths

buildTh' :: ThState -> ThProg -> State EntryState ThState
buildTh' ths (Free (THCatClE catclStr next)) = do
  es <- get
  put $ es{curCCl = Just $ CatCl $ T.pack catclStr}
  buildTh' ths next
buildTh' ths (Free (THCatE catStr next )) = do
  es <- get
  put $ es {curCat = Just $ Cat $ T.pack catStr}
  buildTh' (addCat es ths) next
buildTh' ths (Free (NounE next)) = do
  es <- get
  put $ es {curPOS = Just NounS}
  buildTh' ths next
buildTh' ths (Free (VerbE next)) = do
  es <- get
  put $ es {curPOS = Just VerbS}
  buildTh' ths next
buildTh' ths (Free (AdjE next)) = do
  es <- get
  put $ es {curPOS = Just AdjS}
  buildTh' ths next
buildTh' ths (Free (AdvE next)) = do
  es <- get
  put $ es {curPOS = Just AdvS}
  buildTh' ths next
buildTh' ths (Free (ClusKeyE key next)) = do
  es <- get
  put $ es {curKey = Just $ T.pack key}
  buildTh' ths next
buildTh' ths (Free (ClusValE val next)) = do
  es <- get
  buildTh' ((addIndex es val) . (addWord es val) $ ths) next
buildTh' ths (Pure _) = return ths

instance Thesaurus ThState where
  nouns (THS wm _ _ ) cat1 =
    let f (ES _ (Just cat2) (Just NounS) (Just kw)) txt m =
          if cat1 == cat2 then Map.insert kw txt m else m
        f _ _ m = m
    in  Map.foldrWithKey f Map.empty wm
  verbs (THS wm _ _) cat1 =
    let f (ES _ (Just cat2) (Just VerbS) (Just kw)) txt m =
          if cat1 == cat2 then Map.insert kw txt m else m
        f _ _ m = m
    in  Map.foldrWithKey f Map.empty wm
  adjs  (THS wm _ _) cat1 =
    let f (ES _ (Just cat2) (Just AdjS) (Just kw)) txt m =
          if cat1 == cat2 then Map.insert kw txt m else m
        f _ _ m = m
    in  Map.foldrWithKey f Map.empty wm
  advs (THS wm _ _) cat1 =
    let f (ES _ (Just cat2) (Just AdvS) (Just kw)) txt m =
          if cat1 == cat2 then Map.insert kw txt m else m
        f _ _ m = m
    in  Map.foldrWithKey f Map.empty wm
  toCats (THS _ cm _) catCl1 =
    let f cat catCl2 cats = if catCl1 == catCl2 then cat : cats else cats
    in  Map.foldrWithKey f [] cm
  toClass (THS _ cm _) cat1 = Map.lookup cat1 cm
  indexes (THS _ _ im) txt = Map.findWithDefault [] txt im
