ASSUME CS:CODE, DS:DATA
DATA SEGMENT
NO DW 0010H
DATA ENDS

CODE SEGMENT
START:
    ORG 500H
    MOV AX, DATA
    MOV DS, AX
    MOV AX, NO
    MOV CX, 0000H
    MOV BX, 0FFFFH
L1:
    ADD BX, 02
    INC CX
    SUB AX, BX
    JNZ L1 ; Jump if sign flag is set (AX is negative)
    MOV DX, CX
    MOV CX, NO
    INT 3
    INT 21
CODE ENDS
END START
