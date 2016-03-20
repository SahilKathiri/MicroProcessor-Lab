.model small
.stack 20
.code
start: call readkb
       mov bl, al
       call nxtline
       call readkb
       mul bl
       mov bl,al

       call nxtline
       call disp
       mov ah, 4ch
       int 21

       readkb proc near
       mov ah, 01h
       int 21h
       call aschex
       ret
       readkb endp

       aschex proc near
       cmp al, 03ah
       jc sub30
       sub al, 07h
       sub30: sub al, 30h
       and al, 0fh
       ret
       aschex endp

       nxtline proc near
           mov ah, 02h
           mov dl, 0ah
           int 21h
           mov dl, 0dh
           int 21h
           ret
       nxtline endp

       disp proc near
           mov al, bl
           and al, 0f0h
           ror al, 04h
           call hexasc
           mov dl, al
           mov ah, 02
           int 21h
           mov al, bl
           and al, 0fh
           call hexasc
           mov dl, al
           mov ah, 02h
           int 21h
           ret
       disp endp

       hexasc proc near
           cmp al, 0ah
           jb num
           add al, 07h
           num: add al, 30h
           ret
       hexasc endp
end start

