/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package animale;

/**
 *
 * @author usuario
 */
public abstract class Animales{

    private String Especie;
    private String Nombre;
    private int Edad;

    public Animales() {
        Especie = "";
        Nombre = "";
        Edad = 0;
    }

    public Animales(String Especie, String Nombre, int Edad) {
        this.Especie = Especie;
        this.Nombre = Nombre;
        this.Edad = Edad;
    }

    public String getEspecie() {
        return Especie;
    }

    public void setEspecie(String Especie) {
        this.Especie = Especie;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public int getEdad() {
        return Edad;
    }

    public void setEdad(int Edad) {
        this.Edad = Edad;
    }

    public void Comer(){
        
        System.out.println("El animalito está comiendo...");
    }
    
    public void Caminar(){
        
        System.out.println("Ta comiendo");
    }
    
    public abstract void Hablar();
        
        
        
    
    

}