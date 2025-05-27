.model small
.stack 100h
.data
num1 db '2'
num2 db '9'
num3 db '6'
;largest db ?
smallest db ?
.code

main:
    mov ax, @data
    mov ds, ax
    
    mov al, num1
    
    mov bl, num2
    cmp al, bl
    jle skip1
    mov al, bl
    
  skip1:
    mov bl, num3
    cmp al,bl
    jle skip2
    mov al, bl
    
  skip2:
    mov smallest, al
    
   
  mov dl, smallest     
  mov ah, 2h
  int 21h
  
  mov ah, 4ch
  int 21h
 end main
    

