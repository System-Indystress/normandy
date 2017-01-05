module Language.Thesaurus
  ( thesaurus
  , Thesaurus(..)
  , DfltThesaurus(..)
  , TextCluster(..)
  , CatClass(..)
  , Category(..)
  , ThExp (..)
  , ThProg(..)
  , parsedToFree
  , buildTh
  , catCl
  , cat
  ) where

import Language.Thesaurus.Class
import Language.Thesaurus.Free
import Language.Thesaurus.Quote
