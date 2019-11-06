BITS    64

SECTION .text

GLOBAL memcpy

memcpy:
	ENTER 0, 0
	XOR RCX, RCX

_loop:
	CMP RDX, RCX
	JZ memcpy_finish
	MOV AL, [RSI + RCX]
	MOV [RDI + RCX], AL
	INC RCX
	JMP _loop

memcpy_finish:
	MOV RAX, RDI
	LEAVE
    RET