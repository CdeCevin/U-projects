
;Codigo que puede que calcule los narcisos

org 100h

.DATA
   
    num dw 1534
    array dw 4 dup(?)
    cnt dw ($-array)
    cnt2 dw  0 
    cnt3 dw 0
      
   

.CODE 
 
 lea DI, array
 algo:
   
   mov ax, cnt
   mov bx, 2
   div bx
   add cnt2, ax
   add cnt3, ax
    
  
 buclecito:
 
    MOV ax, num
    
    mov BX, 10
    DIV bx
    mov [DI], dx
    mov dx, 0
    inc DI
    inc DI 
    mov num, ax
    dec cnt
    dec cnt
    cmp cnt, 0
    je Fin:
    jmp buclecito
    
 operacion:
    lea SI, array
    mov ax, [SI]
    jmp elevar
 
 elevar:
    cmp cnt3, 0
    je operacion
    mul ax
    dec cnt3
    jmp elevar
    
    
    
       
    
    
 
    
                                
                            
  Fin:                          

ret




