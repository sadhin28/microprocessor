.model small 
.stack 100h
.data
entercharmsg db 'Enter a Character: $' 
changeChar db 'Uppercse is: $'
.code
main:
mov ax, @data   
mov ds, ax
          
lea dx, entercharmsg  ;for display msg
mov ah, 9
int 21h 
           
           
mov ah, 1   ;for input char
int 21h



cmp al, 'a'
jb not_lower
cmp al, 'z'
ja not_lower
and al, 11011111b 


jmp print_result


not_lower:
 cmp al, 'A'
 jb end_prog
 cmp al, 'Z'
 ja end_prog
 or al, 00100000b
 
 print_result:
    lea dx, changeChar  ;for display msg
    mov ah, 9
    int 21h
    mov dl, al
    mov ah, 2h
    int 21h
    
 end_prog:
    mov ah, 4ch
    int 21h
 end main