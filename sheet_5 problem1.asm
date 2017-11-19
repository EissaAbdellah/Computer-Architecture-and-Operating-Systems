.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA

	x DWORD ?
	y DWORD ?
	z DWORD ?
	sum DWORD ?
	s DWORD 2
	prompt_x BYTE "Enter x :",0
	prompt_y BYTE "Enter y :",0
	prompt_z BYTE "Enter z :",0
	inp BYTE  40 DUP (?),0
	result BYTE 11 DUP (?),0
	lbl BYTE "Result : ",0


.CODE


_MainProc PROC



	input prompt_x,inp,40
	atod inp
	mov x,eax


	input prompt_y,inp,40
	atod inp
	mov y,eax
	mov eax,y
	add x,eax
	

	input prompt_z,inp,40
	atod inp
	mov z,eax
	mov eax,z
	mul s
	sub x,eax
	mov eax,x
	add eax,1
	neg eax

	dtoa result,eax
	output lbl,result
	mov eax,0
	ret 
_MainProc ENDP
END
