
org 100h

.DATA
    numero1 db '3'
    numero2 db '4'

.CODE
    ;mov al, numero1
    ;mov bl, numero2
    
    ;sub al, bl
    ;aas

    mov al, numero2
    mov bl, numero1
    
    sub al, bl
    aas
ret




