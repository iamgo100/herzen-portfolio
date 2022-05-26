rule(X, 0):-
    X < 3, !.
rule(X, 2):-
    3 =< X, X < 6.
rule(X, 4):-
    6 =< X.
