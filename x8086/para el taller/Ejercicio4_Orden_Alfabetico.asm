org 100h

.DATA
    cadena db "jkcunlpcax$"
    largo dw (($-cadena)-1)
    i dw 0
    j dw 0
    temp db 0

.CODE
    mov cx, largo
    lea si, cadena

bucle_externo:
    mov cx, largo
    dec cx
    sub cx, [i]
    jz fin_bucle_externo

bucle_interno:
    mov al, [si]
    inc si
    cmp al, [si]
    jna saltar_intercambio

intercambio:
    mov temp, al
    mov al, [si]
    mov [si-1], al 
    mov bl, temp
    mov [si], bl
    mov bl, 0

saltar_intercambio:
    loop bucle_interno

incrementar_i:
    inc word ptr [i]
    xor si, si
    lea si, cadena
    jmp bucle_externo

fin_bucle_externo: