CODE SEGMENT
ASSUME CS:CODE
START:
    MOV AX, DATA            ; Initialize AX with data segment
    MOV BL, AL              ; Move first byte into BL
    MOV CL, BL              ; Copy BL to CL
    MOV SI, 1000H           ; Set SI to data starting address
    MOV BL, [SI]            ; Load first data byte
    DEC BL                  ; Decrement BL (number of comparisons)

L3:
    MOV CL, BL              ; Copy BL to CL for inner loop
    MOV SI, 7071H           ; Reset SI to start of data

L2:
    MOV AL, [SI]            ; Load current byte
    CMP AL, [SI+1]          ; Compare with next byte
    JGE L1                  ; If current <= next, skip swap
    XCHG AL, [SI+1]         ; Swap the bytes
    MOV [SI], AL            ; Update data

L1:
    INC SI                  ; Move to the next byte
    LOOP L2                 ; Repeat inner loop
    DEC BL                  ; Decrement outer loop counter
    JNZ L3                  ; Repeat outer loop if not zero

    INT 3                   ; End of program
CODE ENDS
