
package Mein;

/**
 *
 * @author Kevin Olivares
 */
import javaapplication4.Trabajador;
import javaapplication4.Departamento;
import javaapplication4.Empresa;
import java.util.Scanner;

public class Main {
    
    public static void main(String[] args){
        
        
        
        Empresa Empre = new Empresa();
        Scanner sc = new Scanner(System.in);
        int sigue = 0;
        while(sigue==0){
            
            System.out.println(" -----------MENU DE FUNCIONES-----------");
            System.out.println(" | 1. Contratar Trabajador             |");
            System.out.println(" | 2. Buscar Trabajador                |");
            System.out.println(" | 3. Aumentar sueldo de Trabajador    |");
            System.out.println(" | 4. Filtrar por sueldo               |");
            System.out.println(" | 5. Filtrar por departamento         |");
            System.out.println(" | 6. Despedir Trabajador              |");
            System.out.println(" | 7. Cambiar sueldo de Trabajador     |");
            System.out.println(" | 8. Cambiar sueldo del departamento  |");
            System.out.println(" | 9. Ver trabajadores                 |");
            System.out.println(" | 10. Ver despedidos                  |");
            System.out.println(" | 11. Ver contratados                 |");
            System.out.println(" | 12. Salir                           |");
            System.out.println(" --------------------------------------");
            System.out.print("Su eleccion: ");
            int eleccion = sc.nextInt();
            sc.skip("\n");
            
            switch(eleccion){
                
                case(1)->{
                    
                    Scanner sx = new Scanner(System.in);
                    String Rut, Nombre, Depa1,Depa2;
                    int Sueldo;
                    
                    System.out.println("Ingrese RUT del trabajador");
                    Rut = sx.nextLine();
                    System.out.println("Ingrese el Nombre");
                    Nombre = sx.nextLine();
                    System.out.println("Ingrese el departamento");
                    Depa1 = sx.nextLine();
                    System.out.println("Ingrese la descripcion");
                    Depa2 = sx.nextLine();
                    System.out.println("Ingrese el sueldo");
                    Sueldo = sx.nextInt();
                    
                    
                    Departamento depana = new Departamento(Depa1,Depa2);
                    Trabajador tra = new Trabajador(Rut,Nombre,Sueldo,depana);
                   
                    Empre.Agregar(tra);
                    
                }
                case(2)->{
                    Scanner busca = new Scanner(System.in);
                    String Buscar;
                    System.out.print("Ingrese el RUT del trabajador a buscar:");
                    Buscar = busca.nextLine();
                    Empre.Buscar(Buscar);
                }
                
                case(3)->{
                    Scanner rutt = new Scanner(System.in);
                    Scanner aumenti = new Scanner(System.in);
                    String Rut;
                    int Aumento;
                    System.out.println("Ingrese el Rut del trabajador");
                    Rut = rutt.nextLine();
                    System.out.println("Ingrese el valor del Aumento de sueldo");
                    Aumento = aumenti.nextInt();
                    Empre.AumentarS(Rut,Aumento);
                    
                   
                }
                case(4)->{
                    
                    Scanner sueld = new Scanner(System.in);
                    int SaldoMin,SaldoMax;
                    System.out.println("Ingrese el sueldo minimo");
                    SaldoMin = sueld.nextInt();
                    System.out.println("Ingrese el sueldo maximo");
                    SaldoMax = sueld.nextInt();
                    if(SaldoMin<SaldoMax){
                        Empre.FiltroSueldo(SaldoMin, SaldoMax);
                    }
                    
                    
                    
                }
                case(5)->{
                    Scanner name = new Scanner(System.in);
                    String Nombre;
                    System.out.println("Ingrese el nombre del departamento");
                    Nombre = name.nextLine();
                    
                    
                    Empre.TPD(Nombre);
                }
                case(7)->{
                    Scanner name = new Scanner(System.in);
                    String Nombre;
                    int Sueldo;
                    System.out.println("Ingrese el rut");
                    Nombre = name.nextLine();
                    System.out.println("Ingrese el Sueldo");
                    Sueldo = name.nextInt();
                    if((Sueldo<350000)||(Sueldo>50000)){
                        System.out.println("El Sueldo ingresado no es valido");
                        break;
                    }
                    Empre.CambiarS(Nombre, Sueldo);
                    
                }
                case(6)->{
                    Scanner sx = new Scanner(System.in);
                    String Rut;
                    
                    
                    System.out.println("Ingrese RUT del trabajador");
                    Rut = sx.nextLine();
            
                    Empre.Despedir(Rut);
                }
                case(8)->{
                    Scanner na = new Scanner(System.in);
                    String Nombre;
                    int sueldo;
                    System.out.println("Ingrese el nombre del departamento");
                    Nombre = na.nextLine();
                    System.out.println("Ingrese el nuevo sueldo");
                    sueldo = na.nextInt();
                    if((sueldo<350000)||(sueldo>500000)){
                        System.out.println("El Sueldo ingresado no es valido");
                        break;
                    }
                    Empre.CambiarSD(Nombre,sueldo);
                }
                case(9)->{
                    Empre.MostrarT();
                }
                case(10)->{
                    Empre.MostrarD();
                }
                case(11)->{
                    Empre.MostrarC();
                }
                case(12)->{
                    sigue++;
                }
                
                
            }   
        }        
    }            
}                
                
                
                
            
                    
            
            
            
            
            
            
            
            
   