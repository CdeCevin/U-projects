/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package prueba.pkg2;

/**
 *
 * @author Koliv
 */
import java.util.ArrayList;
import java.util.List;

public class Conjunto {
    private List elementos;
    
    public Conjunto(){
        this.crear();
    }
    private void crear(){
        this.elementos = new ArrayList();
    }
    
    public Conjunto añadir(Object elem){
        if(!this.esta(elem))
            this.elementos.add(elem);
        return this;
    }
    
    public boolean esta(Object elem){
        return this.elementos.contains(elem);
    }
    
    public boolean esVacio(){
        return this.elementos.size() == 0;
    }
    
    public Conjunto union(Conjunto c){
        if(this.esVacio())
            return c;
        if(c.esVacio())
            return this;
        Conjunto nuevo = this.copia();
        for(Object e: c.elementos){
            if(!this.esta(e))
              nuevo.añadir(e);
        }
        return nuevo;
    }
    
    private Conjunto copia(){
        Conjunto c = new Conjunto();
        for(Object e: this.elementos)
            c.añadir(e);
        return c;
    }
    
    public void imprime(){
        for(Object e: this.elementos){
            System.out.print("["+e+"]");
        }
        System.out.println("");
            
    }
     
    public Conjunto eliminar(Object e){
        if(this.esta(e))
            this.elementos.remove(e);
        return this;
    }
    
    public Conjunto diferencia(Conjunto c){
        if(this.esVacio())
            return c;
        if(c.esVacio())
            return this;
        Conjunto nuevo = this.copia();
        for(Object e: c.elementos){
            if(this.esta(e))
              nuevo.eliminar(e);
        }
        return nuevo;
    }
    
    public Conjunto interseccion(Conjunto c){
        
        
       if(this.esVacio())
            return c;
        if(c.esVacio())
            return this;
        Conjunto nuevo = this.copia();
        for(Object e: this.elementos){
            if(!c.esta(e))
              nuevo.eliminar(e);
        }
        return nuevo;
        
        
       
    }        
    }

    
  