#Numeros complejos
from EENumEnteros import *

def creaC(R,I):
    NumC = [R,I]
    return NumC

def real(complejo):
    return complejo[0]

def imaginario(complejo):
    return complejo[1]

def suma(complejo1, complejo2):
    complejo3 = []
    complejo3.append(complejo1[0]+complejo2[0])
    complejo3.append(complejo1[1]+complejo2[1])
    return complejo3

def moduloC(complejo):
    return(((complejo[0])**2)+((complejo[1])**2))**(1/2)


if __name__=="__main__":

    print(moduloC([3,4]))
    
    #Comprobacion del primer Axioma de real
    c1 = creaC(cero(),5)
    res = real(c1)
    if(res==0):
        print("ta ien \n")
    else:
        print("puxao")
    
    #Comprobacion del segundo Axioma de real
    c1 = creaC(sucesor(cero()),5)
    res = real(c1)
    if(res==sucesor(cero())):
        print("Se cumple el esgundo\n")
    else:
        print("ño")

    #COmprobacion del tercer axioma del real
    N =5
    M = 10
    c1=creaC(N,M)
    res = real(c1)
    if(res==N):
        print("ANSHE\n")
    else:
        print("anasHent")

