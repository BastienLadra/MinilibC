
BITS    64

SECTION .text

GLOBAL strncmp

strncmp:
	ENTER 0, 0 
	XOR RCX, RCX

_loop:
	MOV R15b, [RSI + RCX]
	MOV CL, [RDI + RCX]
	CMP CL, R15b
	JNE strncmp_finish
	CMP R15b, 0
	JE strncmp_finish
	CMP CL, 0
	JE strncmp_finish
	INC RCX
	CMP RCX, RDX
	JE strncmp_finish
	JMP _loop

strncmp_finish:
	CMP CL, R15b
	SUB CL, R15b
	MOVSX RAX, CL
	LEAVE
	RET