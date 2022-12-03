
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.DATA
   
   
   
   
   
   ;MENSAJES
   mensaje1 db "--- Cositas varias --- $"
   mensaje2 db 10,13, "Ingrese el largo del numero uwu:$ "  
   mensaje3 db 10,13, "-> $"
   mensaje4 db 10,13,,"Ingrese el numero$"  
   mensajeSuma1 db 10,13, "Ingrese el primer numero $"
   mensajeSuma2 db 10,13, "Ingrese el segundo numero $" 
   resulta db 10,13, "El resultado es $: " 
   resultaPar db 10,13, "El numero es par $"
   resultaImpar db 10,13, "El numero es impar$" 
   resultaPrimo db 10,13, "El numero es primo $"
   resultaNoprimo db 10,13, "El numero no es primo$"
   resultaNarciso db 10,13, "El numero es narciso $"
   resultaNoNarciso db 10,13, "El numero no es narciso$"
   
   ;Narciso, impar, no primo
   resultaNaImNp db 10,13, "El numero solo es Narciso (No es ni par ni primo). $"
   ;NoNarciso, par, no primo
   resultaNNaPaNp db 10,13, "El numero solo es par (No es ni narciso ni primo). $"
   ;NoNarciso, No par, no primo
   resultaNada db 10,13, "El numero no es ni par, ni narciso ni primo. $"
   ;Narciso, par, no primo
   resultaNaPaNp db 10,13, "El numero es Narciso y Par (No es primo). $" 
   ;Narciso, No Par, Primo
   resultaNaImP db 10,13, "El numero es Narciso y primo (No es Par). $"
   ;NoNarciso, par, primo
   resultaNNaPaP db 10,13, "El numero es par y primo (No es narciso). $"
   ;TODO
   resultaTodo db 10,13, "El numero es Narciso, Par y Primo. $"
   
   ;El array 
   array dw largo dup(?)
   
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
         
         dec exp 
         
         mul cx
         
         cmp exp, 0
          
         je sum 
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
        mov dx, offset resultaNarciso
        mov ah, 9h
        int 21h 
        
        mov namsikso, 1
        
        jmp raiz
   noEsNarciso: 
        mov dx, offset resultaNoNarciso
        mov ah, 9h 
        mov namsikso, 2
        int 21h
         
        
   
   
   
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
       idiv bx
       cmp dl, 0
       je esPar
       jmp noEs  
        
   esPar:
        
        mov dx, offset resultaPar
        mov ah, 9h
        int 21h
        mov cnt3, 0
        mov park, 3
        jmp loprimero
        
   noEs:
        
        mov dx, offset resultaImpar
        mov ah, 9h
        int 21h
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
        mov dx, offset resultaPrimo
        mov ah, 9h
        int 21h
        mov cnt3, 0
        mov primow, 7
        jmp fin
    
    noesprimo:
        mov dx, offset resultaNoprimo
        mov ah, 9h
        int 21h
        mov cnt3, 0 
        mov primow, 10
        jmp fin
        
        
        
    resultaditos: 
            
            add primow, park
            add primow, namsikso
            cmp primow, 16
            je  
            
    
    
            
       
        
    
    fin:

ret



 
 
    