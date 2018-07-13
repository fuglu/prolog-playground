motherOf(cersei, joffrey).
motherOf(cersei, myrcella).
motherOf(cersei, tommen).
motherOf(joanna, cersei).
motherOf(joanna, jaime).
motherOf(joanna, tyrion).
motherOf(dorna, lancel).
motherOf(dorna, willem).
motherOf(dorna, martyn).

fatherOf(jaime, joffrey).
fatherOf(jaime, myrcella).
fatherOf(jaime, tommen).
fatherOf(tywin, cersei).
fatherOf(tywin, jaime).
fatherOf(tywin, tyrion).
fatherOf(tytos, tywin).
fatherOf(tytos, kevan).
fatherOf(kevan, lancel).
fatherOf(kevan, willem).
fatherOf(kevan, martyn).

parentsOf(X, Y) :- motherOf(X, Y).
parentsOf(X, Y) :- fatherOf(X, Y).

ancestor(Ancestor, Child) :- parentsOf(Ancestor, Child).
ancestor(Ancestor, Child) :- parentsOf(Z, Child), ancestor(Ancestor, Z).

siblings(Child1, Child2) :- motherOf(Mother, Child1), motherOf(Mother, Child2), fatherOf(Father, Child1), fatherOf(Father, Child2).
