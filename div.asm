.model small
.stack 20
.data
    n1     db  82h
    n2     db  35h
    usquo  db  ? 
    usrem  db  ?
    squo   db  ?
    srem   db  ?

.code
.startup
 start: mov ax, @data
        mov ds, ax
        mov al, n1
        mov ah, 00
        div n2
        mov usquo, al
        mov usrem, ah

        mov al, n1
        cbw
        idiv n2
        mov squo, al
        mov srem, ah

        end start
.exit
end
