main :-
    repeat,
    read(X),
    nl,
    do(X),
    nl,
    X == quit,
    write(done).
do(open) :- X = mary, write(X).
do(add) :- X = ellen, write(X).
do(delete) :- X = jane, write(X).
do(quit).

/* in C, it would be:
// int main(void) {
// char buf[20];
// do {
//     gets(buf);
//     if (0 == strcmp(buf,"open")) ...
//     else if (0 == strcmp(buf, "add")) ...
//     else if (0 == strcmp(buf, "delete")) ...
//     } while (strcmp(buf, "quit") != 0);
*/
