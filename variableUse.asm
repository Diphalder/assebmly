.model small
.stack 100h
.data

x db '2' ; x='2' define byte
y db ?   ; y is unknown 


.code

main proc
    
    mov ax, @data  ; initialize data AX
    mov ds,ax       ; store data Data segment 
    
    mov ah,2  ; print function call
    mov dl,x
    int 21h  ; interupt console 
    
    mov ah ,1  ; input fuction call
    int 21h
    mov y,al  ; store input on Y variable 
    
    
    
    ;newline    
    mov ah,2 
    mov dl , 0Dh
    int 21h  
    mov dl , 0Ah
    int 21h
    
    
    
    
    mov ah,2  ; output func
    mov dl , y
    int 21h 
    
    
    
    
    
    
   
    
    
    
    
    
    mov ah,4ch  ; exit DOC 
    int 21h
    main endp  ; end main procedure
end main