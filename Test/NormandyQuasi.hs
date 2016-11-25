{-# LANGUAGE QuasiQuotes #-}
module Test.NormandyQuasi where

import Language.Normandy

testProse =
  [normandy|
   %! Cats
   %| Dragan | Loves | Toy |
   Dragan, the cat, loves toys more than any other cat you know. He
   plays fetch and catch da bird better than anyone else in all the
   land.
   %???
   Other cats like toys as well.
   %| Other cats | envy | Dragan |
   The other cats suck.|]
