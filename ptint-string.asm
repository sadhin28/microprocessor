.model small
.stack 100h
.data
a db 'Bangladesh is my Country $ '  ;db (define bite)
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,a ;load effective area (lea)
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main

