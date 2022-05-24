.model small
.stack 100h
.data
m db 'hello world$'   ; formate "  $"




.code
main proc
                            ;1-> single key input 
                            ;2-> single char output
                            ;9-> char string output
    mov ax,@data            ;data segment name is @data , conert code segment 
    mov ds,ax               
    
    
    mov ah,9                ;char string output 
    lea dx,m                ;Load-Effective-Adress
    int 21h 
    
    
                              ;newline    
    mov ah,2 
    mov dl , 0Dh
    int 21h  
    mov dl , 0Ah
    int 21h
    
    
    
    mov ah,1                ;single char input 
    int 21h                 ; interupt Console
    mov bl, al 
    
    
    
                            ;newline    
    mov ah,2 
    mov dl , 0Dh
    int 21h  
    mov dl , 0Ah
    int 21h
    
    
    
    
    
    
    
    mov ah, 2              ;single char output 
    mov dl , bl
    int 21h
    
    
    
    
    
    mov ah,4Ch
    int 21h
    main endp
end main