;Intentado hacer esta wea de los aleatorios
;Gabriel Bascunan, Fabiola Ramirez, Kevin Olivares, COLUMNA, FILA (0,0)

org 100h

.DATA

   array1 dw 1,2,3,4,5,6,7,8,9,153
   array2 db 5 dup(?)
   array3 db 5 dup(?) 
   cnt3 db 0
   suma db 0
   cnt2 db 5
   cnt db 0
   posicion db 0 
   resultado db 0 
   busco db 0 
   menorcito db 0 
   pares dw 0
  

.CODE
   
   
   algunaCosa: 

   lea BX, array1
   lea SI, array1 
   lea DI, array2
   
  
 
 
 
    
    agarrar: 
     cmp cnt2, 0
     je medita
     MOV posicion, 0
     mov ax, 0
     mov ah, 2Ch
     int 21h
     mov busco, DL
     lea SI, array1
     cmp busco, 0
     jle tomarN
     cmp busco, 9
     jle tomarN
     
     jmp agarrar
      
   
    
   tomarN:
    
     mov ax, 0 
     mov bl, busco
     mov al, [SI]
     cmp posicion, bl
     je mediaA
     inc SI
     inc SI
     inc posicion
     cmp posicion, 9
     jle tomarN
     
     
   
   
  
   
    mediaA:
        
     cmp cnt2, 0
     je medita
     MOV bl, [DI]                                                           
     dec cnt2
     add suma, al
     MOV [DI],al
     inc DI
     
     
     
     jmp agarrar
    
    
 
     
  
  medita:
   
   mov ax, 0
   mov al,suma
   mov bl, 5
   div bl
   mov resultado, al
   
 
    
 lea DI, array3  
  inyectar:
    mov al, suma   ;La suma de todos los elementos
    mov bl, resultado;el promedio de todos los elementos
    mov [DI], al
    inc DI
    mov [DI], bl
    inc DI 
 
 
  demenor: 
  mov ax,0
  mov bx,0
       lea si,  array2 
       mov al,[si]
       inc si 
       
       
  demenor2:
    inc cnt3  
    mov cl,cnt3
    cmp cl,5
    je elMenor
    mov bl,[si] 
   
    inc si
    cmp al, 153
    je casoChistoso ;PROFE DE VERDAD ESTO NO SE PUEDE SOLUCIONAR WTF
    cmp al,bl
    jl demenor2
    mov al,bl
    jmp demenor2
  casoChistoso:
      mov al,bl
      jmp demenor2
  elMenor:
    mov menorcito, al
    jmp esPar  
    
  
  esPar:
    mov ax,0
    mov bx, 0
    mov dx, 0
    mov cnt3, 0
    lea si, array2
    
  
  otro:
    mov ah, 0
    inc cnt3  
    mov cl,cnt3
    cmp cl,6
    je inyectar3
    mov al, [si]
    mov bl, 2
    div bl
    cmp ah, 0
    je par
    inc si
    jmp otro
    
  par:
    
    inc pares
    inc si
    jmp otro
   
  inyectar3:
    mov ax, pares
    mov [DI], ax ;agrega la cantidad de numeros pares
    jmp fin:
      
    
  
    
 fin:
   
    

ret
    