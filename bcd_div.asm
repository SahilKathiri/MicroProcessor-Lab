.model small
.stack 20
.data
        dividend db 35h,35h,35h,32h,36h,38h,36h,36h
        divisor db 34h
        quo db 9 dup(0)
        remain db ?
        count dw 0008h

.code
start:
    mov ax,@data
    mov ds,ax
    mov cx,count
    mov si,0000h
    clc
    mov ah,00h
    mov dl,divisor
    repeat:
        mov al,dividend[si]
        and al,0fh
        aad
        div dl
        mov quo[si],al
        inc si
        dec cx
        jnz repeat
        mov remain,ah
        int 3
.exit
end start

