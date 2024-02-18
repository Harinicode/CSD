AREA oddeven,CODE,READONLY
start
	LDR r0,=0x40000000;
	LDR r1,[r0]
	MOVS r1,r1,LSR #1                ;carry flag updated
	BCC  continue                    ; 1010-----> 101    0: no carry
	LDR r0,=0x40000004
	MOV r3,#0x00000011              ;odd
	STR r3,[r0]
	b	skip
continue
	LDR r0,=0x40000004
	MOV r3,#0x00000022          ;even
	STR r3,[r0]
skip
		nop
l	b	l
end
