%origem,destino,km
estrada(a,b,25).
estrada(a,d,23).
estrada(b,c,19).
estrada(b,e,32).
estrada(c,d,14).
estrada(c,f,28).
estrada(d,f,30).
estrada(e,f,26).

dist(X,Y,D) :-
    estrada(X,Y,D).

dist(X,Y,D) :-
    not(estrada(X,Y,_)),
    estrada(X,Z,A),
    dist(Z,Y,B),
    D is A+B.
