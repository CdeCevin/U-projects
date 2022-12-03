/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package animale;

/**
 *
 * @author usuario
 */
public class Perro extends Animales {

    public Perro() {
    }

    public Perro(String Especie, String Nombre, int Edad) {
        super(Especie, Nombre, Edad);
    }
    
    @Override
    public void Hablar(){
        
        System.out.println(this.getNombre()+"dice guau");
        
    }
    
}
