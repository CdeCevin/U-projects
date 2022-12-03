crea([b,b,b,b,b,b,b,b,b]).

inserta(1,E,[_,X2,X3,X4,X5,X6,X7,X8,X9],[E,X2,X3,X4,X5,X6,X7,X8,X9]).
inserta(2,E,[X1,_,X3,X4,X5,X6,X7,X8,X9],[X1,E,X3,X4,X5,X6,X7,X8,X9]).
inserta(3,E,[X1,X2,_,X4,X5,X6,X7,X8,X9],[X1,X2,E,X4,X5,X6,X7,X8,X9]).
inserta(4,E,[X1,X2,X3,_,X5,X6,X7,X8,X9],[X1,X2,X3,E,X5,X6,X7,X8,X9]).
inserta(5,E,[X1,X2,X3,X4,_,X6,X7,X8,X9],[X1,X2,X3,X4,E,X6,X7,X8,X9]).
inserta(6,E,[X1,X2,X3,X4,X5,_,X7,X8,X9],[X1,X2,X3,X4,X5,E,X7,X8,X9]).
inserta(7,E,[X1,X2,X3,X4,X5,X6,_,X8,X9],[X1,X2,X3,X4,X5,X6,E,X8,X9]).
inserta(8,E,[X1,X2,X3,X4,X5,X6,X7,_,X9],[X1,X2,X3,X4,X5,X6,X7,E,X9]).
inserta(9,E,[X1,X2,X3,X4,X5,X6,X7,X8,_],[X1,X2,X3,X4,X5,X6,X7,X8,E]).

revision(1,E,[X1,_,_,_,_,_,_,_,_]):-E\=X1,X1\='x'.
revision(2,E,[_,X2,_,_,_,_,_,_,_]):-E\=X2,X2\='x'.
revision(3,E,[_,_,X3,_,_,_,_,_,_]):-E\=X3,X3\='x'.
revision(4,E,[_,_,_,X4,_,_,_,_,_]):-E\=X4,X4\='x'.
revision(5,E,[_,_,_,_,X5,_,_,_,_]):-E\=X5,X5\='x'.
revision(6,E,[_,_,_,_,_,X6,_,_,_]):-E\=X6,X6\='x'.
revision(7,E,[_,_,_,_,_,_,X7,_,_]):-E\=X7,X7\='x'.
revision(8,E,[_,_,_,_,_,_,_,X8,_]):-E\=X8,X8\='x'.
revision(9,E,[_,_,_,_,_,_,_,_,X9]):-E\=X9,X9\='x'.

revision1(1,E,[X1,_,_,_,_,_,_,_,_]):-E\=X1,X1\='o'.
revision1(2,E,[_,X2,_,_,_,_,_,_,_]):-E\=X2,X2\='o'.
revision1(3,E,[_,_,X3,_,_,_,_,_,_]):-E\=X3,X3\='o'.
revision1(4,E,[_,_,_,X4,_,_,_,_,_]):-E\=X4,X4\='o'.
revision1(5,E,[_,_,_,_,X5,_,_,_,_]):-E\=X5,X5\='o'.
revision1(6,E,[_,_,_,_,_,X6,_,_,_]):-E\=X6,X6\='o'.
revision1(7,E,[_,_,_,_,_,_,X7,_,_]):-E\=X7,X7\='o'.
revision1(8,E,[_,_,_,_,_,_,_,X8,_]):-E\=X8,X8\='o'.
revision1(9,E,[_,_,_,_,_,_,_,_,X9]):-E\=X9,X9\='o'.

revisionGanador([X1,X1,X1,_,_,_,_,_,_]):-(X1 =='x',write("Usted gana!"),!);(X1 =='o',write("Gana la maquina!"),!).
revisionGanador([_,_,_,X1,X1,X1,_,_,_]):-(X1 =='x',write("Usted gana!"),!);(X1 =='o',write("Gana la maquina!"),!).
revisionGanador([_,_,_,_,_,_,X1,X1,X1]):-(X1 =='x',write("Usted gana!"),!);(X1 =='o',write("Gana la maquina!"),!).
revisionGanador([X1,_,_,X1,_,_,X1,_,_]):-(X1 =='x',write("Usted gana!"),!);(X1 =='o',write("Gana la maquina!"),!).
revisionGanador([_,X1,_,_,X1,_,_,X1,_]):-(X1 =='x',write("Usted gana!"),!);(X1 =='o',write("Gana la maquina!"),!).
revisionGanador([_,_,X1,_,_,X1,_,_,X1]):-(X1 =='x',write("Usted gana!"),!);(X1 =='o',write("Gana la maquina!"),!).
revisionGanador([X1,_,_,_,X1,_,_,_,X1]):-(X1 =='x',write("Usted gana!"),!);(X1 =='o',write("Gana la maquina!"),!).
revisionGanador([_,_,X1,_,X1,_,X1,_,_]):-(X1 =='x',write("Usted gana!"),!);(X1 =='o',write("Gana la maquina!"),!).
revisionGanador([_,_,X1,_,X1,_,X1,_,_]):-(X1 =='x',write("Usted gana!"),!);(X1 =='o',write("Gana la maquina!"),!).


inicioGato:-write("Comienza el juego!"),E is random(2),nl,crea(L),((E==1,nl,write("Comienza el jugador, es x!"),juegaJugador(L,0));(nl,write("Comienza la Maquina, es o!"),juegaMaquina(L,0))).

juegaJugador(A,T):-(T<9,nl,write("Elija la posicion a marcar:"),nl,write("|1 2 3|"),nl,write("|4 5 6|"),nl,write("|7 8 9|"),nl,nl,read(POSICION),(revision1(POSICION,x,A),inserta(POSICION,x,A,A2),nl,muestra(1,A2),((revisionGanador(A2));(T2 is T+1,nl,write("Juega la maquina!"),juegaMaquina(A2,T2))));(T<9,write("Posicion ya utilizada! Vuelva a intentarlo..."),juegaJugador(A,T)));(T>8,write("Empate!"),!).

juegaMaquina(A,T):-(T<9,R is random(9)+1,nl,(revision(R,o,A),inserta(R,o,A,A2),nl,muestra(1,A2),(revisionGanador(A2);(T2 is T+1,nl,write("Su turno!"),juegaJugador(A2,T2))));(T<9,juegaMaquina(A,T)));(write("Empate!"),!).

muestra(LARGO,_):-LARGO>11,nl.
muestra(LARGO,[H|T]):-((LARGO<4,display(H),write(" "),L2 is LARGO+1,muestra(L2,T)));(LARGO==4,nl, L2 is LARGO+1,muestra(L2,[H|T]));(LARGO>4,LARGO<8,display(H),write(" "),L2 is LARGO+1,muestra(L2,T));(LARGO==8,nl, L2 is LARGO+1,muestra(L2,[H|T]));(LARGO>8,LARGO<12,display(H),write(" "),L2 is LARGO+1,muestra(L2,T)).









