
org 100h

.DATA 

    inicioX dw 20
    inicioY dw 30

    ancho dw 100
    anchoTemporal dw ?
    
    alto dw 100
    altoTemporal dw ?

.CODE 
        ;Inicializamos modo grafico
        mov ax, 13h
        int 10h
    
    ;Tapas
        mov cx, inicioX
                        
        mov ax, ancho
        mov anchoTemporal, cx  
        add anchoTemporal, ax 
                   
       
        
    tapa:
        mov dx, inicioY
        
        mov ah, 0ch
        int 10h
                       
        ;Pinto desplazado en el alto         
        add dx, alto
        
        mov ah, 0ch
        int 10h  
        
        inc cx
        cmp cx, anchoTemporal
        
        je finTapas
        jmp tapa
    finTapas:
    
    ;pilares
        mov dx, inicioY            
                
        mov ax, alto
        mov altoTemporal, dx  
        add altoTemporal, ax
                   
        mov ah, 0h           
        mov al, 0eh  
        
    pilares:  
    
        mov cx, inicioX
    
        mov ah, 0ch
        int 10h
        
        add cx, ancho
        
        mov ah, 0ch
        int 10h
        
        inc dx
        cmp dx, altoTemporal
        
        je fin
        jmp pilares
    fin:
           
ret