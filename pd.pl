:- dynamic docente/4.
:- dynamic disciplina/2.

trabalho :- carrega('docentes.txt'),
    carrega('disciplinas.txt'),
    format('~n---Sistema de docentes---~n~n'),
    repeat,
    pergunta1P(L),
    pergunta2P(S),
    pergunta3P(Sub),
    respondeP(L,S,Sub),
    continua(R),
    R = n,
    !,
    salva(docente, 'docentes.txt').

carrega(A) :- exists_file(A), consult(A); true.
gets(S) :- read_line_to_codes(user_input, D), name(S,D).

pergunta1P(L) :- format('-Docente-~n'),
    format('1) Qual a linha de pesquisa do docente?~nR: '),
    gets(L).

pergunta2P(S) :- format('2) Qual o sexo do docente?~nR: '),
    gets(S).

pergunta3P(Sub) :- format('3) O docente ? substituto? [s/n]'),
    get_char(Sub), get_char('\n').

respondeP(L,S,Sub) :- docente(L,S,Sub,N), !, format('SISTEMA: Docente encontrado!~nNome: ~w ~n.', [N]).
respondeP(L,S,Sub) :- format('SISTEMA: Docente n?o encontrado!~nDeseja gravar a resposta na base de dados do sistema? [s/n]~nR: '),
    get_char(R), get_char('\n'), R=s, !,
    gets(N),
    assertz(docente(L,S,Sub,N)).

continua(R) :- format('Deseja continuar? [s/n] '),
    get_char(R), get_char('\n').
salva(P,A) :- tell(A), listing(P), told.

