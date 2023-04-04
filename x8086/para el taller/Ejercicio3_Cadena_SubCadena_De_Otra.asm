
org 100h


.DATA

     cadena1 db "como estas$"
     largo2 dw  (($-cadena1)-1)    
     cadena2 db "estas$"
     largo dw (($-cadena2)-1)      
     mensaje1 db "Pertenece a la cadena$"
     mensaje2 db "No pertenece a la cadena$"
     cnt dw 0
     ;RECONOCER 
     

.CODE
    
    mov cx, largo
    mov dx, largo2                          
    lea si, cadena1 
    lea di, cadena2

    ciclo4:
        
        
        cmp largo2, 0
        je fina
        cmp cx, 0
        je fina
        mov al, [si]    
        mov bl, [di] 
        cmp al, bl
        je igual
        jne noigual
    
    noigual:
        dec largo2
        mov cnt, 0
        inc si
        jmp ciclo4

        
    igual:
        dec largo2
        inc cnt
        inc si
        inc di
        dec cx
        jmp ciclo4

          
    fina:
       mov ax, largo
       cmp ax,cnt
       je pertenece
       jne nopertenece
    
    pertenece:
        mov dx, offset mensaje1
        mov ah, 9h
        int 21h
        jmp fin 
    
    nopertenece:
        mov dx, offset mensaje2
        mov ah, 9h
        int 21h
        jmp fin
    fin:
    
ret