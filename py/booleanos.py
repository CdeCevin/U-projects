def verdadero():
    return True

def falso():
    return False

def negacion(b):
    if(b==verdadero()):
        return falso()
    else:
        return verdadero()

def conjuncion(a,b):
    if(a==verdadero()):
        return b
    else:
        return falso()

def disyuncion(a,b):
    if(a==verdadero()):
        return verdadero()
    else:
        return b
    
def implicancia(a,b):
    if(a==b):
        return verdadero()
    else:
        return b

def equivalencia(a,b):
    if(a==b):
        return verdadero()
    else:
        return falso()

def xor(a,b):
    return negacion(equivalencia(a,b))
 

def nor(a,b): 
    return negacion(disyuncion(a,b))

def operacion(a,b):
    return implicancia(a,b)

def demorgan(a):
    return (a)
    


if __name__ == "__main__":
    X=verdadero()
    Y=falso()

    #Primer axioma negacion
    if(negacion(X)==falso()):
        print("Se cumple")
    else:
        print("No se cumple")

    #Segundo axioma negacion
    if(negacion(Y)==falso()):
        print("Se cumple")
    else:
        print("No se cumple")

    #Primer axioma conjuncion
    if(conjuncion(X,Y)==Y):
        print("Se cumple")
    else:
        print("No se cumple")

    #Segundo axioma conjuncion
    if(conjuncion(Y,X)==falso()):
        print("Se cumple")
    else:
        print("No se cumple")

    #Primer axioma disyuncion
    if(disyuncion(X,Y)==verdadero()):
        print("Se cumple")
    else:
        print("No se cumple")

    #Segundo axioma disyuncion
    if(disyuncion(Y,X)==X):
        print("Se cumple")
    else:
        print("No se cumple")

    #Primer axioma implicancia
    if(implicancia(X,X)==verdadero()):
        print("Se cumple")
    else:
        print("No se cumple")

    #Segundo axioma implicancia
    if(implicancia(Y,Y)==verdadero()):
        print("Se cumple")
    else:
        print("No se cumple")
    
    #Tercer axioma implicancia
    if(implicancia(X,Y)==Y):
        print("Se cumple")
    else:
        print("No se cumple")

    #Primer axioma equivalencia
    if(equivalencia(X,X)==verdadero()):
        print("Se cumple")
    else:
        print("No se cumple")

    #Segundo axioma equivalencia
    if(equivalencia(Y,Y)==verdadero()):
        print("Se cumple")
    else:
        print("No se cumple")
    
    #Tercer axioma equivalencia
    if(equivalencia(Y,X)==falso()):
        print("Se cumple")
    else:
        print("No se cumple")

    #Primer axioma xor
    if(xor(X,X)==falso()):
        print("Se cumple")
    else:
        print("No se cumple")
    
    #Segundo axioma xor
    if(xor(Y,Y)==falso()):
        print("Se cumple")
    else:
        print("No se cumple")
    
    #Tercer axioma xor
    if(xor(Y,X)==verdadero()):
        print("Se cumple")
    else:
        print("No se cumple")

    #Primer axioma operacion
  #X verdadero Y falso 
    if(nor(X,Y)==falso()):
        print("Se cumple el NOR 1")
    else:
        print("No se cumple xD")


    if(nor(Y,X)==(negacion(X))):
        print("Se cumple el NOR 2")
    else:
        print("No se cumple xD")

    if(nor(X,Y)==falso()):

        print("Se cumple el NOR 3")
    else:
        print("No se cumple xD")

        
    if(operacion(X,X)==verdadero()):
        print("Se cumple")
    else:
        print("No se cumple")

    #Segundo axioma operacion
    if(operacion(Y,X)==verdadero()):
        print("Se cumple")
    else:
        print("No se cumple")
    
    
        #Tercer axioma operacion
    if(operacion(X,Y)==falso()):
        print("Se cumple")
    else:
        print("No se cumple")

    if(demorgan(negacion(conjuncion(X,Y)))==disyuncion(negacion,X),negacion(Y)):
        print("Demorgan se cumple")
    else:
        print("No se cumple demorgan")

    if(demorgan(negacion(disyuncion(X,Y))) == conjuncion(negacion(X), negacion(Y))):
        print("Demorgan se cumple")
    else:
        print("No se cumple demorgan")
