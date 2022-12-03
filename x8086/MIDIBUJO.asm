;DIBUJITO TODO PRECIOSO


org 100h

.DATA
     
     horaInicial db 0
     minutoInicial db 0
     segundoInicial db 0
     horaFinal db 0
     minutoFinal db  0
     segundoFinal db 0 
     totalHoras db 0

.CODE
    
    mov ah,2Ch
    int 21h
    mov horaInicial, CH
    mov minutoInicial, CL
    mov segundoInicial, DH 
    
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
    
    
    
    ;FONDO 
    Rectangulo 148,320,0,0,89 
    
    ;SEPARACION
    Rectangulo 3,320,0,148,114
    
    ;PISO
    
    Rectangulo 61,320,0,151,186
    
    ;CUERDITA
    Rectangulo 3,4,152,48, 6
    Rectangulo 3,5,156,45, 6
    Rectangulo 3,5,166,45, 6
    Rectangulo 3,4,171,48, 6
    Rectangulo 3,5,161,42, 6   
   
      
    ;MARCO OSCURO
    Rectangulo 56,12,55,51, 186
    Rectangulo 6,216,55,51, 186
    Rectangulo 56,12,259,51, 186
    Rectangulo 6,216,55,101, 186

    ;MARCO CLARO
    Rectangulo 44,4,67,57, 6
    Rectangulo 3,184,71,57, 6
    Rectangulo 44,4,255,57, 6
    Rectangulo 3,184,71,98, 6
    
    ;DETALLES MARCO
    Rectangulo 3,5,55,51, 187
    Rectangulo 3,7,60,54, 114
    Rectangulo 3,5,55,104, 187
    Rectangulo 3,7,60,101, 114
    Rectangulo 3,5,266,51, 187
    Rectangulo 3,7,260,54, 114
    Rectangulo 3,5,266,104, 187
    Rectangulo 3,7,259,101, 114
    
    ;DETALLES PISO
    Rectangulo 2,12,13,161, 114
    Rectangulo 2,6,22,162, 114
    
    Rectangulo 2,12,79,169, 114
    Rectangulo 2,5,89,170, 114
    
    Rectangulo 2,11,52,181, 114
    Rectangulo 2,6,61,182, 114 
    
    Rectangulo 2,9,120,161, 114
    Rectangulo 2,5,127,162, 114
    
    
    Rectangulo 2,11,123,179, 114
    Rectangulo 2,6,132,180, 114
    
    Rectangulo 2,9,160,169, 114
    Rectangulo 2,5,167,170, 114
    
    Rectangulo 2,9,190,160, 114
    Rectangulo 2,5,197,161, 114
    
    Rectangulo 2,5,197,179, 114
    Rectangulo 2,10,200,179, 114
    
    Rectangulo 2,7,233,163, 114
    Rectangulo 2,4,239,164, 114
    
    Rectangulo 2,9,246,180, 114
    Rectangulo 2,6,253,181, 114
    
    Rectangulo 2,9,285,157, 114
    Rectangulo 2,5,292,158, 114
    
    Rectangulo 2,8,289,176, 114
    Rectangulo 2,6,292,177, 114
    
    
     ;CIELO
    Rectangulo 28,184,71,60, 53     
      
    
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
    
    
    ;PASTO
    Rectangulo 10,184,71,88,2
    Rectangulo 1,25,229,88,119
    Rectangulo 1,24,230,89,119
    Rectangulo 1,15,239,90,119
    Rectangulo 1,9,243,91,119
    Rectangulo 1,5,245,92,119
    
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
    Rectangulo 3,10,131,67, 31
    ;SOBRA NUBECITA 1
    Rectangulo 3,5,130,73, 28
    Rectangulo 3,4,135,70, 28
    
    ;NUBECITA 2
    Rectangulo 6,21,166,70, 31
    Rectangulo 3,5,175,67, 31
    Rectangulo 3,5,175,76, 31
    Rectangulo 3,5,161,73, 31
    Rectangulo 3,5,191,70, 31
    Rectangulo 2,6,169,76, 31
    ;SOMBRA NUBECITA 2
    Rectangulo 3,7,180,76, 28
    Rectangulo 3,4,187,73, 28
    
   
   
    ;FLOR AMARILLA
    Rectangulo 2,2,103,92, 44
    Rectangulo 2,2,106,90, 44
    Rectangulo 2,2,107,92, 44
    Rectangulo 2,2,105,94, 44
    
    ;FLOR ROJA
    Rectangulo 2,2,153,89, 40
    Rectangulo 2,2,155,91, 40
    Rectangulo 2,2,153,92, 40
    Rectangulo 2,2,151,91, 40 
    
    ;FLOR MORADA
    Rectangulo 2,2,182,89, 57
    Rectangulo 2,2,184,91, 57
    Rectangulo 2,2,183,93, 57
    Rectangulo 2,2,181,91, 57 
    
    ;FLOR CELESTE
    Rectangulo 2,2,212,90, 78
    Rectangulo 2,2,214,91, 78
    Rectangulo 2,2,213,94, 78
    Rectangulo 2,2,211,92, 78
    
    ;FLOR NARANJA
    Rectangulo 2,2,238,91, 64
    Rectangulo 2,2,240,93, 64
    Rectangulo 2,2,238,94, 64
    Rectangulo 2,2,236,93, 64

   
    mov ah,2Ch
    int 21h
    mov horaFinal, CH
    mov minutoFinal, CL
    mov segundoFinal, DH
    

ret




