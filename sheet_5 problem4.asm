.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
	
			pen 	DWORD ?
			nick	DWORD ?
			dimes	DWORD ?
			quart	DWORD ?
			mul1 DWORD 5
			mul2 DWORD 10
			mul3 DWORD 25
			total DWORD ?
			dollar DWORD ?
			s DWORD 100
		prompt_pen BYTE "Enter num of pennies:",0
		prompt_nick BYTE "Enter num of nickels",0
		prompt_dimes BYTE "Enter num of dimes:",0
		prompt_quart BYTE "Enter num of quarters: ",0
		inp BYTE  40 DUP (?),0
  
		total_lbl BYTE  "TOTAL CENTS:  ", 0
		TOTALS     Byte    11 DUP (?), 0
		dollars BYTE 11 DUP(?),0
		dollar_lbl BYTE "Total Dollar :",0



.CODE

_MainProc PROC
	


		input prompt_pen,inp,40
		atod inp
		mov pen,eax
		mov eax,pen
		add total,eax




		input prompt_nick,inp,40
		atod inp
		mov nick,eax
		mov eax,nick
		mul mul1
		add total,eax



		input prompt_dimes,inp,40
		atod inp
		mov dimes,eax
		mov eax,dimes
		mul mul2
		add total,eax








		input prompt_quart,inp,40
		atod inp
		mov quart,eax
		mov eax,quart
		mul mul3
		add total,eax

		mov eax,total
		mov dollar,eax
		dtoa TOTALS,eax
		output total_lbl,TOTALS

		mov edx,0
		mov eax,dollar
		mov ecx,s
		div ecx
           
		   dtoa    dollars,eax
		   output dollar_lbl,dollars

		mov eax,0
		ret
_MainProc ENDP
END
