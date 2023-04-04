
org 100h

.data
    numero1 dw 0307h
    numero2 db 5

.code
    
    mov ax, numero1
    
    aad
    
    mov bl, numero2
    
    div bl

ret




