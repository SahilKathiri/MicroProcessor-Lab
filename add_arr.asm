.model tiny
.data
    num1  db 25h, 35h, 45h, 32h, 56h, 98h, 76h, 76h
    num2  db 90h, 56h, 43h, 75h, 89h, 10h, 34h, 22h
    res   db 10 dup(00)
    count dw 08h

.code
.startup
 start: mov ax, @data
        mov ds, ax
        mov cx, count
        lea si, num1
        lea di, num2
        lea bx, res
        clc

    next: mov al, [si]
          adc al, [di]
          mov [bx], al
          inc si
          inc di
          inc bx
          dec cx
          jnz next
        
        int 3
        end start
.exit
end
