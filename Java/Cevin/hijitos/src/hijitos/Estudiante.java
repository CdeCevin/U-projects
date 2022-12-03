
package hijitos;

/**
 *
 * @yopo
 */
public class Estudiante extends Persona {
    //EL ESTUDIANTE HEREDARA LA INFORMACION
    //Atributos
    
    private String Carrera;
    
    //Constructores
    
    public Estudiante() {
     Carrera = "";
        
    }
    
    public Estudiante(String Nombre, int Edad) {
        super(Nombre, Edad);
        this.Carrera = Carrera;
    }
    
     //Metodos

    public String getCarrera() {
        return Carrera;
    }

    public void setCarrera(String Carrera) {
        this.Carrera = Carrera;
    }
    
    
    
}
