.DATA
A: .WORD 1, 1, 1//Matrix 1
B: .WORD 1, 2, 1
C: .WORD 1, 1, 3

D: .WORD 2, 1, 1// Matrix 2
E: .WORD 1, 1, 1
F: .WORD 1, 4, 1

G: .WORD 0, 0, 0
H: .WORD 0, 0, 0  //This will have addition of Matrix 1 and 2
I: .WORD 0, 0, 0 // Put memory address to check values at arrays G, H and I

.TEXT
ldr r0,=A
ldr r1,=B
ldr r2,=C

ldr r3,=D
ldr r4,=E
ldr r5,=F

ldr r6,=G
ldr r7,=H
ldr r8,=I

mov r9, #0
loop:	
	ldr r11, [r0], #4
	ldr r12, [r3], #4
	//ldr r10, [r6], #4
	add r11, r11, r12
	str r11 ,[r6], #4
	add r9, r9, #1
	cmp r9, #3
	BLT loop

mov r9, #0

loop1:	
	ldr r11, [r1], #4
	ldr r12, [r4], #4
	//ldr r10, [r7], #4
	add r11, r11, r12
	str r11 ,[r7], #4
	add r9, r9, #1
	cmp r9, #3
	BLT loop1

mov r9, #0
loop2:	
	ldr r11, [r2], #4
	ldr r12, [r5], #4
	//ldr r10, [r8], #4
	add r11, r11, r12
	str r11 ,[r8], #4
	add r9, r9, #1
	cmp r9, #3
	BLT loop2

		
	
