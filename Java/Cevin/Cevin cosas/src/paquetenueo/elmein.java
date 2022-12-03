/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package paquetenueo;

/**
 *
 * @author usuario
 */
import cevin.cosas.Empleao;
public class elmein {
    public static void main(String[] args){
        Empleao E1 = new Empleao();
        Empleao E2 = new Empleao("Kevin","Olivares",19,0);
        
        
        System.out.println(E2);
        
       
        
        E1.setNombre("Renato");
        System.out.println(E1);
        System.out.println(E2.getApellido());
    }
}
