BITS    64

SECTION .text

GLOBAL memmove

memmove:
	ENTER 0, 0
	XOR RCX, RCX

_loop:
	CMP RDX, RCX
	JZ memmove_finish
	MOV AL, [RSI + RCX]
	MOV [RDI + RCX], AL
	INC RCX
	JMP _loop

memmove_finish:
	MOV RAX, RDI
	LEAVE
    RET