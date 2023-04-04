
org 100h

.DATA
    inicioX dw 50
    finX dw 100
    
    avanceX dw ?
    avanceY dw ?
    
    inicioY dw 10
    finY dw 70

.CODE

    ;modo grafico
    mov ax, 13h
    int 10h
    
    mov ax, inicioX
    mov avanceX, ax
    
    mov ax, inicioY
    mov avanceY, ax
     
    lineaHori:
        
        mov dx, inicioY
        mov cx, avanceX
        
        mov ah, 0ch
        int 10h
        
        inc avanceX  
        
        cmp cx,finX
        je salirX
        jne lineaHori
    salirX: 
    
    lineaVert: 
    
        mov cx, inicioX
        mov dx, avanceY
        
        mov al, 5
        mov ah, 0ch
        int 10h
        
        inc avanceY  
        
        cmp dx,finY
        je salirY
        jne lineaVert 
    salirY:

ret




