.model small
.stack 20
.data
    n1 db 10h
    n2 db 15h
    usprod dw ?
    sprod dw ?

.code
.startup
 start: mov ax, @data
        mov ds, ax
        mov al, n1
        mul n2
        mov usprod, ax

        mov al, n1
        imul n2
        mov sprod, ax

        int 3
        end start
.exit
end
