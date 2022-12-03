
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.DATA
   
   
   
   
   
   ;MENSAJES
   mensaje1 db "--- VER SI UN NUMERO ES PAR, NARCISO O PRIMO --- $"
   mensaje2 db 10,13, "Ingrese el largo del numero:$ "  
   mensaje3 db 10,13, "-> $"
   mensaje4 db 10,13,,"Ingrese el numero$"  
   alerta db 10,13, "el largo del numero es mayor al soportado (MAXIMO 5 DIGITOS) $"
   ;El num
   numes db 10,13, "El numero $"
   ;Narciso, impar, no primo
   resultaNaImNp db " solo es Narciso. $"
   ;NoNarciso, par, no primo
   resultaNNaPaNp db  " solo es par. $"
   ;NoNarciso, No par, no primo
   resultaNada db  " es ni par, ni narciso ni primo. $" 
   ;solo primo
   resultaPrimo db " solo es primo$"
   ;Narciso, par, no primo
   resultaNaPaNp db  " es Narciso y Par. $" 
   ;Narciso, No Par, Primo
   resultaNaImP db  " es Narciso y primo. $"
   ;NoNarciso, par, primo
   resultaNNaPaP db " es par y primo. $"
   ;TODO
   resultaTodo db " es Narciso, Par y Primo. $"
   
   ;Otras variables xd  
   largo db ? 
   exp db 0  
   cnt db 0 
   cnt2 dw 1
   cnt3 db 0
   var1 db ?
   narciso dw 0 
   var2 db ? 
   suma dw 0
   elev dw 0
   num dw 0 
   diez dw 1 
   divi dw 1 
   resto dw ?
   rais dw 0 
   iteraciones db 0 
   
   namsikso dw 0
   park dw 0
   primow dw 0
   
   ;El array 
   array dw largo dup(?)
   anashe db 0
   
  
  
   
   
.CODE       
    
    lea SI, array
    lea DI, array 
     
        
        
        
        agregar macro var1
            mov ax, 0
            mov al, var1
            mov [DI], al
            inc DI
            inc DI
            jmp ingresar
        endm
        
        imprimir macro mensajito  
            
            mov dx, offset mensajito
            mov ah, 9h
            int 21h
        
        endm 
        
        
        
    
   
    mov ax,@DATA
    mov ds, ax
    
    
    mov dx, offset mensaje1
    mov ah, 9h
    int 21h
    jmp elegirlarguito
    
    
     numMayor:
    
        mov dx, offset alerta
        mov ah, 9h
        int 21h
        jmp elegirlarguito
    
    
    elegirlarguito:
        mov dx, offset mensaje2
        mov ah, 9h
        int 21h   
        
        mov dx, offset mensaje3
        mov ah, 9h
        int 21h
        
     
        
        mov ah, 01
        int 21h    
        
        
        mov cl, al
        sub cl, 30h
        mov largo, cl
        cmp largo, 5
        jg  numMayor
        mov exp, cl
        mov iteraciones, cl
    
   
        
    
    mov dx, offset mensaje4
    mov ah, 9h
    int 21h
    
    mov dx, offset mensaje3
    mov ah, 9h
    int 21h
    
    
   
    
    ingresar:
         
         mov ax, 0
         mov bx, 0   
         inc cnt 
         mov bl, largo
         inc bl
         cmp cnt, bl
         je tomarNumero
         mov ah, 01
         int 21h      
         mov cl, al
         sub cl, 30h
         mov var1, cl
         agregar var1
        
    
    ;El primer numero(el ultimo de la lista) se multiplica por 10^x, x=0, luego se suma 1 a x
    
    tomarNumero:
        inc cnt3 
        mov bl, largo
        inc bl
        cmp cnt3, bl
        
        je sig
        dec DI
        dec DI
        mov ax, [DI]
        mul diez
        add num, ax    
        jmp elevar
    
    
    elevar:
        mov ax, 0
        mov ax, diez
        mov bx, 10
        mul bx
        mov diez, ax 
         ;Comparar si ya se hicieron todas las itereaciones
        jmp tomarNumero ;Supongo que aqui ya tenemos el 10^x
        
   
   ; AQUI EMPEZAMOS CON LOS NARCISOS ANASHEEEI
   
   
     narcisox:
         
         cmp exp, 0
          
         je sum
         dec exp 
         
         mul cx
         
          
         jmp narcisox 
         
     sum:
        cmp iteraciones, 0
        je  esono
        add suma, ax
        dec iteraciones
        jmp sig
         
     sig: 
        
        mov ax, [SI]
        mov cx, [SI]
        inc SI
        inc SI 
        mov bl, largo
        mov exp, bl
       
        dec exp
        jmp narcisox  
         
     esono:
        mov bx, suma
        cmp num, bx
        je esNarciso
        jmp noEsNarciso
        
    esNarciso:
        ;mov dx, offset resultaNarciso
        ;mov ah, 9h
        ;int 21h 
        
        mov namsikso, 1
        
        jmp raiz
   noEsNarciso: 
        ;mov dx, offset resultaNoNarciso
        ;mov ah, 9h 
        mov namsikso, 2
        ;int 21h
         
        
   
   
   
   ;DE AQUI PA ABAJO CALCULO EL PRIMO Y EL MENOR
   
   raiz: 
       MOV BX, num
       XOR CX, CX
    
    calcular:
        
        MUL CX
        MOV AX, CX
        CMP AX, BX
        JA salirMayor
        JB menor
        JC igual 
    
    menor:
        INC CX
        MOV AX, CX
        MUL CX
        CMP AX, BX
        JA salirMayor
        JE igual
        JB menor
    
    salirMayor:
        DEC CX
        JMP igual
        
    igual:
        add rais, CX ;Resultado queda en CX :D
        jmp parcito    
            
        
        
             
      
   parcito:
       mov dx, 0
       mov bx, 0
       mov ax, num  
       mov bx, 2
       div bx
       cmp dx, 0
       je esPar
       jne noEs  
        
   esPar:
        
        ;mov dx, offset resultaPar
        ;mov ah, 9h
        ;int 21h
        mov cnt3, 0
        mov park, 3
        jmp loprimero
        
   noEs:
        
        ;mov dx, offset resultaImpar
        ;mov ah, 9h
        ;int 21h
        mov cnt3, 0 
        mov park, 5
        jmp loprimero
    
    
  
        
   loprimero:
        mov dx, 0
        mov bx, 0 
        mov ax, num
        mov bx, rais
        div bx
        cmp ax,bx
        je esprimo  
     
        
     primo:    
        
        inc divi
        mov dx, 0
        mov bx, 0 
        mov bx, 10
        cmp divi, bx
        je agregar
        mov ax, 0
        ;inc divi
        mov ax, num
        mov bx, divi
        DIV bx
        mov resto, dx
        cmp resto, 0
        je esprimo
        
        jmp primo
        
     esprimo:
        cmp divi, 1
        je primo
        mov bx, num
        cmp divi, bx
        jne noesprimo
        jmp primo
        
                      
     
    agregar:
        ;mov dx, offset resultaPrimo
        ;mov ah, 9h
        ;int 21h
        mov cnt3, 0
        mov primow, 6
        jmp mostrar
    
    noesprimo:
        ;mov dx, offset resultaNoprimo
        ;mov ah, 9h
        ;int 21h
        mov cnt3, 0 
        mov primow, 10
        jmp mostrar
        
        
        
    resultaditos:
             
            mov bx, park
            add primow, bx
            mov bx, namsikso
            add primow, bx
            cmp primow, 16
            je uno 
            cmp primow, 15
            je dos 
            cmp primow, 17
            je tres 
            cmp primow, 14
            je cuatro 
            cmp primow, 13
            je cinco 
            cmp primow, 12
            je seis 
            cmp primow, 11
            je siete 
            cmp primow, 10
            je ocho
            jmp fin 
     
     
     mostrar:
            mov cx, 0
            mov cl, largo
          
            mov dx, offset numes
            mov ah, 9h
            int 21h
            jmp mostrarN
     
     mostrarN:
         
            mov al, [DI]
            mov anashe, al
            mov dl, anashe
            add dl, 30h
            mov ah,2
            int 21h 
            inc DI
            inc DI
            loop mostrarN
            jmp resultaditos
            
                               
          
            
            
            
   uno: 
       imprimir resultaNaImNp 
       jmp fin
       
   dos: 
       imprimir resultaNNaPaNp
       jmp fin
   tres: 
       imprimir resultaNada
       jmp fin   
    
   cuatro:
       imprimir resultaNaPaNp
       jmp fin 
   cinco:
       imprimir resultaPrimo
        
       jmp fin
   seis:
       imprimir resultaNaImP
       jmp fin        
       
   siete:
       imprimir resultaNNaPaP
       jmp fin
   ocho:
       imprimir resultaTodo
       jmp fin     
    
    fin:

ret



 
               
    