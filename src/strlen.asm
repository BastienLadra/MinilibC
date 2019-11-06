BITS 64

SECTION .text

GLOBAL strlen

strlen:
	ENTER 0, 0
        XOR     RCX, RCX
_loop:
	CMP BYTE [RDI + RCX], 0
	JE strlen_finish
	INC RCX
	JMP _loop

strlen_finish:
	MOV RAX, RCX
	LEAVE
	RET