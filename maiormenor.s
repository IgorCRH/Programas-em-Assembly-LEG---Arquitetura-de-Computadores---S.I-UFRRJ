  
	
	INTERVALO  .equ 0x0000a 

     .org 0x10
_start:
     set r2,INTERVALO -1


     set r1, lista     

                       
     ldb r0,  [r1]
	 
     add  r1, 1       
loop_maior:
     ldb   r3, [r1]     
     cmp r0 , r3       
                       
     jg loop_menor
	 
     mov r0, r3
	 
loop_menor:
     ldb r4, [r1]
     cmp r4, r0
     
	 jl troca
	 mov r5, r4
troca:
     mov r6, r0
     mov r0, r5
     mov r5, r6	 
encerra: 
     add  r1, 1        
                       
     sub  r2, 1        
     jz   fim          
	                   
  
     jmp loop_maior           
     fim: hlt           
     
     .org 0x300
lista: .byte 9,1,2,10,3, 87, 15,0,33,8
     
