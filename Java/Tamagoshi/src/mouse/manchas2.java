
package mouse;
/**
 *
 * @author Koliv
 */
public class manchas2 {
    //Atributos    
    private String Nombre;
    private int Peso;
    public boolean Estado; 
           
    
    
    //Constructores

    public manchas2() {
       Nombre = "Pou";
       Peso = 100;
       Estado = true;
               
    }
    
   
    public manchas2(String Nombre, int Peso, boolean Estado) {
        this.Nombre = Nombre;
        this.Peso = Peso;
        this.Estado = Estado;
    }
    
    //Metodos

   
    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public int getPeso() {
        return Peso;
    }

    public void setPeso(int Peso) {
        this.Peso = Peso;
    }

    public boolean getEstado() {
        return Estado;
    }

    public void setEstado(boolean Estado) {
        this.Estado = Estado;
    }
    
    //Funciones 
    private boolean Validar(){
    
        if(this.getEstado()==true){
            return true;
        }
        else{
            System.out.println("El Pou ta muertito");
            this.setEstado(false);
            return false;
        }
    
    }
 
    
    public void Alimentar(String Alimento){
        
        if(Validar()==true){
            switch(Alimento){
                
                case("Pan") -> { 
                    
                    System.out.println("El pou se comio un pan");
                    this.setPeso(this.getPeso()+ 30) ;
                
                }
                case("Ensaladas")->{
                    System.out.println("El pou se comio una ensaladita");
                    this.setPeso(this.getPeso()+10);
                
                }
                case("Hamburguesa")->{
                    
                    System.out.println("El Pou se comio una anvorgesa");
                    this.setPeso(this.getPeso()+100);
                    
                }
                case("Pastel")->{
                    
                    System.out.println("El Pou se ha comido un pastelito");
                    this.setPeso(this.getPeso()+50);
                    
                }
                case("Agua")->{
                    
                    System.out.println("El pou ha tomado awita");
                    this.setPeso(this.getPeso()+5);
                    
                }
                
            }
       
        }
        else{
            System.out.println("No se puede alimentar al Pou porque esta muerto, q te pasa enfermito");
        }
        
    }
    
    public void Ejercitar(String Ejercicio){
        
        if(Validar()==true){
            switch(Ejercicio){
                
                case("Trotar") -> { 
                    
                    System.out.println("El pou salio a trotar");
                    this.setPeso(this.getPeso()- 50) ;
                
                }
                case("Correr")->{
                    System.out.println("El pou salio a correr");
                    this.setPeso(this.getPeso()-60);
                
                }
                case("Andar en bicicleta")->{
                    
                    System.out.println("El Pou salio a andar en bici");
                    this.setPeso(this.getPeso()-50);
                    
                }
                case("Nadar")->{
                    
                    System.out.println("El Pou salio a nadar");
                    this.setPeso(this.getPeso()-70);
                    
                }
                case("videojuegos")->{
                    
                    System.out.println("El pou esta jugando videojuegos");
                    this.setPeso(this.getPeso()-5);
                    
                }
                
            }
       
        }
        else{
            System.out.println("No puede hacer ejercicio el Pou porque esta muerto, q te pasa enfermito");
        }
    }
    
    public void Revivir(String codigo){
        if(Validar()==false){
            
            System.out.println("El codigo es correcto");
            this.setPeso(100);
            this.setEstado(true);
        }
        else{
            System.out.println("No puedes revivir a quien aun no ha muerto");
        }
    }
     @Override
    public String toString() {
        return "{" + "Nombre=" + Nombre + ", Peso=" + Peso + ", Estado=" + Estado + '}';
    }
    
    private int Verificar(){
         if(this.getPeso()<100){
             System.out.println("El Pou murio de hambre, pobrecito...");
             this.getEstado(false);
             return 1;
         }
         if(this.getPeso()>2000){
             System.out.println("El Pou murio de waton ");
             this.getEstado(false);
             return 2;
         }
         else{
             System.out.println("El pou sigue vivo");
             return 3;
         }

     }
    private void getEstado(boolean b) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}


