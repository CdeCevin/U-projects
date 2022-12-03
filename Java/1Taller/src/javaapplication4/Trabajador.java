/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package javaapplication4;

/**
 *
 * @author Koliv
 */

public class Trabajador{
    
    public String Rut;
    public String Nombre;
    public int Sueldo;
    public Departamento Depa;

    public Trabajador(){
        Rut = "";
        Nombre = "";
        Sueldo = 0;
        Depa = null;
        
    }


    public Trabajador(String Rut, String Nombre, int Sueldo, Departamento Depa) {
        this.Rut = Rut;
        this.Nombre = Nombre;
        this.Sueldo = Sueldo;
        this.Depa = Depa;
    }

    public String getRut() {
        return Rut;
    }

    public void setRut(String Rut) {
        this.Rut = Rut;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public int getSueldo() {
        return Sueldo;
    }

    public void setSueldo(int Sueldo) {
        this.Sueldo = Sueldo;
    }

    public Departamento getDepa() {
        return Depa;
    }

    public void setDepa(Departamento Depa) {
        this.Depa = Depa;
        }

    @Override
    public String toString() {
        return "|Trabajador|\n" + " Rut: " + Rut + "\n Nombre: " + Nombre + "\n Sueldo: " + Sueldo + "\n Departamento" + Depa + "\n";
    }

   

    
    
}
