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
	.file	"safe.c"
	.text
	.align	2
	.global	initSafeSprites
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initSafeSprites, %function
initSafeSprites:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L12
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r0, #48
	mov	r1, r3
	mov	r2, r3
	mov	ip, #0
	mov	r5, #1
	mov	r4, #72
	ldr	lr, .L12+4
.L2:
	str	r0, [r2, #4]
	str	r0, [r2, #12]
	add	r0, r0, #24
	cmp	r0, #144
	str	ip, [r2, #24]
	str	ip, [r2, #28]
	str	ip, [r2, #32]
	str	r5, [r2, #36]
	str	r4, [r2]
	str	ip, [r2, #40]
	str	r4, [r2, #8]
	str	r2, [lr], #4
	add	r2, r2, #52
	bne	.L2
	ldr	r5, .L12+8
	mov	r0, #47
	mov	lr, r5
	mov	r10, #8
	mov	r6, #0
	mov	r9, #2
	mov	r8, #3
	mov	ip, #63
	mov	r7, #1
	ldr	r2, .L12
.L3:
	str	r0, [r2, #212]
	str	r0, [r2, #220]
	add	r0, r0, #24
	add	r4, r2, #208
	cmp	r0, #143
	str	r10, [r2, #232]
	str	r6, [r2, #236]
	str	r9, [r2, #240]
	str	r8, [r2, #244]
	str	ip, [r2, #208]
	str	r7, [r2, #248]
	str	ip, [r2, #216]
	str	r4, [lr], #4
	add	r2, r2, #52
	bne	.L3
	str	r6, [r1, #248]
	ldr	r1, .L12
	mov	r0, #48
	mov	r2, r1
	mov	r8, #4
	mov	r6, #0
	mov	r4, #1
	mov	lr, #53
	ldr	ip, .L12+12
.L4:
	str	r0, [r2, #420]
	str	r0, [r2, #428]
	add	r0, r0, #24
	add	r7, r2, #416
	cmp	r0, #144
	str	r8, [r2, #440]
	str	r6, [r2, #444]
	str	r4, [r2, #448]
	str	r6, [r2, #452]
	str	lr, [r2, #416]
	str	r4, [r2, #456]
	str	lr, [r2, #424]
	str	r7, [ip], #4
	add	r2, r2, #52
	bne	.L4
	mov	r2, #48
	mov	r6, #4
	mov	r0, #1
	mov	r4, #0
	mov	lr, #99
	ldr	ip, .L12+16
.L5:
	str	r2, [r3, #628]
	str	r2, [r3, #636]
	add	r2, r2, #24
	add	r7, r3, #624
	cmp	r2, #144
	str	r6, [r3, #648]
	str	r0, [r3, #652]
	str	r0, [r3, #656]
	str	r4, [r3, #660]
	str	lr, [r3, #624]
	str	r0, [r3, #664]
	str	lr, [r3, #632]
	str	r7, [ip], #4
	add	r3, r3, #52
	bne	.L5
	ldr	r3, .L12+20
	ldrb	lr, [r3]	@ zero_extendqisi2
	mov	r3, #60
	rsbs	lr, lr, #1
	mov	r2, #150
	mov	ip, #2
	mov	r9, #3
	mov	r8, #199
	mov	r7, #32
	movcc	lr, #0
	mov	fp, #8
	mov	r10, #12
	str	r3, [r1, #832]
	str	r3, [r1, #840]
	str	r3, [r1, #884]
	str	r3, [r1, #892]
	ldr	r3, .L12+24
	str	r6, [r1, #856]
	str	r4, [r1, #872]
	str	r4, [r1, #912]
	str	r0, [r1, #924]
	str	r6, [r1, #960]
	str	r6, [r1, #964]
	str	r4, [r1, #968]
	str	lr, [r1, #976]
	str	fp, [r1, #860]
	str	ip, [r1, #864]
	str	ip, [r1, #916]
	str	ip, [r1, #972]
	str	r9, [r1, #868]
	str	r9, [r1, #920]
	str	r2, [r1, #836]
	str	r2, [r1, #844]
	str	r2, [r1, #888]
	str	r2, [r1, #896]
	str	r10, [r1, #908]
	str	r8, [r1, #940]
	str	r8, [r1, #948]
	str	r7, [r1, #936]
	str	r7, [r1, #944]
	str	r3, [r5, #16]
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	safeSpritesArr
	.word	codeNumbers
	.word	middleHighlight
	.word	upArrows
	.word	downArrows
	.word	keyFound
	.word	safeSpritesArr+884
	.size	initSafeSprites, .-initSafeSprites
	.align	2
	.global	drawSafeSprites
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawSafeSprites, %function
drawSafeSprites:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, #512
	ldr	r3, .L20
	ldr	r1, .L20+4
	add	lr, r3, #988
.L17:
	ldr	r2, [r3, #40]
	cmp	r2, #1
	strheq	r4, [r1]	@ movhi
	beq	.L16
	add	r2, r3, #24
	ldm	r2, {r2, ip}
	ldr	r6, [r3, #32]
	ldr	r0, [r3, #8]
	add	r2, r2, ip, lsl #4
	ldr	r5, [r3, #36]
	ldr	ip, [r3, #12]
	lsl	r2, r2, #1
	orr	r0, r0, r6, lsl #14
	orr	r2, r2, #2048
	orr	r0, r0, #8192
	orr	ip, ip, r5, lsl #14
	strh	r2, [r1, #4]	@ movhi
	strh	r0, [r1]	@ movhi
	strh	ip, [r1, #2]	@ movhi
.L16:
	add	r3, r3, #52
	cmp	r3, lr
	add	r1, r1, #8
	bne	.L17
	pop	{r4, r5, r6, lr}
	bx	lr
.L21:
	.align	2
.L20:
	.word	safeSpritesArr
	.word	shadowOAM
	.size	drawSafeSprites, .-drawSafeSprites
	.align	2
	.global	checkCode
	.syntax unified
	.arm
	.fpu softvfp
	.type	checkCode, %function
checkCode:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #0
	ldr	r1, .L28
	ldr	r2, .L28+4
.L25:
	ldr	r3, [r1], #4
	ldr	ip, [r2], #4
	cmp	r3, ip
	beq	.L23
	cmp	r0, #3
	cmpeq	r3, #3
	moveq	r3, #1
	ldreq	r2, .L28+8
	moveq	r0, #1
	movne	r0, #0
	strbeq	r3, [r2]
	moveq	r0, r3
	bx	lr
.L23:
	add	r0, r0, #1
	cmp	r0, #4
	bne	.L25
	mov	r0, #1
	bx	lr
.L29:
	.align	2
.L28:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	allEmailsBool
	.size	checkCode, .-checkCode
	.align	2
	.global	safeText
	.syntax unified
	.arm
	.fpu softvfp
	.type	safeText, %function
safeText:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L45
	push	{r4, lr}
	ldr	r3, .L45+4
	ldrh	r4, [ip, #8]
	sub	ip, ip, #1488
	b	.L31
.L33:
	tst	r2, #31
	movne	r3, r1
	addeq	r3, r3, #7
.L31:
	add	r1, r3, #1
	sub	r2, r3, #440
	lsl	lr, r3, #1
	cmp	r1, #604
	strh	r4, [ip, lr]	@ movhi
	sub	r2, r2, #3
	blt	.L33
	ldrb	r3, [r0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L34
	ldr	r1, .L45+4
	ldr	lr, .L45+8
	b	.L35
.L38:
	tst	r2, #31
	addne	r1, r1, #1
	addeq	r1, r1, #7
.L35:
	sub	r3, r3, #32
	ldr	r3, [lr, r3, lsl #2]
	lsl	r3, r3, #1
	ldrh	r2, [ip, r3]
	lsl	r3, r1, #1
	strh	r2, [ip, r3]	@ movhi
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2
	sub	r2, r1, #440
	cmp	r3, #0
	sub	r2, r2, #3
	bne	.L38
.L34:
	mov	r3, #4096
	ldr	r2, .L45+12
	ldr	r4, .L45+16
	mov	r0, #3
	ldr	r1, .L45+20
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L45+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L46:
	.align	2
.L45:
	.word	messagescreenMap+1488
	.word	418
	.word	letterMap
	.word	100712448
	.word	DMANow
	.word	messagescreenMap
	.word	messageActiveBool
	.size	safeText, .-safeText
	.align	2
	.global	loadSafe
	.syntax unified
	.arm
	.fpu softvfp
	.type	loadSafe, %function
loadSafe:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	push	{r4, lr}
	ldr	r2, .L52
	ldrb	r4, [r2]	@ zero_extendqisi2
	ldr	ip, .L52+4
	ldr	r0, .L52+8
	ldr	r1, .L52+12
	ldr	r2, .L52+16
	cmp	r4, r3
	strh	r3, [ip]	@ movhi
	strh	r3, [r0]	@ movhi
	str	r3, [r1]
	strb	r3, [r2]
	beq	.L51
	mov	r2, #1
	ldr	r3, .L52+20
	strb	r2, [r3]
	pop	{r4, lr}
	b	initSafeSprites
.L51:
	ldr	r0, .L52+24
	bl	safeText
	mov	r2, #67108864
	ldr	r3, .L52+20
	strb	r4, [r3]
	ldrh	r3, [r2]
	orr	r3, r3, #256
	strh	r3, [r2]	@ movhi
	pop	{r4, lr}
	b	initSafeSprites
.L53:
	.align	2
.L52:
	.word	keyFound
	.word	hOff
	.word	vOff
	.word	cursor
	.word	openSafeBool
	.word	introMessageBool
	.word	.LANCHOR1+16
	.size	loadSafe, .-loadSafe
	.align	2
	.global	updateCursor
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateCursor, %function
updateCursor:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L103
	ldr	r3, .L103+4
	ldrb	r1, [r2]	@ zero_extendqisi2
	ldrh	r3, [r3]
	cmp	r1, #0
	and	r1, r3, #1
	bne	.L55
	cmp	r1, #0
	bxeq	lr
	ldr	r3, .L103+8
	ldrh	r3, [r3]
	tst	r3, #1
	bxne	lr
	mov	r0, #1
	mov	r3, #67108864
	mov	r1, #4608
	strb	r0, [r2]
	strh	r1, [r3]	@ movhi
	bx	lr
.L55:
	ldr	r0, .L103+12
	tst	r3, #16
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r2, [r0]
	beq	.L59
	ldr	ip, .L103+8
	ldrh	ip, [ip]
	ands	ip, ip, #16
	beq	.L98
.L59:
	tst	r3, #32
	beq	.L60
	ldr	ip, .L103+8
	ldrh	ip, [ip]
	tst	ip, #32
	beq	.L99
.L60:
	tst	r3, #64
	beq	.L62
	ldr	ip, .L103+8
	ldrh	ip, [ip]
	ands	ip, ip, #64
	beq	.L100
.L62:
	mov	lr, #1
	ldr	ip, .L103+16
	ldr	ip, [ip, r2, lsl #2]
	str	lr, [ip, #40]
.L63:
	tst	r3, #128
	beq	.L64
	ldr	r3, .L103+8
	ldrh	r3, [r3]
	ands	r3, r3, #128
	beq	.L101
.L64:
	mov	ip, #1
	ldr	r3, .L103+20
	ldr	r3, [r3, r2, lsl #2]
	str	ip, [r3, #40]
.L65:
	cmp	r1, #0
	beq	.L54
	ldr	r3, .L103+8
	ldrh	r3, [r3]
	ands	r3, r3, #1
	bne	.L54
	cmp	r2, #4
	beq	.L102
.L54:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L101:
	cmp	r2, #3
	bgt	.L65
	ldr	ip, .L103+24
	ldr	lr, [ip, r2, lsl #2]
	ldr	r4, .L103+20
	ldr	ip, [lr, #28]
	ldr	r4, [r4, r2, lsl #2]
	cmp	ip, #0
	str	r3, [r4, #40]
	moveq	ip, #9
	moveq	r3, #18
	subne	r3, ip, #2
	addne	ip, r3, r3, lsr #31
	ldr	r4, .L103+28
	asrne	ip, ip, #1
	str	r3, [lr, #28]
	str	ip, [r4, r2, lsl #2]
	b	.L65
.L100:
	cmp	r2, #3
	bgt	.L63
	ldr	lr, .L103+24
	ldr	r6, [lr, r2, lsl #2]
	ldr	r4, [r6, #28]
	ldr	lr, .L103+32
	add	r4, r4, #2
	smull	r7, r5, lr, r4
	asr	lr, r4, #31
	rsb	lr, lr, r5, asr #3
	add	lr, lr, lr, lsl #2
	ldr	r5, .L103+16
	sub	lr, r4, lr, lsl #2
	ldr	r7, [r5, r2, lsl #2]
	add	r4, lr, lr, lsr #31
	ldr	r5, .L103+28
	asr	r4, r4, #1
	str	ip, [r7, #40]
	str	r4, [r5, r2, lsl #2]
	str	lr, [r6, #28]
	b	.L63
.L99:
	mov	r4, #1
	ldr	ip, .L103+36
	cmp	r2, #0
	ldr	lr, [ip, r2, lsl #2]
	moveq	r2, #4
	str	r4, [lr, #40]
	mov	lr, #0
	subne	r2, r2, #1
	ldr	ip, [ip, r2, lsl #2]
	str	r2, [r0]
	str	lr, [ip, #40]
	b	.L60
.L98:
	mov	r7, #1
	ldr	r4, .L103+32
	add	lr, r2, r7
	smull	r5, r4, lr, r4
	ldr	r5, .L103+36
	asr	r8, lr, #31
	ldr	r6, [r5, r2, lsl #2]
	rsb	r2, r8, r4, asr r7
	add	r2, r2, r2, lsl #2
	sub	r2, lr, r2
	ldr	lr, [r5, r2, lsl #2]
	str	r7, [r6, #40]
	str	r2, [r0]
	str	ip, [lr, #40]
	b	.L59
.L102:
	ldr	r1, .L103+28
	mov	ip, r1
	ldr	r2, .L103+40
.L70:
	ldr	lr, [ip], #4
	ldr	r4, [r2], #4
	cmp	lr, r4
	beq	.L67
	cmp	r3, #3
	cmpeq	lr, #3
	moveq	r2, #1
	ldreq	r3, .L103+44
	strbeq	r2, [r3]
	beq	.L69
.L68:
	mov	r2, #0
	ldr	r3, .L103+24
	add	lr, r3, #16
.L71:
	ldr	ip, [r3], #4
	cmp	r3, lr
	str	r2, [ip, #28]
	str	r2, [r1], #4
	bne	.L71
	mov	ip, #1
	ldr	r3, .L103+36
	ldr	r1, [r3, #16]
	ldr	r3, [r3]
	str	ip, [r1, #40]
	str	r2, [r0]
	str	r2, [r3, #40]
	b	.L54
.L67:
	add	r3, r3, #1
	cmp	r3, #4
	bne	.L70
.L69:
	ldr	r3, .L103+48
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L68
	mov	lr, #1
	ldr	r3, .L103+52
	ldr	ip, .L103+56
	ldr	r1, [r3]
	ldr	r0, .L103+60
	mov	r2, #0
	ldr	r3, .L103+64
	strb	lr, [ip]
	mov	lr, pc
	bx	r3
	ldr	r0, .L103+68
	pop	{r4, r5, r6, r7, r8, lr}
	b	safeText
.L104:
	.align	2
.L103:
	.word	introMessageBool
	.word	oldButtons
	.word	buttons
	.word	cursor
	.word	upArrows
	.word	downArrows
	.word	codeNumbers
	.word	.LANCHOR0
	.word	1717986919
	.word	middleHighlight
	.word	.LANCHOR1
	.word	allEmailsBool
	.word	keyFound
	.word	safesfx_length
	.word	openSafeBool
	.word	safesfx_data
	.word	playSoundB
	.word	.LANCHOR1+76
	.size	updateCursor, .-updateCursor
	.align	2
	.global	clearSafeMessage
	.syntax unified
	.arm
	.fpu softvfp
	.type	clearSafeMessage, %function
clearSafeMessage:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L111
	str	lr, [sp, #-4]!
	ldr	r3, .L111+4
	ldrh	lr, [ip, #8]
	sub	ip, ip, #1488
	b	.L106
.L108:
	tst	r2, #31
	movne	r3, r1
	addeq	r3, r3, #7
.L106:
	add	r1, r3, #1
	sub	r2, r3, #440
	lsl	r0, r3, #1
	cmp	r1, #604
	strh	lr, [ip, r0]	@ movhi
	sub	r2, r2, #3
	blt	.L108
	ldr	lr, [sp], #4
	bx	lr
.L112:
	.align	2
.L111:
	.word	messagescreenMap+1488
	.word	418
	.size	clearSafeMessage, .-clearSafeMessage
	.comm	introMessageBool,1,1
	.comm	openSafeBool,1,1
	.global	sm_2
	.global	sm_1
	.global	enteredCode
	.global	answerCode
	.comm	cursor,4,4
	.comm	middleHighlight,20,4
	.comm	codeNumbers,16,4
	.comm	downArrows,16,4
	.comm	upArrows,16,4
	.comm	safeSpritesArr,988,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.comm	currSong,4,4
	.comm	state,4,4
	.data
	.align	2
	.set	.LANCHOR1,. + 0
	.type	answerCode, %object
	.size	answerCode, 16
answerCode:
	.word	2
	.word	0
	.word	0
	.word	1
	.type	sm_1, %object
	.size	sm_1, 59
sm_1:
	.ascii	"Your secret safe. It looks like you need a key and "
	.ascii	"a code.\000"
	.space	1
	.type	sm_2, %object
	.size	sm_2, 47
sm_2:
	.ascii	"The safe clicks open. You have your documents.\000"
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	enteredCode, %object
	.size	enteredCode, 16
enteredCode:
	.space	16
	.ident	"GCC: (devkitARM release 53) 9.1.0"
