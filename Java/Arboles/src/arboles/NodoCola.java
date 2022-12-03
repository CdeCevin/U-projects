/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package arboles;

/**
 *
 * @author Koliv
 */
public class NodoCola {

   public Nodo dato;
   public NodoCola siguiente;
    
    //Construtor  Crea un nodo del tipo Object
    public NodoCola(Nodo actual)
    {
        dato = actual;
        siguiente = null; //siguiente con valor nulo
    }



   
}
