/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package agenda;

/**
 *
 * @author Koliv
 */
import java.util.Scanner;
import java.util.ArrayList;
public class Agenda {
    ArrayList<Agenda>ListadeContactos = new ArrayList<>();
    
    
    public String Nombre;
    public String Apellido;
    public int Telefono;
    public String Correo;

     public Agenda() {
         Nombre = "";
         Apellido = "";
         Telefono = 0;
         Correo = "";
     }

     public Agenda(String Nombre, String Apellido, int Telefono, String Correo) {
         this.Nombre = Nombre;
         this.Apellido = Apellido;
         this.Telefono = Telefono;
         this.Correo = Correo;
     }

    @Override
    public String toString() {
        return "Contacto:{" + "Nombre=" + Nombre + ", Apellido=" + Apellido + ", Telefono=" + Telefono + ", Correo=" + Correo + '}';
    }

     public String getNombre() {
         return Nombre;
     }

     public void setNombre(String Nombre) {
         this.Nombre = Nombre;
     }

     public String getApellido() {
         return Apellido;
     }

     public void setApellido(String Apellido) {
         this.Apellido = Apellido;
     }

     public int getTelefono() {
         return Telefono;
     }

     public void setTelefono(int Telefono) {
         this.Telefono = Telefono;
     }

     public String getCorreo() {
         return Correo;
     }

     public void setCorreo(String Correo) {
         this.Correo = Correo;
     }
    
    public void Memoria(){
        Agenda A3 = new Agenda("Kevin","Olivares",974330900,"Kolivaresfuentes@gmail.com");
        Agenda A4 = new Agenda("Anais","Muñoz",998337629,"MunozArayaAnais@gmail.com");
        Agenda A5 = new Agenda("Fabiola","Ramirez",992528563,"Fabiola.Ramirez@alu.ucm.cl");
        ListadeContactos.add(A3);
        ListadeContactos.add(A4);
        ListadeContactos.add(A5);
        
    }

     public void Lista(){
        
        System.out.println("****CONTACTOS****");
        for(int i=0;i<ListadeContactos.size();i++){
        
            System.out.println(ListadeContactos.get(i));
        }
         //Aqui veremos los datos guardados en los contactos

     }

     public void Buscar(){
        String vusca;
        int cont = 0;
        Scanner sc = new Scanner(System.in);
        System.out.println("Que contacto deseas buscar?");
        vusca = sc.nextLine();
         
         //Aqui buscaremos en los contactos, supongo que hay que usar .equals  o listas xd
           for(int i=0;i<ListadeContactos.size();i++){
            if(ListadeContactos.get(i).getNombre().equals(vusca)){
                System.out.println("Contacto encontrado:\n"+ListadeContactos.get(i).getNombre()+" "+ListadeContactos.get(i).getApellido()+"\nNumero: "+ListadeContactos.get(i).getTelefono()+"\nCorreo: "+ListadeContactos.get(i).getCorreo());
                cont = cont+1;
            }
           }
        if(cont==0){
            System.out.println("Contacto no encontrado");
        }
     }

     
     public void Agregar(){
        
        int number;
        String name,apell,corr;
        Scanner sc = new Scanner(System.in);
        System.out.println("Escriba el nombre del contacto");
        name = sc.nextLine();
        
        this.setNombre(name);
        System.out.println("Escriba el apellido del contacto");
       
        apell = sc.nextLine();
        this.setApellido(apell);
       
        System.out.println("Digite el numero del contacto");
        number = sc.nextInt();
        this.setTelefono(this.getTelefono()+number);
        sc.skip("\n");
        System.out.println("Escriba el correo  del contacto");
        corr = sc.nextLine();
        this.setCorreo(corr);
        
        Agenda A1 = new Agenda(name,apell,number,corr);
       
        ListadeContactos.add(A1);
       
     
     }
     public void Eliminar(){
        String vusca;
        int cont = 0;
        Scanner sc = new Scanner(System.in);
        System.out.println("Que contacto deseas eliminar?");
        vusca = sc.nextLine();
         
         //Aqui buscaremos en los contactos, supongo que hay que usar .equals  o listas xd
           for(int i=0;i<ListadeContactos.size();i++){
            if(ListadeContactos.get(i).getNombre().equals(vusca)){
                ListadeContactos.remove(i);
                System.out.println("Contacto eliminado");
                cont = cont+1;
            }
           }
        if(cont==0){
            System.out.println("Contacto no encontrado");
        }
     }
     
}
   //usar getnombre 
