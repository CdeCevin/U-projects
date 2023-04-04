
org 100h

.DATA
    resultado db 0
    n db 9
    secuencia db n dup(0) 


.CODE
    lea si, secuencia
    call fibonacci

    hlt

fibonacci proc
    mov al, n
    
    cmp al, 0
    je return1
    
    cmp al, 1
    je return2
    jmp return3
    
    return1:
        add resultado, 0
        ret
    
    return2:
        add resultado, 1
        ;mov n, 0
        ret
        
    return3:
        mov dl, n
        mov [si], dl
        
        inc si
        dec n
        call fibonacci
        dec si
        mov dl, [si] 
        mov n, dl
        sub n, 2
        
        call fibonacci
        ret
fibonacci endp



