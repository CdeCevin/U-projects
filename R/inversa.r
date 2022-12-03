#Hecho por el equipo iluminati


matriz4 <- read.table("C:/Users/Koliv/OneDrive/Documentos/Prueba Matriz/matriz4.txt", quote="\"", comment.char="")

t <- proc.time()
matriz4i <- solve(matriz4)
proc.time()-t


