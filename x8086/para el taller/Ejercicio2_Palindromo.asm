
org 100h


.DATA

     cadena1 db "reconocer$" 
     largo dw ($-cadena1)-1
     cadena2 db largo dup(?)
     mensaje1 db "Es un palindromo$"
     mensaje2 db "No es un palindromo$"
     ;RECONOCER 
     

.CODE
    
    mov cx, largo                           
    lea si, cadena1 
    lea di, cadena2
    
    ciclo:
    
        cmp cx, 0
        je ciclo2
        mov al, [si]
        mov [di], al
        inc si
        inc di
        dec cx
        jmp ciclo
         
    
    ciclo2:
        mov cx, largo
        
    ciclo3:
        dec si
        loop ciclo3
    
    mov cx, largo
    ciclo4:
        dec di
        cmp cx, 0
        je fina
        mov al, [si]    
        mov bl, [di] 
        cmp al, bl
        je igual
        jne noigual
    
    noigual:
        mov dx, offset mensaje2
        mov ah, 9h
        int 21h
        jmp fin

        
    igual:
        inc si
        dec cx
        jmp ciclo4

          
    fina:
        mov dx, offset mensaje1
        mov ah, 9h
        int 21h
    fin: 
   
ret




