twice([],[]).
twice([H|TIn],[H,H|TOut]) :-
	twice(TIn,TOut).

