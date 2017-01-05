module Language.Normandy.Pass.Class where

import Language.Normandy.Free (Story)
import Control.Monad.Free
import Data.Text (Text(..))
class Pass a where
  pass :: a -> Story Text -> Story Text

-- data StoryT a next = LiftStory (Story Text) (Story a -> next)
--                    | LowerStory (Story a) (Story Text -> next)
--
-- instance Functor (StoryT a) where
--   fmap f (LiftStory st g) = (LiftStory st (f . g))
--   fmap f (LowerStory sa g) = (LowerStory sa (f . g))
--
-- type Embelish a = Free (StoryT a) a
--
-- liftStory :: StoryText -> Embelish (Story a)
--
-- lowerStory :: Story a -> Embelish (Story Text)
--
--
-- prog :: Embelish (Story Text)
-- prog s = do
--   abstract <- liftStory s
--   ....
--   s' <- lowerStory

-- Essentially I want combinators so I can go from Story of a to Story of b
-- in such a way that I can optimize
