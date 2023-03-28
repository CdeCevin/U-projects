org 100h


;Primo o no

.DATA
     
   inicio dw 2
   ciclo dw 2 
   numero dw 17         
               
   mensaje1 dw 'No es primo $'
   
   mensaje2 dw 'Es primo$'        
           
     
.CODE          

   esPrimo proc
    ;Caso N igual a 1
    mov ax, numero
    cmp ax, 1
    je salida1
    ;Caso N igual a ciclo
    
    mov ax, numero
    cmp ax, ciclo
    je salida2
    
    ;Caso recursivo
    
    mov dx, 0
    mov ax, numero    
    div ciclo     
    cmp dx, 0
    je salida1
    
    inc ciclo
    call esPrimo
          
   esPrimo endp 



  
ret 


salida1:

    lea dx, mensaje1
    mov ah, 9h
    int 21h
    hlt
    
salida2:

    lea dx, mensaje2
    mov ah, 9h
    int 21h
    hlt



