.model small
.stack 20
.data
        string1 db 0dh,0ah,'Hello!$'
        file db "hello.txt",0
        handle dw 0
.code
.startup
        mov ax,@data
        mov ds,ax

        mov ah,3ch
        mov cx,01h
        lea dx,file
        int 21h
        jc error
        mov handle,ax

        mov ah,40h
        mov bx,handle
        mov cx,07h
        lea dx,string1
        int 21h
        jc error

        mov ah,3eh
        mov bx,handle
        int 21h
        jc error

        error:
                mov ah,4ch
                int 21h

        .exit
        end


