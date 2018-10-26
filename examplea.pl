num(0,zero).
num(1,one).
num(2,two).
num(3,three).
num(4,four).
num(5,five).
num(6,six).
num(7,seven).
num(8,eight).
num(9,nine).
num(10,ten).

listtran([],[]). %base rule
listtran([Int|IntRest], [Txt|TxtRest]) :-
    num(Int,Txt),
    listtran(IntRest,TxtRest).

