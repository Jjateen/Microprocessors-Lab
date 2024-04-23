DATA SEGMENT
org 0000h
array db 11h, 22h, 33h, 44h, 55h, 66h, 77h, 88h, 99h, 0Ah
org 0010h
evn db ?
org 0020h
odd db ?
data ends

CODE SEGMENT
assume cs:code, ds:data
start: mov ax,data
       mov ds, ax
       lea si, array
       lea di, odd
       mov ax, 00h
       mov cl, 0ah
up:    mov al, [si]
       mov bl, 02
       div bl
       cmp ah, 00h
       je l1
       mov al, [si]
       mov [di], al
       inc di
l1:    inc si
       dec cl
       jnz up
       lea si, array
       lea di, evn
       mov cl, 0ah
up1:   mov al, [si]
       mov bl, 02h
       div bl
       cmp ah, 00h
       jne l2
       mov al, [si]
       mov [di], al
       inc di
l2:    inc si
       dec cl
       jnz up1
skip:  mov ah, 4ch
       int 3
       int 21h
       code ends
       end start
