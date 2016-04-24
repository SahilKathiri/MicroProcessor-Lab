.model small
.stack 20
.code
start:
  mov al, 12h
  mov ah, 0
  int 10h

  mov al, 0100b
  mov cx, 320
  mov dx, 240
  mov ah, 0ch
  int 10h

  mov ah, 07h
  int 21h
  mov ah, 4ch
  int 21h
.exit
end start

