; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
.DATA
    
    varX dw 0
    varY dw 0
    
    error dw 0
    
    varAux1 dw 0
    varAux2 dw 0
                
    ;Origen de dibujo            
    varCX dw 100
    varCY dw 50
 
    radio dw 20

.CODE



circ macro varX,varY,error,varAux1,varAux2,varCX,varCY,radio
    local rutina
    local volver1
    local terminoCiclo
    local primerIF
    local segundoIF
    local parte2
    local fin
    local primerCuadrante
    local segundoCuadrante
    local tercerCuadrante
    local cuartoCuadrante
    local sali
       
    mov ax, radio
    neg ax
    mov varX, ax
    
    mov ax, radio
    mov dx, 2 
    mul dx
    mov dx, 2
    sub dx, ax
    mov error, dx
    
    
    
    mov bh, 1      
    ;el centro es en 100x100
    mov cx, varCX     
    mov dx, varCY      
    mov al, 0fh     

    
   
    rutina:
        
        cmp varX, 0
        je fin:    
   
        mov ah, 0ch 
        
        call primerCuadrante
        call segundoCuadrante
        call tercerCuadrante
        call cuartoCuadrante

        
        mov varAUX2, dx
    
    
        mov dx, error
        mov radio, dx 
    
        mov dx, radio
        cmp dx, varY 
        jl primerIF
        
    
        volver1:
    
    
        mov dx, radio
        cmp dx, varX
        jnl parte2
         
    
        terminoCiclo:
        mov dx, varAUX2
    
    call rutina 
    primerIF:
        inc varY
        mov dx, varY
        mov varAUX1, dx 
        add varAUX1, dx
        inc varAUX1
        mov dx, varAUX1
        add error, dx
        
    jmp volver1 
    
    segundoIF:
        inc varX 
        mov dx, varX
        mov varAUX1, dx
        add varAUX1, dx
        inc varAUX1 
        mov dx, varAUX1 
        add error, dx 
    jmp terminociclo  
    
    parte2:
        mov dx, error
        cmp dx, varY 
        jnl segundoIF  
        jmp terminoCiclo

    fin:
        jmp sali
        
        
        
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
    
    
    ret
    sali:
        endm

diagD macro  colum,fila,finC
    local inicD
    local pintaD
    local fin
    
    inicD:
        mov dx,fila
        mov cx,colum
    pintaD:    
        mov ah,0ch
        int 10h
        
        inc cx
        inc dx
        cmp dx,finC
        je fin
        jmp pintaD
         
    fin:
    endm     

diagI macro colum,fila,finF
    local inicD
    local pintaD
    local fin
    
    inicD:
        mov dx,fila
        mov cx,colum
    pintaD:    
        mov ah,0ch
        int 10h
        
        dec cx
        inc dx
        cmp dx,finF
        je fin
        jmp pintaD
    
     fin:
    
        endm

rectaH macro colum,fila,finC
    local pintaL
    local fin
    local inic
    
    inic:
        mov dx,fila
        mov cx,colum
    pintaL:
        mov ah,0ch
        int 10h

        inc cx
        cmp cx,finC
        je fin
        jmp pintaL
    fin:
        endm



rectaV macro colum,fila,finF 
    local pintaV
    local fin
    
    mov dx,fila
    mov cx,colum 
    pintaV:
        mov ah,0ch
        int 10h 
        
        inc dx
        cmp dx,finF
        je fin
        jmp pintaV
        
    fin:
    endm

cuadrado macro colum, fila,ancho,alto,finF,finC
    local pintaV
    local salidaV
    local pintaH
    local fin
    
    mov dx,fila
    mov cx,colum
pintaV:
    
    mov al,43
    mov ah,0ch
    int 10h 
     
    mov bx,cx
    add cx,ancho
    
    mov al,43
    mov ah,0ch
    int 10h
    
    mov cx,bx
    
    inc dx
    cmp dx,finF
    je salidaV
    jmp pintaV
salidaV:
    mov dx,fila
    mov cx,colum
    
pintaH:
    mov al,43
    mov ah,0ch
    int 10h
    
    mov bx,dx
    add dx,alto
    
    mov al,43
    mov ah,0ch
    int 10h
    
    mov dx,bx
    inc cx
    cmp cx,finC
    je fin
    jmp pintaH


        
fin:
   endm  
mov ah, 00h
mov al, 13h
int 10h



         ;colum, fila,ancho,alto,finF,finC
cuadrado 90, 90,40,10,100,130
diagD  75,85,100 
mov varX, 0
mov varY, 0
mov error, 0
mov varAux1, 0
mov varAux2, 0

mov varCX, 131
mov varCY, 99
MOV radio, 2

circ   varX,varY,error,varAux1,varAux2,varCX,varCY,radio 

mov varX, 0
mov varY, 0
mov error, 0
mov varAux1, 0
mov varAux2, 0
mov varCX, 127
mov varCY, 85
MOV radio, 7

circ   varX,varY,error,varAux1,varAux2,varCX,varCY,radio

mov varX, 0
mov varY, 0
mov error, 0
mov varAux1, 0
mov varAux2, 0
mov varCX, 120
mov varCY, 86
MOV radio, 4

circ   varX,varY,error,varAux1,varAux2,varCX,varCY,radio  




   
    
    hlt                   