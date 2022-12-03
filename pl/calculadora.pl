%Inicializa la calculadora.
inicio:-write("Ingrese:"),nl,
write("1. Si desea sumar:"),nl,
write("2. Si desea restar:"),nl,
write("3. Si desea multiplicar:"),nl,
write("4. Si desea dividir:"),nl,
write("5. Si desea calcular la potencia:"),nl,
write("6. Si desea calcular el resto:"),nl,
write("7. Si desea calcular el logaritmo:"),nl,
read(N),N<8,N>0,(N\=7,write("Ingrese el primer elemento: "),read(A),write("Ingrese el segundo elemento"),read(B),
 ((N==1,suma(A,B));
 (N==2,resta(A,B));
 (N==3,multiplicacion(A,B));
 (N==4,division(A,B));
 (N==5,potencia(A,B));
 (N==6,resto(A,B))));
 (write("Ingrese el numero: "),read(A),log(A)).

%Realizacion de las respectivas operaciones y sus casos especiales.
suma(X,Y):-Z is X+Y,write("El resultado de la suma es "),display(Z).
resta(X,Y):-Z is X-Y,write("El resultado de la resta es "),display(Z).
multiplicacion(X,Y):-Z is X*Y,write("El resultado de la multiplicacion es "),display(Z).
division(_,Y):-Y=0, write("Indeterminado!").
division(X,Y):-Z is X/Y,write("El resultado de la division es "),display(Z).

potencia(0,0):-write("Indeterminado!").
potencia(_,Y):-Y=0,Z=1,write("El resultado de la potencia es "),display(Z).
potencia(X,Y):-Z is X^Y,write("El resultado de la potencia es "),display(Z).


log(X):-X=<0,write("Indeterminado!").
log(X):-Z is log(X),write("El resultado del logaritmo es "),display(Z).

resto(0,0):-write("Indeterminado!").
resto(_,0):-write("Indeterminado!").

resto(X,Y):-Z is mod(X,Y),write("El resultado del resto es "),display(Z).


