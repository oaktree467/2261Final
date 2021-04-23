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
	ldr	r3, .L39
	ldrh	r1, [r3, #2]
	tst	r1, #32
	push	{r4, lr}
	strh	r2, [r3, #8]	@ movhi
	beq	.L3
	ldr	r3, .L39+4
	ldr	r3, [r3]
	cmp	r3, #8
	cmpne	r3, #2
	bne	.L4
	ldr	ip, .L39+8
	ldr	r0, .L39+12
	ldr	r1, [ip]
	ldr	r2, [r0]
	add	r1, r1, #1
	add	r2, r2, #1
	str	r1, [ip]
	str	r2, [r0]
.L4:
	cmp	r3, #3
	beq	.L35
	cmp	r3, #9
	bne	.L3
	ldr	r3, .L39+16
	ldr	r3, [r3]
	ldr	r2, [r3, #132]
	cmp	r2, #0
	ldr	r2, [r3, #184]
	moveq	r1, #2
	movne	r1, #0
	cmp	r2, #24
	add	r2, r2, #4
	moveq	r2, #16
	str	r1, [r3, #132]
	str	r2, [r3, #184]
.L3:
	ldr	r3, .L39
	ldrh	r3, [r3, #2]
	tst	r3, #2048
	beq	.L10
	mov	r0, #0
	ldr	r3, .L39+20
	mov	r2, r3
	ldr	r1, .L39+24
	strh	r0, [r3, #14]	@ movhi
	strh	r1, [r3, #12]	@ movhi
	ldrh	r1, [r3, #14]
	orr	r1, r1, #1
	strh	r1, [r3, #14]	@ movhi
	ldrh	r1, [r3, #14]
	orr	r1, r1, #128
	strh	r1, [r3, #14]	@ movhi
	ldr	r1, .L39+28
.L11:
	ldrh	r3, [r2, #12]
	cmp	r3, r1
	bls	.L11
	mov	r3, #0
	strh	r3, [r2, #14]	@ movhi
.L10:
	ldr	r3, .L39
	ldrh	r3, [r3, #2]
	tst	r3, #1
	beq	.L12
	ldr	r3, .L39+32
	ldr	r2, [r3, #12]
	cmp	r2, #0
	beq	.L14
	ldr	r2, [r3, #28]
	ldr	r1, [r3, #20]
	add	r2, r2, #1
	cmp	r2, r1
	str	r2, [r3, #28]
	ble	.L14
	ldr	r2, [r3, #16]
	cmp	r2, #0
	bne	.L36
	ldr	r0, .L39+36
	ldr	r1, .L39+20
	ldr	r0, [r0]
	str	r2, [r3, #12]
	str	r2, [r0, #20]
	strh	r2, [r1, #2]	@ movhi
.L14:
	ldr	r3, .L39+40
	ldr	r2, [r3, #12]
	cmp	r2, #0
	bne	.L37
.L18:
	mov	r2, #1
	ldr	r3, .L39
	strh	r2, [r3, #2]	@ movhi
.L12:
	mov	r1, #1
	ldr	r3, .L39
	ldrh	r2, [r3, #2]
	strh	r1, [r3, #8]	@ movhi
	strh	r2, [r3, #2]	@ movhi
	pop	{r4, lr}
	bx	lr
.L37:
	ldr	r2, [r3, #28]
	ldr	r1, [r3, #20]
	add	r2, r2, #1
	cmp	r2, r1
	str	r2, [r3, #28]
	ble	.L18
	ldr	r2, [r3, #16]
	cmp	r2, #0
	bne	.L38
	ldr	r0, .L39+36
	ldr	r1, .L39+20
	ldr	r0, [r0]
	str	r2, [r3, #12]
	str	r2, [r0, #32]
	strh	r2, [r1, #6]	@ movhi
	b	.L18
.L35:
	mov	ip, #1
	ldr	r0, .L39+44
	ldr	r3, [r0]
	ldr	r1, .L39+48
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
.L36:
	ldm	r3, {r0, r1}
	ldr	r3, .L39+52
	mov	lr, pc
	bx	r3
	b	.L14
.L38:
	ldm	r3, {r0, r1}
	ldr	r3, .L39+56
	mov	lr, pc
	bx	r3
	b	.L18
.L40:
	.align	2
.L39:
	.word	67109376
	.word	state
	.word	timerI
	.word	timerJ
	.word	currSpriteArr
	.word	67109120
	.word	30000
	.word	65499
	.word	soundA
	.word	dma
	.word	soundB
	.word	currRing
	.word	phoneRingSpritesArr
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
	mov	r1, #1
	mov	ip, #67108864
	push	{r4, r5, r6, lr}
	mov	lr, #3
	mov	r5, #20
	mov	r4, #31
	ldr	r2, .L43
	ldr	r0, .L43+4
	strb	r3, [r2]
	strb	r3, [r0]
	ldr	r2, .L43+8
	ldr	r0, .L43+12
	strb	r3, [r2]
	strb	r3, [r0]
	ldr	r2, .L43+16
	ldr	r0, .L43+20
	strb	r3, [r2]
	str	r3, [r0]
	ldr	r2, .L43+24
	ldr	r0, .L43+28
	str	r3, [r2]
	str	r3, [r0]
	ldr	r2, .L43+32
	ldr	r0, .L43+36
	strb	r3, [r2]
	strb	r3, [r0]
	ldr	r2, .L43+40
	ldr	r0, .L43+44
	strb	r3, [r2]
	strb	r3, [r0]
	ldr	r2, .L43+48
	ldr	r0, .L43+52
	strb	r3, [r2]
	strb	r3, [r0]
	ldr	r2, .L43+56
	ldr	r0, .L43+60
	str	r1, [r2]
	ldrh	r2, [r0]
	orr	r2, r2, #2160
	orr	r2, r2, #9
	strh	r1, [r0, #8]	@ movhi
	strh	r2, [r0]	@ movhi
	ldrh	r0, [ip, #4]
	ldr	r2, .L43+64
	orr	r0, r0, #8
	strh	r0, [ip, #4]	@ movhi
	str	r1, [r2, #44]
	ldr	r0, .L43+68
	ldr	r1, .L43+72
	str	r1, [r0, #4092]
	ldr	r1, .L43+76
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
.L44:
	.align	2
.L43:
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
	.word	marsEmailBool
	.word	allEmailsBool
	.word	livingRoomOutroBool
	.word	activateDoorBool
	.word	currSong
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
	ldr	r3, .L47
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
.L48:
	.align	2
.L47:
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
	ldr	r3, .L59
	ldr	ip, [r3]
	cmp	ip, #0
	push	{r4, lr}
	ble	.L50
	mov	r0, #0
	ldr	r1, .L59+4
	ldr	r2, .L59+8
	ldr	r3, .L59+12
	ldrh	r4, [r1]
	ldrh	lr, [r2]
	ldr	r3, [r3]
.L51:
	ldr	r1, [r3, #4]
	ldr	r2, [r3]
	add	r0, r0, #1
	sub	r1, r1, r4
	sub	r2, r2, lr
	cmp	r0, ip
	str	r1, [r3, #12]
	str	r2, [r3, #8]
	add	r3, r3, #52
	bne	.L51
.L50:
	ldr	r3, .L59+16
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L58
	pop	{r4, lr}
	bx	lr
.L58:
	ldr	r3, .L59+20
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L60:
	.align	2
.L59:
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
	ldr	r3, .L72
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r4, [r3]
	cmp	r4, #0
	ble	.L68
	mov	ip, #0
	mov	r5, #512
	ldr	r3, .L72+4
	ldr	r1, .L72+8
	ldr	r3, [r3]
.L67:
	ldr	r2, [r3, #40]
	cmp	r2, #1
	strheq	r5, [r1, #8]	@ movhi
	add	ip, ip, #1
	beq	.L66
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
.L66:
	cmp	ip, r4
	add	r3, r3, #52
	add	r1, r1, #8
	bne	.L67
.L68:
	ldr	r3, .L72+12
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L71
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L71:
	ldr	r3, .L72+16
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L73:
	.align	2
.L72:
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
	ldr	r1, .L75
	ldr	r3, [r1, #44]
	ldr	r2, [r1, #12]
	orr	r2, r2, r3, lsl #12
	mvn	r2, r2, lsl #17
	mvn	r2, r2, lsr #17
	ldr	ip, [r1, #36]
	ldr	r3, [r1, #28]
	ldr	r0, [r1, #8]
	add	r3, r3, ip, lsl #4
	ldr	r1, .L75+4
	lsl	r3, r3, #3
	orr	r0, r0, #8192
	orr	r3, r3, #2048
	strh	r2, [r1, #2]	@ movhi
	strh	r0, [r1]	@ movhi
	strh	r3, [r1, #4]	@ movhi
	bx	lr
.L76:
	.align	2
.L75:
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
	ldr	r3, .L80
	ldr	r3, [r3]
	mla	r1, r3, r1, r0
	ldr	r3, .L80+4
	ldr	r3, [r3]
	lsl	r1, r1, #1
	ldrh	r0, [r3, r1]
	bx	lr
.L81:
	.align	2
.L80:
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
	ldr	r3, .L100
	ldr	r2, [r3, #28]
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	r4, .L100+4
	cmp	r2, #1
	str	r1, [r4]
	beq	.L83
	cmp	r2, #2
	beq	.L84
	cmp	r2, r1
	beq	.L99
.L82:
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L83:
	ldr	r1, [r3, #20]
	ldr	r0, .L100+8
	ldr	r2, [r3]
	ldr	ip, [r0]
	add	r1, r1, r1, lsr #31
	add	r2, r2, r1, asr #1
	mul	r1, ip, r2
	ldr	lr, [r3, #44]
	cmp	lr, #1
	ldr	r2, [r3, #4]
	ldrne	r3, [r3, #16]
	ldr	r0, .L100+12
	addne	r3, r2, r3
	ldr	r0, [r0]
	addeq	r2, r2, r1
	addne	r3, r3, r1
	lsleq	r2, r2, #1
	lslne	r3, r3, #1
	ldrheq	r0, [r0, r2]
	ldrhne	r0, [r0, r3]
.L87:
	cmp	r0, #0
	beq	.L82
	ldr	r3, .L100+16
	ldr	ip, [r3]
	cmp	ip, #0
	ble	.L82
	mov	lr, #0
	mov	r5, #1
	mov	r7, lr
	mov	r2, lr
	mov	r8, lr
	ldr	r9, .L100+20
	ldr	r3, .L100+24
	ldr	r6, [r9]
	ldr	r3, [r3]
.L93:
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
	bne	.L93
	cmp	lr, #0
	strne	r7, [r4]
	strne	r6, [r9]
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L99:
	ldr	r1, [r3, #16]
	ldr	r0, .L100+8
	ldr	r2, [r3]
	ldr	ip, [r3, #20]
	ldr	r0, [r0]
	add	r1, r1, r1, lsr #31
	asr	r1, r1, #1
	add	r2, r2, ip
	mla	r2, r0, r2, r1
	ldr	r3, [r3, #4]
	ldr	r1, .L100+12
	add	r3, r2, r3
	ldr	r2, [r1]
	lsl	r3, r3, #1
	ldrh	r0, [r2, r3]
	b	.L87
.L84:
	ldr	r1, .L100+8
	ldr	r2, [r3]
	ldr	r1, [r1]
	mul	r2, r1, r2
	ldr	r1, [r3, #16]
	ldr	r0, [r3, #4]
	add	r3, r1, r1, lsr #31
	ldr	r1, .L100+12
	add	r3, r2, r3, asr #1
	add	r3, r3, r0
	ldr	r2, [r1]
	lsl	r3, r3, #1
	ldrh	r0, [r2, r3]
	b	.L87
.L101:
	.align	2
.L100:
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
	ldr	r3, .L122
	ldr	r3, [r3]
	cmp	r3, #3
	beq	.L119
	cmp	r3, #5
	beq	.L120
	cmp	r3, #6
	bxne	lr
	ldr	r1, .L122+4
	ldr	r0, .L122+8
	ldr	r2, [r1, #16]
	ldr	r3, [r1]
	ldr	ip, [r1, #20]
	ldr	r0, [r0]
	add	r2, r2, r2, lsr #31
	asr	r2, r2, #1
	add	r3, r3, ip
	mla	r3, r0, r3, r2
	ldr	r1, [r1, #4]
	ldr	r2, .L122+12
	add	r3, r3, r1
	ldr	r2, [r2]
	lsl	r3, r3, #1
	ldrh	r2, [r2, r3]
	ldr	r3, .L122+16
	cmp	r2, r3
	bxne	lr
.L112:
	mov	r2, #1
	ldr	r3, .L122+20
	str	r2, [r3]
	bx	lr
.L120:
	ldr	r3, .L122+4
	ldr	ip, .L122+8
	ldr	r2, [r3, #16]
	ldr	r0, [r3, #4]
	ldr	r1, [r3]
	ldr	r3, [r3, #20]
	ldr	ip, [ip]
	add	r2, r2, r2, lsr #31
	add	r2, r0, r2, asr #1
	add	r3, r1, r3
	mla	r3, ip, r3, r2
	ldr	r2, .L122+12
	ldr	r2, [r2]
	lsl	r3, r3, #1
	ldrh	r3, [r2, r3]
	cmp	r3, #996
	beq	.L112
	mla	r1, ip, r1, r0
	lsl	r1, r1, #1
	ldrh	r3, [r2, r1]
	cmp	r3, #31
	moveq	r2, #2
	ldreq	r3, .L122+20
	streq	r2, [r3]
	bx	lr
.L119:
	ldr	r2, .L122+8
	ldr	r1, .L122+4
	push	{r4, lr}
	ldm	r1, {r3, ip}
	ldr	lr, [r2]
	mla	r2, lr, r3, ip
	ldr	r0, .L122+12
	ldr	r0, [r0]
	lsl	r2, r2, #1
	ldrh	r2, [r0, r2]
	ldr	r4, .L122+24
	cmp	r2, r4
	beq	.L121
	ldr	r4, .L122+28
	cmp	r2, r4
	bne	.L105
.L108:
	ldr	r3, .L122+32
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	movne	r2, #1
	ldrne	r3, .L122+36
	strbne	r2, [r3]
.L102:
	pop	{r4, lr}
	bx	lr
.L121:
	mov	r4, #1
	ldr	r2, .L122+20
	str	r4, [r2]
.L105:
	ldr	r2, [r1, #20]
	add	r3, r3, r2
	mla	r3, lr, r3, ip
	lsl	r3, r3, #1
	ldrh	r2, [r0, r3]
	ldr	r3, .L122+28
	cmp	r2, r3
	beq	.L108
	pop	{r4, lr}
	bx	lr
.L123:
	.align	2
.L122:
	.word	state
	.word	protag
	.word	totalMapWidth
	.word	currCollisionMap
	.word	607
	.word	nextRoomBool
	.word	3183
	.word	15903
	.word	allEmailsBool
	.word	livingRoomOutroBool
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
	ldr	lr, .L141
	ldr	r3, .L141+4
	ldrh	r4, [lr, #8]
	sub	ip, lr, #1488
	b	.L125
.L127:
	tst	r2, #31
	movne	r3, r1
	addeq	r3, r3, #7
.L125:
	add	r1, r3, #1
	sub	r2, r3, #440
	lsl	r0, r3, #1
	cmp	r1, #604
	strh	r4, [ip, r0]	@ movhi
	sub	r2, r2, #3
	blt	.L127
	ldr	r3, .L141+8
	ldr	r3, [r3]
	ldr	r4, [r3, #48]
	ldrb	r1, [r4]	@ zero_extendqisi2
	cmp	r1, #0
	beq	.L133
	mov	r6, #0
	ldr	r2, .L141+4
	ldr	r5, .L141+12
.L128:
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
	beq	.L133
	sub	r7, r2, #440
	sub	r7, r7, #3
	tst	r7, #31
	movne	r2, r3
	movne	r6, r0
	bne	.L128
	cmp	r1, #32
	addeq	r6, r6, #2
	ldrbeq	r1, [r4, r6]	@ zero_extendqisi2
	addeq	r2, r2, #7
	beq	.L128
.L140:
	mov	r8, r3
	add	r1, r2, #2
	sub	r6, r6, #1
	sub	r2, r6, r2
	add	r1, ip, r1, lsl #1
	add	r0, r4, r0
.L131:
	ldrh	r7, [lr, #8]
	strh	r7, [r1, #-2]!	@ movhi
	ldrb	r7, [r0, #-1]!	@ zero_extendqisi2
	add	r6, r2, r3
	cmp	r7, #32
	sub	r3, r3, #1
	sub	r7, r8, r3
	bne	.L131
	add	r2, r7, #5
	ldrb	r1, [r4, r6]	@ zero_extendqisi2
	add	r2, r2, r3
	b	.L128
.L133:
	ldr	r4, .L141+16
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L141+20
	ldr	r1, .L141+24
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L142:
	.align	2
.L141:
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
	ldr	r3, .L169
	ldr	r3, [r3]
	cmp	r3, #0
	bxeq	lr
	ldr	r3, .L169+4
	ldr	r2, [r3]
	ldr	r3, .L169+8
	cmp	r2, #6
	ldr	r2, [r3]
	beq	.L162
.L145:
	ldr	r3, .L169+12
	cmp	r2, r3
	beq	.L163
	sub	r3, r3, #312
	cmp	r2, r3
	push	{r4, lr}
	beq	.L164
.L147:
	ldr	r3, .L169+16
	cmp	r2, r3
	beq	.L165
	sub	r3, r3, #52
	sub	r1, r2, r3
	rsbs	r3, r1, #0
	adc	r3, r3, r1
	ldr	r1, .L169+20
	ldrb	r1, [r1]	@ zero_extendqisi2
	cmp	r1, #0
	moveq	r3, #0
	cmp	r3, #0
	bne	.L166
	ldr	r3, .L169+24
	cmp	r2, r3
	beq	.L167
.L150:
	mov	r2, #1
	ldr	r3, .L169+28
	str	r2, [r3]
	bl	printText
	mov	r2, #67108864
	ldrh	r3, [r2]
	orr	r3, r3, #256
	strh	r3, [r2]	@ movhi
.L143:
	pop	{r4, lr}
	bx	lr
.L162:
	ldr	r3, .L169+32
	cmp	r2, r3
	bne	.L145
	ldr	r3, .L169+36
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L145
	mov	r2, #2
	ldr	r3, .L169+40
	str	r2, [r3]
	bx	lr
.L167:
	ldr	r3, .L169+44
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L168
	ldr	r3, .L169+48
	ldrb	r2, [r3]	@ zero_extendqisi2
	cmp	r2, #0
	moveq	r2, #1
	strbeq	r2, [r3]
	ldr	r3, .L169+52
	mov	lr, pc
	bx	r3
	b	.L150
.L163:
	mov	r2, #1
	ldr	r3, .L169+56
	strb	r2, [r3]
	bx	lr
.L164:
	ldr	r3, .L169+60
	ldrb	r1, [r3]	@ zero_extendqisi2
	cmp	r1, #0
	beq	.L147
	mov	r1, #0
	ldr	r2, .L169+64
	strb	r1, [r3]
	mov	lr, pc
	bx	r2
	mov	r1, #1
	mov	r2, #67108864
	ldr	r3, .L169+68
	strb	r1, [r3]
	ldrh	r3, [r2]
	orr	r3, r3, #256
	strh	r3, [r2]	@ movhi
	b	.L143
.L165:
	mov	r1, #1
	mov	r2, #67108864
	ldr	r3, .L169+72
	strb	r1, [r3]
	ldrh	r3, [r2]
	orr	r3, r3, #256
	strh	r3, [r2]	@ movhi
	ldr	r3, .L169+76
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	printText
.L168:
	mov	r2, #1
	ldr	r3, .L169+80
	ldr	ip, .L169+60
	ldr	r1, [r3]
	ldr	r0, .L169+84
	ldr	r3, .L169+88
	strb	r2, [ip]
	mov	lr, pc
	bx	r3
	b	.L150
.L166:
	mov	r2, #1
	ldr	r3, .L169+40
	str	r2, [r3]
	b	.L143
.L170:
	.align	2
.L169:
	.word	spriteCollisionBool
	.word	state
	.word	activeSprite
	.word	livingRoomSpritesArr+312
	.word	finaleSpritesArr+52
	.word	activateDoorBool
	.word	kitchenSpritesArr+52
	.word	messageActiveBool
	.word	bedroomSpritesArr+156
	.word	openSafeBool
	.word	nextRoomBool
	.word	enableKeyFind
	.word	keyFound
	.word	reassignRefrigeratorMessage
	.word	computerAccessBool
	.word	phoneRinging
	.word	ringSettings
	.word	phoneAnswerBool
	.word	marsInteractBool
	.word	marsSpeaks
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
	ldr	r4, .L242
	ldr	r3, [r4, #28]
	cmp	r3, #3
	movne	r2, #3
	strne	r3, [r4, #32]
	strne	r2, [r4, #28]
	ldr	r3, .L242+4
	ldr	r2, [r4, #24]
	smull	r0, r1, r3, r2
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #2
	add	r3, r3, r3, lsl #2
	cmp	r2, r3, lsl #1
	bne	.L173
	ldr	r0, [r4, #36]
	ldr	r3, .L242+8
	ldr	r1, [r4, #40]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #36]
.L173:
	ldr	r3, .L242+12
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L238
	ldr	r3, .L242+16
	ldr	r5, .L242+20
	ldr	r2, [r3]
	ldrh	ip, [r5]
	cmp	r2, #0
	and	r2, ip, #1
	beq	.L176
	cmp	r2, #0
	bne	.L239
.L175:
	ldr	r1, [r4, #28]
	ldr	r2, .L242+24
	ldr	r3, .L242+28
	cmp	r1, #3
	ldrh	r3, [r3]
	ldrh	r1, [r2]
	ldr	r0, [r4, #4]
	ldr	lr, [r4]
	beq	.L192
.L187:
	ldr	r2, [r4, #24]
	add	r2, r2, #1
	str	r2, [r4, #24]
.L189:
	sub	r1, r0, r1
	sub	r3, lr, r3
	tst	ip, #8
	str	r1, [r4, #12]
	str	r3, [r4, #8]
	beq	.L171
	ldr	r3, .L242+32
	ldrh	r3, [r3]
	tst	r3, #8
	moveq	r2, #4
	ldreq	r3, .L242+36
	streq	r2, [r3]
.L171:
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L176:
	cmp	r2, #0
	beq	.L177
	ldr	r3, .L242+32
	ldrh	r3, [r3]
	tst	r3, #1
	bne	.L177
	bl	checkMoreInfo
	ldrh	ip, [r5]
.L177:
	ldr	r3, .L242+40
	ldrh	r3, [r3, #48]
	ldr	r5, .L242+28
	tst	r3, #64
	ldr	r0, [r4, #4]
	ldrh	r3, [r5]
	ldr	lr, [r4]
	bne	.L178
	ldr	r2, .L242+44
	ldr	r2, [r2]
	sub	r6, lr, #1
	mul	r2, r6, r2
	ldr	r7, .L242+48
	add	r1, r2, r0
	ldr	r7, [r7]
	lsl	r1, r1, #1
	ldrh	r1, [r7, r1]
	cmp	r1, #0
	beq	.L179
	ldr	r1, [r4, #16]
	add	r2, r2, r1
	add	r2, r2, r0
	lsl	r2, r2, #1
	ldrh	r2, [r7, r2]
	cmp	r2, #0
	beq	.L179
	cmp	r3, #1
	str	r6, [r4]
	bls	.L194
	ldr	r2, [r4, #8]
	cmp	r2, #80
	bgt	.L194
	mov	lr, r6
	sub	r3, r3, #1
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	strh	r3, [r5]	@ movhi
.L179:
	mov	r2, #2
	str	r2, [r4, #28]
.L178:
	ldr	r2, .L242+40
	ldrh	r1, [r2, #48]
	ldr	r6, .L242+24
	tst	r1, #128
	ldrh	r1, [r6]
	beq	.L240
	ldrh	r5, [r2, #48]
	tst	r5, #16
	beq	.L182
	ldr	r5, [r4, #28]
	cmp	r5, #3
	bne	.L183
	ldrh	r2, [r2, #48]
	tst	r2, #32
	bne	.L192
.L191:
	cmp	r0, #1
	ble	.L188
	ldr	r2, .L242+44
	ldr	r9, [r2]
	add	r8, r0, #8
	mla	r5, lr, r9, r8
	ldr	r2, .L242+48
	ldr	r7, [r2]
	lsl	r5, r5, #1
	ldrh	r2, [r7, r5]
	cmp	r2, #0
	beq	.L188
	ldr	r2, [r4, #20]
	add	r2, lr, r2
	sub	r2, r2, #1
	mla	r2, r9, r2, r8
	lsl	r2, r2, #1
	ldrh	r2, [r7, r2]
	cmp	r2, #0
	beq	.L188
	sub	r0, r0, #1
	cmp	r1, #1
	str	r0, [r4, #4]
	bls	.L188
	ldr	r2, [r4, #12]
	cmp	r2, #120
	suble	r1, r1, #1
	lslle	r1, r1, #16
	lsrle	r1, r1, #16
	strhle	r1, [r6]	@ movhi
.L188:
	mov	r2, #1
	str	r2, [r4, #28]
	str	r2, [r4, #44]
	b	.L187
.L192:
	mov	r5, #0
	ldr	r2, [r4, #32]
	str	r5, [r4, #36]
	str	r2, [r4, #28]
	b	.L189
.L238:
	ldr	r3, .L242+52
	mov	lr, pc
	bx	r3
	ldr	r3, .L242+56
	mov	lr, pc
	bx	r3
	ldr	r3, .L242+20
	ldrh	ip, [r3]
	b	.L175
.L240:
	ldr	r2, [r4, #20]
	ldr	r7, .L242+44
	add	r2, lr, r2
	ldr	r7, [r7]
	add	r2, r2, #1
	mul	r2, r7, r2
	ldr	r8, .L242+48
	add	r7, r2, r0
	ldr	r8, [r8]
	lsl	r7, r7, #1
	ldrh	r7, [r8, r7]
	cmp	r7, #0
	beq	.L181
	ldr	r7, [r4, #16]
	add	r2, r2, r7
	add	r2, r2, r0
	lsl	r2, r2, #1
	ldrh	r2, [r8, r2]
	cmp	r2, #0
	bne	.L241
.L181:
	mov	r2, #0
	ldr	r5, .L242+40
	ldrh	r5, [r5, #48]
	tst	r5, #16
	str	r2, [r4, #28]
	bne	.L183
.L182:
	ldr	r5, .L242+60
	ldr	r2, [r4, #16]
	ldr	r7, [r5]
	add	r2, r0, r2
	cmp	r2, r7
	bge	.L185
	ldr	r5, .L242+44
	ldr	r9, [r5]
	add	r2, r2, #1
	mla	r5, lr, r9, r2
	ldr	r8, .L242+48
	ldr	r8, [r8]
	lsl	r5, r5, #1
	ldrh	r5, [r8, r5]
	cmp	r5, #0
	beq	.L185
	ldr	r5, [r4, #20]
	add	r5, lr, r5
	sub	r5, r5, #1
	mla	r2, r9, r5, r2
	lsl	r2, r2, #1
	ldrh	r2, [r8, r2]
	cmp	r2, #0
	beq	.L185
	sub	r7, r7, #240
	add	r2, r1, #1
	add	r0, r0, #1
	cmp	r2, r7
	str	r0, [r4, #4]
	bge	.L185
	ldr	r5, [r4, #12]
	cmp	r5, #119
	lslgt	r1, r2, #16
	lsrgt	r1, r1, #16
	strhgt	r1, [r6]	@ movhi
.L185:
	mov	r2, #1
	str	r2, [r4, #28]
.L183:
	mov	r2, #0
	ldr	r5, .L242+40
	ldrh	r5, [r5, #48]
	tst	r5, #32
	str	r2, [r4, #44]
	bne	.L187
	b	.L191
.L239:
	ldr	r2, .L242+32
	ldrh	r2, [r2]
	ands	r2, r2, #1
	bne	.L175
	mov	r0, #67108864
	ldr	r1, .L242+64
	ldrh	ip, [r0]
	and	r1, r1, ip
	strh	r1, [r0]	@ movhi
	str	r2, [r3]
	ldrh	ip, [r5]
	b	.L175
.L241:
	ldr	r2, .L242+68
	ldr	r2, [r2]
	add	r7, r3, #1
	sub	r2, r2, #160
	add	lr, lr, #1
	cmp	r7, r2
	str	lr, [r4]
	bge	.L181
	ldr	r2, [r4, #8]
	cmp	r2, #79
	lslgt	r7, r7, #16
	lsrgt	r7, r7, #16
	movgt	r3, r7
	strhgt	r7, [r5]	@ movhi
	b	.L181
.L194:
	mov	lr, r6
	b	.L179
.L243:
	.align	2
.L242:
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
	.word	65279
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
	ldr	ip, .L252
	str	lr, [sp, #-4]!
	ldr	r3, .L252+4
	ldrh	lr, [ip, #8]
	sub	ip, ip, #1488
	b	.L247
.L249:
	tst	r2, #31
	movne	r3, r1
	addeq	r3, r3, #7
.L247:
	add	r1, r3, #1
	sub	r2, r3, #440
	lsl	r0, r3, #1
	cmp	r1, #604
	strh	lr, [ip, r0]	@ movhi
	sub	r2, r2, #3
	blt	.L249
	ldr	lr, [sp], #4
	bx	lr
.L253:
	.align	2
.L252:
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
	ldr	r1, .L256
	ldrh	r3, [r1]
	orr	r3, r3, #2160
	ldrh	r2, [r0, #4]
	orr	r3, r3, #9
	strh	r3, [r1]	@ movhi
	ldr	ip, .L256+4
	ldr	r3, .L256+8
	orr	r2, r2, #8
	strh	lr, [r1, #8]	@ movhi
	strh	r2, [r0, #4]	@ movhi
	ldr	lr, [sp], #4
	str	r3, [ip, #4092]
	bx	lr
.L257:
	.align	2
.L256:
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
	ldr	r3, .L267
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	cmp	r1, #256
	strh	r2, [r3, #14]	@ movhi
	strh	r0, [r3, #12]	@ movhi
	beq	.L259
	bgt	.L260
	cmp	r1, #1
	beq	.L261
	cmp	r1, #64
	ldrheq	r2, [r3, #14]
	orreq	r2, r2, #1
	strheq	r2, [r3, #14]	@ movhi
.L263:
	ldr	r3, .L267
	mov	r2, r3
	ldrh	r1, [r3, #14]
	orr	r1, r1, #128
	strh	r1, [r3, #14]	@ movhi
	ldr	r1, .L267+4
.L265:
	ldrh	r3, [r2, #12]
	cmp	r3, r1
	bls	.L265
	mov	r3, #0
	strh	r3, [r2, #14]	@ movhi
	bx	lr
.L260:
	cmp	r1, #1024
	ldrheq	r2, [r3, #14]
	orreq	r2, r2, #3
	strheq	r2, [r3, #14]	@ movhi
	b	.L263
.L259:
	ldrh	r2, [r3, #14]
	orr	r2, r2, #2
	strh	r2, [r3, #14]	@ movhi
	b	.L263
.L261:
	ldrh	r2, [r3, #14]
	strh	r2, [r3, #14]	@ movhi
	b	.L263
.L268:
	.align	2
.L267:
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
	.comm	activateDoorBool,1,1
	.comm	livingRoomOutroBool,1,1
	.comm	allEmailsBool,1,1
	.comm	marsEmailBool,1,1
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
	.comm	currSong,4,4
	.comm	state,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
