%pais(nome,população,area km²
pais(brasil, 211755692, 8510295).
pais(colombia, 50372424, 1138914).
pais(argentina, 45808747, 2780400).
pais(peru, 33105273, 1285220).
pais(venezuela, 31703499, 916445).


densidade(Pais,Den) :- pais(Pais,Pop,Km), Den is Pop/Km.

habPeru(Hab):- pais(peru,Hab,_).
densidadebr(Den) :- pais(brasil,Pop,Km), Den is Pop/Km.
difvenbr(Dif):- pais(brasil,Pop1,_),pais(venezuela,Pop2,_), Dif is Pop1-Pop2.

maioresbr(Maior):- pais(brasil,Pop1,_),pais(Maior,Pop2,_),Pop2>Pop1.
menospop(Menos) :- pais(colombia,Pop1,_),pais(Menos,Pop2,_),Pop1>Pop2.
