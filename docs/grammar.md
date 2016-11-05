# Grammar for Normandy
## EBNF style AST devoid of concrete syntax

Prog ::= Dec*

Dec ::= Exp

Exp ::= Val

Val ::= Topic| Outline | Prose

Topic ::= Text
Outline ::= Text? Text? Text?
Prose ::= Text
