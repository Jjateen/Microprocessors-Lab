ASSUME CS:CODE, DS:DATA

DATA SEGMENT
    NO DW 0040H ; Number
    CUBE_ROOT DW ? 
DATA ENDS

CODE SEGMENT
START:
    ORG 100H ;
    MOV AX, DATA
    MOV DS, AX

 
    MOV CX, 0 
    MOV BX, 1 

find_cube_root:
    MOV DX, 0
    MOV SI, BX
    MOV AX, SI
    MUL SI ; AX = aX * BX
    MUL SI ; AX = AX * BX
    CMP AX, NO ; Compare result
    JE found_root
    JA found_root 
    ADD BX, 1 ; Increment guess
    INC CX 
    CMP CX, 1000 
    JNE find_cube_root
    JMP end_program 

found_root:
    MOV DX, BX ; Store the cube root
    MOV CX, NO	
end_program:
    INT 3 
    INT 21H

CODE ENDS
END START