.model small
.stack 100h
.data
 x db ?
 y db ?
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,1
    int 21h
    mov x,al
    sub x,48
    int 21h
    
    mov y,al
    sub y,48
    int 21h
    ;display
    mov bh,x
    add bh,y
    add bh,48
    
    mov ah,2
    mov dl,0ah
    int 21h
    
    mov dl,0ah
    int 21h
    
    mov dl,bh
    int 21h 
    
    
    
    mov ah,4ch
    int 21h
    main endp
end main
    
    
    