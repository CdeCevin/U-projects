/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package arboles;

/**
 *
 * @author Koliv
 */
import java.util.*;
    public class ArbolBin {
        ArrayList listita = new ArrayList<>();
        private NodoArbol raiz;

    public ArrayList getListita() {
        return listita;
    }

    public void setListita(ArrayList listita) {
        this.listita = listita;
    }
    
        public ArbolBin(){
            this.crear();
        }

        private void crear(){
            this.raiz = null;
        }

        public boolean esVacio(){
            return this.raiz == null;
        }

        private ArbolBin setIzq(ArbolBin iz){
            this.raiz.setIz(iz);
        return this;
        }

        private ArbolBin setDer(ArbolBin dr){
            this.raiz.setDr(dr);
        return this;
        }

        /*public ArbolBin elimIzq(){
            if(!this.esVacio())
                    this.raiz.setIz(new ArbolBin());
                return this;
            }

        public ArbolBin elimDer(){
            if(!this.esVacio())
                this.raiz.setDr(new ArbolBin());
            return this;
        }*/
        public ArbolBin plantar(ArbolBin iz, Integer elem, ArbolBin dr){
            this.raiz = new NodoArbol(elem);
            this.raiz.setIz(iz);
            this.raiz.setDr(dr);
            return this;
        }

        public Integer getRaiz(){
            return this.raiz.getElem();
        }
        public ArbolBin getIzq(){
            return this.raiz.getIz();
        }
        public ArbolBin getDer(){
            return this.raiz.getDr();

        }

        public Lista preorden(){
            if(!this.esVacio()){
                //new Lista().anDer(this.raiz.getElem()).concatenar(this.raiz.getIz().preorden()).concatenar(this.raiz.getDr().preorden());
                System.out.print(this.getRaiz());
                System.out.print(" ");
                
                this.getIzq().preorden();
                
                this.getDer().preorden();
                
            }

            return new Lista();
        }
        /*public Lista preordenashe(){
            if(!this.esVacio()){
                //new Lista().anDer(this.raiz.getElem()).concatenar(this.raiz.getIz().preorden()).concatenar(this.raiz.getDr().preorden());
                System.out.print(this.getRaiz());
                System.out.print(" ");
                this.getIzq().anchura(this);
                listita.add(this.getIzq());
                this.getDer().anchura(this);
                listita.add(this.getDer());
            }

            return new Lista();
        }*/
        

        public Lista inorden(){
            if(!this.esVacio()){
              //this.raiz.getIz().inorden().anDer(this.raiz.getElem()).concatenar(this.raiz.getDr().inorden());
              
              this.getIzq().inorden();
              System.out.print(this.getRaiz()+" ");
              this.getDer().inorden();
              
            }
            return new Lista();
        }

        public Lista postorden(){
            if(!this.esVacio()){
                //this.raiz.getIz().postorden().concatenar(this.raiz.getDr().postorden()).anDer(this.raiz.getElem());
                //this.getIzq().anchura(this);
                this.getIzq().postorden();
                
                //this.getDer().anchura(this);
                this.getDer().postorden();

                System.out.print(this.getRaiz()+" ");
                
                
               
            }
            return new Lista();
        }
        public int altura(){
         if(this.esVacio())
            return 0;
        return 1 + Math.max(this.getIzq().altura(), this.getDer().altura());
        }
        
        public ArbolBin ordenado(Integer Elem){  
            if(this.esVacio()){
                this.raiz = new NodoArbol(Elem);
 
                this.setDer(new ArbolBin());
                this.setIzq(new ArbolBin());
                return this;
            }
            else if(this.getRaiz()>Elem){
                this.setIzq(this.getIzq().ordenado(Elem));
                this.getIzq().anchura(this);
                
            }
            else if(this.getRaiz()<Elem){
                this.setDer(this.getDer().ordenado(Elem));
                this.getDer().anchura(this);
                
            }
           return this;
        }
        
        public Integer ContarHojas(){
        if (this.esVacio()==true){
            return 0;
        }
        if (this.getDer().esVacio()== true && this.getIzq().esVacio()==true){
            return 1;
        }
        else{
            return this.getIzq().ContarHojas()+this.getDer().ContarHojas();
        }
    }
        
        public void anchura(ArbolBin arbolito){
    
           if(!this.esVacio()){
               listita.add(arbolito.ContarHojas());
           }
            
        }
        
        public void imprime3(){
            System.out.println(listita);
        }
        
        
        public void Buscar(Integer valor){
            Integer cnt;
            cnt = 0;
            if(!this.esVacio()){
                if(Objects.equals(this.getRaiz(), valor)){
                    System.out.println("Valor "+valor+ " encontrado");
                    cnt=1;
                }
                if(valor < this.getRaiz()){
                    if(this.getIzq()!=null){
                        this.getIzq().Buscar(valor);      
                    }
                    else{
                        if(cnt!=0){
                            System.out.println("Valor "+valor+" no encontrado");
                            
                        }
                    }
                }
                else{
                    if(this.getDer()!=null){
                        this.getDer().Buscar(valor);  
                    }
                    else{
                        if(cnt!=0){
                            System.out.println("Valor "+valor+" no encontrado");
                            
                        }
                    
                }
            
            }
           
        }
}
       
        /*public int numGrande(ArrayList listita2){
           int iNumeroMayor, iPosicion;
           iNumeroMayor = listita2(0);
           iPosicion = 0;
           for(int i =1; i<listita2.size();i++){
               
           }
        }*/
        
    
    }

