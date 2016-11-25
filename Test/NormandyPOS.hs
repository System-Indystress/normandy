{-# LANGUAGE QuasiQuotes #-}
module Test.NormandyPOS where

import Language.Normandy
import NLP.POS

testAnnotated = do
  tagger <- defaultTagger
  putStr . prettyPrint . annotated tagger $
    [normandy|
      %! Hello, World
      Normandy is a great programming language to take weak or redundant prose, mark it up, and then generate better prose that will make you happier.
    |]
