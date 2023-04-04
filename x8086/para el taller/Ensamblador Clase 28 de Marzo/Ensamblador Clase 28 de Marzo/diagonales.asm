org 100h

.DATA

    inicioX dw 20
    inicioY dw 30
    
    inicioX2 dw ?

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
            
     
    mov ax, finX
    mov inicioX2, ax
    
    mov al, 0eh ;color
    
    mov dx, inicioY
    
    bucle:
        
        mov cx, inicioX
        
        mov ah, 0ch
        int 10h
        
        mov cx, inicioX2
         
        mov ah, 0ch
        int 10h
        
        dec inicioX2  
        inc inicioX
        mov cx, inicioX 
        
        inc dx
        inc cx
        cmp cx, finX
        je fin
        jne bucle
    
    fin:
ret
    
    