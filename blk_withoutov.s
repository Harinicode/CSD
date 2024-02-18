AREA blk_withoutov,CODE,READONLY
start
	LDR r0,=0x40000000	;1st block
	LDR r1,=0x40000050	;2nd Block
	LDR r2,[r0],#0x4	;no. of elements
L	LDR r3,[r0],#0x4
	STR r3,[r1],#0x4	;
	SUBS r2,r2,#1		;decrement
	BNE L
l	b	l
end
	
