/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package arboles;

/**
 *
 * @author Koliv
 */
public class NodoArbol {
        private Integer elem;
        private ArbolBin iz;
        private ArbolBin dr;
        public NodoArbol(Integer elem) {
            this.setElem(elem);
            this.setDr(new ArbolBin());
            this.setIz(new ArbolBin());
        }
        public void setElem(Integer elem) {
            this.elem = elem;
        }
        public void setIz(ArbolBin iz) {
            this.iz = iz;
        }
        public void setDr(ArbolBin dr) {
            this.dr = dr;
        }
        public Integer getElem() {
            return elem;
        }
        public ArbolBin getIz() {
            return iz;
        }
        public ArbolBin getDr() {
            return dr;
        }
}
