/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package javaapplication4;

/**
 *
 * @author Koliv
 */
public class Departamento {
    
    private String Nombre;
    private String Descripcion;

    @Override
    public String toString() {
        return " :"+ Nombre + "\n Descripcion: " + Descripcion + "\n";
    }

    public Departamento(String Nombre, String Descripcion) {
        this.Nombre = Nombre;
        this.Descripcion = Descripcion;
    }

    public Departamento() {
        
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getDescripcion() {
        return Descripcion;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }
    
    
}
