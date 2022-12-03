;Codigo que puede que calcule los narcisos

org 100h

.DATA
   
    num dw 153
    num2 dw 0
    array dw 3 dup(?)
    cnt dw ($-array)
    cnt2 dw  0 
    cnt3 dw 0 
    cnt4 dw 0
    total dw 0
    elevado dw 0 
    narciso dw 0
    narcisont dw 0
    tuki dw 10000
    
      
   

.CODE 
 
 lea DI, array
 lea SI, array
 algo:
   mov ax, num
   add num2, ax
   mov ax, cnt
   mov bx, 2
   div bx
   add cnt2, ax
   add cnt3, ax  
   add cnt4, ax
                                                   
  
 buclecito:
 
    MOV ax, num

    mov BX, tuki
    DIV bx
    mov [DI], dx
    mov dx, 0
    inc DI
    inc DI 
    mov num, ax
    mov ax, tuki 
    mov bx, 10
    div bx
    cmp ax, 0
    je pa
    mov tuki, ax
    dec cnt
    dec cnt
    cmp cnt, 0
    je operacion:
    jmp buclecito
 
 pa:
    mov ax, tuki
    mov bx, 10
    div bx
    jmp buclecito
   
 operacion:
    cmp cnt2, 0
    je comparacion 
    mov bx, cnt4
    mov cnt3, bx
    cmp cnt2, 0
    je Fin
    
    mov ax, [SI]
    mov elevado, ax
    inc SI
    inc SI
    
    jmp elevar
    
    dec cnt2
    
    
 
 elevar:
    dec cnt3
    cmp cnt3, 0
    je  suma
    mul elevado
    
    jmp elevar
    
 suma:
     dec cnt2
     add total, ax
     jmp operacion  
                             
                            
 comparacion: 
    mov ax, total
    mov bx, num2
    cmp ax, bx
    je esNarciso
    jmp noEsNarciso

 esNarciso:
    inc narciso
    jmp Fin
 
 noEsNarciso:
    inc narcisont
    jmp Fin
    
  
  
 
 
 
  Fin:

    
    
                             

ret

