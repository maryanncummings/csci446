loves(john,mary).
loves(ben,mary).
loves(jim,ellen).

/* blank line has no meaning */
jealous(X,Y) :- loves(X,Z), loves(Y,Z), X \= Y.
