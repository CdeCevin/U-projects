#!/usr/bien/python
# -*- coding: utf-8 -*- 
#Autor1: Kevin Olivares Fuentes 
#import<bibliteca>
import matplotlib.pyplot as plt


#defición de funciones
def lectura(nombre):
    X = []
    Y= []

    ar = open(nombre)
    for i in ar:
        leer = i.split(',')
        leer.pop(0)
        #print(leer)
        if leer[0]=="07":
            #print(leer[1])
            X.append(leer[1])
            print(X)
        else:
            leer.pop(1)
        if leer[0]=="07":
            a = leer[4]
            a = a.rstrip('\n')
            a = float(a)
            print(a)
           
            Y.append(a)
            print(Y)
    ar.close()
    return X, Y



def graficar(X, Y):
    plt.title('Casos por comunas en Maule')
    plt.bar(X, Y)
    plt.show()

def detalle(X, Y):
    print("Tenemos",Y, "numero de casos para", X,"comunas")

#Codigo principal 
if __name__ == "__main__":
    X, Y = lectura('casos_por_region.csv')
    graficar(X, Y)
    detalle(X, Y)
    

