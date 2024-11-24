# Microprocessors Lab - Experiment 8

### **Calculating Average of 5 Numbers and Factorial of a Number using 8086 Microprocessor**

---

### **Aim**  
- **(a)** Write an ALP to calculate the average of five 8-bit numbers.  
- **(b)** Write an ALP to calculate the factorial of a number.

---

### **Requirements**  
- **Microprocessor:** 8086  
- **Software:** MASM (Microsoft Macro Assembler)

---

### **Program Code**

#### **(a) Average of Five 8-bit Numbers:**
```assembly
ASSUME CS:CODE, DS:DATA

DATA SEGMENT
    NUMBERS DB 05H, 03H, 06H, 02H, 04H  ; Sample 8-bit numbers
    COUNT DW 05H                         ; Number of elements in the array
    RESULT DB ?                           ; Variable to store the result
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
```

---

#### **(b) Factorial of a Number:**
```assembly
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
```

---

### **Outputs**

#### **(a) Average Calculation Result:**  
![Average Calculation Output](08/avg.png)

#### **(b) Factorial Calculation Result:**  
![Factorial Calculation Output](08/factorial.png)

---

### **Result/Conclusion:**  
Thus, we successfully wrote an ALP to calculate the average of five 8-bit numbers and to calculate the factorial of a number using the 8086 microprocessor and MASM.

---

**Prepared by:**  
**Name:** Jjateen Gundesha  
**Registration Number:** BT22ECI002  

---
