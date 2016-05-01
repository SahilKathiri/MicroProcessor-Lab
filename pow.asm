.model small
.data
  base dw 4
  pow dw 5
.code
start:
  mov ax, @data
  mov ds, ax

  mov si, pow
  dec si

  mov ax, base
  l1: mul base
      dec si
      jnz l1

.exit
end start

