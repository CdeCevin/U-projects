;Codigo recursivo que comprueba si un numero es primo
org 100h

.DATA
    
    n dw 1
    
    inicio dw 2
    
    ciclo dw 2
    
    siPrimo db "Si es primo$"
    noPrimo db "No es primo$"


.CODE
    
    
    esPrimo proc
        
        mov ax, n 
        
        cmp ax, 1
        je casoNoPrimo
        
        cmp ciclo, ax
        je casoPrimo
        jmp otroCaso
    
    otroCaso:
        mov dx, 0
        mov ax, n
        div ciclo
        cmp dx, 0
        je casoNoPrimo
        
        inc ciclo
        call esPrimo 
        ret           
                
    casoPrimo:
        lea dx, siPrimo
        mov ah, 9h
        int 21h
        ret 
    
    casoNoPrimo:
        lea dx, noPrimo
        mov ah, 9h
        int 21h
        ret   
        
    esPrimo endp
    
ret




