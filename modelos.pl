%nome,sexo,idade,altura,peso
modelos(ana,f,19,1.75,56).
modelos(maria,f,18,1.73,54).
modelos(carlos,m,25,1.8,76).
modelos(lia,f,23,1.77,60).
modelos(ivan,m,21,1.69,68).
modelos(aila,f,22,1.58,54).

peso(X,Y) :- modelos(X,_,_,A,_),Y is (62.1*A-44.7).
ismodelo(X) :- modelos(X,S,I,A,P), peso(X,Y),P<Y,A>1.70,I<25,S='f'.
