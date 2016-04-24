.model small
.stack 20
.code
start:
  mov ax, @data
  mov ds, ax

  mov al, 12h
  mov ah, 0
  int 10h

  mov dx, 240
  mov cx, 170
  mov si, 300
  mov al, 0001b
  mov ah, 0ch

  l1:
  int 10h
  inc cx
  dec si
  jnz l1

  mov ah, 07h
  int 21h
  mov ah, 4ch
  int 21h
.exit
end start

