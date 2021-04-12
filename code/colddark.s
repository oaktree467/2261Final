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
	.global	coldDarkInterruptHandler
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	coldDarkInterruptHandler, %function
coldDarkInterruptHandler:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #0
	ldr	r3, .L13
	ldrh	r1, [r3, #2]
	tst	r1, #2048
	strh	r2, [r3, #8]	@ movhi
	beq	.L2
	ldrh	r2, [r3, #-254]
	sub	r3, r3, #256
	mov	r1, r3
	ldr	r0, .L13+4
	strh	r2, [r3, #2]	@ movhi
	strh	r0, [r3]	@ movhi
	ldrh	r2, [r3, #2]
	orr	r2, r2, #129
	strh	r2, [r3, #2]	@ movhi
	ldr	r2, .L13+8
.L3:
	ldrh	r3, [r1]
	cmp	r3, r2
	bls	.L3
.L2:
	ldr	r3, .L13
	ldrh	r3, [r3, #2]
	tst	r3, #16
	beq	.L4
	ldr	r0, .L13+12
	ldr	r1, .L13+16
	ldr	r2, [r0]
	ldr	r3, [r1]
	add	r2, r2, #1
	add	r3, r3, #1
	str	r2, [r0]
	str	r3, [r1]
.L4:
	mov	r1, #1
	ldr	r3, .L13
	ldrh	r2, [r3, #2]
	strh	r1, [r3, #8]	@ movhi
	strh	r2, [r3, #2]	@ movhi
	bx	lr
.L14:
	.align	2
.L13:
	.word	67109376
	.word	30000
	.word	65499
	.word	timerI
	.word	timerJ
	.size	coldDarkInterruptHandler, .-coldDarkInterruptHandler
	.align	2
	.global	initColdDark
	.syntax unified
	.arm
	.fpu softvfp
	.type	initColdDark, %function
initColdDark:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	ldr	r1, .L19
	push	{r4, lr}
	ldr	r3, .L19+4
	str	r2, [r1]
	ldr	r4, .L19+8
	ldr	lr, .L19+12
	ldr	ip, .L19+16
	ldr	r1, .L19+20
	str	r2, [r4]
	str	r2, [lr]
	str	r2, [ip]
	str	r2, [r1]
	add	r0, r3, #508
	ldr	r2, .L19+24
	add	r0, r0, #2
.L16:
	ldrh	r1, [r3, #2]!
	cmp	r3, r0
	strh	r1, [r2, #2]!	@ movhi
	bne	.L16
	pop	{r4, lr}
	bx	lr
.L20:
	.align	2
.L19:
	.word	coldMessageBool
	.word	colddarkmessagebgMap+766
	.word	cursor
	.word	blinkBool
	.word	moveForwardBool
	.word	sniffBool
	.word	messageUnedited-2
	.size	initColdDark, .-initColdDark
	.align	2
	.global	introMessage
	.syntax unified
	.arm
	.fpu softvfp
	.type	introMessage, %function
introMessage:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	introMessage, .-introMessage
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
	ldr	r2, .L31
	ldr	r3, .L31+4
	ldr	r2, [r2]
	push	{r4, r5, r6, lr}
	ldr	ip, .L31+8
	ldr	lr, [r3, r2, lsl #2]
	ldr	r0, .L31+12
	ldrh	r4, [ip, #4]
	ldrh	r5, [ip, #-124]
	add	r6, lr, #45
	sub	ip, ip, #1408
.L23:
	sub	r3, r0, #192
.L25:
	cmp	lr, r3
	movgt	r1, r4
	bgt	.L24
	cmp	r6, r3
	movlt	r1, r4
	movge	r1, r5
.L24:
	lsl	r2, r3, #1
	add	r3, r3, #32
	cmp	r3, r0
	strh	r1, [ip, r2]	@ movhi
	bne	.L25
	add	r0, r3, #1
	cmp	r0, #624
	bne	.L23
	ldr	r4, .L31+16
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L31+20
	ldr	r1, .L31+24
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L32:
	.align	2
.L31:
	.word	cursor
	.word	.LANCHOR0
	.word	blackbgMap+1408
	.word	610
	.word	DMANow
	.word	100704256
	.word	blackbgMap
	.size	updateHighlight, .-updateHighlight
	.align	2
	.global	chapterIntro
	.syntax unified
	.arm
	.fpu softvfp
	.type	chapterIntro, %function
chapterIntro:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #1
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, .L45
	ldr	r5, .L45+4
	ldrh	r2, [r3]
	ldr	r1, .L45+8
	ldr	r0, .L45+12
	orr	r2, r2, #2064
	add	r7, r5, #1280
	strh	r2, [r3]	@ movhi
	strh	ip, [r3, #8]	@ movhi
	mov	r4, #0
	mov	r6, r5
	str	r0, [r1, #4092]
	ldr	r8, .L45+16
	ldr	fp, .L45+20
	ldr	r10, .L45+24
	add	r7, r7, #2
	add	r9, r5, #2
	b	.L35
.L34:
	cmp	r4, #600
	beq	.L43
.L35:
	ldrh	r0, [r7, #4]
	tst	r4, #31
	strh	r0, [r6, #2]!	@ movhi
	add	r4, r4, #1
	bne	.L34
	mov	r3, fp
	mov	r2, r10
	mov	r1, r9
	mov	r0, #3
	mov	lr, pc
	bx	r8
	cmp	r4, #600
	bne	.L35
.L43:
	ldr	r3, .L45+28
	mov	r2, r3
	ldrh	r1, [r3, #2]
	ldr	r0, .L45+32
	strh	r1, [r3, #2]	@ movhi
	strh	r0, [r3]	@ movhi
	ldrh	r1, [r3, #2]
	orr	r1, r1, #129
	strh	r1, [r3, #2]	@ movhi
	ldr	r1, .L45+36
.L36:
	ldrh	r3, [r2]
	cmp	r3, r1
	bls	.L36
	mov	r3, #0
	ldr	r6, .L45+40
	mov	r4, r3
	strh	r3, [r2, #2]	@ movhi
	ldr	r10, .L45+20
	ldr	r9, .L45+24
	sub	r7, r6, #1408
	b	.L38
.L37:
	cmp	r4, #600
	beq	.L44
.L38:
	ldrh	r0, [r6, #4]
	tst	r4, #31
	strh	r0, [r5, #2]!	@ movhi
	add	r4, r4, #1
	bne	.L37
	mov	r3, r10
	mov	r2, r9
	mov	r1, r7
	mov	r0, #3
	mov	lr, pc
	bx	r8
	cmp	r4, #600
	bne	.L38
.L44:
	mov	r3, #2240
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L45+44
	mov	lr, pc
	bx	r8
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L45+48
	ldr	r1, .L45+52
	mov	lr, pc
	bx	r8
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	updateHighlight
.L46:
	.align	2
.L45:
	.word	67109376
	.word	blackbgMap-2
	.word	50360320
	.word	coldDarkInterruptHandler
	.word	DMANow
	.word	1073745920
	.word	100704256
	.word	67109120
	.word	20000
	.word	65499
	.word	blackbgMap+1408
	.word	colddarkmessagebgTiles
	.word	100712448
	.word	colddarkmessagebgMap
	.size	chapterIntro, .-chapterIntro
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
	ldr	r3, .L51
	ldr	r2, .L51+4
	add	r0, r3, #508
	add	r0, r0, #2
.L48:
	ldrh	r1, [r3, #2]!
	cmp	r3, r0
	strh	r1, [r2, #2]!	@ movhi
	bne	.L48
	mov	r3, #4096
	ldr	r2, .L51+8
	ldr	r4, .L51+12
	mov	r0, #3
	ldr	r1, .L51+16
	mov	lr, pc
	bx	r4
	mov	r2, #0
	ldr	r3, .L51+20
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L52:
	.align	2
.L51:
	.word	messageUnedited-2
	.word	colddarkmessagebgMap+766
	.word	100712448
	.word	DMANow
	.word	colddarkmessagebgMap
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
	ldr	r3, .L61
	ldr	r0, .L61+4
	ldrh	r2, [r3, #6]
	strh	r2, [r3, #6]	@ movhi
	strh	ip, [r3, #6]	@ movhi
	strh	r0, [r3, #4]	@ movhi
	ldrh	r2, [r3, #6]
	orr	r2, r2, #192
	strh	r2, [r3, #6]	@ movhi
	ldr	r7, .L61+8
	ldr	r6, .L61+12
	ldr	r5, .L61+16
	ldr	r3, .L61+20
	ldr	r2, [r7]
	str	r1, [r6]
	str	r3, [r5]
	ldrb	r2, [r2]	@ zero_extendqisi2
	cmp	r2, r1
	beq	.L57
	ldr	r4, .L61+24
	mov	fp, r4
	ldr	r10, .L61+28
	ldr	r9, .L61+32
	ldr	r8, .L61+36
.L54:
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
	beq	.L57
	ldr	r3, [r5]
	sub	ip, r3, #444
	tst	ip, #31
	addeq	r3, r3, #6
	streq	r3, [r5]
	ldrbeq	r2, [r0, r1]	@ zero_extendqisi2
	b	.L54
.L57:
	ldr	r2, .L61
	ldrh	r3, [r2, #6]
	strh	r3, [r2, #6]	@ movhi
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L62:
	.align	2
.L61:
	.word	67109120
	.word	-11000
	.word	activeMessage
	.word	timerI
	.word	timerJ
	.word	418
	.word	colddarkmessagebgMap
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
	ldr	r1, .L73
	ldr	r3, .L73+4
	sub	ip, r1, #600
	push	{r4, lr}
	str	r2, [r3]
	ldrh	r0, [r1, #8]
	sub	ip, ip, #2
	sub	r1, r1, #652
.L64:
	mov	r3, #0
.L65:
	lsl	r2, r3, #6
	add	r3, r3, #1
	cmp	r3, #6
	strh	r0, [r1, r2]	@ movhi
	bne	.L65
	add	r1, r1, #2
	cmp	r1, ip
	bne	.L64
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L73+8
	ldr	r1, .L73+12
	ldr	r4, .L73+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L73+20
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L67
	cmp	r3, #2
	beq	.L68
	cmp	r3, #0
	beq	.L72
	pop	{r4, lr}
	b	printColdText
.L67:
	ldr	r1, .L73+24
	ldr	r0, .L73+28
	ldr	r2, .L73+32
	pop	{r4, lr}
	str	r0, [r1]
	str	r3, [r2]
	b	printColdText
.L72:
	mov	r0, #1
	ldr	r1, .L73+36
	ldr	r3, .L73+24
	ldr	r2, .L73+40
	str	r0, [r1]
	pop	{r4, lr}
	str	r2, [r3]
	b	printColdText
.L68:
	mov	r0, #1
	ldr	r1, .L73+44
	ldr	r3, .L73+24
	ldr	r2, .L73+48
	str	r0, [r1]
	pop	{r4, lr}
	str	r2, [r3]
	b	printColdText
.L74:
	.align	2
.L73:
	.word	colddarkmessagebgMap+1488
	.word	coldMessageBool
	.word	100712448
	.word	colddarkmessagebgMap
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
	.global	updateColdDark
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateColdDark, %function
updateColdDark:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L105
	ldrh	r3, [r4]
	tst	r3, #128
	beq	.L76
	ldr	r2, .L105+4
	ldrh	r2, [r2]
	tst	r2, #128
	beq	.L102
.L76:
	tst	r3, #64
	beq	.L77
	ldr	r2, .L105+4
	ldrh	r2, [r2]
	tst	r2, #64
	beq	.L103
.L77:
	tst	r3, #1
	beq	.L79
	ldr	r3, .L105+4
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L104
.L79:
	ldr	r3, .L105+8
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L75
	ldr	r3, .L105+12
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L75
	ldr	r3, .L105+16
	ldr	r3, [r3]
	cmp	r3, #0
	movne	r2, #1
	ldrne	r3, .L105+20
	strne	r2, [r3]
.L75:
	pop	{r4, lr}
	bx	lr
.L104:
	ldr	r3, .L105+24
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L80
	bl	loadColdMessage
	b	.L79
.L103:
	ldr	r2, .L105+28
	ldr	r3, [r2]
	cmp	r3, #0
	moveq	r3, #2
	subne	r3, r3, #1
	str	r3, [r2]
	bl	updateHighlight
	ldrh	r3, [r4]
	b	.L77
.L102:
	ldr	r1, .L105+28
	ldr	r2, [r1]
	ldr	r3, .L105+32
	add	r2, r2, #1
	smull	r0, r3, r2, r3
	sub	r3, r3, r2, asr #31
	add	r3, r3, r3, lsl #1
	sub	r3, r2, r3
	str	r3, [r1]
	bl	updateHighlight
	ldrh	r3, [r4]
	b	.L76
.L80:
	bl	loadMessageUnedited
	b	.L79
.L106:
	.align	2
.L105:
	.word	oldButtons
	.word	buttons
	.word	blinkBool
	.word	moveForwardBool
	.word	sniffBool
	.word	nextRoomBool
	.word	coldMessageBool
	.word	cursor
	.word	1431655766
	.size	updateColdDark, .-updateColdDark
	.align	2
	.global	setUpColdDarkInterrupts
	.syntax unified
	.arm
	.fpu softvfp
	.type	setUpColdDarkInterrupts, %function
setUpColdDarkInterrupts:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	ip, #1
	ldr	r3, .L108
	ldrh	r2, [r3]
	ldr	r1, .L108+4
	ldr	r0, .L108+8
	orr	r2, r2, #2064
	strh	r2, [r3]	@ movhi
	strh	ip, [r3, #8]	@ movhi
	str	r0, [r1, #4092]
	bx	lr
.L109:
	.align	2
.L108:
	.word	67109376
	.word	50360320
	.word	coldDarkInterruptHandler
	.size	setUpColdDarkInterrupts, .-setUpColdDarkInterrupts
	.comm	sniffBool,4,4
	.comm	moveForwardBool,4,4
	.comm	blinkBool,4,4
	.comm	timerJ,4,4
	.comm	timerI,4,4
	.global	blink
	.global	moveForward
	.global	sniff
	.comm	activeMessage,4,4
	.comm	coldMessageBool,4,4
	.comm	cursor,4,4
	.comm	messageUnedited,510,4
	.global	intervals
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
