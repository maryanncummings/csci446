/* reverse a list */
naiverev([],[]).

/* reverse the Tail and concatenate with the head */
naiverev([H|T],R) :- naiverev(T,RevT),append(RevT,[H],R).
