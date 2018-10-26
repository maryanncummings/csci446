/* base case: append empty list to a list results in same list */
myappend([],L,L).

/* when we concatenate a non-empty list [H|T] with a list L2, we
   end up with the list whose head is H and whose tail is the result of
   concatenating T with L2 */
myappend([H|T], L2, [H|L3]) :- myappend(T, L2, L3).
