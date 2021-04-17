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
	.file	"game.c"
	.text
	.align	2
	.global	interruptHandler
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	interruptHandler, %function
interruptHandler:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	ldr	r3, .L38
	ldrh	r1, [r3, #2]
	tst	r1, #16
	push	{r4, lr}
	strh	r2, [r3, #8]	@ movhi
	beq	.L2
	ldr	r2, .L38+4
	ldr	r2, [r2]
	cmp	r2, #2
	beq	.L33
	ldrh	r3, [r3, #2]
	tst	r3, #32
	bne	.L7
.L5:
	ldr	r3, .L38
	ldrh	r3, [r3, #2]
	tst	r3, #2048
	beq	.L9
	mov	r0, #0
	ldr	r3, .L38+8
	mov	r2, r3
	ldr	r1, .L38+12
	strh	r0, [r3, #14]	@ movhi
	strh	r1, [r3, #12]	@ movhi
	ldrh	r1, [r3, #14]
	orr	r1, r1, #1
	strh	r1, [r3, #14]	@ movhi
	ldrh	r1, [r3, #14]
	orr	r1, r1, #128
	strh	r1, [r3, #14]	@ movhi
	ldr	r1, .L38+16
.L10:
	ldrh	r3, [r2, #12]
	cmp	r3, r1
	bls	.L10
	mov	r3, #0
	strh	r3, [r2, #14]	@ movhi
.L9:
	ldr	r3, .L38
	ldrh	r3, [r3, #2]
	tst	r3, #1
	beq	.L11
	ldr	r3, .L38+20
	ldr	r2, [r3, #12]
	cmp	r2, #0
	beq	.L13
	ldr	r2, [r3, #28]
	ldr	r1, [r3, #20]
	add	r2, r2, #1
	sub	r1, r1, #1
	cmp	r2, r1
	str	r2, [r3, #28]
	blt	.L13
	ldr	r2, [r3, #16]
	cmp	r2, #0
	bne	.L34
	ldr	r0, .L38+24
	ldr	r1, .L38+8
	ldr	r0, [r0]
	str	r2, [r3, #12]
	str	r2, [r0, #20]
	strh	r2, [r1, #10]	@ movhi
.L13:
	ldr	r3, .L38+28
	ldr	r2, [r3, #12]
	cmp	r2, #0
	bne	.L35
.L17:
	mov	r2, #1
	ldr	r3, .L38
	strh	r2, [r3, #2]	@ movhi
.L11:
	mov	r1, #1
	ldr	r3, .L38
	ldrh	r2, [r3, #2]
	strh	r1, [r3, #8]	@ movhi
	strh	r2, [r3, #2]	@ movhi
	pop	{r4, lr}
	bx	lr
.L2:
	ldrh	r3, [r3, #2]
	tst	r3, #32
	beq	.L5
	ldr	r3, .L38+4
	ldr	r2, [r3]
	cmp	r2, #2
	beq	.L36
.L7:
	cmp	r2, #3
	bne	.L5
	mov	ip, #1
	ldr	r0, .L38+32
	ldr	r3, [r0]
	ldr	r1, .L38+36
	add	r2, r3, r3, lsl ip
	add	r2, r3, r2, lsl #2
	cmp	r3, #3
	add	r2, r1, r2, lsl #2
	str	ip, [r2, #40]
	movgt	r3, #0
	movle	ip, #0
	addle	r3, r3, #1
	addle	r2, r3, r3, lsl #1
	addle	r2, r3, r2, lsl #2
	addle	r1, r1, r2, lsl #2
	strle	r3, [r0]
	strgt	r3, [r0]
	strle	ip, [r1, #40]
	strgt	r3, [r1, #40]
	b	.L5
.L35:
	ldr	r2, [r3, #28]
	ldr	r1, [r3, #20]
	add	r2, r2, #1
	sub	r1, r1, #1
	cmp	r2, r1
	str	r2, [r3, #28]
	blt	.L17
	ldr	r2, [r3, #16]
	cmp	r2, #0
	bne	.L37
	ldr	r0, .L38+24
	ldr	r1, .L38+8
	ldr	r0, [r0]
	str	r2, [r3, #12]
	str	r2, [r0, #32]
	strh	r2, [r1, #14]	@ movhi
	b	.L17
.L33:
	ldr	r0, .L38+40
	ldr	r1, .L38+44
	ldrh	ip, [r3, #2]
	ldr	r2, [r0]
	ldr	r3, [r1]
	add	r2, r2, #1
	add	r3, r3, #1
	tst	ip, #32
	str	r2, [r0]
	str	r3, [r1]
	beq	.L5
.L4:
	add	r2, r2, #1
	add	r3, r3, #1
	str	r2, [r0]
	str	r3, [r1]
	b	.L5
.L36:
	ldr	r0, .L38+40
	ldr	r1, .L38+44
	ldr	r2, [r0]
	ldr	r3, [r1]
	b	.L4
.L34:
	ldm	r3, {r0, r1}
	ldr	r3, .L38+48
	mov	lr, pc
	bx	r3
	b	.L13
.L37:
	ldm	r3, {r0, r1}
	ldr	r3, .L38+52
	mov	lr, pc
	bx	r3
	b	.L17
.L39:
	.align	2
.L38:
	.word	67109376
	.word	state
	.word	67109120
	.word	30000
	.word	65499
	.word	soundA
	.word	dma
	.word	soundB
	.word	currRing
	.word	phoneRingSpritesArr
	.word	timerI
	.word	timerJ
	.word	playSoundA
	.word	playSoundB
	.size	interruptHandler, .-interruptHandler
	.align	2
	.global	initGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	mov	r0, #1
	mov	ip, #67108864
	push	{r4, r5, r6, lr}
	mov	lr, #3
	mov	r5, #20
	mov	r4, #31
	ldr	r2, .L42
	ldr	r1, .L42+4
	strb	r3, [r2]
	strb	r3, [r1]
	ldr	r2, .L42+8
	ldr	r1, .L42+12
	strb	r3, [r2]
	strb	r3, [r1]
	ldr	r2, .L42+16
	ldr	r1, .L42+20
	strb	r3, [r2]
	str	r3, [r1]
	ldr	r2, .L42+24
	ldr	r1, .L42+28
	str	r3, [r2]
	str	r3, [r1]
	ldr	r2, .L42+32
	ldr	r1, .L42+36
	strb	r3, [r2]
	strb	r3, [r1]
	ldr	r2, .L42+40
	ldr	r1, .L42+44
	strb	r3, [r2]
	strb	r3, [r1]
	ldr	r2, .L42+48
	ldr	r1, .L42+52
	str	r3, [r2]
	ldrh	r2, [r1]
	orr	r2, r2, #2160
	orr	r2, r2, #9
	strh	r2, [r1]	@ movhi
	strh	r0, [r1, #8]	@ movhi
	ldrh	r1, [ip, #4]
	ldr	r2, .L42+56
	orr	r1, r1, #8
	strh	r1, [ip, #4]	@ movhi
	str	r0, [r2, #44]
	ldr	r1, .L42+60
	ldr	r0, .L42+64
	str	r0, [r1, #4092]
	ldr	r1, .L42+68
	str	r5, [r2, #16]
	str	r4, [r2, #20]
	str	lr, [r2, #40]
	str	r3, [r2, #24]
	str	r3, [r2, #28]
	str	r3, [r2, #32]
	str	r3, [r2, #36]
	mov	lr, pc
	bx	r1
	pop	{r4, r5, r6, lr}
	bx	lr
.L43:
	.align	2
.L42:
	.word	enableKeyFind
	.word	keyFound
	.word	phoneRinging
	.word	documentsFound
	.word	documentsUploaded
	.word	spriteCollisionBool
	.word	messageActiveBool
	.word	nextRoomBool
	.word	computerAccessBool
	.word	ruthEmailBool
	.word	marleyEmailBool
	.word	allEmailsBool
	.word	mode
	.word	67109376
	.word	protag
	.word	50360320
	.word	interruptHandler
	.word	setupSounds
	.size	initGame, .-initGame
	.align	2
	.global	initProtagonist
	.syntax unified
	.arm
	.fpu softvfp
	.type	initProtagonist, %function
initProtagonist:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r2, #0
	mov	lr, #20
	mov	ip, #31
	mov	r0, #3
	mov	r1, #1
	ldr	r3, .L46
	str	lr, [r3, #16]
	str	ip, [r3, #20]
	str	r0, [r3, #40]
	str	r1, [r3, #44]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	str	r2, [r3, #32]
	str	r2, [r3, #36]
	ldr	lr, [sp], #4
	bx	lr
.L47:
	.align	2
.L46:
	.word	protag
	.size	initProtagonist, .-initProtagonist
	.align	2
	.global	updateSprites
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateSprites, %function
updateSprites:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L58
	ldr	ip, [r3]
	cmp	ip, #0
	push	{r4, lr}
	ble	.L49
	mov	r0, #0
	ldr	r1, .L58+4
	ldr	r2, .L58+8
	ldr	r3, .L58+12
	ldrh	r4, [r1]
	ldrh	lr, [r2]
	ldr	r3, [r3]
.L50:
	ldr	r1, [r3, #4]
	ldr	r2, [r3]
	add	r0, r0, #1
	sub	r1, r1, r4
	sub	r2, r2, lr
	cmp	r0, ip
	str	r1, [r3, #12]
	str	r2, [r3, #8]
	add	r3, r3, #52
	bne	.L50
.L49:
	ldr	r3, .L58+16
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L57
	pop	{r4, lr}
	bx	lr
.L57:
	ldr	r3, .L58+20
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L59:
	.align	2
.L58:
	.word	currSpriteArrCount
	.word	hOff
	.word	vOff
	.word	currSpriteArr
	.word	phoneRinging
	.word	updateRing
	.size	updateSprites, .-updateSprites
	.align	2
	.global	drawSprites
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawSprites, %function
drawSprites:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L71
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r4, [r3]
	cmp	r4, #0
	ble	.L67
	mov	ip, #0
	mov	r5, #512
	ldr	r3, .L71+4
	ldr	r1, .L71+8
	ldr	r3, [r3]
.L66:
	ldr	r2, [r3, #40]
	cmp	r2, #1
	strheq	r5, [r1, #8]	@ movhi
	add	ip, ip, #1
	beq	.L65
	add	r2, r3, #24
	ldm	r2, {r2, lr}
	ldr	r7, [r3, #32]
	ldr	r0, [r3, #8]
	ldr	r6, [r3, #36]
	add	r2, r2, lr, lsl #4
	ldr	lr, [r3, #12]
	lsl	r2, r2, #1
	orr	r0, r0, r7, lsl #14
	orr	r2, r2, #2048
	orr	r0, r0, #8192
	orr	lr, lr, r6, lsl #14
	strh	r0, [r1, #8]	@ movhi
	strh	r2, [r1, #12]	@ movhi
	strh	lr, [r1, #10]	@ movhi
.L65:
	cmp	ip, r4
	add	r3, r3, #52
	add	r1, r1, #8
	bne	.L66
.L67:
	ldr	r3, .L71+12
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L70
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L70:
	ldr	r3, .L71+16
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L72:
	.align	2
.L71:
	.word	currSpriteArrCount
	.word	currSpriteArr
	.word	shadowOAM
	.word	phoneRinging
	.word	drawRing
	.size	drawSprites, .-drawSprites
	.align	2
	.global	drawProtagonist
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawProtagonist, %function
drawProtagonist:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L74
	ldr	r3, [r1, #44]
	ldr	r2, [r1, #12]
	orr	r2, r2, r3, lsl #12
	mvn	r2, r2, lsl #17
	mvn	r2, r2, lsr #17
	ldr	ip, [r1, #36]
	ldr	r3, [r1, #28]
	ldr	r0, [r1, #8]
	add	r3, r3, ip, lsl #4
	ldr	r1, .L74+4
	lsl	r3, r3, #3
	orr	r0, r0, #8192
	orr	r3, r3, #2048
	strh	r2, [r1, #2]	@ movhi
	strh	r0, [r1]	@ movhi
	strh	r3, [r1, #4]	@ movhi
	bx	lr
.L75:
	.align	2
.L74:
	.word	protag
	.word	shadowOAM
	.size	drawProtagonist, .-drawProtagonist
	.align	2
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	drawProtagonist
	pop	{r4, lr}
	b	drawSprites
	.size	drawGame, .-drawGame
	.align	2
	.global	checkCollisionMapColor
	.syntax unified
	.arm
	.fpu softvfp
	.type	checkCollisionMapColor, %function
checkCollisionMapColor:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L79
	ldr	r3, [r3]
	mla	r1, r3, r1, r0
	ldr	r3, .L79+4
	ldr	r3, [r3]
	lsl	r1, r1, #1
	ldrh	r0, [r3, r1]
	bx	lr
.L80:
	.align	2
.L79:
	.word	totalMapWidth
	.word	currCollisionMap
	.size	checkCollisionMapColor, .-checkCollisionMapColor
	.align	2
	.global	checkSpriteCollision
	.syntax unified
	.arm
	.fpu softvfp
	.type	checkSpriteCollision, %function
checkSpriteCollision:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #0
	ldr	r3, .L99
	ldr	r2, [r3, #28]
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	r4, .L99+4
	cmp	r2, #1
	str	r1, [r4]
	beq	.L82
	cmp	r2, #2
	beq	.L83
	cmp	r2, r1
	beq	.L98
.L81:
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L82:
	ldr	r1, [r3, #20]
	ldr	r0, .L99+8
	ldr	r2, [r3]
	ldr	ip, [r0]
	add	r1, r1, r1, lsr #31
	add	r2, r2, r1, asr #1
	mul	r1, ip, r2
	ldr	lr, [r3, #44]
	cmp	lr, #1
	ldr	r2, [r3, #4]
	ldrne	r3, [r3, #16]
	ldr	r0, .L99+12
	addne	r3, r2, r3
	ldr	r0, [r0]
	addeq	r2, r2, r1
	addne	r3, r3, r1
	lsleq	r2, r2, #1
	lslne	r3, r3, #1
	ldrheq	r0, [r0, r2]
	ldrhne	r0, [r0, r3]
.L86:
	cmp	r0, #0
	beq	.L81
	ldr	r3, .L99+16
	ldr	ip, [r3]
	cmp	ip, #0
	ble	.L81
	mov	lr, #0
	mov	r5, #1
	mov	r7, lr
	mov	r2, lr
	mov	r8, lr
	ldr	r9, .L99+20
	ldr	r3, .L99+24
	ldr	r6, [r9]
	ldr	r3, [r3]
.L92:
	ldrh	r1, [r3, #44]
	cmp	r1, r0
	moveq	lr, #1
	add	r2, r2, #1
	moveq	r6, r3
	streq	r8, [r3, #40]
	strne	r5, [r3, #40]
	moveq	r7, lr
	cmp	r2, ip
	add	r3, r3, #52
	bne	.L92
	cmp	lr, #0
	strne	r7, [r4]
	strne	r6, [r9]
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L98:
	ldr	r1, [r3, #16]
	ldr	r0, .L99+8
	ldr	r2, [r3]
	ldr	ip, [r3, #20]
	ldr	r0, [r0]
	add	r1, r1, r1, lsr #31
	asr	r1, r1, #1
	add	r2, r2, ip
	mla	r2, r0, r2, r1
	ldr	r3, [r3, #4]
	ldr	r1, .L99+12
	add	r3, r2, r3
	ldr	r2, [r1]
	lsl	r3, r3, #1
	ldrh	r0, [r2, r3]
	b	.L86
.L83:
	ldr	r1, .L99+8
	ldr	r2, [r3]
	ldr	r1, [r1]
	mul	r2, r1, r2
	ldr	r1, [r3, #16]
	ldr	r0, [r3, #4]
	add	r3, r1, r1, lsr #31
	ldr	r1, .L99+12
	add	r3, r2, r3, asr #1
	add	r3, r3, r0
	ldr	r2, [r1]
	lsl	r3, r3, #1
	ldrh	r0, [r2, r3]
	b	.L86
.L100:
	.align	2
.L99:
	.word	protag
	.word	spriteCollisionBool
	.word	totalMapWidth
	.word	currCollisionMap
	.word	currSpriteArrCount
	.word	activeSprite
	.word	currSpriteArr
	.size	checkSpriteCollision, .-checkSpriteCollision
	.align	2
	.global	checkThreshold
	.syntax unified
	.arm
	.fpu softvfp
	.type	checkThreshold, %function
checkThreshold:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L111
	ldr	r3, [r3]
	cmp	r3, #3
	beq	.L109
	cmp	r3, #5
	beq	.L110
	cmp	r3, #6
	bxne	lr
	ldr	r1, .L111+4
	ldr	r0, .L111+8
	ldr	r2, [r1, #16]
	ldr	r3, [r1]
	ldr	ip, [r1, #20]
	ldr	r0, [r0]
	add	r2, r2, r2, lsr #31
	asr	r2, r2, #1
	add	r3, r3, ip
	mla	r3, r0, r3, r2
	ldr	r1, [r1, #4]
	ldr	r2, .L111+12
	add	r3, r3, r1
	ldr	r2, [r2]
	lsl	r3, r3, #1
	ldrh	r2, [r2, r3]
	ldr	r3, .L111+16
	cmp	r2, r3
	bxne	lr
.L105:
	mov	r2, #1
	ldr	r3, .L111+20
	str	r2, [r3]
	bx	lr
.L110:
	ldr	r3, .L111+4
	ldr	ip, .L111+8
	ldr	r2, [r3, #16]
	ldr	r0, [r3, #4]
	ldr	r1, [r3]
	ldr	r3, [r3, #20]
	ldr	ip, [ip]
	add	r2, r2, r2, lsr #31
	add	r2, r0, r2, asr #1
	add	r3, r1, r3
	mla	r3, ip, r3, r2
	ldr	r2, .L111+12
	ldr	r2, [r2]
	lsl	r3, r3, #1
	ldrh	r3, [r2, r3]
	cmp	r3, #996
	beq	.L105
	mla	r1, ip, r1, r0
	lsl	r1, r1, #1
	ldrh	r3, [r2, r1]
	cmp	r3, #31
	moveq	r2, #2
	ldreq	r3, .L111+20
	streq	r2, [r3]
	bx	lr
.L109:
	ldr	r2, .L111+4
	ldr	r1, .L111+8
	ldr	r3, [r2]
	ldr	r1, [r1]
	ldr	r2, [r2, #4]
	mla	r3, r1, r3, r2
	ldr	r2, .L111+12
	ldr	r2, [r2]
	lsl	r3, r3, #1
	ldrh	r2, [r2, r3]
	ldr	r3, .L111+24
	cmp	r2, r3
	bxne	lr
	b	.L105
.L112:
	.align	2
.L111:
	.word	state
	.word	protag
	.word	totalMapWidth
	.word	currCollisionMap
	.word	607
	.word	nextRoomBool
	.word	3183
	.size	checkThreshold, .-checkThreshold
	.align	2
	.global	printText
	.syntax unified
	.arm
	.fpu softvfp
	.type	printText, %function
printText:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	lr, .L130
	ldr	r3, .L130+4
	ldrh	r4, [lr, #8]
	sub	ip, lr, #1488
	b	.L114
.L116:
	tst	r2, #31
	movne	r3, r1
	addeq	r3, r3, #7
.L114:
	add	r1, r3, #1
	sub	r2, r3, #440
	lsl	r0, r3, #1
	cmp	r1, #604
	strh	r4, [ip, r0]	@ movhi
	sub	r2, r2, #3
	blt	.L116
	ldr	r3, .L130+8
	ldr	r3, [r3]
	ldr	r4, [r3, #48]
	ldrb	r1, [r4]	@ zero_extendqisi2
	cmp	r1, #0
	beq	.L122
	mov	r6, #0
	ldr	r2, .L130+4
	ldr	r5, .L130+12
.L117:
	sub	r1, r1, #32
	ldr	r3, [r5, r1, lsl #2]
	lsl	r3, r3, #1
	ldrh	r1, [ip, r3]
	lsl	r3, r2, #1
	strh	r1, [ip, r3]	@ movhi
	add	r0, r6, #1
	ldrb	r1, [r4, r0]	@ zero_extendqisi2
	cmp	r1, #0
	add	r3, r2, #1
	beq	.L122
	sub	r7, r2, #440
	sub	r7, r7, #3
	tst	r7, #31
	movne	r2, r3
	movne	r6, r0
	bne	.L117
	cmp	r1, #32
	addeq	r6, r6, #2
	ldrbeq	r1, [r4, r6]	@ zero_extendqisi2
	addeq	r2, r2, #7
	beq	.L117
.L129:
	mov	r8, r3
	add	r1, r2, #2
	sub	r6, r6, #1
	sub	r2, r6, r2
	add	r1, ip, r1, lsl #1
	add	r0, r4, r0
.L120:
	ldrh	r7, [lr, #8]
	strh	r7, [r1, #-2]!	@ movhi
	ldrb	r7, [r0, #-1]!	@ zero_extendqisi2
	add	r6, r2, r3
	cmp	r7, #32
	sub	r3, r3, #1
	sub	r7, r8, r3
	bne	.L120
	add	r2, r7, #5
	ldrb	r1, [r4, r6]	@ zero_extendqisi2
	add	r2, r2, r3
	b	.L117
.L122:
	ldr	r4, .L130+16
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L130+20
	ldr	r1, .L130+24
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L131:
	.align	2
.L130:
	.word	messagescreenMap+1488
	.word	418
	.word	activeSprite
	.word	letterMap
	.word	DMANow
	.word	100712448
	.word	messagescreenMap
	.size	printText, .-printText
	.align	2
	.global	checkMoreInfo
	.syntax unified
	.arm
	.fpu softvfp
	.type	checkMoreInfo, %function
checkMoreInfo:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L152
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L133
	ldr	r3, .L152+4
	ldr	r2, [r3]
	ldr	r3, .L152+8
	cmp	r2, #6
	ldr	r2, [r3]
	beq	.L147
.L134:
	ldr	r3, .L152+12
	cmp	r2, r3
	beq	.L148
	sub	r3, r3, #312
	cmp	r2, r3
	push	{r4, lr}
	beq	.L149
.L137:
	ldr	r3, .L152+16
	cmp	r2, r3
	beq	.L150
.L138:
	mov	r2, #1
	ldr	r3, .L152+20
	str	r2, [r3]
	bl	printText
	mov	r3, #67108864
	mov	r2, #4864
	strh	r2, [r3]	@ movhi
.L132:
	pop	{r4, lr}
	bx	lr
.L133:
	mov	r3, #67108864
	mov	r2, #4608
	strh	r2, [r3]	@ movhi
	bx	lr
.L147:
	ldr	r3, .L152+24
	cmp	r2, r3
	bne	.L134
	ldr	r3, .L152+28
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L134
	mov	r2, #2
	ldr	r3, .L152+32
	str	r2, [r3]
	bx	lr
.L148:
	mov	r2, #1
	ldr	r3, .L152+36
	strb	r2, [r3]
	bx	lr
.L149:
	ldr	r3, .L152+40
	ldrb	r1, [r3]	@ zero_extendqisi2
	cmp	r1, #0
	beq	.L137
	mov	r1, #0
	ldr	r2, .L152+44
	strb	r1, [r3]
	mov	lr, pc
	bx	r2
	mov	r0, #1
	mov	r3, #67108864
	mov	r2, #4864
	ldr	r1, .L152+48
	strb	r0, [r1]
	strh	r2, [r3]	@ movhi
	b	.L132
.L150:
	ldr	r3, .L152+52
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L151
	ldr	r3, .L152+56
	ldrb	r2, [r3]	@ zero_extendqisi2
	cmp	r2, #0
	moveq	r2, #1
	strbeq	r2, [r3]
	ldr	r3, .L152+60
	mov	lr, pc
	bx	r3
	b	.L138
.L151:
	mov	r2, #1
	ldr	r3, .L152+64
	ldr	ip, .L152+40
	ldr	r1, [r3]
	ldr	r0, .L152+68
	ldr	r3, .L152+72
	strb	r2, [ip]
	mov	lr, pc
	bx	r3
	b	.L138
.L153:
	.align	2
.L152:
	.word	spriteCollisionBool
	.word	state
	.word	activeSprite
	.word	livingRoomSpritesArr+312
	.word	kitchenSpritesArr+52
	.word	messageActiveBool
	.word	bedroomSpritesArr+156
	.word	openSafeBool
	.word	nextRoomBool
	.word	computerAccessBool
	.word	phoneRinging
	.word	ringSettings
	.word	phoneAnswerBool
	.word	enableKeyFind
	.word	keyFound
	.word	reassignRefrigeratorMessage
	.word	phonering_length
	.word	phonering_data
	.word	playSoundB
	.size	checkMoreInfo, .-checkMoreInfo
	.global	__aeabi_idivmod
	.align	2
	.global	updateProtagonist
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateProtagonist, %function
updateProtagonist:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r4, .L225
	ldr	r3, [r4, #28]
	cmp	r3, #3
	movne	r2, #3
	strne	r3, [r4, #32]
	strne	r2, [r4, #28]
	ldr	r3, .L225+4
	ldr	r2, [r4, #24]
	smull	r0, r1, r3, r2
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #2
	add	r3, r3, r3, lsl #2
	cmp	r2, r3, lsl #1
	bne	.L156
	ldr	r0, [r4, #36]
	ldr	r3, .L225+8
	ldr	r1, [r4, #40]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #36]
.L156:
	ldr	r3, .L225+12
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L221
	ldr	r3, .L225+16
	ldr	r5, .L225+20
	ldr	r2, [r3]
	ldrh	ip, [r5]
	cmp	r2, #0
	and	r2, ip, #1
	beq	.L159
	cmp	r2, #0
	bne	.L222
.L158:
	ldr	r1, [r4, #28]
	ldr	r2, .L225+24
	ldr	r3, .L225+28
	cmp	r1, #3
	ldrh	r3, [r3]
	ldrh	r1, [r2]
	ldr	r0, [r4, #4]
	ldr	lr, [r4]
	beq	.L175
.L170:
	ldr	r2, [r4, #24]
	add	r2, r2, #1
	str	r2, [r4, #24]
.L172:
	sub	r1, r0, r1
	sub	r3, lr, r3
	tst	ip, #8
	str	r1, [r4, #12]
	str	r3, [r4, #8]
	beq	.L154
	ldr	r3, .L225+32
	ldrh	r3, [r3]
	tst	r3, #8
	moveq	r2, #4
	ldreq	r3, .L225+36
	streq	r2, [r3]
.L154:
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L159:
	cmp	r2, #0
	beq	.L160
	ldr	r3, .L225+32
	ldrh	r3, [r3]
	tst	r3, #1
	bne	.L160
	bl	checkMoreInfo
	ldrh	ip, [r5]
.L160:
	ldr	r3, .L225+40
	ldrh	r3, [r3, #48]
	ldr	r5, .L225+28
	tst	r3, #64
	ldr	r0, [r4, #4]
	ldrh	r3, [r5]
	ldr	lr, [r4]
	bne	.L161
	ldr	r2, .L225+44
	ldr	r2, [r2]
	sub	r6, lr, #1
	mul	r2, r6, r2
	ldr	r7, .L225+48
	add	r1, r2, r0
	ldr	r7, [r7]
	lsl	r1, r1, #1
	ldrh	r1, [r7, r1]
	cmp	r1, #0
	beq	.L162
	ldr	r1, [r4, #16]
	add	r2, r2, r1
	add	r2, r2, r0
	lsl	r2, r2, #1
	ldrh	r2, [r7, r2]
	cmp	r2, #0
	beq	.L162
	cmp	r3, #1
	str	r6, [r4]
	bls	.L177
	ldr	r2, [r4, #8]
	cmp	r2, #80
	bgt	.L177
	mov	lr, r6
	sub	r3, r3, #1
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	strh	r3, [r5]	@ movhi
.L162:
	mov	r2, #2
	str	r2, [r4, #28]
.L161:
	ldr	r2, .L225+40
	ldrh	r1, [r2, #48]
	ldr	r6, .L225+24
	tst	r1, #128
	ldrh	r1, [r6]
	beq	.L223
	ldrh	r5, [r2, #48]
	tst	r5, #16
	beq	.L165
	ldr	r5, [r4, #28]
	cmp	r5, #3
	bne	.L166
	ldrh	r2, [r2, #48]
	tst	r2, #32
	bne	.L175
.L174:
	cmp	r0, #1
	ble	.L171
	ldr	r2, .L225+44
	ldr	r9, [r2]
	add	r8, r0, #8
	mla	r5, lr, r9, r8
	ldr	r2, .L225+48
	ldr	r7, [r2]
	lsl	r5, r5, #1
	ldrh	r2, [r7, r5]
	cmp	r2, #0
	beq	.L171
	ldr	r2, [r4, #20]
	add	r2, lr, r2
	sub	r2, r2, #1
	mla	r2, r9, r2, r8
	lsl	r2, r2, #1
	ldrh	r2, [r7, r2]
	cmp	r2, #0
	beq	.L171
	sub	r0, r0, #1
	cmp	r1, #1
	str	r0, [r4, #4]
	bls	.L171
	ldr	r2, [r4, #12]
	cmp	r2, #120
	suble	r1, r1, #1
	lslle	r1, r1, #16
	lsrle	r1, r1, #16
	strhle	r1, [r6]	@ movhi
.L171:
	mov	r2, #1
	str	r2, [r4, #28]
	str	r2, [r4, #44]
	b	.L170
.L175:
	mov	r5, #0
	ldr	r2, [r4, #32]
	str	r5, [r4, #36]
	str	r2, [r4, #28]
	b	.L172
.L221:
	ldr	r3, .L225+52
	mov	lr, pc
	bx	r3
	ldr	r3, .L225+56
	mov	lr, pc
	bx	r3
	ldr	r3, .L225+20
	ldrh	ip, [r3]
	b	.L158
.L223:
	ldr	r2, [r4, #20]
	ldr	r7, .L225+44
	add	r2, lr, r2
	ldr	r7, [r7]
	add	r2, r2, #1
	mul	r2, r7, r2
	ldr	r8, .L225+48
	add	r7, r2, r0
	ldr	r8, [r8]
	lsl	r7, r7, #1
	ldrh	r7, [r8, r7]
	cmp	r7, #0
	beq	.L164
	ldr	r7, [r4, #16]
	add	r2, r2, r7
	add	r2, r2, r0
	lsl	r2, r2, #1
	ldrh	r2, [r8, r2]
	cmp	r2, #0
	bne	.L224
.L164:
	mov	r2, #0
	ldr	r5, .L225+40
	ldrh	r5, [r5, #48]
	tst	r5, #16
	str	r2, [r4, #28]
	bne	.L166
.L165:
	ldr	r5, .L225+60
	ldr	r2, [r4, #16]
	ldr	r7, [r5]
	add	r2, r0, r2
	cmp	r2, r7
	bge	.L168
	ldr	r5, .L225+44
	ldr	r9, [r5]
	add	r2, r2, #1
	mla	r5, lr, r9, r2
	ldr	r8, .L225+48
	ldr	r8, [r8]
	lsl	r5, r5, #1
	ldrh	r5, [r8, r5]
	cmp	r5, #0
	beq	.L168
	ldr	r5, [r4, #20]
	add	r5, lr, r5
	sub	r5, r5, #1
	mla	r2, r9, r5, r2
	lsl	r2, r2, #1
	ldrh	r2, [r8, r2]
	cmp	r2, #0
	beq	.L168
	sub	r7, r7, #240
	add	r2, r1, #1
	add	r0, r0, #1
	cmp	r2, r7
	str	r0, [r4, #4]
	bge	.L168
	ldr	r5, [r4, #12]
	cmp	r5, #119
	lslgt	r1, r2, #16
	lsrgt	r1, r1, #16
	strhgt	r1, [r6]	@ movhi
.L168:
	mov	r2, #1
	str	r2, [r4, #28]
.L166:
	mov	r2, #0
	ldr	r5, .L225+40
	ldrh	r5, [r5, #48]
	tst	r5, #32
	str	r2, [r4, #44]
	bne	.L170
	b	.L174
.L222:
	ldr	r2, .L225+32
	ldrh	r2, [r2]
	ands	r2, r2, #1
	bne	.L158
	mov	r1, #67108864
	mov	r0, #4608
	strh	r0, [r1]	@ movhi
	str	r2, [r3]
	ldrh	ip, [r5]
	b	.L158
.L224:
	ldr	r2, .L225+64
	ldr	r2, [r2]
	add	r7, r3, #1
	sub	r2, r2, #160
	add	lr, lr, #1
	cmp	r7, r2
	str	lr, [r4]
	bge	.L164
	ldr	r2, [r4, #8]
	cmp	r2, #79
	lslgt	r7, r7, #16
	lsrgt	r7, r7, #16
	movgt	r3, r7
	strhgt	r7, [r5]	@ movhi
	b	.L164
.L177:
	mov	lr, r6
	b	.L162
.L226:
	.align	2
.L225:
	.word	protag
	.word	1717986919
	.word	__aeabi_idivmod
	.word	phoneAnswerBool
	.word	messageActiveBool
	.word	oldButtons
	.word	hOff
	.word	vOff
	.word	buttons
	.word	mode
	.word	67109120
	.word	totalMapWidth
	.word	currCollisionMap
	.word	stopSoundB
	.word	answerPhone
	.word	visMapWidth
	.word	visMapHeight
	.size	updateProtagonist, .-updateProtagonist
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	checkThreshold
	bl	updateProtagonist
	bl	updateSprites
	pop	{r4, lr}
	b	checkSpriteCollision
	.size	updateGame, .-updateGame
	.align	2
	.global	clearMessage
	.syntax unified
	.arm
	.fpu softvfp
	.type	clearMessage, %function
clearMessage:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L235
	str	lr, [sp, #-4]!
	ldr	r3, .L235+4
	ldrh	lr, [ip, #8]
	sub	ip, ip, #1488
	b	.L230
.L232:
	tst	r2, #31
	movne	r3, r1
	addeq	r3, r3, #7
.L230:
	add	r1, r3, #1
	sub	r2, r3, #440
	lsl	r0, r3, #1
	cmp	r1, #604
	strh	lr, [ip, r0]	@ movhi
	sub	r2, r2, #3
	blt	.L232
	ldr	lr, [sp], #4
	bx	lr
.L236:
	.align	2
.L235:
	.word	messagescreenMap+1488
	.word	418
	.size	clearMessage, .-clearMessage
	.align	2
	.global	setUpInterrupts
	.syntax unified
	.arm
	.fpu softvfp
	.type	setUpInterrupts, %function
setUpInterrupts:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #67108864
	str	lr, [sp, #-4]!
	mov	lr, #1
	ldr	r1, .L239
	ldrh	r3, [r1]
	orr	r3, r3, #2160
	ldrh	r2, [r0, #4]
	orr	r3, r3, #9
	strh	r3, [r1]	@ movhi
	ldr	ip, .L239+4
	ldr	r3, .L239+8
	orr	r2, r2, #8
	strh	lr, [r1, #8]	@ movhi
	strh	r2, [r0, #4]	@ movhi
	ldr	lr, [sp], #4
	str	r3, [ip, #4092]
	bx	lr
.L240:
	.align	2
.L239:
	.word	67109376
	.word	50360320
	.word	interruptHandler
	.size	setUpInterrupts, .-setUpInterrupts
	.align	2
	.global	timerWait
	.syntax unified
	.arm
	.fpu softvfp
	.type	timerWait, %function
timerWait:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #0
	ldr	r3, .L250
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r1, #256
	strh	r2, [r3, #14]	@ movhi
	strh	r0, [r3, #12]	@ movhi
	beq	.L242
	bgt	.L243
	cmp	r1, #1
	beq	.L244
	cmp	r1, #64
	ldrheq	r2, [r3, #14]
	orreq	r2, r2, #1
	strheq	r2, [r3, #14]	@ movhi
.L246:
	ldr	r3, .L250
	mov	r2, r3
	ldrh	r1, [r3, #14]
	orr	r1, r1, #128
	strh	r1, [r3, #14]	@ movhi
	ldr	r1, .L250+4
.L248:
	ldrh	r3, [r2, #12]
	cmp	r3, r1
	bls	.L248
	mov	r3, #0
	strh	r3, [r2, #14]	@ movhi
	bx	lr
.L243:
	cmp	r1, #1024
	ldrheq	r2, [r3, #14]
	orreq	r2, r2, #3
	strheq	r2, [r3, #14]	@ movhi
	b	.L246
.L242:
	ldrh	r2, [r3, #14]
	orr	r2, r2, #2
	strh	r2, [r3, #14]	@ movhi
	b	.L246
.L244:
	ldrh	r2, [r3, #14]
	strh	r2, [r3, #14]	@ movhi
	b	.L246
.L251:
	.align	2
.L250:
	.word	67109120
	.word	65499
	.size	timerWait, .-timerWait
	.comm	mode,4,4
	.comm	totalMapHeight,4,4
	.comm	visMapHeight,4,4
	.comm	totalMapWidth,4,4
	.comm	visMapWidth,4,4
	.comm	vOff,2,2
	.comm	hOff,2,2
	.comm	priorVoff,2,2
	.comm	priorHoff,2,2
	.comm	allEmailsBool,1,1
	.comm	marleyEmailBool,1,1
	.comm	ruthEmailBool,1,1
	.comm	phoneAnswerBool,1,1
	.comm	computerAccessBool,1,1
	.comm	documentsUploaded,1,1
	.comm	phoneRinging,1,1
	.comm	documentsFound,1,1
	.comm	keyFound,1,1
	.comm	enableKeyFind,1,1
	.comm	nextRoomBool,4,4
	.comm	messageActiveBool,4,4
	.comm	spriteCollisionBool,4,4
	.comm	currMessageMap,4,4
	.comm	currCollisionMap,4,4
	.comm	activeSprite,4,4
	.comm	currSpriteArrCount,4,4
	.comm	currSpriteArr,4,4
	.comm	protag,48,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.comm	state,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
