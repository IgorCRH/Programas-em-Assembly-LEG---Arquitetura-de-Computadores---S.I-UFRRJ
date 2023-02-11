TAM_PILHA .equ 256

set sp, 0x8000
add r0, 0x1
push r0
add r0, 0x32
push r0

pop r1
pop r2
pop r3
jmp FIM_PILHA

hlt

FIM_PILHA:
.skip TAM_PILHA
