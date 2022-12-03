
package tamagoshi;

/**
 *
 * @author Koliv
 */
import java.util.Scanner;
import mouse.manchas2;
public class Tamagoshi {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        manchas2 mascota = new manchas2();
        menu(mascota.getEstado(),mascota);
    }
    public static void menu(Boolean Estado,manchas2 mascota){
    int sigue = 0;
    Scanner sc = new Scanner(System.in);
    
    while(sigue == 0){
       
        
        System.out.println("------MENU POU------");
        System.out.println("1.- Alimentar al POU");
        System.out.println("2.- Ejercitar al POU");
        System.out.println("3.- Ver estado y peso del POU");
        System.out.println("4.- REVIVIR al POU");
        System.out.println("5.- Salir");
        System.out.println(":");
        int eleccion = sc.nextInt();
        sc.skip("\n");
        
        
       
        switch(eleccion){
            
            case(1) -> { 
                String Alimento;
                System.out.println("---Menu de Alimentos---");
                System.out.println("1.- Pan");
                System.out.println("2.- Ensaladas");
                System.out.println("3.- Hamburguesa");
                System.out.println("4.- Pastel");
                System.out.println("5.- Agua");
                System.out.print(":");
                Alimento = sc.nextLine();
                mascota.Alimentar(Alimento);
            }
            
            case(2) -> {
                String Ejercicio;
                System.out.println("---Menu de Ejercicio---");
                System.out.println("1.- Trotar");
                System.out.println("2.- Correr");
                System.out.println("3.- Andar en Bici");
                System.out.println("4.- Nadar");
                System.out.println("5.- Videojuegos");
                System.out.print(":");
                Ejercicio = sc.nextLine();
                mascota.Ejercitar(Ejercicio);
            }
            case(3) -> {
                String Estadito;
                Estadito = mascota.toString();
                System.out.println(Estadito);
                //mascota.toString();
            }
            case(4) -> { 
                String codigo;
                String contra="Tamagoshi";
                System.out.println("Ingresar codigo");
                System.out.print(":");
                codigo = sc.nextLine();
                if(codigo.equals(contra)==true){
                    mascota.Revivir(codigo);
                }
            }
            case(5) -> sigue = 1;
        
        }
        
    
        
    }
        
        
    }
    
}

