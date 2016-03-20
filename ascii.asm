.model small
.stack 20
.data
    mess1 db 0dh, 0ah,'Enter a character: $'
    mess2 db 0dh, 0ah,'Equivalent ascii value: $'
    ascii db ?,?,'H','$'
.code
start: mov ax, @data
       mov ds, ax
       lea dx, mess1
       mov ah, 09h
       int 21h

       mov ah, 01h
       int 21h
       mov bl, al

       call conv
       mov ascii+1, al
       mov al, bl
       ror al, 04h
       call conv
       mov ascii, al
       lea dx, mess2
       mov ah, 09h
       int 21h
       mov ah, 4ch
       int 21h


       conv proc near
           and al, 0fh
           cmp al , 0ah
           jc down
           add al, 07h
           down: add al, 30h
           ret
       conv endp
end start

