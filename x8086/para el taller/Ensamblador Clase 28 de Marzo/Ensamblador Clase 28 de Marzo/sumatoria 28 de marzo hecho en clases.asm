
org 100h

; Programa que realiza sumatoria de 1 hasta N

.DATA
    acum dw 0
    
    ciclo dw 1
    
    n dw 10
    
    mensaje db "Fin$"

.CODE
    
    inc n
    
    cicloRecu proc
        
        
        mov ax, ciclo
        add acum, ax
        
        inc ciclo
        
        mov ax, n
        cmp ciclo, ax
        je fin
        jmp cicloRecu
        
        
          
        fin:
            
            lea dx, mensaje
            mov ah, 9h
            int 21h
            ret
           
    cicloRecu endp
    
    
ret




