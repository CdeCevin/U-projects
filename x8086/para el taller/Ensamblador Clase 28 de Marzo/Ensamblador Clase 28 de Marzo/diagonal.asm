org 100h

.DATA

    inicioX dw 20
    inicioY dw 30

    amplitud dw 100 
    
    finX dw ?
    finY dw ?
    

.CODE

    ;Determinacion de limites
    mov ax, amplitud 
    add ax, inicioX
    mov finX, ax
    
    mov ax, amplitud
    add ax, inicioY
    mov finY, ax
    
    mov ax,13h
    int 10h  
            
    mov cx, inicioX
    mov dx, inicioY 
    
    mov al, 0eh ;color
    
    bucle:
    
        mov ah, 0ch
        int 10h
        
        
        inc dx
        inc cx
        cmp cx, finY
        je fin
        jne bucle
    
    fin:
ret
    
    