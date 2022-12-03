org 100h
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt


.DATA

     
     
     mensaje db "Hola soy el Cevin $"
     ;Salto de linea 10, 13
     mensaje2 db 10,13, "como estan? $"
     mensaje3 db 10,13, "WUAJAJA SADFJKA AWOAN $"
     
     
                                      
                                   
.CODE

    ;mov ax, @data
    ;mov ds, ax
    
    lea dx, mensaje
    mov ah, 9h
    int 21h
    lea dx, mensaje2
    mov ah, 9h 
    int 21h
    
    lea dx,mensaje3
    mov ah, 9h
    int 21h

ret

