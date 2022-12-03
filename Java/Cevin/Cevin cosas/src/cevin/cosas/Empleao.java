/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package cevin.cosas;

/**
 *
 * @author usuario
 */
public class Empleao {
    //ATRIBUTOS
    private String Nombre,Apellido;
    private int edad;
    private double Sueldo;
   
    //CONSTRUCTORES
    
    public Empleao(){
        
        Nombre="";
        Apellido="";
        edad=0;
        Sueldo=0;
        
    }
    
    //Metodos

    public Empleao(String Nombre, String Apellido, int edad, double Sueldo) {
        this.Nombre = Nombre;
        this.Apellido = Apellido;
        this.edad = edad;
        this.Sueldo = Sueldo;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getApellido() {
        return Apellido;
    }

    public void setApellido(String Apellido) {
        this.Apellido = Apellido;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public double getSueldo() {
        return Sueldo;
    }

    public void setSueldo(double Sueldo) {
        this.Sueldo = Sueldo;
    }

    @Override
    public String toString() {
        return "Empleao{" + "Nombre=" + Nombre + ", Apellido=" + Apellido + ", edad=" + edad + ", Sueldo=" + Sueldo + '}';
    }
        
}
