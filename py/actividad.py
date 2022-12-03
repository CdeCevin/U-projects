#!/usr/bien/python
# -*- coding: utf-8 -*- 
#Autor1: Kevin Olivares Fuentes 
#import<bibliteca>

#defición de funciones
def lectura(nombre):
    ar = open(nombre)
    for i in ar:
     leer = i.split(',')
     
     if leer[0] == "Maule":
            a = leer
            s = a[1]
            s = float(s)
            porcentaje = ((((s*0.08))*100)/908097)
            PFalle = ((float(a[2])*100)/908097)
            
            print("La region es:",a[0])
            print("los contagiados totales son:",a[1])
            print("los fallecidos totales son",a[2])
            print("los casos nuevos son:",a[11]+a[12])
            print("y un total de",a[13],"casos activos")
            print("Con un total del",(format(porcentaje,".2f")),"%","de poblacion total contagiada")
            print("Con un",(format(PFalle,".2f")),"%","de fallecidos de la poblacion total")
    ar.close()
   
'''def a(nombre):
    f = []

    aux = 0
    ar = open(nombre)
    for i in ar:
        leer = i.split(',')
        leer.pop(1)
        if leer[1]:
            
            f.append(leer[1])
    
    
    f.pop(0)  
    
    for elem in f:
        if elem > aux:
            aux=elem
    print(aux) '''
        
          #No me dio tiempo de terminarlo
    

   



#Codigo principal

if __name__=="__main__":
    lectura("CasosPorRegion.csv")
    #a("CasosPorRegion.csv")
    
    
    