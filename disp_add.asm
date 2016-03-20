.model small
DATA SEGMENT
    num1 db ?
    num2 db ?
    res db ?
    msg1 db 10,13,"Enter first number to add:$"
    msg2 db 10,13,"Enter second number to add:$"
    msg3 db 10,13,"Result of the addition is:$"
ENDS
CODE SEGMENT
  ASSUME DS:DATA, CS:CODE
START:
    mov ax, DATA
    mov ds, ax
    lea dx, msg1
    mov ah, 9
    int 21h
    mov ah, 1
    int 21h
    sub al, 30h
    mov num1, al

    lea dx, msg2
    mov ah , 9
    int 21h
    mov ah, 1
    int 21h
    sub al, 30h
    mov num2, al

    add al, num1
    mov res, al

    mov ah, 0
    aaa

    add ah, 30h
    add al, 30h

    mov bx, ax

    lea dx, msg3
    mov ah, 9
    int 21h

    mov ah, 2
    mov dl, bh
    int 21h

    mov ah, 2
    mov dl, bl
    int 21h

    mov ah, 4ch
    int 21h
ENDS
END START

