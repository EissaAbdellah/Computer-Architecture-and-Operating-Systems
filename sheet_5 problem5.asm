.586
.MODEL FLAT
INCLUDE io.h           
.STACK 4096
.DATA
			number1 DWORD   ?
			number2 DWORD   ?
			number3 DWORD   ?
			number4 DWORD   ?
			number DWORD 4

			prompt1 BYTE    "Enter first number", 0
			prompt2 BYTE    "Enter second number", 0
			prompt3 BYTE    "Enter third number", 0
			prompt4 BYTE    "Enter fourth number", 0

			string  BYTE    40 DUP (?)
			resultLbl BYTE  "The average = ", 0
			result     Byte    11 DUP (?), 0

.CODE
_MainProc PROC
			input   prompt1, string, 40    
			atod    string         
			mov     number1, eax
			   
			input   prompt2, string, 40     
			atod    string
			mov number2,eax
			mov eax,number2
			add number1,eax

			input   prompt3, string, 40     
			atod    string
			mov number3,eax
			mov eax,number3
			add number1,eax

			input   prompt4, string, 40     
			atod    string
			mov number4,eax
			mov eax,number4
			add number1,eax
			
			mov eax,number1
			mov     number2, eax
			mov     eax, number1 

			mov     edx,0  
			mov ecx,number
			div ecx
           
			dtoa    result, eax        
			output  resultLbl, result          
			mov     eax, 0  
			ret
_MainProc ENDP
END                             
