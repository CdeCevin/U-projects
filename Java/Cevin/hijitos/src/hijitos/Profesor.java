/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package hijitos;

/**
 *
 * @author usuario
 */
public class Profesor extends Persona {
    
    //ATRIBUTOS

    private String Modulo;
    
    //CONSTRUCTOR
    public Profesor() {
        Modulo = "";
    }
    
    public Profesor(String Nombre, int Edad) {
        super(Nombre, Edad);
        this.Modulo = Modulo;
        
    }
     
    //METODOS

    public String getModulo() {
        return Modulo;
    }

    public void setModulo(String Modulo) {
        this.Modulo = Modulo;
    }
    
   

    
}
