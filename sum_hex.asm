mall

.data
num1 db 20h
num2 db 30h
num3 db ?
.code

start:  mov ax, @data
    mov ds, ax
    mov al, num1
    add al, num2
    mov num3, al
    int 3
    end start

