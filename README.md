# How to Install MASM on Windows

Follow these steps to set up MASM (Microsoft Macro Assembler) on your Windows PC using DOSBox.

---

## 1. Set Up DOSBox on Your OS

First, you need to download and install DOSBox:

1. Visit this link: [Download DOSBox](https://www.dosbox.com/download.php?main=1)  
2. Click on **Download**.  
3. Wait 5 seconds for the download to start automatically.  
4. After downloading, install DOSBox on your PC.  
![this](./this.png)
If you need help installing DOSBox, refer to this [Guide on Installing DOSBox on Windows](https://www.dosbox.com/wiki/Installation).  

---

## 2. Download `8086.rar`

1. Visit this link: [Download 8086.rar](#) (Replace with the actual link)  
2. Click on **Download**.  

---

## 3. Set Up `8086.rar`

1. Open the downloaded ZIP file from Step 2.  
2. Extract and copy the `8086` folder to the **C:** drive.  

---

## 4. Create an Assembly File (.asm)

1. Open your favorite code editor.  
2. Enter the following code:  

   ```assembly
   ; Hello World program by 360 Tech Explorer’s

   DATAS  SEGMENT
        STRING  DB  'Hello World!',13,10,'$'
   DATAS  ENDS

   CODES  SEGMENT
        ASSUME    CS:CODES, DS:DATAS

   START:
        MOV  AX, DATAS
        MOV  DS, AX

        LEA  DX, STRING

        MOV  AH, 9
        INT  21H 

        MOV  AH, 4CH
        INT  21H
   CODES  ENDS
   END   START
   ```

3. Save this file with the **`.asm`** file extension (e.g., `hello.asm`).  

---

## 5. Run the Assembly File in DOSBox

1. Open **DOSBox**.  
2. Enter the following command to mount the `8086` directory as a C drive:  

   ```shell
   Z:> mount c c:\8086
   ```

3. Navigate to drive C:  

   ```shell
   Z:> c:
   ```

4. If you want to create a new assembly file:  

   ```shell
   C:> edit file_name.asm
   ```

5. If you already have the assembly file, follow these steps:  
   - Copy your assembly file to the `C:\8086` folder.  
   - Run the following commands:  

     ```shell
     C:> masm your_file_here.asm
     C:> link your_file_here.obj
     C:> your_file_here.exe
     ```

---

That's it! You've successfully set up MASM and executed an assembly program on Windows using DOSBox.
