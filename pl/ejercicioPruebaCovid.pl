%Base de conocimiento creada por Philip
%Soluci�n de problema de resoluci�n de COVID en clase 5.2

covid(X):-fiebre(X),noSeCuida(X).

fiebre(X):-temp(X,T),T>=38.

%Phi
seRealiza(X,examenes):-covid(X).

noSeCuida(philip).

temp(philip,38).








