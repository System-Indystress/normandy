{-# LANGUAGE  QuasiQuotes #-}

module Test.ThesaurusQuasi where

import Language.Thesaurus.Quote

testThesaurus =
  [thesaurus|
    # Pets
      ## Dogs
        noun:
          *dog
            pooch, hound, man's best friend, fido
          *wolf
            coyote, hyena
        verb:
          *hunt
            hound, sniff out, track
          *play
            fetch
        adj:
          *doglike
            hound
          *ruthless
            dog eat dog
  |]
