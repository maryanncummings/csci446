
member1(X,[X|T]).  /* one fact */
member1(X,[H|T]) :- member1(X,T). /* one rule */

