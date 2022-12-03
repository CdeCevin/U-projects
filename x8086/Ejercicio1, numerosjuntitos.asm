
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.DATA
   
   
   largo db ?
   mensaje1 db "--- Cositas varias --- $"
   mensaje2 db 10,13, "Ingrese el largo del numero uwu:$ "  
   mensaje3 db 10,13, "-> $"
   mensaje4 db 10,13,,"Ingrese el numero$"  
   mensajeSuma1 db 10,13, "Ingrese el primer numero $"
   mensajeSuma2 db 10,13, "Ingrese el segundo numero $" 
   resulta db 10,13, "El resultado es $: " 
   array dw largo dup(?)
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
        je fin
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
        
        
      
     
        
        
       
        
    
    
    fin:

ret



 
 
    