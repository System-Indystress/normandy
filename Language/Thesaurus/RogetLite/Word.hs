{-#LANGUAGE QuasiQuotes#-}
module Language.Thesaurus.RogetLite.Word where 
import Language.Thesaurus
word :: ThProg
word = [thesaurus|
# Ideas
## Word
noun:
* word
 term, vocable, name , phrase , root, etymon, derivative, part of speech  , ideophone
*dictionary
 vocabulary, lexicon, index, glossary, thesaurus, gradus, delectus, concordance
*etymology
 derivation, glossology, terminology, orismology, paleology  
*lexicography
 glossography  , lexicologist, verbarian
adj:
* verbal
 literal, titular, nominal
 conjugat, paronymous, derivative
adv:
* verbally
 verbatim
|]
