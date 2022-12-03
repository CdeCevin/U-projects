/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package mainArbol;

/**
 *
 * @author Koliv
 */
import arboles.ArbolBin;
import arboles.Lista;
import arboles.NodoArbol;

public class Mainciano{
    
        public static void main(String[] args){
               ArbolBin arbolito = new ArbolBin();
               ArbolBin arbolito2 = new ArbolBin();
               //System.out.println(arbolito.esVacio());
                /*ArbolBin hijoIzq = new ArbolBin();
               ArbolBin hijoDer = new ArbolBin();
               ArbolBin nietoIzq = new ArbolBin();
               ArbolBin nietoDer = new ArbolBin();
               ArbolBin bisnietoIzq = new ArbolBin();
               ArbolBin bisnietoDer = new ArbolBin();     
              Lista listita = new Lista();
                     
               bisnietoIzq.plantar(new ArbolBin(), 0, new ArbolBin());
               bisnietoDer.plantar(new ArbolBin(), 8, new ArbolBin());
               
               nietoIzq.plantar(bisnietoIzq, 2, new ArbolBin());
               
               nietoDer.plantar(new ArbolBin(), 3, bisnietoDer);
               
               hijoIzq.plantar(nietoIzq, 4, new ArbolBin());
               hijoDer.plantar(new ArbolBin(), 9, nietoDer);
               
               arbolito.plantar(hijoIzq,   1, hijoDer);
               
               arbolito.preorden();
               System.out.println("");
               arbolito.inorden();
               System.out.println("");
               arbolito.postorden();
               System.out.println("");*/
               
               arbolito.ordenado(9);
               arbolito.ordenado(7);
               arbolito.ordenado(8);
               arbolito.ordenado(6);
               arbolito.ordenado(3);
               arbolito.ordenado(4);
               arbolito.ordenado(2);
               arbolito.ordenado(5);
               arbolito.ordenado(1);
               arbolito.ordenado(12);
               arbolito.ordenado(13);
               arbolito.ordenado(16);
               arbolito.ordenado(15);
               arbolito.ordenado(20);
               
               arbolito2 = arbolito;
               System.out.println("El arbol con recorrido en PreOrden queda:");
               arbolito.preorden();
             
               System.out.println("");
               System.out.println("El arbol con recorrido en InoOrden queda:");
               arbolito.inorden();
               System.out.println("");
               System.out.println("El arbol con recorrido en PostOrden queda:");
               arbolito.postorden();
               System.out.println("");
               System.out.println("El arbolito 2 queda como: ");
               arbolito2.preorden();
               System.out.println("");
              
             
               System.out.println("El largo del arbol es "+arbolito.ContarHojas());
               arbolito.Buscar(20);
              
                arbolito.imprime3();
               
              
               
        }
}