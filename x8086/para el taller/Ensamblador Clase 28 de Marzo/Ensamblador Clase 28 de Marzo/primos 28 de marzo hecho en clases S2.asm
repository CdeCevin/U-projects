
org 100h

;Programa recursivo que determina si un numero es primo o no
 
.DATA
    inicio dw 2
    ciclo dw 2
    numero dw 1
    
    mensaje1 db "No es primo$"
    mensaje2 db "Es primo$"
    
.CODE
    
    esPrimo proc
        
        ;Caso de n = 1
        mov ax, numero
        cmp ax, 1
        je salida1
        
        ;Caso de n=ciclo
        mov ax, ciclo
        cmp ax, numero
        je salida2
        
        ;Caso recursivo
        mov dx, 0 
        mov ax, numero
        div ciclo
        cmp dx, 0
        je salida1
        
        inc ciclo
        call esPrimo
        ret
    esPrimo endp
    
     

ret


salida1: 
    lea dx, mensaje1
    mov ah, 9h
    int 21h
    hlt
 
salida2: 
    lea dx, mensaje2
    mov ah, 9h
    int 21h
    hlt   

