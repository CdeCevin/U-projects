
org 100h

.DATA
    valorAcumulado dw 0
    inicio dw 1 
    final dw 10
    mensaje db "Fin$"

.CODE
    
    
    acumRecu proc
        
        mov ax, inicio
        mov bx, final
        inc bx
        cmp bx, ax
        je casoBase
        jne casoRecu
        
        casoBase:  
            lea dx, mensaje
            mov ah, 9h
            int 21h
            ret
        casoRecu:
            mov ax, valorAcumulado
            add ax, inicio
            inc inicio
            mov valorAcumulado, ax
            call acumRecu
            ret
    
    acumRecu endp
    

ret




