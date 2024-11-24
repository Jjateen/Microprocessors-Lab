ASSUME CS:CODE, DS:DATA

DATA SEGMENT
    NUM DB 05H          ; Number (5 in hexadecimal)
    RESULT DB ?         ; Variable to store the factorial result
DATA ENDS

CODE SEGMENT
START:
    MOV AX, DATA
    MOV DS, AX
    MOV AX, 0000H
    MOV BX, 0000H
    MOV AL, NUM  
    MOV BL, AL
    DEC BL
    MOV CX, BX
    MOV DX, 0000H
FACTORIAL_LOOP:
    MUL BL
    DEC BL
    LOOP FACTORIAL_LOOP
    MOV RESULT, AL       ; Store the factorial result in RESULT
    MOV DL, RESULT 
    MOV CL, NUM 
    INT 3H  
    INT 21H         
CODE ENDS
END START
