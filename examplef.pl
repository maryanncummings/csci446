/* uses an accumulator to find the largest number
   in the list */
   
/* is the head of the list larger than the largest
   value saved so far */
accMax([H|T], Acc, Max) :-
	H > Acc,
	accMax(T,H,Max).
	
/* if head is less than or equal to the accumulator,
   recursively work through the tail of the list using
   old accumulator value */
accMax([H|T], Acc, Max) :-
	H =< Acc,
	accMax(T,Acc,Max).
	
accMax([],Acc,Acc).

/* initialize the accumulator to be the head of the list */

max(List,Max) :-
	List=[H|_],
	accMax(List,H,Max).
