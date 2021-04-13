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
	.global	initGame
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	str	lr, [sp, #-4]!
	mov	ip, #31
	mov	lr, #20
	mov	r0, #3
	mov	r1, #1
	ldr	r2, .L4
	strb	r3, [r2]
	ldr	r2, .L4+4
	str	r3, [r2]
	ldr	r2, .L4+8
	str	r3, [r2]
	ldr	r2, .L4+12
	str	r3, [r2]
	ldr	r2, .L4+16
	str	r3, [r2]
	ldr	r2, .L4+20
	str	lr, [r2, #16]
	str	r3, [r2, #24]
	str	r3, [r2, #28]
	str	r3, [r2, #32]
	str	r3, [r2, #36]
	str	ip, [r2, #20]
	str	r0, [r2, #40]
	str	r1, [r2, #44]
	ldr	lr, [sp], #4
	bx	lr
.L5:
	.align	2
.L4:
	.word	keyFound
	.word	spriteCollisionBool
	.word	messageActiveBool
	.word	nextRoomBool
	.word	mode
	.word	protag
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
	ldr	r3, .L8
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
.L9:
	.align	2
.L8:
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
	ldr	r3, .L18
	ldr	ip, [r3]
	cmp	ip, #0
	bxle	lr
	mov	r0, #0
	ldr	r1, .L18+4
	ldr	r2, .L18+8
	ldr	r3, .L18+12
	push	{r4, lr}
	ldr	r3, [r3]
	ldrh	r4, [r1]
	ldrh	lr, [r2]
.L12:
	ldr	r1, [r3, #4]
	ldr	r2, [r3]
	add	r0, r0, #1
	sub	r1, r1, r4
	sub	r2, r2, lr
	cmp	r0, ip
	str	r1, [r3, #12]
	str	r2, [r3, #8]
	add	r3, r3, #52
	bne	.L12
	pop	{r4, lr}
	bx	lr
.L19:
	.align	2
.L18:
	.word	currSpriteArrCount
	.word	hOff
	.word	vOff
	.word	currSpriteArr
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
	ldr	r3, .L28
	push	{r4, r5, r6, r7, lr}
	ldr	r4, [r3]
	cmp	r4, #0
	ble	.L20
	mov	ip, #0
	mov	r5, #512
	ldr	r3, .L28+4
	ldr	r1, .L28+8
	ldr	r3, [r3]
.L24:
	ldr	r2, [r3, #40]
	cmp	r2, #1
	strheq	r5, [r1, #8]	@ movhi
	add	ip, ip, #1
	beq	.L23
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
.L23:
	cmp	ip, r4
	add	r3, r3, #52
	add	r1, r1, #8
	bne	.L24
.L20:
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L29:
	.align	2
.L28:
	.word	currSpriteArrCount
	.word	currSpriteArr
	.word	shadowOAM
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
	ldr	r1, .L31
	ldr	r3, [r1, #44]
	ldr	r2, [r1, #12]
	orr	r2, r2, r3, lsl #12
	mvn	r2, r2, lsl #17
	mvn	r2, r2, lsr #17
	ldr	ip, [r1, #36]
	ldr	r3, [r1, #28]
	ldr	r0, [r1, #8]
	add	r3, r3, ip, lsl #4
	ldr	r1, .L31+4
	lsl	r3, r3, #3
	orr	r0, r0, #8192
	orr	r3, r3, #2048
	strh	r2, [r1, #2]	@ movhi
	strh	r0, [r1]	@ movhi
	strh	r3, [r1, #4]	@ movhi
	bx	lr
.L32:
	.align	2
.L31:
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
	ldr	r3, .L36
	ldr	r3, [r3]
	mla	r1, r3, r1, r0
	ldr	r3, .L36+4
	ldr	r3, [r3]
	lsl	r1, r1, #1
	ldrh	r0, [r3, r1]
	bx	lr
.L37:
	.align	2
.L36:
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
	ldr	r3, .L56
	ldr	r2, [r3, #28]
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	r4, .L56+4
	cmp	r2, #1
	str	r1, [r4]
	beq	.L39
	cmp	r2, #2
	beq	.L40
	cmp	r2, r1
	beq	.L55
.L38:
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L39:
	ldr	r1, [r3, #20]
	ldr	r0, .L56+8
	ldr	r2, [r3]
	ldr	ip, [r0]
	add	r1, r1, r1, lsr #31
	add	r2, r2, r1, asr #1
	mul	r1, ip, r2
	ldr	lr, [r3, #44]
	cmp	lr, #1
	ldr	r2, [r3, #4]
	ldrne	r3, [r3, #16]
	ldr	r0, .L56+12
	addne	r3, r2, r3
	ldr	r0, [r0]
	addeq	r2, r2, r1
	addne	r3, r3, r1
	lsleq	r2, r2, #1
	lslne	r3, r3, #1
	ldrheq	r0, [r0, r2]
	ldrhne	r0, [r0, r3]
.L43:
	cmp	r0, #0
	beq	.L38
	ldr	r3, .L56+16
	ldr	ip, [r3]
	cmp	ip, #0
	ble	.L38
	mov	lr, #0
	mov	r5, #1
	mov	r7, lr
	mov	r2, lr
	mov	r8, lr
	ldr	r9, .L56+20
	ldr	r3, .L56+24
	ldr	r6, [r9]
	ldr	r3, [r3]
.L49:
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
	bne	.L49
	cmp	lr, #0
	strne	r7, [r4]
	strne	r6, [r9]
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L55:
	ldr	r1, [r3, #16]
	ldr	r0, .L56+8
	ldr	r2, [r3]
	ldr	ip, [r3, #20]
	ldr	r0, [r0]
	add	r1, r1, r1, lsr #31
	asr	r1, r1, #1
	add	r2, r2, ip
	mla	r2, r0, r2, r1
	ldr	r3, [r3, #4]
	ldr	r1, .L56+12
	add	r3, r2, r3
	ldr	r2, [r1]
	lsl	r3, r3, #1
	ldrh	r0, [r2, r3]
	b	.L43
.L40:
	ldr	r1, .L56+8
	ldr	r2, [r3]
	ldr	r1, [r1]
	mul	r2, r1, r2
	ldr	r1, [r3, #16]
	ldr	r0, [r3, #4]
	add	r3, r1, r1, lsr #31
	ldr	r1, .L56+12
	add	r3, r2, r3, asr #1
	add	r3, r3, r0
	ldr	r2, [r1]
	lsl	r3, r3, #1
	ldrh	r0, [r2, r3]
	b	.L43
.L57:
	.align	2
.L56:
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
	ldr	r3, .L68
	ldr	r3, [r3]
	cmp	r3, #3
	beq	.L66
	cmp	r3, #5
	beq	.L67
	cmp	r3, #6
	bxne	lr
	ldr	r1, .L68+4
	ldr	r0, .L68+8
	ldr	r2, [r1, #16]
	ldr	r3, [r1]
	ldr	ip, [r1, #20]
	ldr	r0, [r0]
	add	r2, r2, r2, lsr #31
	asr	r2, r2, #1
	add	r3, r3, ip
	mla	r3, r0, r3, r2
	ldr	r1, [r1, #4]
	ldr	r2, .L68+12
	add	r3, r3, r1
	ldr	r2, [r2]
	lsl	r3, r3, #1
	ldrh	r2, [r2, r3]
	ldr	r3, .L68+16
	cmp	r2, r3
	bxne	lr
.L62:
	mov	r2, #1
	ldr	r3, .L68+20
	str	r2, [r3]
	bx	lr
.L67:
	ldr	r3, .L68+4
	ldr	ip, .L68+8
	ldr	r2, [r3, #16]
	ldr	r0, [r3, #4]
	ldr	r1, [r3]
	ldr	r3, [r3, #20]
	ldr	ip, [ip]
	add	r2, r2, r2, lsr #31
	add	r2, r0, r2, asr #1
	add	r3, r1, r3
	mla	r3, ip, r3, r2
	ldr	r2, .L68+12
	ldr	r2, [r2]
	lsl	r3, r3, #1
	ldrh	r3, [r2, r3]
	cmp	r3, #996
	beq	.L62
	mla	r1, ip, r1, r0
	lsl	r1, r1, #1
	ldrh	r3, [r2, r1]
	cmp	r3, #31
	moveq	r2, #2
	ldreq	r3, .L68+20
	streq	r2, [r3]
	bx	lr
.L66:
	ldr	r2, .L68+4
	ldr	r1, .L68+8
	ldr	r3, [r2]
	ldr	r1, [r1]
	ldr	r2, [r2, #4]
	mla	r3, r1, r3, r2
	ldr	r2, .L68+12
	ldr	r2, [r2]
	lsl	r3, r3, #1
	ldrh	r2, [r2, r3]
	ldr	r3, .L68+24
	cmp	r2, r3
	bxne	lr
	b	.L62
.L69:
	.align	2
.L68:
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
	ldr	r0, .L85
	push	{r4, lr}
	ldr	r3, .L85+4
	ldrh	lr, [r0, #8]
	sub	r0, r0, #1488
	b	.L71
.L73:
	tst	r2, #31
	movne	r3, r1
	addeq	r3, r3, #7
.L71:
	add	r1, r3, #1
	sub	r2, r3, #440
	lsl	ip, r3, #1
	cmp	r1, #604
	strh	lr, [r0, ip]	@ movhi
	sub	r2, r2, #3
	blt	.L73
	ldr	r3, .L85+8
	ldr	r3, [r3]
	ldr	ip, [r3, #48]
	ldrb	r3, [ip]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L74
	ldr	r1, .L85+4
	ldr	lr, .L85+12
	b	.L75
.L78:
	tst	r2, #31
	addne	r1, r1, #1
	addeq	r1, r1, #7
.L75:
	sub	r3, r3, #32
	ldr	r3, [lr, r3, lsl #2]
	lsl	r3, r3, #1
	ldrh	r2, [r0, r3]
	lsl	r3, r1, #1
	strh	r2, [r0, r3]	@ movhi
	ldrb	r3, [ip, #1]!	@ zero_extendqisi2
	sub	r2, r1, #440
	cmp	r3, #0
	sub	r2, r2, #3
	bne	.L78
.L74:
	ldr	r4, .L85+16
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L85+20
	ldr	r1, .L85+24
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L86:
	.align	2
.L85:
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
	ldr	r3, .L96
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L88
	ldr	r3, .L96+4
	ldr	r2, [r3]
	ldr	r3, .L96+8
	cmp	r2, #6
	ldr	r3, [r3]
	beq	.L95
.L89:
	ldr	r2, .L96+12
	cmp	r3, r2
	moveq	r2, #1
	ldreq	r3, .L96+16
	push	{r4, lr}
	strbeq	r2, [r3]
	mov	r2, #1
	ldr	r3, .L96+20
	str	r2, [r3]
	bl	printText
	mov	r3, #67108864
	mov	r2, #4864
	pop	{r4, lr}
	strh	r2, [r3]	@ movhi
	bx	lr
.L88:
	mov	r3, #67108864
	mov	r2, #4608
	strh	r2, [r3]	@ movhi
	bx	lr
.L95:
	ldr	r2, .L96+24
	cmp	r3, r2
	bne	.L89
	ldr	r2, .L96+28
	ldrb	r2, [r2]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L89
	mov	r2, #2
	ldr	r3, .L96+32
	str	r2, [r3]
	bx	lr
.L97:
	.align	2
.L96:
	.word	spriteCollisionBool
	.word	state
	.word	activeSprite
	.word	kitchenSpritesArr+52
	.word	keyFound
	.word	messageActiveBool
	.word	bedroomSpritesArr+156
	.word	openSafeBool
	.word	nextRoomBool
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
	ldr	r4, .L164
	ldr	r3, [r4, #28]
	cmp	r3, #3
	movne	r2, #3
	ldr	r5, [r4, #24]
	strne	r3, [r4, #32]
	ldr	r3, .L164+4
	strne	r2, [r4, #28]
	smull	r1, r2, r3, r5
	asr	r3, r5, #31
	rsb	r3, r3, r2, asr #2
	add	r3, r3, r3, lsl #2
	cmp	r5, r3, lsl #1
	bne	.L100
	ldr	r0, [r4, #36]
	ldr	r3, .L164+8
	ldr	r1, [r4, #40]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #36]
.L100:
	ldr	r3, .L164+12
	ldr	r6, .L164+16
	ldr	r2, [r3]
	ldrh	ip, [r6]
	cmp	r2, #0
	and	r2, ip, #1
	beq	.L101
	cmp	r2, #0
	beq	.L102
	ldr	r2, .L164+20
	ldrh	r2, [r2]
	ands	r2, r2, #1
	bne	.L102
	mov	r1, #67108864
	mov	r0, #4608
	strh	r0, [r1]	@ movhi
	str	r2, [r3]
	ldrh	ip, [r6]
.L102:
	ldr	r1, [r4, #28]
	ldr	r2, .L164+24
	ldr	r3, .L164+28
	cmp	r1, #3
	ldrh	r2, [r2]
	ldrh	r3, [r3]
	ldr	r0, [r4, #4]
	ldr	lr, [r4]
	bne	.L113
.L117:
	mov	r5, #0
	ldr	r1, [r4, #32]
	str	r5, [r4, #36]
	str	r1, [r4, #28]
	b	.L115
.L106:
	ldrh	r5, [r1, #48]
	tst	r5, #16
	beq	.L108
	ldr	r5, [r4, #28]
	cmp	r5, #3
	bne	.L109
	ldrh	r1, [r1, #48]
	tst	r1, #32
	bne	.L117
	cmp	r0, #1
	ldr	r5, [r4, #24]
	ble	.L114
.L163:
	ldr	r1, .L164+32
	ldr	r9, [r1]
	add	r8, r0, #8
	mla	r1, lr, r9, r8
	ldr	r7, .L164+36
	ldr	r7, [r7]
	lsl	r1, r1, #1
	ldrh	r1, [r7, r1]
	cmp	r1, #0
	beq	.L114
	ldr	r1, [r4, #20]
	add	r1, lr, r1
	sub	r1, r1, #1
	mla	r1, r9, r1, r8
	lsl	r1, r1, #1
	ldrh	r1, [r7, r1]
	cmp	r1, #0
	beq	.L114
	sub	r0, r0, #1
	cmp	r2, #1
	str	r0, [r4, #4]
	bls	.L114
	ldr	r1, [r4, #12]
	cmp	r1, #120
	suble	r2, r2, #1
	lslle	r2, r2, #16
	lsrle	r2, r2, #16
	strhle	r2, [r6]	@ movhi
.L114:
	mov	r1, #1
	str	r1, [r4, #28]
	str	r1, [r4, #44]
.L113:
	add	r5, r5, #1
	str	r5, [r4, #24]
.L115:
	sub	r2, r0, r2
	sub	r3, lr, r3
	tst	ip, #8
	str	r2, [r4, #12]
	str	r3, [r4, #8]
	beq	.L98
	ldr	r3, .L164+20
	ldrh	r3, [r3]
	tst	r3, #8
	moveq	r2, #4
	ldreq	r3, .L164+40
	streq	r2, [r3]
.L98:
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L101:
	cmp	r2, #0
	beq	.L103
	ldr	r3, .L164+20
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L161
.L103:
	ldr	r3, .L164+44
	ldrh	r3, [r3, #48]
	ldr	r5, .L164+28
	tst	r3, #64
	ldr	r0, [r4, #4]
	ldrh	r3, [r5]
	ldr	lr, [r4]
	bne	.L104
	ldr	r2, .L164+32
	ldr	r2, [r2]
	sub	r6, lr, #1
	mul	r2, r6, r2
	ldr	r7, .L164+36
	add	r1, r2, r0
	ldr	r7, [r7]
	lsl	r1, r1, #1
	ldrh	r1, [r7, r1]
	cmp	r1, #0
	bne	.L162
.L105:
	mov	r2, #2
	str	r2, [r4, #28]
.L104:
	ldr	r1, .L164+44
	ldrh	r2, [r1, #48]
	ldr	r6, .L164+24
	tst	r2, #128
	ldrh	r2, [r6]
	bne	.L106
	ldr	r1, [r4, #20]
	ldr	r7, .L164+32
	add	r1, lr, r1
	ldr	r7, [r7]
	add	r1, r1, #1
	mul	r1, r7, r1
	ldr	r8, .L164+36
	add	r7, r1, r0
	ldr	r8, [r8]
	lsl	r7, r7, #1
	ldrh	r7, [r8, r7]
	cmp	r7, #0
	beq	.L107
	ldr	r7, [r4, #16]
	add	r1, r1, r7
	add	r1, r1, r0
	lsl	r1, r1, #1
	ldrh	r1, [r8, r1]
	cmp	r1, #0
	beq	.L107
	ldr	r1, .L164+48
	ldr	r1, [r1]
	add	r7, r3, #1
	sub	r1, r1, #160
	add	lr, lr, #1
	cmp	r7, r1
	str	lr, [r4]
	bge	.L107
	ldr	r1, [r4, #8]
	cmp	r1, #79
	lslgt	r7, r7, #16
	lsrgt	r7, r7, #16
	movgt	r3, r7
	strhgt	r7, [r5]	@ movhi
.L107:
	mov	r1, #0
	ldr	r5, .L164+44
	ldrh	r5, [r5, #48]
	tst	r5, #16
	str	r1, [r4, #28]
	bne	.L109
.L108:
	ldr	r5, .L164+52
	ldr	r1, [r4, #16]
	ldr	r7, [r5]
	add	r1, r0, r1
	cmp	r1, r7
	bge	.L111
	ldr	r5, .L164+32
	ldr	r9, [r5]
	add	r1, r1, #1
	mla	r5, lr, r9, r1
	ldr	r8, .L164+36
	ldr	r8, [r8]
	lsl	r5, r5, #1
	ldrh	r5, [r8, r5]
	cmp	r5, #0
	beq	.L111
	ldr	r5, [r4, #20]
	add	r5, lr, r5
	sub	r5, r5, #1
	mla	r1, r9, r5, r1
	lsl	r1, r1, #1
	ldrh	r1, [r8, r1]
	cmp	r1, #0
	beq	.L111
	sub	r7, r7, #240
	add	r1, r2, #1
	add	r0, r0, #1
	cmp	r1, r7
	str	r0, [r4, #4]
	bge	.L111
	ldr	r5, [r4, #12]
	cmp	r5, #119
	lslgt	r2, r1, #16
	lsrgt	r2, r2, #16
	strhgt	r2, [r6]	@ movhi
.L111:
	mov	r1, #1
	str	r1, [r4, #28]
.L109:
	mov	r1, #0
	ldr	r5, .L164+44
	ldrh	r5, [r5, #48]
	tst	r5, #32
	str	r1, [r4, #44]
	ldr	r5, [r4, #24]
	bne	.L113
	cmp	r0, #1
	bgt	.L163
	b	.L114
.L162:
	ldr	r1, [r4, #16]
	add	r2, r2, r1
	add	r2, r2, r0
	lsl	r2, r2, #1
	ldrh	r2, [r7, r2]
	cmp	r2, #0
	beq	.L105
	cmp	r3, #1
	str	r6, [r4]
	bls	.L120
	ldr	r2, [r4, #8]
	cmp	r2, #80
	bgt	.L120
	sub	r3, r3, #1
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	mov	lr, r6
	strh	r3, [r5]	@ movhi
	b	.L105
.L161:
	bl	checkMoreInfo
	ldrh	ip, [r6]
	b	.L103
.L120:
	mov	lr, r6
	b	.L105
.L165:
	.align	2
.L164:
	.word	protag
	.word	1717986919
	.word	__aeabi_idivmod
	.word	messageActiveBool
	.word	oldButtons
	.word	buttons
	.word	hOff
	.word	vOff
	.word	totalMapWidth
	.word	currCollisionMap
	.word	mode
	.word	67109120
	.word	visMapHeight
	.word	visMapWidth
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
	ldr	r3, .L171
	ldr	ip, [r3]
	cmp	ip, #0
	ble	.L167
	mov	r0, #0
	ldr	r1, .L171+4
	ldr	r2, .L171+8
	ldr	r3, .L171+12
	ldrh	r4, [r1]
	ldrh	lr, [r2]
	ldr	r3, [r3]
.L168:
	ldr	r1, [r3, #4]
	ldr	r2, [r3]
	add	r0, r0, #1
	sub	r1, r1, r4
	sub	r2, r2, lr
	cmp	r0, ip
	str	r1, [r3, #12]
	str	r2, [r3, #8]
	add	r3, r3, #52
	bne	.L168
.L167:
	pop	{r4, lr}
	b	checkSpriteCollision
.L172:
	.align	2
.L171:
	.word	currSpriteArrCount
	.word	hOff
	.word	vOff
	.word	currSpriteArr
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
	ldr	ip, .L179
	str	lr, [sp, #-4]!
	ldr	r3, .L179+4
	ldrh	lr, [ip, #8]
	sub	ip, ip, #1488
	b	.L174
.L176:
	tst	r2, #31
	movne	r3, r1
	addeq	r3, r3, #7
.L174:
	add	r1, r3, #1
	sub	r2, r3, #440
	lsl	r0, r3, #1
	cmp	r1, #604
	strh	lr, [ip, r0]	@ movhi
	sub	r2, r2, #3
	blt	.L176
	ldr	lr, [sp], #4
	bx	lr
.L180:
	.align	2
.L179:
	.word	messagescreenMap+1488
	.word	418
	.size	clearMessage, .-clearMessage
	.comm	mode,4,4
	.comm	totalMapHeight,4,4
	.comm	visMapHeight,4,4
	.comm	totalMapWidth,4,4
	.comm	visMapWidth,4,4
	.comm	vOff,2,2
	.comm	hOff,2,2
	.comm	priorVoff,2,2
	.comm	priorHoff,2,2
	.comm	keyFound,1,1
	.comm	nextRoomBool,4,4
	.comm	messageActiveBool,4,4
	.comm	spriteCollisionBool,4,4
	.comm	currMessageMap,4,4
	.comm	currCollisionMap,4,4
	.comm	activeSprite,4,4
	.comm	currSpriteArrCount,4,4
	.comm	currSpriteArr,4,4
	.comm	protag,48,4
	.comm	state,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
