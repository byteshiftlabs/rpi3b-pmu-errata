.equ STACK_TOP, 0x200000

.global _start

_start:
    mov x0, STACK_TOP
    mov sp, x0
