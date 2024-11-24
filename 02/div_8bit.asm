ASSUME CS:CODE, DS:DATA

DATA SEGMENT
    NO1 DB 12H        ; Dividend (18 in hexadecimal)
    NO2 DB 04H        ; Divisor (4 in hexadecimal)
DATA ENDS

CODE SEGMENT
START:
    MOV AX, DATA      ; Initialize DS with the address of DATA segment
    MOV DS, AX

    MOV AL, NO1       ; Load dividend into AL
    MOV BL, NO2       ; Load divisor into BL
    DIV BL            ; Divide AL by BL (quotient in AL, remainder in AH)
    INT 03H
    INT 21H           ; Terminate program
CODE ENDS
END START
