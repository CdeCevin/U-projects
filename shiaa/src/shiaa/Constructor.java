/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package shiaa;

/**
 *
 * @author usuario
 */
public class Constructor extends Shiaa implements Vocashion{

    public Constructor() {
    }

    public Constructor(String Nombre, String Apellido, int Edad) {
        super(Nombre, Apellido, Edad);
    }
    
    @Override
    public void Getinfo(){
        
        System.out.println(this.getNombre()+" es Constructor.");
        
    }
    
    
}
