.model small
.stack 100h
.data   
c db "Enter First Number : $"
d db "Enter second Number : $"
e db "Multiplying Value: $"
a db ?
b db ? 



.code
main proc
    
mov ax, @data
mov ds, ax 
           
 
 mov ah,9
 lea dx,c
 int 21h
           
 mov ah, 1
 int 21h
 sub al,48
 mov a,al
   
   
   
 mov ah,2
 mov dl,10
 int 21h
 mov dl,13
 int 21h   
   
 
 mov ah,9
 lea dx,d
 int 21h
 
 mov ah,1
 int 21h
 sub al,48
 mov b,al  
 
 

 
 
 
mul a
aam   ;adjust after multiplying


mov bx,ax


 mov ah,2
 mov dl,10
 int 21h
 mov dl,13
 int 21h
 

 mov ah,9
 lea dx,e
 int 21h 
 
mov ah,2
mov dl,bh
add dl,48
int 21h  



mov ah,2
mov dl,bl
add dl,48
int 21h


 
 


; Exit
mov ah, 4Ch
int 21h  
main endp
end main