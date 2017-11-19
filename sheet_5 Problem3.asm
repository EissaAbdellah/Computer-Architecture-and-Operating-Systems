.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA

	l DWORD ?
	w DWORD ?
	multi DWORD 2
	promptl BYTE "ENTER L ",0
	promptw BYTE "ENTER W ",0
	inp BYTE 40 DUP(?),0
	result BYTE 40 DUP(?),0 
	lbl BYTE "THE perimeter = ",0
	

.CODE
_MainProc PROC
	
	input promptl,inp,40
	atod inp
	mul multi
	mov l,eax
	mov eax,l
	
	input promptw,inp,40
	atod inp
	mov w,eax
	mov eax,w
	mul multi

	;mov eax,w
	add l,eax

	mov eax,l

	dtoa result,eax
	output lbl,result

	mov eax,0
	ret
_MainProc ENDP
END
