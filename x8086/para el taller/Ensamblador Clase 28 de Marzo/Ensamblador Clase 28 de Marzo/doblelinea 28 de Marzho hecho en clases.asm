
org 100h

.DATA
    inicioX dw 10
    inicioY dw 20
    
    finX dw 100 
    
    color db 0
    
    ;finY dw 60
    
.CODE
    
    mov ax, 13h
    int 10h
    
    ciclo:
        
        mov cx, inicioX
        mov dx, inicioY
        
        
        mov ah, 0ch
        mov al, color 
        int 10h 
        
        
        add dx, 30
        mov ah, 0ch
        mov al, color 
        int 10h
        
        
        
        inc color 
        inc inicioX
            
        mov ax, finX
        cmp inicioX, ax
        je fin
        jmp ciclo
    
    fin:
    
    
ret




