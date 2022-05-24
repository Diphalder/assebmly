.model small
.stack 100h
.code 

main proc 
    
    mov ah,1 ;input data function
    int 21h  ; interupt console 
    
    mov bl, al  
    
    mov ah,1
    int 21h  ; interupt console 
    
    mov bh,al   
    
    mov ah,2 ; output function
    mov  dl ,bl
    
    int 21h  ; interupt console
    
    mov dl , bh;
    int 21h  ; interupt console
    
    
    mov ah, 4ch  ; doc end 
    int 21h
    main endp
end main
     
    
     
    
