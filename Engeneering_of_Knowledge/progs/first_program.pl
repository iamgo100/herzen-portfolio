????????("????", "?????").
????????("????", "?????").
????????("?????", "?????").
????????("?????", "????").

??????("????", "????").
??????("?????", "????").

???????("????").
???????("?????").
???????("????").

???????("?????").
???????("????").
???????("????").

????(F, C):-
    ????????(F, C),
    ???????(F).

????(M, C):-
    ????????(M, C),
    ???????(M).

???????(W):-
    ???????(W),
    ??????(_, W).

????(X, R1):-
    ????????(R1, R2),
    ????????(R2, X),
    ???????(X).

?_?????_??????(X):-
    ????????(X, Y1),
    ????????(X, Y2),
    Y1\=Y2.




















