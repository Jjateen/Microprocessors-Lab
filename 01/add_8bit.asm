ASSUME CS:CODE, DS:DATA

DATA SEGMENT
    NO1 DB 05H        ; First number (5 in hexadecimal)
    NO2 DB 03H        ; Second number (3 in hexadecimal)
DATA ENDS

CODE SEGMENT
START:
    ORG 500H
    MOV AX, DATA      ; Initialize DS with the address of DATA segment
    MOV DS, AX

    MOV AL, NO1       ; Load first number into AL (8-bit register)
    MOV BL, NO2       ; Load second number into BL (8-bit register)
    ADD AL, BL        ; Perform addition (result in AL)

    INT 3             ; Breakpoint (for debugging)
    INT 21H           ; Terminate program
CODE ENDS
END START
