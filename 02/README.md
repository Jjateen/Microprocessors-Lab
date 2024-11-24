# Microprocessors Lab - Experiment 2

### **Arithmetic Operations on 8-bit Numbers using 8086 Microprocessor**

---

### **Aim**  
To perform addition, subtraction, multiplication, and division of two 8-bit numbers using the 8086 microprocessor and MASM (Microsoft Macro Assembler).

---

### **Requirements**  
- **Microprocessor:** 8086  
- **Software:** MASM (Microsoft Macro Assembler)

---

### **Program Code**

#### **8-bit Addition**
```assembly
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
```

---

#### **8-bit Subtraction**
```assembly
ASSUME CS:CODE, DS:DATA

DATA SEGMENT
    NO1 DB 06H        ; First number (6 in hexadecimal)
    NO2 DB 04H        ; Second number (4 in hexadecimal)
DATA ENDS

CODE SEGMENT
START:
    MOV AX, DATA      ; Initialize DS with the address of DATA segment
    MOV DS, AX

    MOV AL, NO1       ; Load first number into AL
    SUB AL, NO2       ; Subtract second number from AL (result in AL)
    INT 03H
    INT 21H           ; Terminate program
CODE ENDS
END START
```

---

#### **8-bit Multiplication**
```assembly
ASSUME CS:CODE, DS:DATA

DATA SEGMENT
    NO1 DB 04H        ; First number (4 in hexadecimal)
    NO2 DB 03H        ; Second number (3 in hexadecimal)
DATA ENDS

CODE SEGMENT
START:
    MOV AX, DATA      ; Initialize DS with the address of DATA segment
    MOV DS, AX

    MOV AL, NO1       ; Load first number into AL
    MOV BL, NO2       ; Load second number into BL
    MUL BL            ; Multiply AL by BL (result in AX)
    INT 03H
    INT 21H           ; Terminate program
CODE ENDS
END START
```

---

#### **8-bit Division**
```assembly
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
```

---

### **Explanation of the Code**  
- **Data Segment:** Defines two 8-bit numbers for each operation.  
- **Segment Initialization:** Sets up the data segment using `MOV AX, DATA` and `MOV DS, AX`.  
- **Arithmetic Operations:**  
  - **Addition:** Adds two numbers and stores the result in AL.  
  - **Subtraction:** Subtracts the second number from the first and stores the result in AL.  
  - **Multiplication:** Multiplies two numbers, result stored in AX.  
  - **Division:** Divides the dividend by the divisor, quotient in AL, remainder in AH.  
- **Termination:** `INT 21H` ends the program.  

---

### **Outputs**

#### **8-bit Addition Result:**  
![8-bit Addition Output](02/output_8bit_addition.png)

#### **8-bit Subtraction Result:**  
![8-bit Subtraction Output](02/output_8bit_subtraction.png)

#### **8-bit Multiplication Result:**  
![8-bit Multiplication Output](02/output_8bit_multiplication.png)

#### **8-bit Division Result:**  
![8-bit Division Output](02/output_8bit_division.png)

---

### **Conclusion**  
We successfully performed 8-bit addition, subtraction, multiplication, and division using the 8086 microprocessor. The results were verified and displayed using the MASM assembler.

---

**Prepared by:**  
**Name:** Jjateen Gundesha  
**Registration Number:** BT22ECI002  

---
