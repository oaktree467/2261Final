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
	mov	r2, #0
	str	lr, [sp, #-4]!
	mov	ip, #31
	mov	lr, #20
	mov	r0, #3
	mov	r1, #1
	ldr	r3, .L4
	str	r2, [r3]
	ldr	r3, .L4+4
	str	r2, [r3]
	ldr	r3, .L4+8
	str	r2, [r3]
	ldr	r3, .L4+12
	str	lr, [r3, #16]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	str	r2, [r3, #32]
	str	r2, [r3, #36]
	str	ip, [r3, #20]
	str	r0, [r3, #40]
	str	r1, [r3, #44]
	ldr	lr, [sp], #4
	bx	lr
.L5:
	.align	2
.L4:
	.word	spriteCollisionBool
	.word	messageActiveBool
	.word	nextRoomBool
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
	ldr	r4, .L79
	ldr	r3, [r4, #28]
	cmp	r3, #3
	movne	r2, #3
	ldr	r5, [r4, #24]
	strne	r3, [r4, #32]
	ldr	r3, .L79+4
	strne	r2, [r4, #28]
	smull	r1, r2, r3, r5
	asr	r3, r5, #31
	rsb	r3, r3, r2, asr #2
	add	r3, r3, r3, lsl #2
	cmp	r5, r3, lsl #1
	bne	.L12
	ldr	r0, [r4, #36]
	ldr	r3, .L79+8
	ldr	r1, [r4, #40]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #36]
.L12:
	ldr	r2, .L79+12
	ldr	r3, .L79+16
	ldr	r1, [r2]
	ldrh	r3, [r3]
	cmp	r1, #0
	and	r3, r3, #1
	beq	.L13
	cmp	r3, #0
	bne	.L76
.L14:
	ldr	r1, [r4, #28]
	ldr	r2, .L79+20
	ldr	r3, .L79+24
	cmp	r1, #3
	ldrh	r2, [r2]
	ldrh	r3, [r3]
	ldm	r4, {r0, ip}
	bne	.L26
.L30:
	mov	lr, #0
	ldr	r1, [r4, #32]
	str	lr, [r4, #36]
	str	r1, [r4, #28]
.L28:
	sub	r2, ip, r2
	sub	r3, r0, r3
	str	r2, [r4, #12]
	str	r3, [r4, #8]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L76:
	ldr	r3, .L79+28
	ldrh	r3, [r3]
	ands	r3, r3, #1
	moveq	r1, #67108864
	moveq	r0, #4608
	strheq	r0, [r1]	@ movhi
	streq	r3, [r2]
	b	.L14
.L19:
	ldrh	r6, [r1, #48]
	tst	r6, #16
	bne	.L23
	ldr	r6, .L79+32
	ldr	r1, .L79+36
	ldr	r7, [r6]
	ldr	r8, [r1]
.L21:
	ldr	r1, [r4, #16]
	add	r1, ip, r1
	add	r1, r1, #1
	mla	r6, r0, r7, r1
	lsl	r6, r6, #1
	ldrh	r6, [r8, r6]
	cmp	r6, #0
	beq	.L24
	ldr	r6, [r4, #20]
	add	r6, r0, r6
	mla	r1, r7, r6, r1
	lsl	r1, r1, #1
	ldrh	r1, [r8, r1]
	cmp	r1, #0
	beq	.L24
	sub	r7, r7, #240
	add	r1, r2, #1
	add	ip, ip, #1
	cmp	r1, r7
	str	ip, [r4, #4]
	bge	.L24
	ldr	r6, [r4, #12]
	cmp	r6, #119
	lslgt	r2, r1, #16
	lsrgt	r2, r2, #16
	strhgt	r2, [lr]	@ movhi
.L24:
	mov	r1, #1
	str	r1, [r4, #28]
.L22:
	mov	r1, #0
	ldr	r6, .L79+40
	ldrh	r6, [r6, #48]
	tst	r6, #32
	str	r1, [r4, #44]
	bne	.L26
.L29:
	ldr	r1, .L79+32
	ldr	r9, [r1]
	sub	r7, ip, #1
	mla	r6, r0, r9, r7
	ldr	r1, .L79+36
	ldr	r8, [r1]
	lsl	r6, r6, #1
	ldrh	r1, [r8, r6]
	cmp	r1, #0
	beq	.L27
	ldr	r1, [r4, #20]
	add	r1, r0, r1
	mla	r1, r9, r1, r7
	lsl	r1, r1, #1
	ldrh	r1, [r8, r1]
	cmp	r1, #0
	beq	.L27
	cmp	r2, #1
	str	r7, [r4, #4]
	bls	.L34
	ldr	r1, [r4, #12]
	cmp	r1, #120
	bgt	.L34
	mov	ip, r7
	sub	r2, r2, #1
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	strh	r2, [lr]	@ movhi
.L27:
	mov	r1, #1
	str	r1, [r4, #28]
	str	r1, [r4, #44]
.L26:
	add	r5, r5, #1
	str	r5, [r4, #24]
	b	.L28
.L13:
	cmp	r3, #0
	beq	.L15
	ldr	r3, .L79+28
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L77
.L15:
	ldr	r3, .L79+40
	ldrh	r3, [r3, #48]
	ldr	r6, .L79+24
	tst	r3, #64
	ldm	r4, {r0, ip}
	ldrh	r3, [r6]
	bne	.L17
	ldr	r2, .L79+32
	ldr	r8, [r2]
	sub	r7, r0, #1
	mla	r1, r8, r7, ip
	ldr	r2, .L79+36
	ldr	lr, [r2]
	lsl	r1, r1, #1
	ldrh	r2, [lr, r1]
	cmp	r2, #0
	bne	.L78
.L18:
	mov	r2, #2
	str	r2, [r4, #28]
.L17:
	ldr	r1, .L79+40
	ldrh	r2, [r1, #48]
	ldr	lr, .L79+20
	tst	r2, #128
	ldrh	r2, [lr]
	bne	.L19
	ldr	r1, [r4, #20]
	ldr	r7, .L79+32
	add	r1, r0, r1
	ldr	r7, [r7]
	add	r1, r1, #1
	mul	r1, r7, r1
	ldr	r8, .L79+36
	add	r9, r1, ip
	ldr	r8, [r8]
	lsl	r9, r9, #1
	ldrh	r9, [r8, r9]
	cmp	r9, #0
	beq	.L20
	ldr	r9, [r4, #16]
	add	r1, r1, r9
	add	r1, r1, ip
	lsl	r1, r1, #1
	ldrh	r1, [r8, r1]
	cmp	r1, #0
	beq	.L20
	ldr	r1, .L79+44
	ldr	r1, [r1]
	add	r9, r3, #1
	sub	r1, r1, #160
	add	r0, r0, #1
	cmp	r9, r1
	str	r0, [r4]
	bge	.L20
	ldr	r1, [r4, #8]
	cmp	r1, #79
	lslgt	r9, r9, #16
	lsrgt	r9, r9, #16
	movgt	r3, r9
	strhgt	r9, [r6]	@ movhi
.L20:
	mov	r1, #0
	ldr	r6, .L79+40
	ldrh	r6, [r6, #48]
	tst	r6, #16
	str	r1, [r4, #28]
	beq	.L21
	b	.L22
.L23:
	ldr	r6, [r4, #28]
	cmp	r6, #3
	bne	.L22
	ldrh	r1, [r1, #48]
	tst	r1, #32
	beq	.L29
	b	.L30
.L78:
	add	r1, r4, #16
	ldm	r1, {r1, r2}
	add	r2, r0, r2
	sub	r2, r2, #1
	add	r1, ip, r1
	mla	r2, r8, r2, r1
	lsl	r2, r2, #1
	ldrh	r2, [lr, r2]
	cmp	r2, #0
	beq	.L18
	cmp	r3, #1
	str	r7, [r4]
	bls	.L32
	ldr	r2, [r4, #8]
	cmp	r2, #80
	bgt	.L32
	sub	r3, r3, #1
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	mov	r0, r7
	strh	r3, [r6]	@ movhi
	b	.L18
.L77:
	ldr	r3, .L79+48
	ldr	r3, [r3]
	cmp	r3, #0
	movne	r0, #1
	movne	r3, #67108864
	movne	r1, #4864
	moveq	r3, #67108864
	moveq	r2, #4608
	strne	r0, [r2]
	strheq	r2, [r3]	@ movhi
	strhne	r1, [r3]	@ movhi
	b	.L15
.L32:
	mov	r0, r7
	b	.L18
.L34:
	mov	ip, r7
	b	.L27
.L80:
	.align	2
.L79:
	.word	protag
	.word	1717986919
	.word	__aeabi_idivmod
	.word	messageActiveBool
	.word	oldButtons
	.word	hOff
	.word	vOff
	.word	buttons
	.word	mapWidth
	.word	currCollisionMap
	.word	67109120
	.word	mapHeight
	.word	spriteCollisionBool
	.size	updateProtagonist, .-updateProtagonist
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
	ldr	r3, .L89
	ldr	ip, [r3]
	cmp	ip, #0
	bxle	lr
	mov	r0, #0
	ldr	r1, .L89+4
	ldr	r2, .L89+8
	ldr	r3, .L89+12
	push	{r4, lr}
	ldr	r3, [r3]
	ldrh	r4, [r1]
	ldrh	lr, [r2]
.L83:
	ldr	r1, [r3, #4]
	ldr	r2, [r3]
	add	r0, r0, #1
	sub	r1, r1, r4
	sub	r2, r2, lr
	cmp	r0, ip
	str	r1, [r3, #12]
	str	r2, [r3, #8]
	add	r3, r3, #48
	bne	.L83
	pop	{r4, lr}
	bx	lr
.L90:
	.align	2
.L89:
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
	ldr	r3, .L99
	push	{r4, r5, r6, r7, lr}
	ldr	r4, [r3]
	cmp	r4, #0
	ble	.L91
	mov	ip, #0
	mov	r5, #512
	ldr	r3, .L99+4
	ldr	r1, .L99+8
	ldr	r3, [r3]
.L95:
	ldr	r2, [r3, #40]
	cmp	r2, #1
	strheq	r5, [r1, #8]	@ movhi
	add	ip, ip, #1
	beq	.L94
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
.L94:
	cmp	ip, r4
	add	r3, r3, #48
	add	r1, r1, #8
	bne	.L95
.L91:
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L100:
	.align	2
.L99:
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
	ldr	r1, .L102
	ldr	r3, [r1, #44]
	ldr	r2, [r1, #12]
	orr	r2, r2, r3, lsl #12
	mvn	r2, r2, lsl #17
	mvn	r2, r2, lsr #17
	ldr	ip, [r1, #36]
	ldr	r3, [r1, #28]
	ldr	r0, [r1, #8]
	add	r3, r3, ip, lsl #4
	ldr	r1, .L102+4
	lsl	r3, r3, #3
	orr	r0, r0, #8192
	orr	r3, r3, #2048
	strh	r2, [r1, #2]	@ movhi
	strh	r0, [r1]	@ movhi
	strh	r3, [r1, #4]	@ movhi
	bx	lr
.L103:
	.align	2
.L102:
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
	ldr	r3, .L107
	ldr	r3, [r3]
	mla	r1, r3, r1, r0
	ldr	r3, .L107+4
	ldr	r3, [r3]
	lsl	r1, r1, #1
	ldrh	r0, [r3, r1]
	bx	lr
.L108:
	.align	2
.L107:
	.word	mapWidth
	.word	currCollisionMap
	.size	checkCollisionMapColor, .-checkCollisionMapColor
	.align	2
	.global	loadLivingRoom
	.syntax unified
	.arm
	.fpu softvfp
	.type	loadLivingRoom, %function
loadLivingRoom:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L113
	ldr	r3, [r3]
	cmp	r3, #6
	push	{r4, lr}
	beq	.L110
	mov	r0, #412
	mov	lr, #0
	mov	ip, #272
	mov	r1, #300
	ldr	r3, .L113+4
	ldr	r2, .L113+8
	str	r0, [r3, #4]
	str	r2, [r3]
	ldr	r0, .L113+12
	ldr	r2, .L113+16
	str	lr, [r3, #28]
	strh	ip, [r0]	@ movhi
	strh	r1, [r2]	@ movhi
.L111:
	mov	ip, #512
	ldr	r0, .L113+20
	ldr	r2, .L113+24
	ldr	r1, .L113+28
	ldr	r3, .L113+32
	str	ip, [r0]
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	mov	lr, #8
	ldr	ip, .L113+36
	ldr	r1, .L113+40
	ldr	r0, .L113+44
	ldr	r3, .L113+48
	ldr	r2, .L113+52
	str	lr, [ip]
	str	r0, [r1]
	str	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L110:
	ldr	r2, .L113+56
	ldr	r3, .L113+60
	ldrh	r0, [r2]
	ldr	r1, .L113+12
	ldrh	r2, [r3]
	ldr	r3, .L113+16
	strh	r0, [r1]	@ movhi
	strh	r2, [r3]	@ movhi
	b	.L111
.L114:
	.align	2
.L113:
	.word	priorState
	.word	protag
	.word	365
	.word	hOff
	.word	vOff
	.word	mapWidth
	.word	mapHeight
	.word	478
	.word	initLivingRoomSprites
	.word	currSpriteArrCount
	.word	currSpriteArr
	.word	livingRoomSpritesArr
	.word	currCollisionMap
	.word	livingroomcollisionmapBitmap
	.word	priorHoff
	.word	priorVoff
	.size	loadLivingRoom, .-loadLivingRoom
	.align	2
	.global	loadKitchen
	.syntax unified
	.arm
	.fpu softvfp
	.type	loadKitchen, %function
loadKitchen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L119
	ldr	r3, [r3]
	cmp	r3, #6
	push	{r4, lr}
	beq	.L116
	mov	r3, #0
	mov	lr, #120
	mov	ip, #30
	ldr	r2, .L119+4
	ldr	r0, .L119+8
	ldr	r1, .L119+12
	str	lr, [r2]
	str	ip, [r2, #4]
	str	r3, [r2, #28]
	strh	r3, [r0]	@ movhi
	strh	r3, [r1]	@ movhi
.L117:
	mov	ip, #256
	mov	r1, #160
	ldr	r0, .L119+16
	ldr	r2, .L119+20
	ldr	r3, .L119+24
	str	ip, [r0]
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	mov	lr, #2
	ldr	ip, .L119+28
	ldr	r1, .L119+32
	ldr	r0, .L119+36
	ldr	r3, .L119+40
	ldr	r2, .L119+44
	str	lr, [ip]
	str	r0, [r1]
	str	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L116:
	ldr	r2, .L119+48
	ldr	r3, .L119+52
	ldrh	r0, [r2]
	ldr	r1, .L119+8
	ldrh	r2, [r3]
	ldr	r3, .L119+12
	strh	r0, [r1]	@ movhi
	strh	r2, [r3]	@ movhi
	b	.L117
.L120:
	.align	2
.L119:
	.word	priorState
	.word	protag
	.word	hOff
	.word	vOff
	.word	mapWidth
	.word	mapHeight
	.word	initKitchenSprites
	.word	currSpriteArrCount
	.word	currSpriteArr
	.word	kitchenSpritesArr
	.word	currCollisionMap
	.word	kitchencollisionBitmap
	.word	priorHoff
	.word	priorVoff
	.size	loadKitchen, .-loadKitchen
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
	ldr	r3, .L139
	ldr	r2, [r3, #28]
	push	{r4, r5, r6, r7, lr}
	ldr	r4, .L139+4
	cmp	r2, #1
	str	r1, [r4]
	beq	.L122
	cmp	r2, #2
	beq	.L123
	cmp	r2, r1
	beq	.L138
.L121:
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L122:
	ldr	r1, [r3, #20]
	ldr	r0, .L139+8
	ldr	r2, [r3]
	ldr	ip, [r0]
	add	r1, r1, r1, lsr #31
	add	r2, r2, r1, asr #1
	mul	r1, ip, r2
	ldr	lr, [r3, #44]
	cmp	lr, #1
	ldr	r2, [r3, #4]
	ldrne	r3, [r3, #16]
	ldr	r0, .L139+12
	addne	r3, r2, r3
	ldr	r0, [r0]
	addeq	r2, r2, r1
	addne	r3, r3, r1
	lsleq	r2, r2, #1
	lslne	r3, r3, #1
	ldrheq	r0, [r0, r2]
	ldrhne	r0, [r0, r3]
.L126:
	cmp	r0, #0
	beq	.L121
	ldr	r3, .L139+16
	ldr	ip, [r3]
	cmp	ip, #0
	ble	.L121
	mov	lr, #0
	mov	r5, #1
	mov	r6, lr
	mov	r2, lr
	mov	r7, lr
	ldr	r3, .L139+20
	ldr	r3, [r3]
.L132:
	ldrh	r1, [r3, #44]
	cmp	r1, r0
	moveq	lr, #1
	add	r2, r2, #1
	streq	r7, [r3, #40]
	strne	r5, [r3, #40]
	moveq	r6, lr
	cmp	r2, ip
	add	r3, r3, #48
	bne	.L132
	cmp	lr, #0
	strne	r6, [r4]
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L138:
	ldr	r1, [r3, #16]
	ldr	r0, .L139+8
	ldr	r2, [r3]
	ldr	ip, [r3, #20]
	ldr	r0, [r0]
	add	r1, r1, r1, lsr #31
	asr	r1, r1, #1
	add	r2, r2, ip
	mla	r2, r0, r2, r1
	ldr	r3, [r3, #4]
	ldr	r1, .L139+12
	add	r3, r2, r3
	ldr	r2, [r1]
	lsl	r3, r3, #1
	ldrh	r0, [r2, r3]
	b	.L126
.L123:
	ldr	r1, .L139+8
	ldr	r2, [r3]
	ldr	r1, [r1]
	mul	r2, r1, r2
	ldr	r1, [r3, #16]
	ldr	r0, [r3, #4]
	add	r3, r1, r1, lsr #31
	ldr	r1, .L139+12
	add	r3, r2, r3, asr #1
	add	r3, r3, r0
	ldr	r2, [r1]
	lsl	r3, r3, #1
	ldrh	r0, [r2, r3]
	b	.L126
.L140:
	.align	2
.L139:
	.word	protag
	.word	spriteCollisionBool
	.word	mapWidth
	.word	currCollisionMap
	.word	currSpriteArrCount
	.word	currSpriteArr
	.size	checkSpriteCollision, .-checkSpriteCollision
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
	@ link register save eliminated.
	ldr	r3, .L144
	ldr	r3, [r3]
	cmp	r3, #0
	movne	r0, #1
	movne	r3, #67108864
	movne	r2, #4864
	moveq	r3, #67108864
	moveq	r2, #4608
	ldrne	r1, .L144+4
	strne	r0, [r1]
	strh	r2, [r3]	@ movhi
	bx	lr
.L145:
	.align	2
.L144:
	.word	spriteCollisionBool
	.word	messageActiveBool
	.size	checkMoreInfo, .-checkMoreInfo
	.align	2
	.global	checkDoorway
	.syntax unified
	.arm
	.fpu softvfp
	.type	checkDoorway, %function
checkDoorway:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L154
	ldr	r3, [r3]
	cmp	r3, #3
	beq	.L153
	cmp	r3, #4
	bxne	lr
	ldr	r1, .L154+4
	ldr	r2, .L154+8
	ldr	r3, [r1]
	ldr	r2, [r2]
	mul	r3, r2, r3
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #4]
	add	r2, r2, r2, lsr #31
	ldr	r1, .L154+12
	add	r3, r3, r2, asr #1
	add	r3, r3, r0
	ldr	r2, [r1]
	lsl	r3, r3, #1
	ldrh	r3, [r2, r3]
	cmp	r3, #31
	bxne	lr
.L149:
	mov	r2, #1
	ldr	r3, .L154+16
	str	r2, [r3]
	bx	lr
.L153:
	ldr	r2, .L154+4
	ldr	r1, .L154+8
	ldr	r3, [r2]
	ldr	r1, [r1]
	ldr	r2, [r2, #4]
	mla	r3, r1, r3, r2
	ldr	r2, .L154+12
	ldr	r2, [r2]
	lsl	r3, r3, #1
	ldrh	r2, [r2, r3]
	ldr	r3, .L154+20
	cmp	r2, r3
	bxne	lr
	b	.L149
.L155:
	.align	2
.L154:
	.word	state
	.word	protag
	.word	mapWidth
	.word	currCollisionMap
	.word	nextRoomBool
	.word	3183
	.size	checkDoorway, .-checkDoorway
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
	bl	checkDoorway
	bl	updateProtagonist
	ldr	r3, .L161
	ldr	ip, [r3]
	cmp	ip, #0
	ble	.L157
	mov	r0, #0
	ldr	r1, .L161+4
	ldr	r2, .L161+8
	ldr	r3, .L161+12
	ldrh	r4, [r1]
	ldrh	lr, [r2]
	ldr	r3, [r3]
.L158:
	ldr	r1, [r3, #4]
	ldr	r2, [r3]
	add	r0, r0, #1
	sub	r1, r1, r4
	sub	r2, r2, lr
	cmp	r0, ip
	str	r1, [r3, #12]
	str	r2, [r3, #8]
	add	r3, r3, #48
	bne	.L158
.L157:
	pop	{r4, lr}
	b	checkSpriteCollision
.L162:
	.align	2
.L161:
	.word	currSpriteArrCount
	.word	hOff
	.word	vOff
	.word	currSpriteArr
	.size	updateGame, .-updateGame
	.comm	mapHeight,4,4
	.comm	mapWidth,4,4
	.comm	vOff,2,2
	.comm	hOff,2,2
	.comm	priorVoff,2,2
	.comm	priorHoff,2,2
	.comm	keyFound,1,1
	.comm	nextRoomBool,4,4
	.comm	messageActiveBool,4,4
	.comm	spriteCollisionBool,4,4
	.comm	currCollisionMap,4,4
	.comm	currSpriteArrCount,4,4
	.comm	currSpriteArr,4,4
	.comm	protag,52,4
	.comm	state,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"