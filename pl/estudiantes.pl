%Base de conocimiento de mis estudiantes queridos.

esEstudiante1(diego).
esEstudiante1(dominique).
esEstudiante1(scott).
esEstudiante1(X):-esCompa�eroDeCurso(X,Y),esEstudiante1(Y),!.

esCompa�eroDeCurso(renato,scott).
esCompa�eroDeCurso(fabiola,diego).
esCompa�eroDeCurso(cristobal,diego).

edad(diego,19).
edad(dominique,20).
edad(scott,17).

esProfesorDe(philip,diego).
esProfesorDe(philip,dominique).
esProfesorDe(philip,scott).
esProfesorDe(philip,renato).
esProfesorDe(philip,fabiola).
esProfesorDe(philip,X):-esEstudiante1(X).

facultad(philip,facCienIng).

tiene20(X):-edad(X,Y),Y is 20.








