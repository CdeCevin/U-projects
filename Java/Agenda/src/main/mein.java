
package main;

/**
 *
 * @author Cevin
 */
import agenda.Agenda;
import java.util.Scanner;
public class mein {
   
   public static void main(String[] args){
        
    Agenda sx = new Agenda();
    Scanner sc = new Scanner(System.in);
    int sigue = 0;
    sx.Memoria();
    while(sigue==0){
        System.out.println("------AGENDA DE CONTACTOS------");
        System.out.println("1.- Añadir contacto");
        System.out.println("2.- Mostrar lista de contactos");
        System.out.println("3.- Buscar contacto");
        System.out.println("4.- Eliminar contacto");
        System.out.println("5.- Cerrar Agenda");
        int eleccion = sc.nextInt();
        sc.skip("\n");
        
        switch(eleccion){
            
            case(1) -> { 
                sx.Agregar();
            }
            
            case(2) -> {
                
               sx.Lista();
            }
            case(3) -> {
               sx.Buscar();
            }
            case(4) -> { 
                sx.Eliminar();
                
            }
            case(5)->{
                System.out.println("--SE HA CERRADO LA AGENDA--");
                System.exit(0);
                sigue++;
            }
   
    }
        
        
    }
   }

   
    
}
