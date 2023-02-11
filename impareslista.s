 INTERVALO .equ 0x0000c
 .org 0x10
 
 _start:
 set r2, INTERVALO
 set r1, lista
 
 set r5, 0x01
 set r8, 0x00
 
loop_impar:
  ldb r3, [r1]
  tst r5, r3 
  jz guardaimpar
  add r8, 0x01 
  
encaminhaencerra:
 add r1, 1
 sub r2, 1
 jz fim
 
jmp loop_impar
fim:hlt 
 
 lista: .byte 9,1,2,10,3, 87, 15,0,30,6,50,6
 