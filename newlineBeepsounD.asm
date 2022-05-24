.model small
.stack 100h
.code
main proc  
     
     mov ah,1       ;input 
     int 21h
     mov bl,al
     
     ;for new line
     mov ah,2       ;output
     mov dl ,10     ; newline  
     int 21h 
     mov dl, 13
     int 21h        ; cret (carriage return )
     
     ;intput 2nd char  
     
     mov ah,1       ;input 
     int 21h
     mov bh,al 
     
     
     
     ;for new line
     mov ah,2       ;output
     mov dl ,10     ; newline  
     int 21h 
     mov dl, 13
     int 21h        ; cret (carriage return )
     
     ;print
     mov ah,2 
     mov dl , bl
     int 21h
     
     ;for new line
     mov dl ,10     ; newline  
     int 21h 
     mov dl, 13
     int 21h        ; cret (carriage return )
     
     
    
     mov dl , bh
     int 21h  
     
     
     
     mov dl , 7   ;BEEP sound
     int 21h   
     
     
       
    
    mov ah,4Ch
    int 21h
    main endp
end main