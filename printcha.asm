.model small
.data
        char db ?
.code
.startup
        mov ah,01h
        int 21h
        mov char,al
        mov dl,char
        mov ah,02h
        int 21h
        .exit
end
      

