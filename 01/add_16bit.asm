ASSUME CS:CODE, DS:DATA

DATA SEGMENT
    NO1 DW 0004H      ; First number (4 in hexadecimal)
    NO2 DW 0005H      ; Second number (5 in hexadecimal)
DATA ENDS

CODE SEGMENT
START:
    ORG 500H
    MOV AX, DATA      ; Initialize DS with the address of DATA segment
    MOV DS, AX

    MOV AX, NO1       ; Load first number into AX (16-bit register)
    MOV BX, NO2       ; Load second number into BX (16-bit register)
    ADD AX, BX        ; Perform addition (result in AX)

    INT 3             ; Breakpoint (for debugging)
    INT 21H           ; Terminate program
CODE ENDS
END START
