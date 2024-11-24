# Microprocessors Lab - Experiment 1

### **Addition of Two Numbers using 8086 Microprocessor**

---

### **Aim**  
To perform the addition of two numbers (8-bit and 16-bit) using the 8086 microprocessor and MASM (Microsoft Macro Assembler).

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
```

---

#### **16-bit Addition**
```assembly
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
```

---

### **Explanation of the Code**  
- **Data Segment:** Defines two numbers (8-bit for the first code and 16-bit for the second code).  
- **Segment Initialization:** Sets up the data segment using `MOV AX, DATA` and `MOV DS, AX`.  
- **Loading Values:**  
  - **8-bit:** Uses AL and BL registers for addition.  
  - **16-bit:** Uses AX and BX registers for addition.  
- **Addition:** Adds the two numbers and stores the result in either AL (8-bit) or AX (16-bit).  
- **Termination:** `INT 21H` ends the program.  

---

### **Outputs**

#### **8-bit Addition Result:**  
![8-bit Addition Output](01/output_8bit_addition.png)

#### **16-bit Addition Result:**  
![16-bit Addition Output](01/output_16bit_addition.png)

---

### **Conclusion**  
We successfully performed the addition of two numbers (both 8-bit and 16-bit) using the 8086 microprocessor and MASM assembler. This experiment demonstrates fundamental arithmetic operations and proper data segment handling in assembly language.

---

**Prepared by:**  
**Name:** Jjateen Gundesha  
**Registration Number:** BT22ECI002  

---
