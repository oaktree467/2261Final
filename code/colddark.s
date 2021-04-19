	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"colddark.c"
	.text
	.align	2
	.global	initColdDark
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initColdDark, %function
initColdDark:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #2048
	ldr	r1, .L6
	ldr	r3, .L6+4
	ldr	r0, .L6+8
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	lr, .L6+12
	ldr	ip, .L6+16
	ldr	r1, .L6+20
	str	r2, [lr]
	str	r2, [ip]
	str	r2, [r1]
	ldr	r3, .L6+24
	ldr	r4, .L6+28
	ldr	lr, .L6+32
	ldr	ip, .L6+36
	ldr	r1, .L6+40
	str	r2, [r4]
	str	r2, [lr]
	str	r2, [ip]
	str	r2, [r1]
	add	r0, r3, #508
	ldr	r2, .L6+44
	add	r0, r0, #2
.L2:
	ldrh	r1, [r3, #2]!
	cmp	r3, r0
	strh	r1, [r2, #2]!	@ movhi
	bne	.L2
	pop	{r4, lr}
	bx	lr
.L7:
	.align	2
.L6:
	.word	colddarkmessagebgMap
	.word	memcpy
	.word	cdmessageMapCopy
	.word	coldMessageBool
	.word	blinkBool
	.word	moveForwardBool
	.word	cdmessageMapCopy+766
	.word	cursor
	.word	sniffBool
	.word	stage
	.word	nonInteractText
	.word	messageUnedited-2
	.size	initColdDark, .-initColdDark
	.align	2
	.global	updateHighlight
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateHighlight, %function
updateHighlight:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L17
	ldr	r3, .L17+4
	ldr	r2, [r2]
	push	{r4, r5, r6, lr}
	ldr	ip, .L17+8
	ldr	lr, [r3, r2, lsl #2]
	ldr	r0, .L17+12
	ldrh	r4, [ip, #4]
	ldrh	r5, [ip, #-124]
	add	r6, lr, #45
	sub	ip, ip, #1408
.L9:
	sub	r3, r0, #192
.L11:
	cmp	lr, r3
	movgt	r1, r4
	bgt	.L10
	cmp	r6, r3
	movlt	r1, r4
	movge	r1, r5
.L10:
	lsl	r2, r3, #1
	add	r3, r3, #32
	cmp	r3, r0
	strh	r1, [ip, r2]	@ movhi
	bne	.L11
	add	r0, r3, #1
	cmp	r0, #624
	bne	.L9
	ldr	r4, .L17+16
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L17+20
	ldr	r1, .L17+24
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L18:
	.align	2
.L17:
	.word	cursor
	.word	.LANCHOR0
	.word	blackbgMap+1408
	.word	610
	.word	DMANow
	.word	100720640
	.word	blackbgMap
	.size	updateHighlight, .-updateHighlight
	.align	2
	.global	clearBoard
	.syntax unified
	.arm
	.fpu softvfp
	.type	clearBoard, %function
clearBoard:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, .L24
	ldrh	r0, [ip, #8]
	sub	r1, ip, #652
	sub	ip, ip, #600
.L20:
	mov	r3, #0
.L21:
	lsl	r2, r3, #6
	add	r3, r3, #1
	cmp	r3, #6
	strh	r0, [r1, r2]	@ movhi
	bne	.L21
	add	r1, r1, #2
	cmp	r1, ip
	bne	.L20
	bx	lr
.L25:
	.align	2
.L24:
	.word	cdmessageMapCopy+1488
	.size	clearBoard, .-clearBoard
	.align	2
	.global	loadMessageUnedited
	.syntax unified
	.arm
	.fpu softvfp
	.type	loadMessageUnedited, %function
loadMessageUnedited:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L30
	ldr	r2, .L30+4
	add	r0, r3, #508
	add	r0, r0, #2
.L27:
	ldrh	r1, [r3, #2]!
	cmp	r3, r0
	strh	r1, [r2, #2]!	@ movhi
	bne	.L27
	mov	r3, #4096
	ldr	r2, .L30+8
	ldr	r4, .L30+12
	mov	r0, #3
	ldr	r1, .L30+16
	mov	lr, pc
	bx	r4
	mov	r2, #0
	ldr	r3, .L30+20
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L31:
	.align	2
.L30:
	.word	messageUnedited-2
	.word	cdmessageMapCopy+766
	.word	100712448
	.word	DMANow
	.word	cdmessageMapCopy
	.word	coldMessageBool
	.size	loadMessageUnedited, .-loadMessageUnedited
	.align	2
	.global	printColdText
	.syntax unified
	.arm
	.fpu softvfp
	.type	printColdText, %function
printColdText:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #1
	mov	r1, #0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, .L40
	ldr	r0, .L40+4
	ldrh	r2, [r3, #10]
	strh	r2, [r3, #10]	@ movhi
	strh	ip, [r3, #10]	@ movhi
	strh	r0, [r3, #8]	@ movhi
	ldrh	r2, [r3, #10]
	orr	r2, r2, #192
	strh	r2, [r3, #10]	@ movhi
	ldr	r7, .L40+8
	ldr	r6, .L40+12
	ldr	r5, .L40+16
	ldr	r3, .L40+20
	ldr	r2, [r7]
	str	r1, [r6]
	str	r3, [r5]
	ldrb	r2, [r2]	@ zero_extendqisi2
	cmp	r2, r1
	beq	.L36
	ldr	r4, .L40+24
	mov	fp, r4
	ldr	r10, .L40+28
	ldr	r9, .L40+32
	ldr	r8, .L40+36
.L33:
	sub	r2, r2, #32
	ldr	r2, [r10, r2, lsl #2]
	lsl	r2, r2, #1
	ldrh	ip, [r4, r2]
	lsl	lr, r3, #1
	mov	r2, r8
	mov	r1, fp
	mov	r0, #3
	mov	r3, #4096
	strh	ip, [r4, lr]	@ movhi
	mov	lr, pc
	bx	r9
	ldr	r0, [r7]
	ldr	r1, [r6]
	ldrb	r2, [r0, r1]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L36
	ldr	r3, [r5]
	sub	ip, r3, #444
	tst	ip, #31
	addeq	r3, r3, #6
	streq	r3, [r5]
	ldrbeq	r2, [r0, r1]	@ zero_extendqisi2
	b	.L33
.L36:
	ldr	r2, .L40
	ldrh	r3, [r2, #10]
	strh	r3, [r2, #10]	@ movhi
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L41:
	.align	2
.L40:
	.word	67109120
	.word	-11000
	.word	activeMessage
	.word	timerI
	.word	timerJ
	.word	418
	.word	cdmessageMapCopy
	.word	letterMap
	.word	DMANow
	.word	100712448
	.size	printColdText, .-printColdText
	.align	2
	.global	loadColdMessage
	.syntax unified
	.arm
	.fpu softvfp
	.type	loadColdMessage, %function
loadColdMessage:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #1
	ldr	r3, .L52
	ldr	ip, .L52+4
	push	{r4, lr}
	str	r2, [r3]
	ldrh	r0, [ip, #8]
	sub	r1, ip, #652
	sub	ip, ip, #600
.L43:
	mov	r3, #0
.L44:
	lsl	r2, r3, #6
	add	r3, r3, #1
	cmp	r3, #6
	strh	r0, [r1, r2]	@ movhi
	bne	.L44
	add	r1, r1, #2
	cmp	r1, ip
	bne	.L43
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L52+8
	ldr	r1, .L52+12
	ldr	r4, .L52+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L52+20
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L46
	cmp	r3, #2
	beq	.L47
	cmp	r3, #0
	beq	.L51
	pop	{r4, lr}
	b	printColdText
.L46:
	ldr	r1, .L52+24
	ldr	r0, .L52+28
	ldr	r2, .L52+32
	pop	{r4, lr}
	str	r0, [r1]
	str	r3, [r2]
	b	printColdText
.L51:
	mov	r0, #1
	ldr	r1, .L52+36
	ldr	r3, .L52+24
	ldr	r2, .L52+40
	str	r0, [r1]
	pop	{r4, lr}
	str	r2, [r3]
	b	printColdText
.L47:
	mov	r0, #1
	ldr	r1, .L52+44
	ldr	r3, .L52+24
	ldr	r2, .L52+48
	str	r0, [r1]
	pop	{r4, lr}
	str	r2, [r3]
	b	printColdText
.L53:
	.align	2
.L52:
	.word	coldMessageBool
	.word	cdmessageMapCopy+1488
	.word	100712448
	.word	cdmessageMapCopy
	.word	DMANow
	.word	cursor
	.word	activeMessage
	.word	.LANCHOR0+52
	.word	moveForwardBool
	.word	sniffBool
	.word	.LANCHOR0+12
	.word	blinkBool
	.word	.LANCHOR0+120
	.size	loadColdMessage, .-loadColdMessage
	.align	2
	.global	chapterOneOutro
	.syntax unified
	.arm
	.fpu softvfp
	.type	chapterOneOutro, %function
chapterOneOutro:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r5, .L64
	add	r6, r5, #1408
	mov	r4, #0
	ldr	r9, .L64+4
	ldr	r8, .L64+8
	add	r6, r6, #2
	add	r7, r5, #2
	b	.L56
.L55:
	cmp	r4, #640
	beq	.L62
.L56:
	ldrh	r3, [r6, #4]
	tst	r4, #31
	strh	r3, [r5, #2]!	@ movhi
	add	r4, r4, #1
	bne	.L55
	mov	r3, #4096
	mov	r2, r9
	mov	r1, r7
	mov	r0, #3
	mov	lr, pc
	bx	r8
	cmp	r4, #640
	bne	.L56
.L62:
	ldr	r5, .L64+12
	add	r6, r5, #2
	mov	r9, r6
	mov	r4, #0
	ldr	r8, .L64+16
	ldr	r7, .L64+8
	b	.L58
.L57:
	cmp	r4, #700
	beq	.L63
.L58:
	ldrh	r2, [r6]
	tst	r4, #31
	strh	r2, [r5, #2]!	@ movhi
	add	r4, r4, #1
	bne	.L57
	mov	r3, r8
	mov	r1, r9
	mov	r0, #3
	ldr	r2, .L64+20
	mov	lr, pc
	bx	r7
	cmp	r4, #700
	bne	.L58
.L63:
	ldr	r3, .L64+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L64+28
	mov	r1, #1024
	ldr	r0, .L64+32
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L64+36
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	str	r2, [r3]
	bx	lr
.L65:
	.align	2
.L64:
	.word	blackbgMap-2
	.word	100720640
	.word	DMANow
	.word	cdmessageMapCopy-2
	.word	1073745920
	.word	100712448
	.word	stopSoundA
	.word	timerWait
	.word	20000
	.word	nextRoomBool
	.size	chapterOneOutro, .-chapterOneOutro
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Oh, Lord...\000"
	.align	2
.LC1:
	.ascii	"It's cold. Dark. You can'tmove or see a thing.\000"
	.align	2
.LC2:
	.ascii	"Usually during an attack, you can at least see...\000"
	.align	2
.LC3:
	.ascii	"Are you...? No. No, you   can't be. Let's not think"
	.ascii	" about that. There must be a way out.\000"
	.align	2
.LC4:
	.ascii	"Okay, calm down. You've   been taking preventative "
	.ascii	" measures against this     outcome for months.\000"
	.align	2
.LC5:
	.ascii	"Maybe you should just try to remember how you got  "
	.ascii	" here, and then you can getout...\000"
	.text
	.align	2
	.global	messagesNonInteractive
	.syntax unified
	.arm
	.fpu softvfp
	.type	messagesNonInteractive, %function
messagesNonInteractive:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 392
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	sub	sp, sp, #396
	mov	r4, sp
	ldr	r3, .L82
	ldr	r5, .L82+4
	ldm	r3, {r0, r1, r2}
	stm	r4, {r0, r1, r2}
	ldmia	r5!, {r0, r1, r2, r3}
	add	ip, sp, #12
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldm	r5, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2}
	ldr	r5, .L82+8
	strh	r3, [ip], #2	@ movhi
	lsr	r3, r3, #16
	strb	r3, [ip]
	ldmia	r5!, {r0, r1, r2, r3}
	add	lr, sp, #60
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	mov	r2, #89
	ldr	r5, .L82+12
	ldr	r1, .L82+16
	add	r0, sp, #200
	strh	r3, [lr]	@ movhi
	mov	lr, pc
	bx	r5
	mov	r2, #98
	ldr	r1, .L82+20
	add	r0, sp, #292
	mov	lr, pc
	bx	r5
	ldr	r1, .L82+24
	mov	r2, #85
	add	r0, sp, #112
	mov	lr, pc
	bx	r5
	ldr	ip, .L82+28
	ldrh	r0, [ip, #8]
	sub	r1, ip, #652
	sub	ip, ip, #600
.L67:
	mov	r3, #0
.L68:
	lsl	r2, r3, #6
	add	r3, r3, #1
	cmp	r3, #6
	strh	r0, [r1, r2]	@ movhi
	bne	.L68
	add	r1, r1, #2
	cmp	r1, ip
	bne	.L67
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L82+32
	ldr	r1, .L82+36
	ldr	r5, .L82+40
	mov	lr, pc
	bx	r5
	ldr	r3, .L82+44
	ldr	r3, [r3]
	cmp	r3, #7
	ldrls	pc, [pc, r3, asl #2]
	b	.L66
.L72:
	.word	.L79
	.word	.L78
	.word	.L77
	.word	.L76
	.word	.L75
	.word	.L74
	.word	.L73
	.word	.L71
.L71:
	bl	chapterOneOutro
.L66:
	add	sp, sp, #396
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L79:
	ldr	r3, .L82+48
	str	r4, [r3]
	bl	printColdText
	add	sp, sp, #396
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L78:
	ldr	r3, .L82+48
	add	r2, sp, #12
	str	r2, [r3]
	bl	printColdText
	add	sp, sp, #396
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L77:
	ldr	r3, .L82+48
	add	r2, sp, #60
	str	r2, [r3]
	bl	printColdText
	add	sp, sp, #396
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L76:
	ldr	r3, .L82+48
	add	r2, sp, #200
	str	r2, [r3]
	bl	printColdText
	add	sp, sp, #396
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L75:
	bl	updateHighlight
	bl	loadMessageUnedited
	mov	r2, #1
	ldr	r3, .L82+52
	str	r2, [r3]
	add	sp, sp, #396
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L74:
	ldr	r3, .L82+48
	add	r2, sp, #292
	str	r2, [r3]
	bl	printColdText
	add	sp, sp, #396
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L73:
	ldr	r3, .L82+48
	add	r2, sp, #112
	str	r2, [r3]
	bl	printColdText
	add	sp, sp, #396
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L83:
	.align	2
.L82:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	memcpy
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	cdmessageMapCopy+1488
	.word	100712448
	.word	cdmessageMapCopy
	.word	DMANow
	.word	nonInteractText
	.word	activeMessage
	.word	stage
	.size	messagesNonInteractive, .-messagesNonInteractive
	.align	2
	.global	chapterOneIntro
	.syntax unified
	.arm
	.fpu softvfp
	.type	chapterOneIntro, %function
chapterOneIntro:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r5, .L94
	ldr	r3, .L94+4
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L94+8
	ldr	r3, .L94+12
	add	r7, r5, #1280
	mov	lr, pc
	bx	r3
	mov	r6, r5
	mov	r4, #0
	ldr	r8, .L94+16
	ldr	fp, .L94+20
	ldr	r10, .L94+24
	add	r7, r7, #2
	add	r9, r5, #2
	b	.L86
.L85:
	cmp	r4, #600
	beq	.L92
.L86:
	ldrh	r0, [r7, #4]
	tst	r4, #31
	strh	r0, [r6, #2]!	@ movhi
	add	r4, r4, #1
	bne	.L85
	mov	r3, fp
	mov	r2, r10
	mov	r1, r9
	mov	r0, #3
	mov	lr, pc
	bx	r8
	cmp	r4, #600
	bne	.L86
.L92:
	ldr	r6, .L94+28
	mov	r1, #64
	ldr	r0, .L94+32
	ldr	r3, .L94+36
	mov	lr, pc
	bx	r3
	mov	r4, #0
	ldr	r10, .L94+20
	ldr	r9, .L94+24
	sub	r7, r6, #1408
	b	.L88
.L87:
	cmp	r4, #600
	beq	.L93
.L88:
	ldrh	r0, [r6, #4]
	tst	r4, #31
	strh	r0, [r5, #2]!	@ movhi
	add	r4, r4, #1
	bne	.L87
	mov	r3, r10
	mov	r2, r9
	mov	r1, r7
	mov	r0, #3
	mov	lr, pc
	bx	r8
	cmp	r4, #600
	bne	.L88
.L93:
	mov	r3, #2240
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L94+40
	mov	lr, pc
	bx	r8
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L94+44
	ldr	r1, .L94+48
	mov	lr, pc
	bx	r8
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	messagesNonInteractive
.L95:
	.align	2
.L94:
	.word	blackbgMap-2
	.word	introdrone_length
	.word	introdrone_data
	.word	playSoundA
	.word	DMANow
	.word	1073745920
	.word	100720640
	.word	blackbgMap+1408
	.word	20000
	.word	timerWait
	.word	colddarkmessagebgTiles
	.word	100712448
	.word	cdmessageMapCopy
	.size	chapterOneIntro, .-chapterOneIntro
	.align	2
	.global	updateColdDark
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateColdDark, %function
updateColdDark:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L127
	ldr	r3, [r5]
	ldr	r4, .L127+4
	cmp	r3, #1
	ldrh	r3, [r4]
	beq	.L97
	tst	r3, #1
	beq	.L96
	ldr	r3, .L127+8
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L126
.L96:
	pop	{r4, r5, r6, lr}
	bx	lr
.L97:
	tst	r3, #128
	beq	.L101
	ldr	r2, .L127+8
	ldrh	r2, [r2]
	tst	r2, #128
	bne	.L101
	ldr	r1, .L127+12
	ldr	r2, [r1]
	ldr	r3, .L127+16
	add	r2, r2, #1
	smull	r0, r3, r2, r3
	sub	r3, r3, r2, asr #31
	add	r3, r3, r3, lsl #1
	sub	r3, r2, r3
	str	r3, [r1]
	bl	updateHighlight
	ldrh	r3, [r4]
.L101:
	tst	r3, #64
	beq	.L102
	ldr	r2, .L127+8
	ldrh	r2, [r2]
	tst	r2, #64
	bne	.L102
	ldr	r2, .L127+12
	ldr	r3, [r2]
	cmp	r3, #0
	moveq	r3, #2
	subne	r3, r3, #1
	str	r3, [r2]
	bl	updateHighlight
	ldrh	r3, [r4]
.L102:
	tst	r3, #1
	beq	.L96
	ldr	r3, .L127+8
	ldrh	r3, [r3]
	tst	r3, #1
	bne	.L96
	ldr	r3, .L127+20
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L104
	ldr	r3, .L127+24
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L104
	ldr	r3, .L127+28
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L104
	mov	r1, #2
	mov	r2, #5
	ldr	r3, .L127+32
	str	r1, [r5]
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	b	messagesNonInteractive
.L126:
	ldr	r2, .L127+32
	ldr	r3, [r2]
	pop	{r4, r5, r6, lr}
	add	r3, r3, #1
	str	r3, [r2]
	b	messagesNonInteractive
.L104:
	ldr	r3, .L127+36
	ldr	r3, [r3]
	cmp	r3, #0
	popeq	{r4, r5, r6, lr}
	beq	loadColdMessage
.L105:
	pop	{r4, r5, r6, lr}
	b	loadMessageUnedited
.L128:
	.align	2
.L127:
	.word	stage
	.word	oldButtons
	.word	buttons
	.word	cursor
	.word	1431655766
	.word	blinkBool
	.word	moveForwardBool
	.word	sniffBool
	.word	nonInteractText
	.word	coldMessageBool
	.size	updateColdDark, .-updateColdDark
	.comm	sniffBool,4,4
	.comm	moveForwardBool,4,4
	.comm	blinkBool,4,4
	.global	blink
	.global	moveForward
	.global	sniff
	.comm	activeMessage,4,4
	.comm	nonInteractText,4,4
	.comm	stage,4,4
	.comm	timerJ,4,4
	.comm	timerI,4,4
	.comm	coldMessageBool,4,4
	.comm	cursor,4,4
	.comm	cdmessageMapCopy,4096,4
	.comm	messageUnedited,510,4
	.global	intervals
	.comm	soundB,32,4
	.comm	soundA,32,4
	.comm	state,4,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	intervals, %object
	.size	intervals, 12
intervals:
	.word	418
	.word	482
	.word	546
	.type	sniff, %object
	.size	sniff, 38
sniff:
	.ascii	"It only smells...         well, cold.\000"
	.space	2
	.type	moveForward, %object
	.size	moveForward, 65
moveForward:
	.ascii	"You can't move your arms, or your legs. Everything "
	.ascii	" feels rigid.\000"
	.space	3
	.type	blink, %object
	.size	blink, 68
blink:
	.ascii	"You can't blink. You can'teven tell if your eyes ar"
	.ascii	"eopen or closed.\000"
	.ident	"GCC: (devkitARM release 53) 9.1.0"
