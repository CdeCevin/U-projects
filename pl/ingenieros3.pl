%Este es un archivo de prueba
%Creado por Philip

esIngeniero(V) :- compTitulado(V,P), esIngeniero(P).
esIngeniero(paulo).
esIngeniero(jerman).
esIngeniero(sergio).

compTitulado(philip, jerman).
compTitulado(barbara, jerman).






