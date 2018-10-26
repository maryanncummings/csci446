wizard(ron).
wizard(X):-hasBroom(X), hasWand(X).
hasWand(harry).
hasBroom(X):-quidditchPlayer(X).
quidditchPlayer(harry).