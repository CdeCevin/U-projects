
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.DATA
   
   mensaje1 db "--- Calculadora --- $"
   mensaje2 db 10,13, "1. Suma $"  
   mensaje3 db 10,13, "2. Resta $"
   mensaje4 db 10,13, "3. Multiplicacion $"
   mensaje5 db 10,13, "4. Division $"   
   mensaje6 db 10,13, "-> $"  
   mensajeSuma1 db 10,13, "Ingrese el primer numero $"
   mensajeSuma2 db 10,13, "Ingrese el segundo numero $" 
   resulta db 10,13, "El resultado es $: " 
  
   var1 db ? 
   var2 db ?
   
   
.CODE       

    mov ax,@DATA
    mov ds, ax
    
    mov dx, offset mensaje1
    mov ah, 9h
    int 21h
    
    mov dx, offset mensaje2
    mov ah, 9h
    int 21h   
    
    mov dx, offset mensaje3
    mov ah, 9h
    int 21h
    
    mov dx, offset mensaje4
    mov ah, 9h
    int 21h
     
    mov dx, offset mensaje5
    mov ah, 9h
    int 21h
    
    mov dx, offset mensaje6
    mov ah, 9h
    int 21h
    
    
    
    
    
    mov ah, 01
    int 21h    
    
    
    mov cl, al
    sub cl, 30h
    mov var1, cl
    
    
    cmp var1, 1
    je Sumita
    cmp var1, 2
    je Restita
    ;cmp var1, 3
    ;je Multi
    ;cmp var1, 4
    ;jmp divishion
    
    
    Sumita:
           mov dx, offset mensaje2
           mov ah, 9h
           int 21h
           mov dx, offset mensaje6
           mov ah, 9h
           int 21h
          
           
           mov dx, offset mensajeSuma1
           mov ah, 9h
           int 21h
           
           mov ah, 01
           int 21h
           mov cl, al
           sub cl, 30h
           mov var1, cl
           
           
           mov dx, offset mensajeSuma2
           mov ah, 9h
           int 21h
           
           
           mov ah, 01
           int 21h
           mov cl, al
           sub cl, 30h
           
           ADD var1,cl
           
           mov dx, offset resulta
           mov ah, 9h
           int 21h
           
           mov dl, var1  
           add dl, 48
           mov ah, 2
           int 21h
    
    restita:
        
           mov dx, offset mensaje3
           mov ah, 9h
           int 21h
           mov dx, offset mensaje6
           mov ah, 9h
           int 21h
          
           
           mov dx, offset mensajeSuma1
           mov ah, 9h
           int 21h
           
           mov ah, 01
           int 21h
           mov cl, al
           sub cl, 30h
           mov var1, cl
           
           
           mov dx, offset mensajeSuma2
           mov ah, 9h
           int 21h
           
           
           mov ah, 01
           int 21h
           mov cl, al
           sub cl, 30h
           
           SUB var1,cl
           
           mov dx, offset resulta
           mov ah, 9h
           int 21h
           
           mov dl, var1  
           add dl, 48
           mov ah, 2
           int 21h
                
 
    
  
   
    
    
    
    

ret




