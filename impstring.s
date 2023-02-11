LF	.equ	0x0a
CR	.equ	0x0d
WRITE   .equ 4
STDOUT .equ  1 


_start:
	set sp,0x10000
	set r0, msg
        call impmsg1
	
impmsg1:
    mov   r1,r0          
    mov   r2,r0 
    sub   r2,1	
impmsg2:
   add   r2,1
    ldb   r3,[r2]        
    cmp   r3,0   
    jnz   impmsg2          
    set   r7,WRITE       
    set   r0,STDOUT   
    sub   r2,r1         
    sys   0x55
ret	

msg:    .byte 'Seropedica',CR,LF,0
fim_impmsg:


