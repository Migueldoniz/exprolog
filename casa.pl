%casa(comodo,largura,comprimento)
casa(sala,3,4.5).
casa(dorm1,2.5,3.5).
casa(dorm2,1.8,4).
casa(cozinha,2,2.5).
casa(banheiro,1.8,4).

area(X,A):-casa(X,L,C),A is L*C.
areacoz(X):-casa(cozinha,L,C),X is L*C.
maiorcoz(X):-  areacoz(C),area(X,Z),Z>C.
menordorm(Y) :- area(dorm2,X),area(Y,A),A<X.
cozdobroban(X) :- areacoz(Y),area(banheiro,X),Y=X*2.
salamaior() :- area(sala,X),area(dorm1,Y),area(dorm2,Z),areacoz(W),area(banheiro,V),X>Y,X>Z,X>W,X>V.

