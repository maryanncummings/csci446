/* for each item in a list place a duplicate element in it */
double([],[]).
double([X|Tail],[X,X|ResultList]) :- double(Tail,ResultList).


