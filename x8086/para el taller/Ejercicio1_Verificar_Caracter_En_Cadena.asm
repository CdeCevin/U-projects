
org 100h

.DATA

    cadena db "dominique$"
    largo dw ($-cadena)-1
    mensaje1 db "0$"
    mensaje2 db "1$"
    

.CODE
   mov cx, largo 
   lea di, cadena

   
   ciclo:
       cmp cx, 0
       je fin
       mov al, "i" 
       scasb
       jz igual
       jnz noigual
   
   noigual: 
       dec cx
       mov dx, offset mensaje1
       mov ah, 9h
       int 21h 
       jmp ciclo
  
   
   igual: 
       dec cx
       mov dx, offset mensaje2
       mov ah, 9h
       int 21h 
       jmp ciclo
    
   fin:



ret




