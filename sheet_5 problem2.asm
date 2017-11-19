.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.Data
	num1 DWORD ?
	num2 DWORD ?
	num3 DWORD ?
	mul_n DWORD 2
	sumn1n2 DWORD ?
	sumtion DWORD ?
	num DWORD 2 
	prompt1 BYTE "ENTER X",0
	prompt2 BYTE "ENTER y",0
	prompt3 BYTE "ENTER z",0
	lbl BYTE "THE VALUE = ",0
	result  BYTE 40 DUP(?),0

	inp BYTE 40 DUP (?),0


.CODE
_MainProc PROC
	
	input prompt1,inp,40
	atod inp
	mov num1,eax
	

	input prompt2,inp,40
	atod inp
	mov num2,eax
	add num1,eax

	mov eax,num1

	mul mul_n
	mov sumn1n2,eax
	
	input prompt3,inp,40
	atod inp
	mov num3,eax
	mov eax,num3
	add eax,sumn1n2

	;mov eax,num3

	dtoa result,eax
	output lbl,result
	mov eax,0
	ret
_MainProc ENDP
END
