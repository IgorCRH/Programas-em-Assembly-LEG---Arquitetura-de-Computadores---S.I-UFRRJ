TAM_PILHA .equ 256

set sp, 0x8000
add r0, 0x1111
add r1, 0x1110
add r2, 0x1100
add r3, 0x1011

push r0
push r1
sub r1, r0
push r2
push r3
add r3, r2
div r3, r1
push r3

pop r3
jmp FIM_PILHA
hlt

FIM_PILHA:
.skip TAM_PILHA