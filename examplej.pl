/* double each element in a list of integers */
double_elements([], []).
double_elements([H|T], [X|Doubled_list]):-
    X is H*2,
    double_elements(T, Doubled_list).
