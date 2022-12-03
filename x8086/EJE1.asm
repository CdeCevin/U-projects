;Codigo creado por Renato Izquierdo, Kevin Olivares y Dominique Teillier 
org 100h

.DATA
   
   
   ;MENSAJES 

   mensaje1 db "--- VER SI UN NUMERO ES PAR, NARCISO O PRIMO --- $"
   mensaje2 db 10,13, "Ingrese el largo del numero:$ "  
   mensaje3 db 10,13, "-> $"
   mensaje4 db 10,13,,"Ingrese el numero$"  
   alerta db 10,13, "el largo del numero es mayor al soportado (MAXIMO 5 DIGITOS) $"  
   numes db 10,13, "El numero $"  
   cargando db 10,13, "Procesando, por favor espere...$"                      
   resultaNaImNp db  " es narciso e impar. $"  
   resultaNNaPaNp db   " no es narciso ni impar ni primo. $"
   resultaImpar db  " es impar, no es primo y no es narciso $"    
   resultaPrimo db  " es impar y primo$"   
   resultaNaPaNp db  "es narciso, no es primo y no es impar. $"    
   resultaNaImP db  " es narciso, impar y primo. $"  
   resultaNNaPaP db " es primo, no es narciso y no es impar. $"            
   resultaNaPr db " es narciso y primo. $" 
  
   ;Variables 
   largo db ? 
   exp db 0  
   cnt db 0 
   cnt2 dw 1
   cnt3 db 0
   var1 db ?
   narciso dw 0 
   suma dw 0
   num dw 0 
   diez dw 1 
   divi dw 1 
   resto dw ? 
   iteraciones db 0  
   contadorNarciso dw 0
   contadorPar dw 0
   contadorPrimos dw 0 
   array dw largo dup(?)
   num2 db 0
   
  
  
   
   
.CODE       
    
    lea SI, array
    lea DI, array 
   
        
        ;Macro para transformar los digitos ingresados a un Array    
        agregar macro var1
            mov ax, 0
            mov al, var1
            mov [DI], al
            inc DI
            inc DI
            jmp ingresar
        endm
        
        ;Macro para imprimir el resultado de las operaciones
        imprimir macro mensajito  
            
            mov dx, offset mensajito
            mov ah, 9h
            int 21h
        
        endm
        
        ;Macro para obtener si un numero es impar o no
        impar macro num
            local esPar
            local noEs
            
                 mov dx, 0
                 mov bx, 0
                 mov ax, num  
                 mov bx, 2
                 div bx
                 cmp dx, 0
                 je esPar
                 jne noEs 
                 
                 
               esPar:
                    ;Reiniciamos el contador 3
                    mov cnt3, 0 
                    ;Se le da el valor de 3 al contador de impares
                    mov contadorPar, 3
                    jmp sig
                    
               noEs:
                    ;Reiniciamos el contador 3
                    mov cnt3, 0
                    ;Se le da el valor de 5 al contador de impares 
                    mov contadorPar, 5
                    jmp sig
       endm
        
        
    mov ax,@DATA                                                             
    mov ds, ax
    
    
    mov dx, offset mensaje1
    mov ah, 9h
    int 21h
    jmp obtenerLargo 
    
    
     alertaDeLimite:
    
        mov dx, offset alerta
        mov ah, 9h
        int 21h
        jmp obtenerLargo
    
    
    obtenerLargo:
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
        jg  alertaDeLimite
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
        
    
    ;Se lee el Array y lo transforma en un numero entero: [1,5,3] -> 153 
    
    tomarNumero:
        inc cnt3 
        mov bl, largo
        inc bl
        cmp cnt3, bl 
        je parcito
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
        jmp tomarNumero 
        
   
   ; AQUI EMPEZAMOS CON LOS NARCISOS ANASHEEEI
     
     
      parcito:
         imprimir cargando
         impar num
         jmp sig
      
      
      
      
      
   ;Se calcula si el numero es o no narciso   
     calculaNarciso:
         
         cmp exp, 0
         je sum
         dec exp     
         mul cx

         jmp calculaNarciso 
         
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
        jmp calculaNarciso  
         
     esono:
        mov bx, suma
        cmp num, bx
        je esNarciso
        jmp noEsNarciso
        
    esNarciso: 
        ;Se le da el valor de 1 al contador de Narcisos
        mov contadorNarciso, 1
        jmp primo1
        
   noEsNarciso:
        ;Se le da el valor de 2 al contador de Narcisos 
        mov contadorNarciso, 2
        jmp primo1
        
         
        
   
   
   

   
  ;Se calcula si el numero es primo o no
  primo1:
   cmp num, 1
   je agregar
   cmp num, 2
   je agregar
   MOV DX, 0
   MOV CX, 0  
   MOV BX, num
   mov ax, num
   mov cx, 2
   div cx
   mov cx, ax
   
   modulo:
        mov dx, 0
        cmp cx, 2
        je esprimo
        mov ax, bx
        idiv cx
      
        cmp dx, 0
        je noesprimo 
        loop modulo
     
     primo:    
        mov dx, 0
        mov bx, 0 
        inc divi
        
        mov bx, 10
        cmp divi, bx
        je agregar
        mov ax, 0
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
        je primo
        
                      
     
    agregar:
        
        ;Se le da el valor de 6 al contador de primos
        mov contadorPrimos, 6
     
        jmp mostrar
    
    noesprimo:
        ;Se le da el valor de 10 al contador de primos
        mov contadorPrimos, 10
        jmp mostrar
        
        
    
    ;Con la suma de los contadores de cada situaciones, obtendremos un caso especifico distinto    
    resultaditos:
            
            ;Sumamos el total de contadores 
            mov bx, contadorPar
            add contadorPrimos, bx
            mov bx, contadorNarciso
            add contadorPrimos, bx 
            ;Comparamos el total con el caso
                
                ;Si es Narciso e impar
                cmp contadorPrimos, 16
                je uno 
                ;Si no es Narciso, ni impar ni primo
                cmp contadorPrimos, 15
                je dos 
                ;Si solo es impar
                cmp contadorPrimos, 17
                je tres              
                ;Si solo es narciso
                cmp contadorPrimos, 14
                je cuatro              
                ;Si es impar y primo
                cmp contadorPrimos, 13
                je cinco
                ;Si es Narciso, par y primo 
                cmp contadorPrimos, 12
                je seis 
                ;Si solo es primo
                cmp contadorPrimos, 11
                je siete
                ;Si es Narciso y primo
                cmp contadorPrimos, 10
                je ocho
                jmp fin 
     
     
     ;Imprime el numero en pantalla
     mostrar:
            mov cx, 0
            mov cl, largo
          
            mov dx, offset numes
            mov ah, 9h
            int 21h
            jmp mostrarN
     
     mostrarN:
         
            mov al, [DI]
            mov num2, al
            mov dl, num2
            add dl, 30h
            mov ah,2
            int 21h 
            inc DI
            inc DI
            loop mostrarN
            jmp resultaditos
   
   ;Llama a la macro "imprimir" para mostrar el mensaje para el caso especifico   
   uno: 
       imprimir resultaNaImNp 
       jmp fin
       
   dos: 
       imprimir resultaNNaPaNp
       jmp fin
   tres: 
       imprimir resultaImpar
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
       imprimir resultaNaPr
       jmp fin     
    
    ;Finaliza el programa
    fin:

ret



 
               
    