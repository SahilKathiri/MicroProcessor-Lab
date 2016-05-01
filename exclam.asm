.model small
.stack 20
.code
start:
  mov ax, @data
  mov ds, ax

  mov al, 12h       ;set graphics mode
  mov ah, 0
  int 10h

  mov dh, 00        ;set cursor at 0,0
  mov dl, 00
  mov bh, 00
  mov ah, 02
  int 10h

  
  mov al, '!'
  mov bh, 00
  mov bl, 1001b
  mov cx, 80
  mov ah, 09h

  mov si, 30
  l1:
    int 10h

    inc dh
    mov ah, 02
    int 10h

    mov ah, 09h
    dec si
    jnz l1

  mov ah, 07h
  int 21h
  mov ah, 4ch
  int 21h
.exit
end start

