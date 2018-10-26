/* if the unicorn is mythical, then it is immortal, but if it is not mythical,
then it is a moral mammal.  If the unicorn is either immportal or a mammal,
then it is horned.  If it is horned, then it is magical */

mythical(u).
immortal(u) :- mythical(u).
mortal(u) :- \+(mythical(u)).
mammal(u) :- \+(mythical(u)).
horned(u) :- immortal(u).
horned(u) :- mammal(u).
magical(u) :- horned(u).
