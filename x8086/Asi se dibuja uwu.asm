
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here 
    
    
    pintar macro color
        
        push ax
        push bx
        push cx
        push dx
        
        mov al, color
        mov ah, 0ch
        int 10h
        
        pop dx
        pop cx
        pop bx
        pop ax
    endm 
    
    
    
    
    
    Rectangulo macro alto, ancho, x, y, color
        
        local ciclo
        local nueva_fila
        local salida
        
        push ax
        push bx
        push cx
        push dx
        
        mov ax, x
        mov bx, y
        add ax, ancho
        add bx, alto
        
        mov cx, x
        mov dx, y 
        
        
        ciclo:
            pintar color
            inc dx
            cmp dx, bx
            je nueva_fila
            jmp ciclo
       nueva_fila:
            mov dx, y
            inc cx 
            cmp cx, ax 
            je salida
            pintar color
            jmp ciclo
       salida: 
            pop dx
            pop cx 
            pop bx 
            pop ax
            
    endm 
    
    
    
    mov ax, 13h
    int 10h
    
    
 
    
    ;SOLCITO  
    Rectangulo 10,10,71,60, 44
    Rectangulo 7,5,81,60, 44
    Rectangulo 3,5,86,67, 44
    Rectangulo 3,5,95,70, 44
    Rectangulo 3,5,76,73, 44
    Rectangulo 3,5,81,76, 44
    Rectangulo 3,5,95,60, 44
    Rectangulo 4,5,107,60, 44
    
    ;NUBECITA 1
    Rectangulo 6,20,115,67, 31
    Rectangulo 3,4,111,70, 31
    Rectangulo 3,10,121,73, 31
    ;Rectangulo 3,10,135,67, 31
    ;SOBRA NUBECITA 1
    Rectangulo 3,5,130,73, 28
    Rectangulo 3,4,135,70, 28
    
    ;NUBECITA 2
    Rectangulo 6,21,166,70, 31
    Rectangulo 3,5,175,67, 31
    Rectangulo 3,5,175,76, 31
    Rectangulo 3,5,161,73, 31
    Rectangulo 3,5,191,70, 31
    ;SOMBRA NUBECITA 2
    Rectangulo 3,7,180,76, 28
    Rectangulo 3,4,187,73, 28
    
    ;TRONCO 
    Rectangulo 9,4,227,79,6 
    
    ;TRONCO SOMBRA
    Rectangulo 6,1,230,82,114
    Rectangulo 3,1,229,85,114
    Rectangulo 1,1,228,87,114
    
    ;HOJAS SIN SOMBRA
    Rectangulo 12,21,215,67,48
    Rectangulo 2,25,219,65,48
    Rectangulo 2,21,221,63,48
    Rectangulo 3,7,220,79,48
    Rectangulo 6,4,211,70,48
    Rectangulo 6,5,236,67,48 
    
    ;HOJAS CON SOMBRA
    Rectangulo 9,5,241,67,2 
    Rectangulo 9,5,236,73,2
    Rectangulo 3,5,231,79,2
    Rectangulo 6,3,241,73,2
    
    ;MANZANAS
    Rectangulo 3,5,220,76,40
    Rectangulo 3,5,231,70,40
    
   
    
    
    ;MARCO CLARO
    Rectangulo 40,1,70,59, 6
    Rectangulo 1,186,70,59, 6
    Rectangulo 40,1,255,59, 6
    Rectangulo 1,186,70,98, 6
    
    
    

ret




