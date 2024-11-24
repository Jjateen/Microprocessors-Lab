ASSUME CS:CODE, DS:DATA

DATA SEGMENT
    NO1 DB 04H        ; First number (4 in hexadecimal)
    NO2 DB 03H        ; Second number (3 in hexadecimal)
DATA ENDS

CODE SEGMENT
START:
    MOV AX, DATA      ; Initialize DS with the address of DATA segment
    MOV DS, AX

    MOV AL, NO1       ; Load first number into AL
    MOV BL, NO2       ; Load second number into BL
    MUL BL            ; Multiply AL by BL (result in AX)
    INT 03H
    INT 21H           ; Terminate program
CODE ENDS
END START
