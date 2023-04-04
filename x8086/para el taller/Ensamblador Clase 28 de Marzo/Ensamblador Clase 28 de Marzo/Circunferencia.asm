
org 100h

.DATA
    
    varX dw 0
    varY dw 0
    
    error dw 0
    
    varAux1 dw 0
    varAux2 dw 0
                
    ;Origen de dibujo            
    varCX dw 100
    varCY dw 100
    
    radio dw 20
    

.CODE
    
    ;Primero obtener el valor de X
    mov ax, radio
    neg ax
    mov varX, ax
    
    ;Obtencion de error a partir de formula E=2-2*radio
    mov ax, radio
    mov dx, 2 
    mul dx
    mov dx, 2
    sub dx, ax
    mov error, dx
    
    ;Inicializacion de modo grafico
    mov ah, 00h
    mov al, 13h
    int 10h 
    
    mov bh, 1       ;numero de pagina
    ;el centro es en 100x100
    mov cx, varCX     ;columna
    mov dx, varCY     ;fila 
    mov al, 0fh     ;color del pixel
    
    ;rutina de dibujo
    
    
    rutina:
        cmp varX, 0
        je fin:    
   
        mov ah, 0ch 
        
        call primerCuadrante
        call segundoCuadrante
        call tercerCuadrante
        call cuartoCuadrante

        
        ;guardo dx en una variable auxiliar para poder comparar
        mov varAUX2, dx
    
    
        ;segunda parte del algoritmo 
    
        mov dx, error
        mov radio, dx 
    
        mov dx, radio
        cmp dx, varY 
        ;salta si es menor
        jl primerIF
        
    
        volver1:
    
    
        mov dx, radio
        cmp dx, varX
        ;salta si no es menor
        jnl parte2
         
    
        terminoCiclo:
        mov dx, varAUX2
    
    call rutina 
    
    ;primera condicion 
    primerIF:
        inc varY
        mov dx, varY
        mov varAUX1, dx 
        add varAUX1, dx
        inc varAUX1
        mov dx, varAUX1
        add error, dx
        
    jmp volver1 
    
    ;segunda condicion
    segundoIF:
        inc varX 
        mov dx, varX
        mov varAUX1, dx
        add varAUX1, dx
        inc varAUX1 
        mov dx, varAUX1 
        add error, dx 
    jmp terminociclo  
    
    ;segunda parte del segundo IF
    parte2:
        mov dx, error
        cmp dx, varY 
        ;salta si no es menor
        jnl segundoIF  
        jmp terminoCiclo

    ;termino del programa
    fin:
        hlt 
        
        
    primerCuadrante:  
        mov si, varCX 
        sub si, varX 
        mov cx, si 
        mov si, varCY 
        add si, varY 
        mov dx, si 
        mov ah, 0ch 
        int 10h 
       
    ret  
    
    segundoCuadrante:  
        mov si, varCX 
        sub si, varY 
        mov cx, si  
        mov si, varCY 
        sub si, varX 
        mov dx, si  
        mov ah, 0ch 
        int 10h 
      
    ret
    
    tercerCuadrante:  
        mov si, varCX 
        add si, varX 
        mov cx, si  
        mov si, varCY 
        sub si, varY 
        mov dx, si  
        mov ah, 0ch 
        int 10h 
      
    ret
    
    cuartoCuadrante:  
        mov si, varCX 
        add si, varY 
        mov cx, si 
        mov si, varCY 
        add si, varX  
        mov dx, si 
        mov ah, 0ch 
        int 10h    
      
    ret


ret




