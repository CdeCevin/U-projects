/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package javaapplication4;

/**
 *
 * @author Koliv
 */

import java.util.ArrayList;
public class Empresa {
    
    private ArrayList<Trabajador>ListaActivos;
    private ArrayList<Trabajador>ListaDespedidos; 
    private ArrayList<Trabajador>ListaNuevos;

    public ArrayList<Trabajador> getListaNuevos() {
        return ListaNuevos;
    }

    public void setListaNuevos(ArrayList<Trabajador> ListaNuevos) {
        this.ListaNuevos = ListaNuevos;
    }

    public Empresa(ArrayList<Trabajador> ListaNuevos) {
        this.ListaNuevos = ListaNuevos;
    }

    

    public ArrayList<Trabajador> getListaActivos() {
        return ListaActivos;
    }

    public void setListaActivos(ArrayList<Trabajador> ListaActivos) {
        this.ListaActivos = ListaActivos;
    }

    public ArrayList<Trabajador> getListaDespedidos() {
        return ListaDespedidos;
    }

    public void setListaDespedidos(ArrayList<Trabajador> ListaDespedidos) {
        this.ListaDespedidos = ListaDespedidos;
    }

  
    
    
    
    
   
    
    
    
    public Empresa(){
        
        ListaActivos = new ArrayList<>();
        ListaDespedidos = new ArrayList<>();
        ListaNuevos = new ArrayList<>();
        
        Departamento D1 = new Departamento("Produccion", "Produccion se encarga de la produccion de los productos distribuidos por la empresa");
        Departamento D2 = new Departamento("Administracion", "Administracion se encarga de la administracion de la empresa xd");
        
        
        Trabajador T1 = new Trabajador("17794451-3","Manchas Lindo",350000,D1);
        Trabajador T2 = new Trabajador("15749532-6","Michael Scott",750000,D2);
        Trabajador T3 = new Trabajador("18604278-2","Jim Halpert",450000,D2);
        Trabajador T4 = new Trabajador("18325542-5","Pam Beesley",430000,D2);
        Trabajador T5 = new Trabajador("17533862-7","Dwigth Schrute",450000,D2);
        Trabajador T6 = new Trabajador("16732295-8","Darryl Phiblin",440000,D1);
        Trabajador T7 = new Trabajador("19349632-9","Ryan Howard",390000,D2);
        Trabajador T8 = new Trabajador("13636835-2","Stanley Hudson",450000,D2);
        Trabajador T9 = new Trabajador("13636835-2","Andy Bernard",420000,D2);
        Trabajador T10= new Trabajador("21323396-3","Apu Bonito",360000,D1);
        
        ListaActivos.add(T1);
        ListaActivos.add(T2);
        ListaActivos.add(T3);
        ListaActivos.add(T4);
        ListaActivos.add(T10);
        ListaDespedidos.add(T5);
        ListaDespedidos.add(T6);
        ListaDespedidos.add(T7);
        ListaDespedidos.add(T8);
        ListaDespedidos.add(T9);
        
       
    
    }
    
    public int EstaD(String Rut){
        int caso = 1;
        for(int i = 0; i<ListaDespedidos.size();i++){
            if(ListaDespedidos.get(i).getRut().equals(Rut)){
                caso =-1;
                break;
            }
       
        }
        
        return caso;
    }
    
    
    public void Agregar(Trabajador TrabajadorN){
        int cont = 0;
        int cont2 = 0; 

        Departamento D1 = new Departamento("Produccion", "Produccion");
        Departamento D2 = new Departamento("Administracion", "Administracion");
        //System.out.println(D1);
        //System.out.println(D2);
        //System.out.println(TrabajadorN.getDepa());
     for(int i=0;i<ListaActivos.size();i++){
         
       if(TrabajadorN.getDepa().getNombre().equals(D1.getNombre())){
            //if(!(ListaDespedidos.get(i).getRut().equals(TrabajadorN.getRut()))){
            if(EstaD(TrabajadorN.getRut())==1){
               if(!(ListaActivos.get(i).getRut().equals(TrabajadorN.getRut()))){
                  cont = cont + 1;
               }
            }
            else{
                cont2++;
            }
            
       }
        if(TrabajadorN.getDepa().getNombre().equals(D2.getNombre())){
            if(EstaD(TrabajadorN.getRut())==1){
               if(!(ListaActivos.get(i).getRut().equals(TrabajadorN.getRut()))){
                  cont = cont + 1;
               }
            }
            else{
                cont2++;
            }
           
        }
    }
     if(cont!=0){
            ListaActivos.add(TrabajadorN);
            ListaNuevos.add(TrabajadorN);
            System.out.println("El trabajador ha sido agregado");
                  
     }
     else{
         System.out.println("El trabajador no se puede agregar");
     }
     if(cont2!=0){
         System.out.println("El trabajor ya ha sido despededido de la empresa");
     }
    }
   
    
    public void Despedir(String Rut){
     int cont = 0;
     for(int i=0;i<ListaActivos.size();i++){
            if(ListaActivos.get(i).getRut().equals(Rut)){
                ListaDespedidos.add(ListaActivos.get(i));
                ListaActivos.remove(i);
                cont++;
                
            }
           }
     if(cont>0){
         System.out.println("El trabajador ha sido despedido");
         
     }
     else{
        System.out.println("El trabajado no se ha encontrado");
     }
       
       
        
    }
    
    public void Buscar(String Rut){
        int cont = 0;
        for(int i=0;i<ListaActivos.size();i++){
            if(ListaActivos.get(i).getRut().equals(Rut)){
                System.out.println(ListaActivos.get(i));
                cont = cont+1;
                
            }
            
           }
        if(cont==0){
            System.out.println("No se ha encontrado el trabajador");
        }
       
        
    }
    
    public void AumentarS(String Rut, int Aumento){
        int cont = 0;
        for(int i=0; i<ListaActivos.size();i++){
            if(ListaActivos.get(i).getRut().equals(Rut)){
                if(Aumento<=(ListaActivos.get(i).getSueldo())/2){
                    
                    ListaActivos.get(i).setSueldo(ListaActivos.get(i).getSueldo()+Aumento);
                   cont = cont+1;
                }
                else{
                    System.out.println("No se puede aumentar tal cantidad de sueldo");
                }
                
            }
            
        }
        if(cont>0){
            System.out.println("Se ha aumentado el saldo con exito");
        }
        else{
            System.out.println("No se ha podido aumentar el saldo");
        }
        
    }
    
    public void FiltroSueldo(int SueldoMin, int SueldoMax){
        int cont=0;
        System.out.println("Los trabajadores con sueldo desde "+SueldoMin+" hasta "+SueldoMax+ " son: ");
        for(int i=0; i<ListaActivos.size();i++){
            if((SueldoMin<=ListaActivos.get(i).getSueldo())&&(SueldoMax>=ListaActivos.get(i).getSueldo())){
                    System.out.println(ListaActivos.get(i));
                    cont = cont+1;
                }

           
        }
        if(cont==0){
            System.out.println("No hay trabajadores en ese rango de sueldo");
        }
        
        
    }
    
    public void TPD(String Nombre){
        int cont = 0;
        Departamento D1 = new Departamento("Produccion", "Produccion");
        Departamento D2 = new Departamento("Administracion", "Administracion");
        if(Nombre.equals(D1.getNombre())){
            for(int i=0; i<ListaActivos.size();i++){
          
                if(D1.getNombre().equals(ListaActivos.get(i).getDepa().getNombre())){
                    System.out.println(ListaActivos.get(i));
                    cont = cont+1;
                }
            }
        }
        
        if(Nombre.equals(D2.getNombre())){
            for(int i=0; i<ListaActivos.size();i++){
          
                if(D2.getNombre().equals(ListaActivos.get(i).getDepa().getNombre())){
                    System.out.println(ListaActivos.get(i));
                    cont = cont+1;
                }
                
            }
        }
                
        if(cont==0){
            System.out.println("No hay trabajadores en dicho Departamento");
        }
        
    }
    
    public void CambiarS(String Rut, int Sueldo){
        int cont = 0;
        for(int i=0; i<ListaActivos.size();i++){
            if(ListaActivos.get(i).getRut().equals(Rut)){
                    ListaActivos.get(i).setSueldo(ListaActivos.get(i).getSueldo()*0);
                    ListaActivos.get(i).setSueldo(ListaActivos.get(i).getSueldo()+Sueldo);
                    System.out.println("Ahora su nuevo Sueldo es: "+Sueldo);
                    cont++;      
                }
        }
        if(cont==0){
            System.out.println("El trabajador no se ha encontrado.");
        }
        
    }
    
    public void CambiarSD(String Departamento, int Sueldo){
        int cont = 0;
        Departamento D1 = new Departamento("Produccion", "Produccion se encarga de la produccion de los productos distribuidos por la empresa");
        Departamento D2 = new Departamento("Administracion", "Administracion se encarga de la administracion de la empresa xd");
        for(int i=0; i<ListaActivos.size();i++){
            
            if((D1.getNombre().equals(ListaActivos.get(i).getDepa().getNombre())||D2.getNombre().equals(ListaActivos.get(i).getDepa().getNombre()))){
                    ListaActivos.get(i).setSueldo(ListaActivos.get(i).getSueldo()*0);
                    ListaActivos.get(i).setSueldo(ListaActivos.get(i).getSueldo()+Sueldo);
                    cont++;
                }
        }
        if(cont!=0){
            System.out.println("El sueldo del departamento ha cambiado");
        }
        else{
            System.out.println("No hay trabajadores en dicho Departamento");
        }
        
    }
    
    public void MostrarT(){
        System.out.println("Los trabajadores de la empresa son: ");
        for(int i=0; i<ListaActivos.size();i++){
            System.out.println(ListaActivos.get(i));
        }
    }
    
    public void MostrarD(){
        System.out.println("Los trabajadores despedidos en la empresa son: ");
        for(int i=0; i<ListaDespedidos.size();i++){
            System.out.println(ListaDespedidos.get(i));
        }
    }
    
    public void MostrarC(){
        if(ListaNuevos.size()==0){
            System.out.println("No se han contratado nuevos trabajadores");
        }
        else{
            System.out.println("Los trabajadores contratados en la empresa son: ");
            for(int i=0; i<ListaNuevos.size();i++){
                System.out.println(ListaNuevos.get(i));
        }
        }
        
    }

    
    

    
}
