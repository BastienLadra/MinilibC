BITS 64

SECTION .text

GLOBAL putstr
EXTERN  strlen

putstr:
        ENTER 0, 0
        CALL    strlen wrt ..plt
        MOV     RDX, RAX
        MOV     RSI, RDI
        MOV     RAX, 1
        MOV     RDI, 1
        SYSCALL
        LEAVE
        RET