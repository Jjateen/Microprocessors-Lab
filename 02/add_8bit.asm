ASSUME CS:CODE, DS:DATA

DATA SEGMENT
    NO1 DB 04H        ; First number (4 in hexadecimal)
    NO2 DB 06H        ; Second number (6 in hexadecimal)
DATA ENDS

CODE SEGMENT
START:
    MOV AX, DATA      ; Initialize DS with the address of DATA segment
    MOV DS, AX

    MOV AL, NO1       ; Load first number into AL
    ADD AL, NO2       ; Add second number to AL (result in AL)
    INT 03H
    INT 21H           ; Terminate program
CODE ENDS
END START
