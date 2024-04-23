ASSUME CS:CODE, DS:DATA
DATA SEGMENT
NUMBERS DB 05H, 03H, 06H, 02H, 04H  ; Sample 8-bit numbers
COUNT DW 05H                         ; Number of elements in the array
RESULT DB ?                         ; Variable to store the result
DATA ENDS

CODE SEGMENT
START:
    MOV AX, DATA
    MOV DS, AX
    MOV CX, COUNT
    MOV SI, 0
    MOV BX, 0
    MOV AX, 0000H
SUM_LOOP:
    MOV AL, [NUMBERS + SI]  ; Load the current number into AL
    ADD BL, AL              ; Add AL to BX (accumulate the sum)
    INC SI                  ; Move to the next element in the array
    LOOP SUM_LOOP           ; Repeat until all numbers are summed
    
    ; Calculate the average
    MOV AL, BL              ; Move the sum to AL
    DIV COUNT               ; Divide the sum by the count
    MOV RESULT, AL          ; Store the result in RESULT
    INT 03H
    INT 21H                 
    
CODE ENDS
END START