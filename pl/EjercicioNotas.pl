%Base de conocimiento de notas
%


notas(dominique,4.5,4,7).
notas(scott,3,2,6).
notas(fabiola,4,4,4).

pasaDeCurso(X):- notas(X,W,Y,Z),Prom is (W+Y+Z)/3,Prom>=4.



