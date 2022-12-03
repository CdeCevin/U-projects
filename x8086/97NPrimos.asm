
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.DATA

   array1 dw 97 dup(?)
   numero dw 2
   numero2 dw 2
   cnt dw 0
  
     
      
              
     

.CODE

    lea DI, array1
   esPrimo: 
      cmp numero2, 10
      jg esIwal
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
      cmp numero2, 97
      je Fin
      mov numero2, 2
      jmp esPrimo
      inc cnt
   noEs:
      
      
      mov numero2, 2
      inc numero
      jmp esPrimo
   esIwal:
      mov ax, numero
      mov numero2, ax
      jmp  parece
        
  
  Fin:    

ret
                             



