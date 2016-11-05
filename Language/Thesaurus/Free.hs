module Language.Thesaurus.Free where
import Control.Monad.Free
import Language.Thesaurus (DfltThesaurus(..))
data ThExp next = THCatE String next
                | NounE next
                | VerbE next
                | AdjE  next
                | AdvE  next
                | ClKeyE String next
                | ClValE String next
