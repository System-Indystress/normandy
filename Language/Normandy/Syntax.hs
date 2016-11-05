module Language.Normandy.Syntax where
import Data.Text (Text(..))
import Data.Text as T

data NDec = NExpD NExp
data NExp = NValE NVal
data NVal = NTopicV Text
          | NOutlineV (Maybe Text) (Maybe Text) (Maybe Text)
          | NProseV Text
          | NHoleV
  deriving (Show, Eq)

-- %!
topic :: Text -> NVal
topic = NTopicV

-- %| ? | ? | ? |
interaction :: Text -> Text -> Text -> NVal
interaction ag ac ob = NOutlineV (Just ag) (Just ac) (Just ob)

subject :: Text -> NVal
subject ag = NOutlineV (Just ag) Nothing Nothing

action :: Text -> Text -> NVal
action ag ac = NOutlineV (Just ag) (Just ac) Nothing

relation :: Text -> Text -> NVal
relation ag ob = NOutlineV (Just ag) Nothing (Just ob)

-- lorem ipsum
prose :: Text -> NVal
prose = NProseV

-- <???>
hole :: NVal
hole = NHoleV
