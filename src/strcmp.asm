BITS 64

SECTION .text

GLOBAL strcmp

strcmp:
	ENTER 0, 0
	XOR RCX, RCX
_loop:
	MOV CL, [RDI + RCX]
	MOV SIL, [RSI + RCX]
	CMP CL, SIL
	JNE strcmp_finish
	CMP CL, 0
	JE strcmp_finish
	CMP SIL, 0
	JE strcmp_finish
	INC RCX
	JMP _loop

strcmp_finish:
	SUB CL, SIL
	MOVSX RAX, CL
	LEAVE
	RET