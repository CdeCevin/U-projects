%Base de conocimiento creada por Philip


esEstudiante(dominique).
esEstudiante(renato).
esEstudiante(diego).
esEstudiante(elba).

esDocenteDe(philip,dominique).
esDocenteDe(philip,renato).
esDocenteDe(philip,diego).

perteneceA(philip,facCienIng).

edad(dominique,20).
edad(renato,21).
edad(diego,19).

tiene20(X):-esEstudiante(X), edad(X,Y), Y is 20.





