
org 100h

; Programa que realiza una sumatoria de 1 hasta N

.DATA
    inicio dw 1
    
    ciclo dw 1
    
    n dw 10 
    
    acum dw 0
    
    mensaje db "Fin de sumatoria$"

.CODE
    inc n
    call sumatoria
    
    sumatoria proc
        
        mov ax, n
        cmp ciclo, ax
        je fin
        
        mov ax, acum
        add ax, ciclo
        mov acum, ax
        
        inc ciclo
        
        call sumatoria          
            
        ret      
        
    sumatoria endp 
    
ret

 fin:
            
        lea dx, mensaje
        mov al, 0
        mov ah, 9h
        int 21h
            
        hlt


