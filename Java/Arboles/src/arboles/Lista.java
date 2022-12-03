/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package arboles;

/**
 *
 * @author Koliv
 */
import java.util.ArrayList;
import java.util.List;
public class Lista {
private List <Integer>elementos;

public Lista(){
    this.crear();
}

private void crear(){
    this.elementos = new ArrayList<Integer>();
}

public Lista anIzq(Integer e){
    this.elementos.add(0, e);
    return this;
}

public Lista anDer(Integer e){
    this.elementos.add(this.elementos.size(), e);
    return this;
}

public void elimIz(){
    if(!this.esVacia())
    this.elementos.remove(0);
}

public void elimDr(){
    if(!this.esVacia())
    this.elementos.remove(this.elementos.size()-1);
}

public Integer izq(){
return this.elementos.get(0);
}

public Integer der(){
return this.elementos.get(this.elementos.size()-1);
}

public boolean esVacia(){
return this.elementos.size()==0;
}

public Lista concatenar(Lista l){
    if(this.esVacia())
        return l;
    for(Integer e: l.elementos)
        this.anDer(e);
    return this;
}

public void imprime(){
    for(Integer e: this.elementos)
    System.out.print("["+e+"]");
    System.out.println("");
    }
}
