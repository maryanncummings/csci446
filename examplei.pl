/* continue to put the headat the front of the list */
accRev([H|T],A,R) :- accRev(T,[H|A],R).
accRev([],A,A).

rev(L,R) :- accRev(L,[],R).
