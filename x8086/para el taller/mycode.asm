org 100h

.DATA

   array1 dw 10 dup(?) 
   array2 dw 10 dup(?)
   numero dw 2
   numero2 dw 2
   numero3 dw 1  
   Na1 dw 0
   Na2 dw 0
   cnt dw 0 
   cnt2 dw 0 
   cnt3  dw 0 
   cntIg dw 0
  
         

.CODE

    lea DI, array1 
    lea SI, array2  
    
   esPrimo:  
      mov dx, 0
      mov ax, numero
      
      mov bx, numero2
      cmp ax, bx
      je parece
      cmp cnt, 1
      je noEs
      
      mov ax, numero
      div numero2
      
      cmp dx, 0
      je parece 
      inc numero2
      jmp esPrimo
      
   parece: 
      mov ax, numero2
      cmp numero, ax
      jne noEs
      mov bx, numero
      lea ax, [DI]
      mov [DI], bx
      inc numero 
      inc DI
      inc DI   
      inc cnt2
      cmp cnt2, 10 
      je esPar
      mov numero2, 2
      jmp esPrimo
      inc cnt 
      
      
   noEs:
      mov numero2, 2
      inc numero
      jmp esPrimo 
      
   esPar:
      cmp cnt3, 11
      je leaa
      mov ax, numero3
      mov cx, 0
      mov dx, 0
      mov bx, 2
      div bx
      cmp dx, 0
      jne noPar
      inc numero3
      jmp esPar
   
   noPar: 
     inc cnt3
     lea ax, [SI] 
     mov bx, numero3
     mov [SI], bx
     inc SI
     inc SI
     inc numero3
     jmp esPar  
   leaa:
    lea DI, array1 
    lea SI, array2  
    mov cnt, 0
    
       
   compArray:
     inc cnt
     cmp cnt, 11
     je Fin
     mov ax,[DI]
     mov Na1, ax
     mov ax,[SI]
     cmp ax, Na1
     je cmpIg 
     inc DI
     inc DI
     inc SI
     inc SI
     jmp compArray
   
   cmpIg:
     inc DI
     inc DI
     inc SI
     inc SI
     inc cntIg
     jmp compArray     
  
  Fin:    

ret
   