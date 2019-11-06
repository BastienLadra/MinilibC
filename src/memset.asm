BITS 64

SECTION .text

GLOBAL memset

memset:
	ENTER 0, 0
	XOR RCX, RCX
	MOV RAX, RDI

_loop:
	CMP RDX, RCX
	JZ end_loop
	MOV [RAX], SIL
	INC RCX
	INC RAX
	JMP _loop

end_loop:
	MOV RAX, RDI

	LEAVE
	RET