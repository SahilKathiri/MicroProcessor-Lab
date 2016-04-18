.model small
.stack 20
.data
        string db 255 dup('$')
        handle  dw 0
        file db "hello.txt",0
.code
.startup
        mov ax,@data
        mov ds,ax

        mov ax,3d02h
        lea dx,file
        int 21h
        jc error
        mov handle,ax

        mov ah,3fh
        mov bx,handle
        mov cx,255
        lea dx,string
        int 21h
        jc error

        lea dx,string
        mov ah,09h
        int 21h

        error:
                mov ah,4ch
                int 21h

                .exit
                end


