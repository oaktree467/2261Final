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
	.global	updateCursor
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateCursor, %function
updateCursor:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L68
	ldr	r3, .L68+4
	ldrb	r1, [r2]	@ zero_extendqisi2
	ldrh	r3, [r3]
	cmp	r1, #0
	and	r1, r3, #1
	bne	.L23
	cmp	r1, #0
	bxeq	lr
	ldr	r3, .L68+8
	ldrh	r3, [r3]
	tst	r3, #1
	moveq	r0, #1
	moveq	r3, #67108864
	moveq	r1, #4608
	strbeq	r0, [r2]
	strheq	r1, [r3]	@ movhi
	bx	lr
.L23:
	ldr	r0, .L68+12
	tst	r3, #16
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r2, [r0]
	beq	.L27
	ldr	ip, .L68+8
	ldrh	ip, [ip]
	ands	ip, ip, #16
	beq	.L63
.L27:
	tst	r3, #32
	beq	.L28
	ldr	ip, .L68+8
	ldrh	ip, [ip]
	tst	ip, #32
	beq	.L64
.L28:
	tst	r3, #64
	beq	.L30
	ldr	ip, .L68+8
	ldrh	ip, [ip]
	ands	ip, ip, #64
	beq	.L65
.L30:
	mov	lr, #1
	ldr	ip, .L68+16
	ldr	ip, [ip, r2, lsl #2]
	str	lr, [ip, #40]
.L31:
	tst	r3, #128
	beq	.L32
	ldr	r3, .L68+8
	ldrh	r3, [r3]
	ands	r3, r3, #128
	beq	.L66
.L32:
	mov	ip, #1
	ldr	r3, .L68+20
	ldr	r3, [r3, r2, lsl #2]
	str	ip, [r3, #40]
.L33:
	cmp	r1, #0
	beq	.L22
	ldr	r3, .L68+8
	ldrh	r3, [r3]
	tst	r3, #1
	bne	.L22
	cmp	r2, #4
	beq	.L67
.L22:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L66:
	cmp	r2, #3
	bgt	.L33
	ldr	ip, .L68+24
	ldr	lr, [ip, r2, lsl #2]
	ldr	r4, .L68+20
	ldr	ip, [lr, #28]
	ldr	r4, [r4, r2, lsl #2]
	cmp	ip, #0
	str	r3, [r4, #40]
	moveq	ip, #9
	moveq	r3, #18
	subne	r3, ip, #2
	addne	ip, r3, r3, lsr #31
	ldr	r4, .L68+28
	asrne	ip, ip, #1
	str	r3, [lr, #28]
	str	ip, [r4, r2, lsl #2]
	b	.L33
.L65:
	cmp	r2, #3
	bgt	.L31
	ldr	lr, .L68+24
	ldr	r6, [lr, r2, lsl #2]
	ldr	r4, [r6, #28]
	ldr	lr, .L68+32
	add	r4, r4, #2
	smull	r7, r5, lr, r4
	asr	lr, r4, #31
	rsb	lr, lr, r5, asr #3
	add	lr, lr, lr, lsl #2
	ldr	r5, .L68+16
	sub	lr, r4, lr, lsl #2
	ldr	r7, [r5, r2, lsl #2]
	add	r4, lr, lr, lsr #31
	ldr	r5, .L68+28
	asr	r4, r4, #1
	str	ip, [r7, #40]
	str	r4, [r5, r2, lsl #2]
	str	lr, [r6, #28]
	b	.L31
.L64:
	mov	r4, #1
	ldr	ip, .L68+36
	cmp	r2, #0
	ldr	lr, [ip, r2, lsl #2]
	moveq	r2, #4
	str	r4, [lr, #40]
	mov	lr, #0
	subne	r2, r2, #1
	ldr	ip, [ip, r2, lsl #2]
	str	r2, [r0]
	str	lr, [ip, #40]
	b	.L28
.L63:
	mov	r7, #1
	ldr	r4, .L68+32
	add	lr, r2, r7
	smull	r5, r4, lr, r4
	ldr	r5, .L68+36
	asr	r8, lr, #31
	ldr	r6, [r5, r2, lsl #2]
	rsb	r2, r8, r4, asr r7
	add	r2, r2, r2, lsl #2
	sub	r2, lr, r2
	ldr	lr, [r5, r2, lsl #2]
	str	r7, [r6, #40]
	str	r2, [r0]
	str	ip, [lr, #40]
	b	.L27
.L67:
	ldr	r2, .L68+28
	mov	r3, r2
	ldr	r1, .L68+40
	add	r4, r2, #16
.L36:
	ldr	lr, [r3], #4
	ldr	ip, [r1], #4
	cmp	lr, ip
	bne	.L35
	cmp	r3, r4
	bne	.L36
	ldr	r3, .L68+44
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	movne	r2, #1
	ldrne	r3, .L68+48
	strbne	r2, [r3]
	bne	.L22
.L35:
	mov	r1, #0
	ldr	r3, .L68+24
	add	lr, r3, #16
.L38:
	ldr	ip, [r3], #4
	cmp	r3, lr
	str	r1, [ip, #28]
	str	r1, [r2], #4
	bne	.L38
	mov	ip, #1
	ldr	r3, .L68+36
	ldr	r2, [r3, #16]
	ldr	r3, [r3]
	str	ip, [r2, #40]
	str	r1, [r0]
	str	r1, [r3, #40]
	b	.L22
.L69:
	.align	2
.L68:
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
	.word	keyFound
	.word	openSafeBool
	.size	updateCursor, .-updateCursor
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
	ldr	r3, .L75
	ldr	r2, .L75+4
	add	ip, r3, #16
.L72:
	ldr	r0, [r3], #4
	ldr	r1, [r2], #4
	cmp	r0, r1
	bne	.L73
	cmp	r3, ip
	bne	.L72
	mov	r0, #1
	bx	lr
.L73:
	mov	r0, #0
	bx	lr
.L76:
	.align	2
.L75:
	.word	.LANCHOR0
	.word	.LANCHOR1
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
	ldr	ip, .L92
	push	{r4, r5, r6, lr}
	ldr	r3, .L92+4
	ldrh	lr, [ip, #8]
	sub	ip, ip, #1488
	b	.L78
.L80:
	tst	r2, #31
	movne	r3, r1
	addeq	r3, r3, #7
.L78:
	add	r1, r3, #1
	sub	r2, r3, #440
	lsl	r0, r3, #1
	cmp	r1, #604
	strh	lr, [ip, r0]	@ movhi
	sub	r2, r2, #3
	blt	.L80
	ldr	lr, .L92+8
	ldrb	r3, [lr, #16]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L81
	ldr	r0, .L92+4
	ldr	r5, .L92+12
	add	lr, lr, #17
	b	.L82
.L85:
	tst	r1, #31
	addne	r0, r0, #1
	addeq	r0, r0, #7
.L82:
	sub	r3, r3, #32
	ldr	r2, [r5, r3, lsl #2]
	ldrb	r3, [lr], #1	@ zero_extendqisi2
	lsl	r2, r2, #1
	ldrh	r4, [ip, r2]
	sub	r1, r0, #440
	lsl	r2, r0, #1
	cmp	r3, #0
	strh	r4, [ip, r2]	@ movhi
	sub	r1, r1, #3
	bne	.L85
.L81:
	ldr	r4, .L92+16
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L92+20
	ldr	r1, .L92+24
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L93:
	.align	2
.L92:
	.word	messagescreenMap+1488
	.word	418
	.word	.LANCHOR1
	.word	letterMap
	.word	DMANow
	.word	100712448
	.word	messagescreenMap
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
	ldr	r2, .L99
	ldrb	r4, [r2]	@ zero_extendqisi2
	ldr	ip, .L99+4
	ldr	r0, .L99+8
	ldr	r1, .L99+12
	ldr	r2, .L99+16
	cmp	r4, r3
	strh	r3, [ip]	@ movhi
	strh	r3, [r0]	@ movhi
	str	r3, [r1]
	strb	r3, [r2]
	beq	.L98
	mov	r2, #1
	ldr	r3, .L99+20
	strb	r2, [r3]
	pop	{r4, lr}
	b	initSafeSprites
.L98:
	bl	safeText
	mov	r2, #67108864
	ldrh	r3, [r2]
	ldr	r1, .L99+20
	orr	r3, r3, #256
	strh	r3, [r2]	@ movhi
	strb	r4, [r1]
	pop	{r4, lr}
	b	initSafeSprites
.L100:
	.align	2
.L99:
	.word	keyFound
	.word	hOff
	.word	vOff
	.word	cursor
	.word	openSafeBool
	.word	introMessageBool
	.size	loadSafe, .-loadSafe
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
	ldr	ip, .L107
	str	lr, [sp, #-4]!
	ldr	r3, .L107+4
	ldrh	lr, [ip, #8]
	sub	ip, ip, #1488
	b	.L102
.L104:
	tst	r2, #31
	movne	r3, r1
	addeq	r3, r3, #7
.L102:
	add	r1, r3, #1
	sub	r2, r3, #440
	lsl	r0, r3, #1
	cmp	r1, #604
	strh	lr, [ip, r0]	@ movhi
	sub	r2, r2, #3
	blt	.L104
	ldr	lr, [sp], #4
	bx	lr
.L108:
	.align	2
.L107:
	.word	messagescreenMap+1488
	.word	418
	.size	clearSafeMessage, .-clearSafeMessage
	.comm	introMessageBool,1,1
	.comm	openSafeBool,1,1
	.global	sm_1
	.global	enteredCode
	.global	answerCode
	.comm	cursor,4,4
	.comm	middleHighlight,20,4
	.comm	codeNumbers,16,4
	.comm	downArrows,16,4
	.comm	upArrows,16,4
	.comm	safeSpritesArr,988,4
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
	.size	sm_1, 60
sm_1:
	.ascii	"Your secret safe. It lookslike you need your key an"
	.ascii	"da code.\000"
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	enteredCode, %object
	.size	enteredCode, 16
enteredCode:
	.space	16
	.ident	"GCC: (devkitARM release 53) 9.1.0"
