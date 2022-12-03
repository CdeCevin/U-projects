%Crea una lista
crear([]).
agregar(E,P,[E|P]).

%Recibe una lista y calcula su largo
len([],0).
len([_|L],N):- len(L,M),N is M+1.


% Función principal del ejercicio: Recibe un número y con el llama
% a los predicados
inicio:- write("Bienvenido, ingrese un número:"),nl,read(Numero),esNatural(Numero),crear(L1),split(Numero,Numero,_,L1),raiz(Numero),par(Numero),primo(Numero,2),nl.

%Verifica si el número recibido es o no es natural
esNatural(N):- ((N>=0, integer(N),write("--El número es natural--"),nl,!);(write("El número no es natural")),!).

% Recibe el número, los separa en unidades y entrega una lista con
% las unidades: "123" -> [1,2,3], luego calcula el largo de la lista, la
% invierte y llama a Narciso

split(0,Aux,_,L1):-  len(L1,N),inversa(L1,L2),narciso(Aux,N,N,L2,0).
split(M,Aux,Z,L1):- M > 0,MM is floor(M / 10),Z is M mod 10,agregar(Z,L1,L2),split(MM,Aux,_,L2).

%Calcula si el número recibido es o no narciso
narciso(ORIG,_,0,_,M):-(M==ORIG,write("El número es narciso"),nl;write("El número no es narciso"),nl),!.
narciso(ORIG,LARGO,CONT,[H|T],M):-M2 is H^LARGO,M3 is M2+M,CONT2 is CONT-1,narciso(ORIG,LARGO,CONT2,T,M3).

%Calcula si el número recibido es o no par
par(Num):- Modulo is mod(Num,2), Modulo ==0, write("Es par"),nl,!.
par(Num):- Modulo is mod(Num,2), Modulo =\=0,write("No es par"),nl,!.

% Calcula si el número recibido es o no primo
primo(Num,Num):-write("El número es primo"),nl.
primo(Num, Div):- ((Num ==1,write("El número no es primo"));(Modulo is mod(Num,Div), (Modulo =\=0, Div2 is Div+1, primo(Num, Div2));(write("El número no es primo"),nl))).

% Calcula si el número recibido tiene raíz exacta, luego imprime el
% resultado
raiz(Num) :- Raiz is rationalize(sqrt(Num)),integer(Raiz),write("Es raíz exacta"),nl,!.
raiz(Num) :- Raiz is rationalize(sqrt(Num)),not(integer(Raiz)),write("No es raíz exacta"),nl,!.

%Recibe una lista, la concatena y entrega la lista concatenada
concatena([],L,L):-!.
concatena([X|L1],L2,[X|L3]):-concatena(L1,L2,L3).

%Recibe una lista, la invierte y entrega la lista invertida
inversa([],[]).
inversa([X|Y],L):-inversa(Y,Z),concatena(Z,[X],L).
