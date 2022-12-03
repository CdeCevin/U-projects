/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package arboles;

/**
 *
 * @author Koliv
 */
public class Cola {

    int tamaño;
  public  NodoCola inicio;
  public  NodoCola salida;
    
    public Cola()
    {
        tamaño = 0;
        inicio = null;
        salida = null;
    }
    
    
    
    public boolean colaVacia()
    {
        if(inicio == null)
        {
            return true;
        }
        return false;
    }
    
    
    public void insertarEnCola(Nodo actual)
    {
        if(colaVacia() == true)
        {
            inicio = new NodoCola(actual);
            salida = new NodoCola(actual);
        }
        else{
           NodoCola aux = salida;
            salida = new NodoCola(actual);
            aux.siguiente = new NodoCola(actual);
        }
        tamaño++;
    }
    
    public void recorrer(NodoCola actual)
    {
        if(actual != null)
        {
            System.out.print("\n" + actual.dato.edad + " <-- ");
            recorrer(actual.siguiente);
        }
    }
    
    public void eliminarInicio()
    {
        if(inicio != null)
     
