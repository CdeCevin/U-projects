
org 100h

.DATA
   
    numero dw 10
   
    mensaje1 db "Numero primo$"
    mensaje2 db "Numero no primo$"
    
    inicio dw 2

.CODE
    
    call primoRecu
    

ret


primoRecu proc
    
    ;Casos base 
    mov ax, inicio
    cmp numero, ax 
    je return3
    
    
    cmp numero, 1
    je return1
    jne return2
    
    return1:
        mov ah, 9h
        lea dx, mensaje2
        int 21h 
        ret
    
    return2:   
        mov ax, numero 
        mov dx, 0
        div inicio
        cmp dx, 0
        je return1
        
        inc inicio
        call primoRecu
        ret
    
    return3:
        mov ah, 9h
        lea dx, mensaje1
        int 21h 
        ret  
    
primoRecu endp

