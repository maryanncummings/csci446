
member1(X,[X|_]).  /* one fact */
member1(X,[_|_]) :- member1(X,_). /* one rule */

