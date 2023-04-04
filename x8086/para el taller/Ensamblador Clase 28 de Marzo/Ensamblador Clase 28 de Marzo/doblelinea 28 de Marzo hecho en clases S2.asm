
org 100h

;Programa que traza una linea colorida


.DATA
    origenX dw 50
    origenY dw 10
    
    limiteX dw 150
    limiteY dw 50
    
    ciclo dw ?
    color db 0
   
.CODE
     
    mov ax, 13h
    int 10h 
    
    mov ax, origenX
    mov ciclo, ax
    
    bucle:
        
        mov cx, ciclo
        mov dx, origenY
        
        ;Aqui pinto
        mov al, color 
        mov ah, 0ch 
        int 10h
        
        
        add dx, 20
        
        ;Aqui pinto
        mov al, color 
        mov ah, 0ch 
        int 10h
        
        
        
        
        
    
        mov ax, limiteX
        
        inc ciclo 
        inc color
        
        cmp ciclo, ax
        je salir
        jmp bucle
    
    
    salir:
    
    
ret




