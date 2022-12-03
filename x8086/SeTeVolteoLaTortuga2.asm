; Codigo que pregunta si un elemento esta o no en la lista

org 100h

    .DATA
         
         array1 dw 1,6,3,4,2,5,3,2,5  
         contador dw 0
         contador2 dw 0
         count = ($-array1)
         divisor dw 2
         
         
         
         
         
         
    .CODE  
       mov ax,count
       mov cx, divisor
       div cx
       add contador, ax
       sub contador, 1
       mov ax, contador
       add contador2, ax
       sub contador2, 1
       
       array2 dw contador dup(?)      
       lea si, array1
       lea di, array2
       elLup:
        
        MOV ax, [si]
        inc si
        inc si
        dec contador
        cmp contador,0
        jne elLup
        
       paAtras: 
            dec si
            dec si
            MOV bx,[di]
           
            MOV [di],bx
            MOV ax,[si]
            MOV bx,ax
            
            MOV [di],bx
            
            inc di
            inc di
            inc contador
            mov dx, contador2
            cmp contador, dx
            jne paAtras
            
            
    
    fin:

ret

