BITS 64

SECTION .text

GLOBAL strchr

[BITS 64]

strchr:
	ENTER 0, 0
	PUSH RDI

_loop:
	CMP BYTE [RDI], SIL
	JZ is_okay
	CMP BYTE [RDI], 0
	JZ catch
	INC RDI
	JMP _loop

catch:
	MOV RAX, 0
	JMP end_loop

is_okay:	MOV RAX, RDI

end_loop:
	POP RDI
	LEAVE
	RET