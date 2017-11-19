.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
			grade1 DWORD   ?
			grade2 DWORD   ?
			grade3 DWORD   ?
			grade4 DWORD   ?
			w1 DWORD ?
			w2 DWORD ?
			w3 DWORD ?
			w4 DWORD ?
			g DWORD ?
			s DWORD ?
			prompt_g1 BYTE "Enter grade_1 :",0
			prompt_g2 BYTE "Enter grade_2 :",0
			prompt_g3 BYTE "Enter grade_3 :",0
			prompt_g4 BYTE "Enter grade_4 :",0
			prompt_w1 BYTE "Enter weight_1 :",0
			prompt_w2 BYTE "Enter weight_2 :",0
			prompt_w3 BYTE "Enter weight_3 :",0
			prompt_w4 BYTE "Enter weight_4 :",0
			inp BYTE 40 DUP(?),0
			lbl_weighted_sum BYTE "weighted sum:",0
			lbl_sum_weights BYTE "sum of weights:",0
			lbl_weighted_average BYTE "weighted average:",0
			weight BYTE 11 DUP(?),0
			sum BYTE 11 DUP(?),0
			aver BYTE 11 DUP(?),0

.CODE

_MainProc PROC 
		
		input prompt_g1,inp,40
		atod inp
		mov grade1,eax


		input prompt_w1,inp,40
		atod inp
		mov w1,eax
		mov eax,w1
		mul grade1
		mov grade1,eax





		input prompt_g2,inp,40
		atod inp
		mov grade2,eax


		input prompt_w2,inp,40
		atod inp
		mov w2,eax
		mov eax,w2
		mul grade2
		add grade1,eax
		mov eax,w2
		add w1,eax




		input prompt_g3,inp,40
		atod inp
		mov grade3,eax

		input prompt_w3,inp,40
		atod inp
		mov w3,eax

		mov eax,w3
		mul grade3
		add grade1,eax

		mov eax,w3
		add w1,eax



		input prompt_g4,inp,40
		atod inp
		mov grade4,eax


		input prompt_w4,inp,40
		atod inp
		mov w4,eax

		mov eax,w4
		mul grade4
		add grade1,eax
		mov eax,w4
		add w1,eax



		mov eax,grade1
		mov g,eax
		dtoa weight,eax
		output lbl_weighted_sum,weight

		mov eax,w1
		mov s,eax
		dtoa sum,eax
		output lbl_sum_weights,sum

			mov edx,0  
			mov eax,g
			mov ecx,s
			div ecx
           
		   dtoa    aver, eax
		   output lbl_weighted_average,aver

	mov eax,0
	ret
_MainProc ENDP
END
