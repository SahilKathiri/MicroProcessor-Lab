.model small
.data
   num db 6
.code
mov bh, 0
mov ah, 02h
mov dh, 12
mov dl, 40
int 10h
inc dh

mov bl, 07h
mov al, 'D'
mov si, 6

l1:
mov ah, 03h      ;get cursor
int 10h
inc dl
mov ah, 02h
int 10h

mov cx, 1        ; print 'd'
mov ah, 09h
inc bl
mov bh, 0h
int 10h
dec si
jnz l1

.exit
end

