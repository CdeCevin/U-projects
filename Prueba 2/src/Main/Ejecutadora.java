/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Main;

/**
 *
 * @author Koliv
 */
import prueba.pkg2.Conjunto;
public class Ejecutadora {
    public static void main(String[] args) {
        Conjunto c1 = new Conjunto();
        c1.añadir(10);
        c1.añadir(10);
        c1.añadir(20);
        c1.añadir(30);
        c1.añadir(70);
        c1.añadir(90);
        
        
        System.out.println("Conjunto c1");
        c1.imprime();
        
        Conjunto c2 = new Conjunto();
        c2.añadir(50);
        c2.añadir(30);
        c2.añadir(70);
        c2.añadir(80);

        System.out.println("Conjunto c2");
        c2.imprime();
      
        System.out.println("Interseccion c1 con c2");
        c1.interseccion(c2).imprime();        
        System.out.println("Diferencia c1 con c2");
        c1.diferencia(c2).imprime();
        
    }
}

    
    

