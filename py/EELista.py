def verdadero():
    return True

def falso():
    return False

def crear():
    lista  = []
    return  lista

def cero():
    return 0

def negacion(b):
    if(b==verdadero()):
        return falso()
    else:
        return verdadero()

def sucesor(elem):
    return elem+1

def crearU(lista,elem):
    lista.append(elem)
    return lista

def anadirIzq(lista,elem):
    lista.insert(0,elem)
    return lista

def anadirDer (lista,elem):
    lista.append(elem)
    return lista

def eliminarIzq(lista):
    try:
        lista.pop(0)
        return lista
    except IndexError:
        return lista
    

def eliminarDer(lista):
    try:
        lista.pop()
        return lista
    except IndexError:
        return lista

def izq(lista):
    try:
        return lista[0]
    except IndexError:
        return "error"

def der(lista):
    try:
        return lista[-1]
    except IndexError:
        return "error"
   


def esVacia(lista):
    if(lista):
        return falso()
    else:
        return verdadero()
    
def concat(lista1,lista2):
    return lista1+lista2 
    
def longitud(lista):
    return len(lista)

def existe(lista, elem):
    if elem in lista:
        return verdadero()
    else:
        return falso()
    
def sonIguales(lista1, lista2):
    if lista1 == lista2:
        return verdadero()
    else:
        return falso()

def posicionElem(lista, elem):
    if(existe(lista, elem)==verdadero()):
        return lista.index(elem)+1 
    else:
        return cero()
    
def capicua(lista):
    l2 =crear()
    for i in range (len(lista)):
        anadirIzq(l2,lista[i])
    if((lista)==(l2)):
        return verdadero()
    else:
        return falso()
    

def eliminarRep(lista, elem):
    for elem in lista:
        if lista.count(elem)>1:
            lista.remove(elem)  
    return lista

def noNum(lista):
    if(not(esVacia(lista))):
     for i in range(len(lista)):
        if(type(lista[0])is int ==falso()):
            i = i+1 
        return i+1
    else:
        return 0
            



if  __name__=="__main__":
        l1 = crear()

        if(crear()==[]):
            print("Se cumple el axioma 1")
        else:
            print("No se cumple el axioma 1")
        
        l1 = crear()
        
        if(crearU(l1,"e")==anadirIzq(crear(),"e")):
            print("Se cumple el axioma 2")
        else:
            print("No se cumple el axioma 2")
        l1 = crear()
        if(crearU(l1,"e")==anadirDer(crear(),"e")):
            print("Se cumple el axioma 3")
        else:
            print("No se cumple el axioma 3")
        l1 = crear()
        if(izq(crear())=="error"):
            print("Se cumple el axioma 4")
        else:
            print("No se cumple el axioma 4")
        l1 = crear()
        if(izq(anadirIzq(l1,"e"))=="e"):
            print("Se cumple el axioma 5")
        else:
            print("No se cumple el axioma 5")
        
        l1 = crear()
        anadirDer(l1,"e")
        if(esVacia(l1)==verdadero()):
            if(izq(anadirDer(l1,"e"))=="e"):
                print("Se cumple el axioma 6")
            else:
                print("No se cumple el axioma 6")
        l1 = crear()
        if(esVacia(l1)==falso()):
            if(izq(anadirDer(l1,"e"))==izq("e")):
                print("Se cumple el axioma del vacio")
            else:
                print("No se cumple el axioma del vacio")
        l1 = crear()

        if(der(crear())=="error"):
            print("Se cumple el axioma 8")
        else:
            print("No se cumple el axioma 8")
        l1 = crear()
        if(der(anadirDer(l1,"e"))=="e"):
            print("Se cumple el axioma 9")
        else:
            print("No se cumple el axioma 9")
        
        l1 = crear()
       
        if(esVacia(l1)==verdadero()):
            if(der(anadirIzq(l1,"e"))=="e"):
                print("Se cumple el axioma 10")
            else:
                print("No se cumple el axioma 10")
        l1 = crear()
        if(esVacia(l1)==falso()):
            if(der(anadirIzq(l1,"e"))==izq("e")):
                print("Se cumple el axioma del vacio 2")
            else:
                print("No se cumple el axioma del vacio 2")
        
        l1 = crear()
        if(eliminarIzq(crear())==crear()):
            print("Se cumple el axioma 11 ")
        else:
            print("ERROR")
        
        l1 = crear()
        if(eliminarIzq(anadirDer(l1,"e"))==l1):
            print("Se cumple el axioma 12")
        else:
            print("No se cumple el axioma 12")

        l1 = crear()  
        if(esVacia(l1)):
            if(eliminarIzq(anadirDer(l1,"e"))==crear()):
                print("Se cumple el axioma 13")
            else:
                print("No se cumple el axioma 13")

        l1 = crear()
        anadirIzq(l1,"e")
        if(esVacia(l1)==falso()):
            if(eliminarIzq(anadirDer(l1,"e"))==anadirIzq(eliminarDer(l1),"e")):
                print("Se cumple el axioma 14")
            else:
                print("No se cumple el axioma 14")        

        l1 = crear()
        if(eliminarDer(anadirIzq(l1,"e"))==l1):
            print("Se cumple el axioma 15")
        else:
            print("No se cumple el axioma 15")

        l1 = crear()  
        if(esVacia(l1)):
            if(eliminarDer(anadirIzq(l1,"e"))==crear()):
                print("Se cumple el axioma 16")
            else:
                print("No se cumple el axioma 16")

        l1 = crear()
        if(not(esVacia(l1))):
            if(eliminarDer(anadirIzq(l1,"e"))==crear()):
                print("Se cumple el axioma 17")
            else:
                print("No se cumple el axioma 17")
        l1 = crear()
        if(esVacia(crear())==verdadero()):
            print("Se cumple el axioma 18")
        else:
            print("No se cumple el axioma 18")
        
        l1 = crear()
        if((esVacia(anadirIzq(l1,"e")))==falso()):
            print("Se cumple el axioma 19")
        else:
            print("No se cumple el axioma 19")

        l1 = crear()
        if((esVacia(anadirDer(l1,"e")))==falso()):
            print("Se cumple el axioma 20")
        else:
            print("No se cumple el axioma 20")     

        l1 = crear()
        if(longitud(crear())==cero()):
            print("Se cumple el axioma 21")
        else:
            print("No se cumple el axioma 21")

        l1 = crear()
        if(longitud(anadirDer(crear(),"e"))==sucesor(cero())):
            print("Se cumple el axioma 22")
        else:
            print("No se cumple el axioma 22")

        l1 = crear()

        if(sucesor(longitud(l1))==longitud(anadirDer(l1,"e"))):
            print("Se cumple el axioma 23 ")
        else:
            print("No se cumple el axioma 23")

        l1 = crear()
        if(existe(crear(),"e")==falso()):
            print("Se cumple el axioma 24")
        else:
            print("Se cumple el axioma 25")
        
        l1 = crear()

        if(existe(anadirIzq(crear(),"e"),"e")==verdadero()):
            print("Se cumple el axioma 26")
        else:
            print("No se cumple el axioma 26")
        
        l1 = crear()
        anadirIzq(l1,"e")
        if((existe(l1,"e"))or("e"=="ew")):
            if(existe(anadirIzq(l1,"ew"),"e")==verdadero()):
                print("Se cumple el axioma 27")
            else:
                print("No se cumple el axioma 27")

        l1 = crear()   
        if(posicionElem(crear(),"e")==cero()):
            print("Se cumple el axioma 28")
        else:
            print("No se cumple el axioma 28")

        l1 = crear()
        if(posicionElem(anadirIzq(l1,"e"),"e")==sucesor(cero())):
             print("Se cumple el axioma 29")
        else:
            print("No se cumple el axioma 29")
            
        l1 = crear()

        #if(posicionElem(anadirDer(l1,"e"),"e")==sucesor(posicionElem(der(l1),l1))):
        #    print("Se cumple el axioma 30")
        #else:
        #    print("No se cumple el axioma 30") 
          
        l1 = crear()
        if(capicua(crear())==verdadero()):
            print("Se cumple el axioma 31")
        else:
            print("No se cumple el axioma 31")
        
        l1 = [1,2,1]
        if(capicua(l1)==verdadero()):
            print("Se cumple el axioma Capi")
        else:
            print("No se cumple el axioma Capi")

        if(eliminarRep(crear(),"e")==crear()):
            print("Se cumple el  axioma 33")
        else:
            print("No se cumple el axioma 33")
        l1= crear()
        if(eliminarRep(anadirDer(l1,"e"),"e")==crearU(l1,"e")):
            print("Se cumple el axioma 34")
        else:
            print("No se cumple el axioma 34")

        l1 = crear()
        if(eliminarRep(anadirDer(anadirIzq(crear(),"e"),"e"),"e")==crearU(l1,"e")):
            print("Se cumple el axioma 35")
        else:
            print(" No se cumple el axioma 35")

        l1 = crear()

        if(noNum(crear())==cero()):
            print("Se cumple el axioma 36")
        else:
            print("No se cumple el axioma 36")
            
        l1 = crear()
        if(noNum(anadirIzq(crear(),"e"))==sucesor(cero())):
            print("Se cumple el axioma 37")
        else:
            print("No se cumple el axioma 37")







            
            
               
            
      
            

        






            