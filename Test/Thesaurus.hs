module Main where
-- To test that the thesaurus parser/quasiquoter correctly builds a thesaurus instance
--   from end to end

-- modules to test
import Language.Thesaurus
import Language.Thesaurus.RogetLite
import qualified Data.Map as Map
import Data.Map (Map(..))
import qualified Data.Text as T
import qualified Data.Set as S
-- boilerplate
import System.IO.Unsafe (unsafePerformIO)
import Data.Monoid
import Test.Framework
import Test.Framework.Providers.HUnit
import Test.Framework.Providers.QuickCheck2
import Test.HUnit
import Test.QuickCheck (Property, quickCheck, (==>))
import qualified Test.QuickCheck.Monadic as TQM

-- expected values
badness_nouns :: TextCluster
badness_nouns =
  Map.insert (T.pack "hurtfulness") (S.fromList $ map T.pack ["hurtfulness","virulence"]) $
  Map.insert (T.pack "evil doer") (S.fromList $ map T.pack ["evil doer","bane","plague spot", "evil star","ill wind", "hoodoo", "Jonah","snake in the grass","skeleton in the closet","amari aliquid", "thorn in the side"]) $
  Map.insert (T.pack "malignity") (S.fromList $ map T.pack ["malignity","malevolence","tender mercies"]) $
  Map.insert (T.pack "ill-treatment") (S.fromList $ map T.pack ["ill-treatment","annoyance","molestation","abuse","oppression","persecution","outrage","misusage","injury","knockout drops"]) $
  Map.insert (T.pack "badness") (S.fromList $ map T.pack ["badness","peccancy","abomination","painfulness","pestilence","guilt","depravity"]) $
  Map.empty

badness_verbs :: TextCluster
badness_verbs =
  Map.insert (T.pack "be burtful") (S.fromList $ map T.pack ["be burtful","cause evil", "produce evil", "inflict evil", "work evil", "do evil", "damnify", "endamage", "hurt", "harm", "injure", "pain"]) $
  Map.insert (T.pack "wrong") (S.fromList $ map T.pack ["wrong","aggrieve", "oppress", "persecute", "trample upon", "tread upon", "bear hard upon", "put upon", "overburden", "weigh down", "weigh heavy on", "victimize", "run down", "molest"]) $
  Map.insert (T.pack "maltreat") (S.fromList $ map T.pack ["maltreat","abuse", "ill-use", "ill-treat", "buffet", "bruise", "scratch", "maul", "smite"  , "do violence", "do harm", "do a mischief", "stab", "pierce", "outrage"]) $
  Map.insert (T.pack "do mischief") (S.fromList $ map T.pack ["do mischief","make mischief", "bring into trouble"]) $
  Map.insert (T.pack "destroy") (S.fromList $ map T.pack ["destroy"]) $
  Map.empty

badness_advs =
  Map.insert (T.pack "badly") (S.fromList $ map T.pack ["badly","wrong", "ill", "to one's cost", "where the shoe pinches"]) $
  Map.empty
test_badness_nouns =
  (nouns (buildTh rogetLite) (Cat $ T.pack "Baddness"))
  @?=
  badness_nouns
test_badness_verbs =
  (verbs (buildTh rogetLite) (Cat $ T.pack "Baddness"))
  @?=
  badness_verbs
test_badness_adjs = undefined

test_badness_advs =
  (advs (buildTh rogetLite) (Cat $ T.pack "Baddness"))
  @?=
  badness_advs

main :: IO ()
main = defaultMainWithOpts
  [ testCase "badness nouns" test_badness_nouns
  , testCase "badness verbs" test_badness_verbs
  --, testCase "badness adjs"  test_badness_adjs
  , testCase "badness advs"  test_badness_advs
  ] mempty
