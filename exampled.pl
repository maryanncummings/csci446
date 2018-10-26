/* determine length of a list */
len([],0).
len([H|T],N) :- len(T,X), N is X+1.

