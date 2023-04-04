
org 100h

.data
    numero1 db 35h
    numero2 db 4h

.code
    
    mov al, numero1
    mov bl, numero2
    
    add al, bl
    
    daa
    
ret




