.include "m16def.inc"
.cseg
.org 0x00
rjmp main
delay:
ldi r18 , 0xff
run_delay2:
ldi r17 , 0x50
run_delay1:
dec r17
cpi r17 , 0x00
brne run_delay1
dec r18
cpi r18,0x00
brne run_delay2
ret
main:
ldi r16 , 0x01
out ddrc , r16
out portc,r16
rcall delay
ldi r16,0x00
out portc ,r16
rcall delay
rjmp main