.model small
.stack 100h

.data
 a db "Enter 1st Number : $" 
 c db "Enter 2nd Number : $"
 b db " Sum Of Number : $"
 d db "Sub Of Number : $"
.code
main proc 
     
    mov ax,@data
    mov ds,ax 
    
    mov ah,9
    lea dx,a
    int 21h 
    
    mov ah,1
    int 21h 
    mov bl,al
    
    
    mov ah,2
    mov dl,10
    int 21h  
    mov dl,13
    int 21h 
    
    mov ah,9
    lea dx,c
    int 21h
    
    mov ah,1
    int 21h
    mov bh,al  
    
    mov ah,2
    mov dl,10
    int 21h  
    mov dl,13
    int 21h 
    
    
   
    
    mov ah,9
    lea dx,b
    int 21h  
    
    add bl,bh
   
    
    mov ah,2
    mov dl,bl
    sub dl,48
    int 21h  
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h 
    
    
   
   
    
    
    mov ah,9
    lea dx,d
    int 21h
     
    sub bl,bh 
     
    mov ah,2
    mov dl,bl
    sub dl,48
    int 21h
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    