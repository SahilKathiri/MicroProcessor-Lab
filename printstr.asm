.model small
.data
        chaSTR db "WELCOME $"
.code
.startup
        MOV AH,09
        MOV DX,OFFSET CHASTR
        int 21h
        .exit
end
      

