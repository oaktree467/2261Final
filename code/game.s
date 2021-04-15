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
	ldr	r3, .L36
	ldrh	r1, [r3, #2]
	tst	r1, #16
	push	{r4, lr}
	strh	r2, [r3, #8]	@ movhi
	beq	.L2
	ldr	r2, .L36+4
	ldr	r2, [r2]
	cmp	r2, #2
	beq	.L31
.L2:
	ldr	r3, .L36
	ldrh	r3, [r3, #2]
	tst	r3, #32
	bne	.L32
.L3:
	ldr	r3, .L36
	ldrh	r3, [r3, #2]
	tst	r3, #2048
	beq	.L5
	ldr	r3, .L36+8
	mov	r1, r3
	ldrh	r2, [r3, #2]
	ldr	r0, .L36+12
	strh	r2, [r3, #2]	@ movhi
	strh	r0, [r3]	@ movhi
	ldrh	r2, [r3, #2]
	orr	r2, r2, #129
	strh	r2, [r3, #2]	@ movhi
	ldr	r2, .L36+16
.L6:
	ldrh	r3, [r1]
	cmp	r3, r2
	bls	.L6
.L5:
	ldr	r3, .L36
	ldrh	r3, [r3, #2]
	tst	r3, #1
	beq	.L7
	ldr	r3, .L36+20
	ldr	r2, [r3, #12]
	cmp	r2, #0
	beq	.L9
	ldr	r2, [r3, #28]
	ldr	r1, [r3, #20]
	add	r2, r2, #1
	cmp	r2, r1
	str	r2, [r3, #28]
	blt	.L9
	ldr	r2, [r3, #16]
	cmp	r2, #0
	bne	.L33
	ldr	r0, .L36+24
	ldr	r1, .L36+8
	ldr	r0, [r0]
	str	r2, [r3, #12]
	str	r2, [r0, #20]
	strh	r2, [r1, #10]	@ movhi
.L9:
	ldr	r3, .L36+28
	ldr	r2, [r3, #12]
	cmp	r2, #0
	bne	.L34
.L13:
	mov	r2, #1
	ldr	r3, .L36
	strh	r2, [r3, #2]	@ movhi
.L7:
	mov	r1, #1
	ldr	r3, .L36
	ldrh	r2, [r3, #2]
	strh	r1, [r3, #8]	@ movhi
	strh	r2, [r3, #2]	@ movhi
	pop	{r4, lr}
	bx	lr
.L32:
	ldr	r3, .L36+4
	ldr	r3, [r3]
	cmp	r3, #3
	bne	.L3
	mov	ip, #1
	ldr	r0, .L36+32
	ldr	r3, [r0]
	ldr	r1, .L36+36
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
	b	.L3
.L34:
	ldr	r2, [r3, #28]
	ldr	r1, [r3, #20]
	add	r2, r2, #1
	cmp	r2, r1
	str	r2, [r3, #28]
	blt	.L13
	ldr	r2, [r3, #16]
	cmp	r2, #0
	bne	.L35
	ldr	r0, .L36+24
	ldr	r1, .L36+8
	ldr	r0, [r0]
	str	r2, [r3, #12]
	str	r2, [r0, #32]
	strh	r2, [r1, #14]	@ movhi
	b	.L13
.L31:
	ldr	ip, .L36+40
	ldr	r0, .L36+44
	ldr	r1, [ip]
	ldr	r2, [r0]
	add	r1, r1, #1
	add	r2, r2, #1
	str	r1, [ip]
	str	r2, [r0]
	ldrh	r3, [r3, #2]
	b	.L3
.L33:
	ldm	r3, {r0, r1}
	ldr	r3, .L36+48
	mov	lr, pc
	bx	r3
	b	.L9
.L35:
	ldm	r3, {r0, r1}
	ldr	r3, .L36+52
	mov	lr, pc
	bx	r3
	b	.L13
.L37:
	.align	2
.L36:
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
	ldr	r2, .L40
	ldr	r1, .L40+4
	strb	r3, [r2]
	strb	r3, [r1]
	ldr	r2, .L40+8
	ldr	r1, .L40+12
	strb	r3, [r2]
	strb	r3, [r1]
	ldr	r2, .L40+16
	ldr	r1, .L40+20
	strb	r3, [r2]
	str	r3, [r1]
	ldr	r2, .L40+24
	ldr	r1, .L40+28
	str	r3, [r2]
	str	r3, [r1]
	ldr	r2, .L40+32
	ldr	r1, .L40+36
	strb	r3, [r2]
	strb	r3, [r1]
	ldr	r2, .L40+40
	ldr	r1, .L40+44
	str	r3, [r2]
	ldrh	r2, [r1]
	orr	r2, r2, #2160
	orr	r2, r2, #9
	strh	r2, [r1]	@ movhi
	strh	r0, [r1, #8]	@ movhi
	ldrh	r1, [ip, #4]
	ldr	r2, .L40+48
	orr	r1, r1, #8
	strh	r1, [ip, #4]	@ movhi
	str	r0, [r2, #44]
	ldr	r1, .L40+52
	ldr	r0, .L40+56
	str	r0, [r1, #4092]
	ldr	r1, .L40+60
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
.L41:
	.align	2
.L40:
	.word	keyFound
	.word	enableKeyFind
	.word	phoneRinging
	.word	documentsFound
	.word	documentsUploaded
	.word	spriteCollisionBool
	.word	messageActiveBool
	.word	nextRoomBool
	.word	computerAccessBool
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
	ldr	r3, .L44
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
.L45:
	.align	2
.L44:
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
	ldr	r3, .L56
	ldr	ip, [r3]
	cmp	ip, #0
	push	{r4, lr}
	ble	.L47
	mov	r0, #0
	ldr	r1, .L56+4
	ldr	r2, .L56+8
	ldr	r3, .L56+12
	ldrh	r4, [r1]
	ldrh	lr, [r2]
	ldr	r3, [r3]
.L48:
	ldr	r1, [r3, #4]
	ldr	r2, [r3]
	add	r0, r0, #1
	sub	r1, r1, r4
	sub	r2, r2, lr
	cmp	r0, ip
	str	r1, [r3, #12]
	str	r2, [r3, #8]
	add	r3, r3, #52
	bne	.L48
.L47:
	ldr	r3, .L56+16
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L55
	pop	{r4, lr}
	bx	lr
.L55:
	ldr	r3, .L56+20
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L57:
	.align	2
.L56:
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
	ldr	r3, .L69
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r4, [r3]
	cmp	r4, #0
	ble	.L65
	mov	ip, #0
	mov	r5, #512
	ldr	r3, .L69+4
	ldr	r1, .L69+8
	ldr	r3, [r3]
.L64:
	ldr	r2, [r3, #40]
	cmp	r2, #1
	strheq	r5, [r1, #8]	@ movhi
	add	ip, ip, #1
	beq	.L63
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
.L63:
	cmp	ip, r4
	add	r3, r3, #52
	add	r1, r1, #8
	bne	.L64
.L65:
	ldr	r3, .L69+12
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L68
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L68:
	ldr	r3, .L69+16
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L70:
	.align	2
.L69:
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
	ldr	r1, .L72
	ldr	r3, [r1, #44]
	ldr	r2, [r1, #12]
	orr	r2, r2, r3, lsl #12
	mvn	r2, r2, lsl #17
	mvn	r2, r2, lsr #17
	ldr	ip, [r1, #36]
	ldr	r3, [r1, #28]
	ldr	r0, [r1, #8]
	add	r3, r3, ip, lsl #4
	ldr	r1, .L72+4
	lsl	r3, r3, #3
	orr	r0, r0, #8192
	orr	r3, r3, #2048
	strh	r2, [r1, #2]	@ movhi
	strh	r0, [r1]	@ movhi
	strh	r3, [r1, #4]	@ movhi
	bx	lr
.L73:
	.align	2
.L72:
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
	ldr	r3, .L77
	ldr	r3, [r3]
	mla	r1, r3, r1, r0
	ldr	r3, .L77+4
	ldr	r3, [r3]
	lsl	r1, r1, #1
	ldrh	r0, [r3, r1]
	bx	lr
.L78:
	.align	2
.L77:
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
	ldr	r3, .L97
	ldr	r2, [r3, #28]
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	r4, .L97+4
	cmp	r2, #1
	str	r1, [r4]
	beq	.L80
	cmp	r2, #2
	beq	.L81
	cmp	r2, r1
	beq	.L96
.L79:
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L80:
	ldr	r1, [r3, #20]
	ldr	r0, .L97+8
	ldr	r2, [r3]
	ldr	ip, [r0]
	add	r1, r1, r1, lsr #31
	add	r2, r2, r1, asr #1
	mul	r1, ip, r2
	ldr	lr, [r3, #44]
	cmp	lr, #1
	ldr	r2, [r3, #4]
	ldrne	r3, [r3, #16]
	ldr	r0, .L97+12
	addne	r3, r2, r3
	ldr	r0, [r0]
	addeq	r2, r2, r1
	addne	r3, r3, r1
	lsleq	r2, r2, #1
	lslne	r3, r3, #1
	ldrheq	r0, [r0, r2]
	ldrhne	r0, [r0, r3]
.L84:
	cmp	r0, #0
	beq	.L79
	ldr	r3, .L97+16
	ldr	ip, [r3]
	cmp	ip, #0
	ble	.L79
	mov	lr, #0
	mov	r5, #1
	mov	r7, lr
	mov	r2, lr
	mov	r8, lr
	ldr	r9, .L97+20
	ldr	r3, .L97+24
	ldr	r6, [r9]
	ldr	r3, [r3]
.L90:
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
	bne	.L90
	cmp	lr, #0
	strne	r7, [r4]
	strne	r6, [r9]
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L96:
	ldr	r1, [r3, #16]
	ldr	r0, .L97+8
	ldr	r2, [r3]
	ldr	ip, [r3, #20]
	ldr	r0, [r0]
	add	r1, r1, r1, lsr #31
	asr	r1, r1, #1
	add	r2, r2, ip
	mla	r2, r0, r2, r1
	ldr	r3, [r3, #4]
	ldr	r1, .L97+12
	add	r3, r2, r3
	ldr	r2, [r1]
	lsl	r3, r3, #1
	ldrh	r0, [r2, r3]
	b	.L84
.L81:
	ldr	r1, .L97+8
	ldr	r2, [r3]
	ldr	r1, [r1]
	mul	r2, r1, r2
	ldr	r1, [r3, #16]
	ldr	r0, [r3, #4]
	add	r3, r1, r1, lsr #31
	ldr	r1, .L97+12
	add	r3, r2, r3, asr #1
	add	r3, r3, r0
	ldr	r2, [r1]
	lsl	r3, r3, #1
	ldrh	r0, [r2, r3]
	b	.L84
.L98:
	.align	2
.L97:
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
	ldr	r3, .L109
	ldr	r3, [r3]
	cmp	r3, #3
	beq	.L107
	cmp	r3, #5
	beq	.L108
	cmp	r3, #6
	bxne	lr
	ldr	r1, .L109+4
	ldr	r0, .L109+8
	ldr	r2, [r1, #16]
	ldr	r3, [r1]
	ldr	ip, [r1, #20]
	ldr	r0, [r0]
	add	r2, r2, r2, lsr #31
	asr	r2, r2, #1
	add	r3, r3, ip
	mla	r3, r0, r3, r2
	ldr	r1, [r1, #4]
	ldr	r2, .L109+12
	add	r3, r3, r1
	ldr	r2, [r2]
	lsl	r3, r3, #1
	ldrh	r2, [r2, r3]
	ldr	r3, .L109+16
	cmp	r2, r3
	bxne	lr
.L103:
	mov	r2, #1
	ldr	r3, .L109+20
	str	r2, [r3]
	bx	lr
.L108:
	ldr	r3, .L109+4
	ldr	ip, .L109+8
	ldr	r2, [r3, #16]
	ldr	r0, [r3, #4]
	ldr	r1, [r3]
	ldr	r3, [r3, #20]
	ldr	ip, [ip]
	add	r2, r2, r2, lsr #31
	add	r2, r0, r2, asr #1
	add	r3, r1, r3
	mla	r3, ip, r3, r2
	ldr	r2, .L109+12
	ldr	r2, [r2]
	lsl	r3, r3, #1
	ldrh	r3, [r2, r3]
	cmp	r3, #996
	beq	.L103
	mla	r1, ip, r1, r0
	lsl	r1, r1, #1
	ldrh	r3, [r2, r1]
	cmp	r3, #31
	moveq	r2, #2
	ldreq	r3, .L109+20
	streq	r2, [r3]
	bx	lr
.L107:
	ldr	r2, .L109+4
	ldr	r1, .L109+8
	ldr	r3, [r2]
	ldr	r1, [r1]
	ldr	r2, [r2, #4]
	mla	r3, r1, r3, r2
	ldr	r2, .L109+12
	ldr	r2, [r2]
	lsl	r3, r3, #1
	ldrh	r2, [r2, r3]
	ldr	r3, .L109+24
	cmp	r2, r3
	bxne	lr
	b	.L103
.L110:
	.align	2
.L109:
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
	ldr	lr, .L128
	ldr	r3, .L128+4
	ldrh	r4, [lr, #8]
	sub	ip, lr, #1488
	b	.L112
.L114:
	tst	r2, #31
	movne	r3, r1
	addeq	r3, r3, #7
.L112:
	add	r1, r3, #1
	sub	r2, r3, #440
	lsl	r0, r3, #1
	cmp	r1, #604
	strh	r4, [ip, r0]	@ movhi
	sub	r2, r2, #3
	blt	.L114
	ldr	r3, .L128+8
	ldr	r3, [r3]
	ldr	r4, [r3, #48]
	ldrb	r1, [r4]	@ zero_extendqisi2
	cmp	r1, #0
	beq	.L120
	mov	r6, #0
	ldr	r2, .L128+4
	ldr	r5, .L128+12
.L115:
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
	beq	.L120
	sub	r7, r2, #440
	sub	r7, r7, #3
	tst	r7, #31
	movne	r2, r3
	movne	r6, r0
	bne	.L115
	cmp	r1, #32
	addeq	r6, r6, #2
	ldrbeq	r1, [r4, r6]	@ zero_extendqisi2
	addeq	r2, r2, #7
	beq	.L115
.L127:
	mov	r8, r3
	add	r1, r2, #2
	sub	r6, r6, #1
	sub	r2, r6, r2
	add	r1, ip, r1, lsl #1
	add	r0, r4, r0
.L118:
	ldrh	r7, [lr, #8]
	strh	r7, [r1, #-2]!	@ movhi
	ldrb	r7, [r0, #-1]!	@ zero_extendqisi2
	add	r6, r2, r3
	cmp	r7, #32
	sub	r3, r3, #1
	sub	r7, r8, r3
	bne	.L118
	add	r2, r7, #5
	ldrb	r1, [r4, r6]	@ zero_extendqisi2
	add	r2, r2, r3
	b	.L115
.L120:
	ldr	r4, .L128+16
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L128+20
	ldr	r1, .L128+24
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L129:
	.align	2
.L128:
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
	ldr	r3, .L150
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L131
	ldr	r3, .L150+4
	ldr	r2, [r3]
	ldr	r3, .L150+8
	cmp	r2, #6
	ldr	r2, [r3]
	beq	.L145
.L132:
	ldr	r3, .L150+12
	cmp	r2, r3
	beq	.L146
	sub	r3, r3, #312
	cmp	r2, r3
	push	{r4, lr}
	beq	.L147
.L135:
	ldr	r3, .L150+16
	cmp	r2, r3
	beq	.L148
.L136:
	mov	r2, #1
	ldr	r3, .L150+20
	str	r2, [r3]
	bl	printText
	mov	r3, #67108864
	mov	r2, #4864
	strh	r2, [r3]	@ movhi
.L130:
	pop	{r4, lr}
	bx	lr
.L131:
	mov	r3, #67108864
	mov	r2, #4608
	strh	r2, [r3]	@ movhi
	bx	lr
.L145:
	ldr	r3, .L150+24
	cmp	r2, r3
	bne	.L132
	ldr	r3, .L150+28
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L132
	mov	r2, #2
	ldr	r3, .L150+32
	str	r2, [r3]
	bx	lr
.L146:
	mov	r2, #1
	ldr	r3, .L150+36
	strb	r2, [r3]
	bx	lr
.L147:
	ldr	r3, .L150+40
	ldrb	r1, [r3]	@ zero_extendqisi2
	cmp	r1, #0
	beq	.L135
	mov	r1, #0
	ldr	r2, .L150+44
	strb	r1, [r3]
	mov	lr, pc
	bx	r2
	mov	r0, #1
	mov	r3, #67108864
	mov	r2, #4864
	ldr	r1, .L150+48
	strb	r0, [r1]
	strh	r2, [r3]	@ movhi
	b	.L130
.L148:
	ldr	r3, .L150+52
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L149
	ldr	r3, .L150+56
	ldrb	r2, [r3]	@ zero_extendqisi2
	cmp	r2, #0
	moveq	r2, #1
	strbeq	r2, [r3]
	ldr	r3, .L150+60
	mov	lr, pc
	bx	r3
	b	.L136
.L149:
	mov	r2, #1
	ldr	r3, .L150+64
	ldr	ip, .L150+40
	ldr	r1, [r3]
	ldr	r0, .L150+68
	ldr	r3, .L150+72
	strb	r2, [ip]
	mov	lr, pc
	bx	r3
	b	.L136
.L151:
	.align	2
.L150:
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
	ldr	r4, .L223
	ldr	r3, [r4, #28]
	cmp	r3, #3
	movne	r2, #3
	strne	r3, [r4, #32]
	strne	r2, [r4, #28]
	ldr	r3, .L223+4
	ldr	r2, [r4, #24]
	smull	r0, r1, r3, r2
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #2
	add	r3, r3, r3, lsl #2
	cmp	r2, r3, lsl #1
	bne	.L154
	ldr	r0, [r4, #36]
	ldr	r3, .L223+8
	ldr	r1, [r4, #40]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #36]
.L154:
	ldr	r3, .L223+12
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L219
	ldr	r3, .L223+16
	ldr	r5, .L223+20
	ldr	r2, [r3]
	ldrh	ip, [r5]
	cmp	r2, #0
	and	r2, ip, #1
	beq	.L157
	cmp	r2, #0
	bne	.L220
.L156:
	ldr	r1, [r4, #28]
	ldr	r2, .L223+24
	ldr	r3, .L223+28
	cmp	r1, #3
	ldrh	r3, [r3]
	ldrh	r1, [r2]
	ldr	r0, [r4, #4]
	ldr	lr, [r4]
	beq	.L173
.L168:
	ldr	r2, [r4, #24]
	add	r2, r2, #1
	str	r2, [r4, #24]
.L170:
	sub	r1, r0, r1
	sub	r3, lr, r3
	tst	ip, #8
	str	r1, [r4, #12]
	str	r3, [r4, #8]
	beq	.L152
	ldr	r3, .L223+32
	ldrh	r3, [r3]
	tst	r3, #8
	moveq	r2, #4
	ldreq	r3, .L223+36
	streq	r2, [r3]
.L152:
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L157:
	cmp	r2, #0
	beq	.L158
	ldr	r3, .L223+32
	ldrh	r3, [r3]
	tst	r3, #1
	bne	.L158
	bl	checkMoreInfo
	ldrh	ip, [r5]
.L158:
	ldr	r3, .L223+40
	ldrh	r3, [r3, #48]
	ldr	r5, .L223+28
	tst	r3, #64
	ldr	r0, [r4, #4]
	ldrh	r3, [r5]
	ldr	lr, [r4]
	bne	.L159
	ldr	r2, .L223+44
	ldr	r2, [r2]
	sub	r6, lr, #1
	mul	r2, r6, r2
	ldr	r7, .L223+48
	add	r1, r2, r0
	ldr	r7, [r7]
	lsl	r1, r1, #1
	ldrh	r1, [r7, r1]
	cmp	r1, #0
	beq	.L160
	ldr	r1, [r4, #16]
	add	r2, r2, r1
	add	r2, r2, r0
	lsl	r2, r2, #1
	ldrh	r2, [r7, r2]
	cmp	r2, #0
	beq	.L160
	cmp	r3, #1
	str	r6, [r4]
	bls	.L175
	ldr	r2, [r4, #8]
	cmp	r2, #80
	bgt	.L175
	mov	lr, r6
	sub	r3, r3, #1
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	strh	r3, [r5]	@ movhi
.L160:
	mov	r2, #2
	str	r2, [r4, #28]
.L159:
	ldr	r2, .L223+40
	ldrh	r1, [r2, #48]
	ldr	r6, .L223+24
	tst	r1, #128
	ldrh	r1, [r6]
	beq	.L221
	ldrh	r5, [r2, #48]
	tst	r5, #16
	beq	.L163
	ldr	r5, [r4, #28]
	cmp	r5, #3
	bne	.L164
	ldrh	r2, [r2, #48]
	tst	r2, #32
	bne	.L173
.L172:
	cmp	r0, #1
	ble	.L169
	ldr	r2, .L223+44
	ldr	r9, [r2]
	add	r8, r0, #8
	mla	r5, lr, r9, r8
	ldr	r2, .L223+48
	ldr	r7, [r2]
	lsl	r5, r5, #1
	ldrh	r2, [r7, r5]
	cmp	r2, #0
	beq	.L169
	ldr	r2, [r4, #20]
	add	r2, lr, r2
	sub	r2, r2, #1
	mla	r2, r9, r2, r8
	lsl	r2, r2, #1
	ldrh	r2, [r7, r2]
	cmp	r2, #0
	beq	.L169
	sub	r0, r0, #1
	cmp	r1, #1
	str	r0, [r4, #4]
	bls	.L169
	ldr	r2, [r4, #12]
	cmp	r2, #120
	suble	r1, r1, #1
	lslle	r1, r1, #16
	lsrle	r1, r1, #16
	strhle	r1, [r6]	@ movhi
.L169:
	mov	r2, #1
	str	r2, [r4, #28]
	str	r2, [r4, #44]
	b	.L168
.L173:
	mov	r5, #0
	ldr	r2, [r4, #32]
	str	r5, [r4, #36]
	str	r2, [r4, #28]
	b	.L170
.L219:
	ldr	r3, .L223+52
	mov	lr, pc
	bx	r3
	ldr	r3, .L223+56
	mov	lr, pc
	bx	r3
	ldr	r3, .L223+20
	ldrh	ip, [r3]
	b	.L156
.L221:
	ldr	r2, [r4, #20]
	ldr	r7, .L223+44
	add	r2, lr, r2
	ldr	r7, [r7]
	add	r2, r2, #1
	mul	r2, r7, r2
	ldr	r8, .L223+48
	add	r7, r2, r0
	ldr	r8, [r8]
	lsl	r7, r7, #1
	ldrh	r7, [r8, r7]
	cmp	r7, #0
	beq	.L162
	ldr	r7, [r4, #16]
	add	r2, r2, r7
	add	r2, r2, r0
	lsl	r2, r2, #1
	ldrh	r2, [r8, r2]
	cmp	r2, #0
	bne	.L222
.L162:
	mov	r2, #0
	ldr	r5, .L223+40
	ldrh	r5, [r5, #48]
	tst	r5, #16
	str	r2, [r4, #28]
	bne	.L164
.L163:
	ldr	r5, .L223+60
	ldr	r2, [r4, #16]
	ldr	r7, [r5]
	add	r2, r0, r2
	cmp	r2, r7
	bge	.L166
	ldr	r5, .L223+44
	ldr	r9, [r5]
	add	r2, r2, #1
	mla	r5, lr, r9, r2
	ldr	r8, .L223+48
	ldr	r8, [r8]
	lsl	r5, r5, #1
	ldrh	r5, [r8, r5]
	cmp	r5, #0
	beq	.L166
	ldr	r5, [r4, #20]
	add	r5, lr, r5
	sub	r5, r5, #1
	mla	r2, r9, r5, r2
	lsl	r2, r2, #1
	ldrh	r2, [r8, r2]
	cmp	r2, #0
	beq	.L166
	sub	r7, r7, #240
	add	r2, r1, #1
	add	r0, r0, #1
	cmp	r2, r7
	str	r0, [r4, #4]
	bge	.L166
	ldr	r5, [r4, #12]
	cmp	r5, #119
	lslgt	r1, r2, #16
	lsrgt	r1, r1, #16
	strhgt	r1, [r6]	@ movhi
.L166:
	mov	r2, #1
	str	r2, [r4, #28]
.L164:
	mov	r2, #0
	ldr	r5, .L223+40
	ldrh	r5, [r5, #48]
	tst	r5, #32
	str	r2, [r4, #44]
	bne	.L168
	b	.L172
.L220:
	ldr	r2, .L223+32
	ldrh	r2, [r2]
	ands	r2, r2, #1
	bne	.L156
	mov	r1, #67108864
	mov	r0, #4608
	strh	r0, [r1]	@ movhi
	str	r2, [r3]
	ldrh	ip, [r5]
	b	.L156
.L222:
	ldr	r2, .L223+64
	ldr	r2, [r2]
	add	r7, r3, #1
	sub	r2, r2, #160
	add	lr, lr, #1
	cmp	r7, r2
	str	lr, [r4]
	bge	.L162
	ldr	r2, [r4, #8]
	cmp	r2, #79
	lslgt	r7, r7, #16
	lsrgt	r7, r7, #16
	movgt	r3, r7
	strhgt	r7, [r5]	@ movhi
	b	.L162
.L175:
	mov	lr, r6
	b	.L160
.L224:
	.align	2
.L223:
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
	ldr	ip, .L233
	str	lr, [sp, #-4]!
	ldr	r3, .L233+4
	ldrh	lr, [ip, #8]
	sub	ip, ip, #1488
	b	.L228
.L230:
	tst	r2, #31
	movne	r3, r1
	addeq	r3, r3, #7
.L228:
	add	r1, r3, #1
	sub	r2, r3, #440
	lsl	r0, r3, #1
	cmp	r1, #604
	strh	lr, [ip, r0]	@ movhi
	sub	r2, r2, #3
	blt	.L230
	ldr	lr, [sp], #4
	bx	lr
.L234:
	.align	2
.L233:
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
	ldr	r1, .L237
	ldrh	r3, [r1]
	orr	r3, r3, #2160
	ldrh	r2, [r0, #4]
	orr	r3, r3, #9
	strh	r3, [r1]	@ movhi
	ldr	ip, .L237+4
	ldr	r3, .L237+8
	orr	r2, r2, #8
	strh	lr, [r1, #8]	@ movhi
	strh	r2, [r0, #4]	@ movhi
	ldr	lr, [sp], #4
	str	r3, [ip, #4092]
	bx	lr
.L238:
	.align	2
.L237:
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
	ldr	r3, .L248
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r1, #256
	strh	r2, [r3, #2]	@ movhi
	strh	r0, [r3]	@ movhi
	beq	.L240
	bgt	.L241
	cmp	r1, #1
	beq	.L242
	cmp	r1, #64
	ldrheq	r2, [r3, #2]
	orreq	r2, r2, #1
	strheq	r2, [r3, #2]	@ movhi
.L244:
	ldr	r3, .L248
	mov	r2, r3
	ldrh	r1, [r3, #2]
	orr	r1, r1, #128
	strh	r1, [r3, #2]	@ movhi
	ldr	r1, .L248+4
.L246:
	ldrh	r3, [r2]
	cmp	r3, r1
	bls	.L246
	mov	r3, #0
	strh	r3, [r2, #2]	@ movhi
	bx	lr
.L241:
	cmp	r1, #1024
	ldrheq	r2, [r3, #2]
	orreq	r2, r2, #3
	strheq	r2, [r3, #2]	@ movhi
	b	.L244
.L240:
	ldrh	r2, [r3, #2]
	orr	r2, r2, #2
	strh	r2, [r3, #2]	@ movhi
	b	.L244
.L242:
	ldrh	r2, [r3, #2]
	strh	r2, [r3, #2]	@ movhi
	b	.L244
.L249:
	.align	2
.L248:
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
