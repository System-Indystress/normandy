{-#LANGUAGE QuasiQuotes#-}
module Language.Thesaurus.RogetLite.Acquittal
(acquittal
) where

import Language.Thesaurus

acquittal :: ThProg
acquittal = [thesaurus|
# Sentiment
## Acquittal
noun:
*acquittal
 acquitment, clearance, exculpation, acquittance, clearance, exoneration, discharge  , quietus, absolution, compurgation, reprieve, respite, pardon
*exemption
 impunity
verb:
*acquit
  exculpate, exonerate, clear, absolve, whitewash, assoil, discharge, release, liberate
*reprieve
 respite, pardon  , let off, let off scot-free
adj:
*acquitted
 uncondemned, unpunished, unchastised
|]
