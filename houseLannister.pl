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

parentOf(X, Y) :- motherOf(X, Y).
parentOf(X, Y) :- fatherOf(X, Y).

ancestor(X, Y) :- parentOf(X, Y).
ancestor(X, Y) :- parentOf(X, V), ancestor(V, Y).

siblings(X, Y) :- parentOf(V, X), parentOf(V, Y), X \== Y.

cousin(X, Y) :- parentOf(V, X), parentOf(Z, Y), siblings(V, Z).
