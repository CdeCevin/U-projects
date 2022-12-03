/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package javaapplication5;

/**
 *
 * @author Koliv
 */
import java.util.ArrayList;
import java.util.List;
public class Lista {
    private List <Integer>elementos;
    
    public Lista(){
        this.crear();
    }
    
    private void crear(){
        this.elementos = new ArrayList<>();
    }
    
    public Lista anIzq(Integer n){
        this.elementos.add(0, n);
        return this;
    }
    public Lista anDer(Integer n){
        this.elementos.add(this.elementos.size(), n);
        return this;
    }
    
    public Lista elimIzq(){
        if(!this.esVacia())
            this.elementos.remove(0);
        return this;
    }
    public Lista elimDer(){
        if(!this.esVacia())
            this.elementos.remove(this.elementos.size());
        return this;
    }
    
    public Integer izq(){
        return this.elementos.get(0);
    }
    
    public Integer der(){
        return this.elementos.get(this.elementos.size()-1);
    }
    
    public boolean esVacia(){
        return this.elementos.isEmpty();
    }

    public void imprime(){
        for (int i = 0; i < this.elementos.size(); i++)
            System.out.print("["+this.elementos.get(i)+"]");
        System.out.println("");
    }
    
    public Lista insertarOrdenado(int numero){
    if(this.esVacia()==true){
        this.anIzq(numero);
        return this;
        
    }
    else{
        if( numero<=this.izq()){
            this.anIzq(numero);
        }
        else{
            int numero1 = this.izq();
            this.elimIzq().insertarOrdenado(numero).anIzq(numero1);
        }
        return this;
    }
    }
   


 }