.model small
.stack 100h
.data 
a db 5
b db 3
c db 4

.code  
main:
    mov ax, @data
    mov ds, ax

    ; Load a and b into AL
    mov al, a
    add al, b      ; AL = a + b = 8
    mov ah, 0      ; Clear AH for multiplication

    mov bl, c
    mul bl         ; AX = AL * BL = 8 * 4 = 32

    ; Now AX = 32
    ; Convert 32 to ASCII characters: '3' and '2'
    mov bx, 10
    xor dx, dx     ; Clear DX for division
    div bx         ; AX / 10 ? AL = quotient (3), AH = remainder (2)

    ; AL = 3 (tens), AH = 2 (ones)
    add al, 48     ; Convert to ASCII ? '3'
    mov dl, al
    mov ah, 2
    int 21h        ; Print '3'

    mov al, ah     ; AL = 2
    add al, 48     ; Convert to ASCII ? '2'
    mov dl, al
    mov ah, 2
    int 21h        ; Print '2'

    mov ah, 4ch    ; Exit program
    int 21h
end main


