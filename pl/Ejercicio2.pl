%Crea la lista
crear([]).
agregar(E,P,[E|P]).

%Calcula el largo de una lista
len([],0).
len([_|L],N):- len(L,M),N is M+1.


%Codigo principal del ejercicio
inicio:- write("Bienvenido, ingrese un número:"),nl,read(Numero),crear(L1),split(Numero,Numero,_,L1),raiz(Numero),primo(Numero,2),par(Numero),nl.


%Separa los numeros digito a digito: "123"-> "1,2,3".
split(0,Aux,_,L1):-  len(L1,N),inversa(L1,L2),narciso(Aux,N,N,L2,0).
split(M,Aux,Z,L1):- M > 0,MM is floor(M / 10),Z is M mod 10,agregar(Z,L1,L2),split(MM,Aux,_,L2).

%Calcula si el numero es narciso
narciso(ORIG,_,0,_,M):-(M==ORIG,write("El numero es narciso"),nl;write("El numero no es narciso"),nl),!.
narciso(ORIG,LARGO,CONT,[H|T],M):-M2 is H^LARGO,M3 is M2+M,CONT2 is CONT-1,narciso(ORIG,LARGO,CONT2,T,M3).

%Calcula si el numero es par
par(Num):- Modulo is mod(Num,2), Modulo ==0, write("Es par"),nl,!.
par(Num):- Modulo is mod(Num,2), Modulo =\=0,write("No es par"),nl,!.

%Calcula si el numero es primo
primo(Num,Num):-write("El numero es primo"),nl.
primo(Num, Div):- Modulo is mod(Num,Div), (Modulo =\=0, Div2 is Div+1, primo(Num, Div2));(nl,write("El numero no es primo")),nl.

%Calcula si el numero tiene raiz exacta
raiz(Num) :- Int is rationalize(sqrt(Num)),integer(Int),write("Es raiz exacta"),!.
raiz(Num) :- Int is rationalize(sqrt(Num)),not(integer(Int)),write("Es raiz no exacta"),!.


%Concatena la lista
concatena([],L,L):-!.
concatena([X|L1],L2,[X|L3]):-concatena(L1,L2,L3).

%Genera la lista inversa
inversa([],[]).
inversa([X|Y],L):-inversa(Y,Z),concatena(Z,[X],L).



