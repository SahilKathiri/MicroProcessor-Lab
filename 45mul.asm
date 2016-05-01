.model small
.stack 20
.code
start: mov ax, @data
       mov ds, ax

       mov cl, 9
       mov ax, 2
       shl ax, cl
.exit
end

