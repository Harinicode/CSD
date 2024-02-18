AREA BT_overlap,CODE,READONLY
start
	LDR r0,=0x40000000;
	LDR r2,[r0],#0x4;
	ADD r3,r0,r2,LSL #2
L	LDR r4,[r3,#-0x4]
	STR r4,[r3],#-0x4
	SUBS r2,r2,#1
	BNE L
l	b	l
end
