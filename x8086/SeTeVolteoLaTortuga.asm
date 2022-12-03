; Codigo que pregunta si un elemento esta o no en la lista

org 100h

    .DATA
         
         array1 dw 1,6,3,4,2,5,3  
         contador dw 7
         array2 dw contador dup(?)
         
         
         
         
    .CODE 
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

            
            MOV ax,[si]
            MOV bx,ax
            
            MOV [di],bx
            
            inc di
            inc di
            inc contador
            cmp contador, 7
            jne paAtras
            
            
    
    fin:

ret




