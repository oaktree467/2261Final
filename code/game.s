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
	mov	ip, #512
	ldr	r3, .L44
	ldr	r3, [r3]
	ldr	r0, .L44+4
	ldr	r2, .L44+8
	ldr	r1, .L44+12
	cmp	r3, #6
	push	{r4, lr}
	str	ip, [r0]
	str	r1, [r2]
	beq	.L39
	cmp	r3, #4
	beq	.L43
	mov	r1, #140
	mov	r2, #0
	mov	lr, #30
	mov	r0, #40
	ldr	r3, .L44+16
	ldr	ip, .L44+20
	str	r1, [r3]
	ldr	r1, .L44+24
	str	lr, [r3, #4]
	str	r2, [r3, #28]
	strh	r2, [ip]	@ movhi
	strh	r0, [r1]	@ movhi
.L41:
	ldr	r3, .L44+28
	mov	lr, pc
	bx	r3
	mov	lr, #8
	ldr	ip, .L44+32
	ldr	r1, .L44+36
	ldr	r0, .L44+40
	ldr	r3, .L44+44
	ldr	r2, .L44+48
	str	lr, [ip]
	str	r0, [r1]
	str	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L43:
	mov	lr, #272
	ldr	r1, .L44+20
	ldr	r3, .L44+16
	ldr	r0, .L44+52
	ldr	r2, .L44+24
	strh	lr, [r1]	@ movhi
	ldr	r1, .L44+56
	sub	ip, ip, #142
	str	ip, [r3]
	str	r0, [r3, #4]
	strh	r1, [r2]	@ movhi
	b	.L41
.L39:
	ldr	r2, .L44+60
	ldr	r3, .L44+64
	ldrh	r0, [r2]
	ldr	r1, .L44+20
	ldrh	r2, [r3]
	ldr	r3, .L44+24
	strh	r0, [r1]	@ movhi
	strh	r2, [r3]	@ movhi
	b	.L41
.L45:
	.align	2
.L44:
	.word	priorState
	.word	mapWidth
	.word	mapHeight
	.word	478
	.word	protag
	.word	hOff
	.word	vOff
	.word	initLivingRoomSprites
	.word	currSpriteArrCount
	.word	currSpriteArr
	.word	livingRoomSpritesArr
	.word	currCollisionMap
	.word	livingroomcollisionmapBitmap
	.word	450
	.word	318
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
	ldr	r3, .L50
	ldr	r3, [r3]
	cmp	r3, #6
	push	{r4, lr}
	beq	.L47
	mov	r1, #120
	mov	r2, #0
	mov	lr, #30
	mov	ip, #2
	ldr	r3, .L50+4
	ldr	r0, .L50+8
	str	r1, [r3]
	ldr	r1, .L50+12
	str	lr, [r3, #4]
	str	ip, [r3, #28]
	strh	r2, [r0]	@ movhi
	strh	r2, [r1]	@ movhi
.L48:
	mov	ip, #256
	mov	r1, #160
	ldr	r0, .L50+16
	ldr	r2, .L50+20
	ldr	r3, .L50+24
	str	ip, [r0]
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	mov	lr, #2
	ldr	ip, .L50+28
	ldr	r1, .L50+32
	ldr	r0, .L50+36
	ldr	r3, .L50+40
	ldr	r2, .L50+44
	str	lr, [ip]
	str	r0, [r1]
	str	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L47:
	ldr	r2, .L50+48
	ldr	r3, .L50+52
	ldrh	r0, [r2]
	ldr	r1, .L50+8
	ldrh	r2, [r3]
	ldr	r3, .L50+12
	strh	r0, [r1]	@ movhi
	strh	r2, [r3]	@ movhi
	b	.L48
.L51:
	.align	2
.L50:
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
	ldr	r3, .L70
	ldr	r2, [r3, #28]
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	r4, .L70+4
	cmp	r2, #1
	str	r1, [r4]
	beq	.L53
	cmp	r2, #2
	beq	.L54
	cmp	r2, r1
	beq	.L69
.L52:
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L53:
	ldr	r1, [r3, #20]
	ldr	r0, .L70+8
	ldr	r2, [r3]
	ldr	ip, [r0]
	add	r1, r1, r1, lsr #31
	add	r2, r2, r1, asr #1
	mul	r1, ip, r2
	ldr	lr, [r3, #44]
	cmp	lr, #1
	ldr	r2, [r3, #4]
	ldrne	r3, [r3, #16]
	ldr	r0, .L70+12
	addne	r3, r2, r3
	ldr	r0, [r0]
	addeq	r2, r2, r1
	addne	r3, r3, r1
	lsleq	r2, r2, #1
	lslne	r3, r3, #1
	ldrheq	r0, [r0, r2]
	ldrhne	r0, [r0, r3]
.L57:
	cmp	r0, #0
	beq	.L52
	ldr	r3, .L70+16
	ldr	ip, [r3]
	cmp	ip, #0
	ble	.L52
	mov	lr, #0
	mov	r5, #1
	mov	r7, lr
	mov	r2, lr
	mov	r8, lr
	ldr	r9, .L70+20
	ldr	r3, .L70+24
	ldr	r6, [r9]
	ldr	r3, [r3]
.L63:
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
	bne	.L63
	cmp	lr, #0
	strne	r7, [r4]
	strne	r6, [r9]
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L69:
	ldr	r1, [r3, #16]
	ldr	r0, .L70+8
	ldr	r2, [r3]
	ldr	ip, [r3, #20]
	ldr	r0, [r0]
	add	r1, r1, r1, lsr #31
	asr	r1, r1, #1
	add	r2, r2, ip
	mla	r2, r0, r2, r1
	ldr	r3, [r3, #4]
	ldr	r1, .L70+12
	add	r3, r2, r3
	ldr	r2, [r1]
	lsl	r3, r3, #1
	ldrh	r0, [r2, r3]
	b	.L57
.L54:
	ldr	r1, .L70+8
	ldr	r2, [r3]
	ldr	r1, [r1]
	mul	r2, r1, r2
	ldr	r1, [r3, #16]
	ldr	r0, [r3, #4]
	add	r3, r1, r1, lsr #31
	ldr	r1, .L70+12
	add	r3, r2, r3, asr #1
	add	r3, r3, r0
	ldr	r2, [r1]
	lsl	r3, r3, #1
	ldrh	r0, [r2, r3]
	b	.L57
.L71:
	.align	2
.L70:
	.word	protag
	.word	spriteCollisionBool
	.word	mapWidth
	.word	currCollisionMap
	.word	currSpriteArrCount
	.word	activeSprite
	.word	currSpriteArr
	.size	checkSpriteCollision, .-checkSpriteCollision
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
	ldr	r3, .L80
	ldr	r3, [r3]
	cmp	r3, #3
	beq	.L79
	cmp	r3, #4
	bxne	lr
	ldr	r1, .L80+4
	ldr	r0, .L80+8
	ldr	r2, [r1, #16]
	ldr	r3, [r1]
	ldr	ip, [r1, #20]
	ldr	r0, [r0]
	add	r2, r2, r2, lsr #31
	asr	r2, r2, #1
	add	r3, r3, ip
	mla	r3, r0, r3, r2
	ldr	r1, [r1, #4]
	ldr	r2, .L80+12
	add	r3, r3, r1
	ldr	r2, [r2]
	lsl	r3, r3, #1
	ldrh	r3, [r2, r3]
	cmp	r3, #996
	bxne	lr
.L75:
	mov	r2, #1
	ldr	r3, .L80+16
	str	r2, [r3]
	bx	lr
.L79:
	ldr	r2, .L80+4
	ldr	r1, .L80+8
	ldr	r3, [r2]
	ldr	r1, [r1]
	ldr	r2, [r2, #4]
	mla	r3, r1, r3, r2
	ldr	r2, .L80+12
	ldr	r2, [r2]
	lsl	r3, r3, #1
	ldrh	r2, [r2, r3]
	ldr	r3, .L80+20
	cmp	r2, r3
	bxne	lr
	b	.L75
.L81:
	.align	2
.L80:
	.word	state
	.word	protag
	.word	mapWidth
	.word	currCollisionMap
	.word	nextRoomBool
	.word	3183
	.size	checkDoorway, .-checkDoorway
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
	ldr	r0, .L97
	push	{r4, lr}
	ldr	r3, .L97+4
	ldrh	lr, [r0, #8]
	sub	r0, r0, #1488
	b	.L83
.L85:
	tst	r2, #31
	movne	r3, r1
	addeq	r3, r3, #7
.L83:
	add	r1, r3, #1
	sub	r2, r3, #440
	lsl	ip, r3, #1
	cmp	r1, #604
	strh	lr, [r0, ip]	@ movhi
	sub	r2, r2, #3
	blt	.L85
	ldr	r3, .L97+8
	ldr	r3, [r3]
	ldr	ip, [r3, #48]
	ldrb	r3, [ip]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L86
	ldr	r1, .L97+4
	ldr	lr, .L97+12
	b	.L87
.L90:
	tst	r2, #31
	addne	r1, r1, #1
	addeq	r1, r1, #7
.L87:
	sub	r3, r3, #32
	ldr	r3, [lr, r3, lsl #2]
	ldrh	r2, [r3]
	lsl	r3, r1, #1
	strh	r2, [r0, r3]	@ movhi
	ldrb	r3, [ip, #1]!	@ zero_extendqisi2
	sub	r2, r1, #440
	cmp	r3, #0
	sub	r2, r2, #3
	bne	.L90
.L86:
	ldr	r4, .L97+16
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L97+20
	ldr	r1, .L97+24
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L98:
	.align	2
.L97:
	.word	messagescreenMap+1488
	.word	418
	.word	activeSprite
	.word	letterMap
	.word	DMANow
	.word	100712448
	.word	messagescreenMap
	.size	printText, .-printText
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
	ldr	r4, .L167
	ldr	r3, [r4, #28]
	cmp	r3, #3
	movne	r2, #3
	ldr	r5, [r4, #24]
	strne	r3, [r4, #32]
	ldr	r3, .L167+4
	strne	r2, [r4, #28]
	smull	r1, r2, r3, r5
	asr	r3, r5, #31
	rsb	r3, r3, r2, asr #2
	add	r3, r3, r3, lsl #2
	cmp	r5, r3, lsl #1
	bne	.L101
	ldr	r0, [r4, #36]
	ldr	r3, .L167+8
	ldr	r1, [r4, #40]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #36]
.L101:
	ldr	r2, .L167+12
	ldr	r3, .L167+16
	ldr	r1, [r2]
	ldrh	r3, [r3]
	cmp	r1, #0
	and	r3, r3, #1
	beq	.L102
	cmp	r3, #0
	bne	.L162
.L103:
	ldr	r1, [r4, #28]
	ldr	r2, .L167+20
	ldr	r3, .L167+24
	cmp	r1, #3
	ldrh	r2, [r2]
	ldrh	r3, [r3]
	ldm	r4, {r0, ip}
	bne	.L115
.L118:
	mov	lr, #0
	ldr	r1, [r4, #32]
	str	lr, [r4, #36]
	str	r1, [r4, #28]
.L117:
	sub	r2, ip, r2
	sub	r3, r0, r3
	str	r2, [r4, #12]
	str	r3, [r4, #8]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L162:
	ldr	r3, .L167+28
	ldrh	r3, [r3]
	ands	r3, r3, #1
	moveq	r1, #67108864
	moveq	r0, #4608
	strheq	r0, [r1]	@ movhi
	streq	r3, [r2]
	b	.L103
.L108:
	ldrh	lr, [r1, #48]
	tst	lr, #16
	beq	.L163
	ldr	lr, [r4, #28]
	cmp	lr, #3
	bne	.L111
	ldrh	r1, [r1, #48]
	tst	r1, #32
	bne	.L118
	ldr	r5, [r4, #24]
.L119:
	ldr	r1, .L167+32
	ldr	r9, [r1]
	sub	lr, ip, #1
	mla	r8, r0, r9, lr
	ldr	r1, .L167+36
	ldr	r7, [r1]
	lsl	r8, r8, #1
	ldrh	r1, [r7, r8]
	cmp	r1, #0
	beq	.L116
	ldr	r1, [r4, #20]
	add	r1, r0, r1
	sub	r1, r1, #1
	mla	r1, r9, r1, lr
	lsl	r1, r1, #1
	ldrh	r1, [r7, r1]
	cmp	r1, #0
	beq	.L116
	cmp	r2, #1
	str	lr, [r4, #4]
	bls	.L123
	ldr	r1, [r4, #12]
	cmp	r1, #120
	bgt	.L123
	mov	ip, lr
	sub	r2, r2, #1
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	strh	r2, [r6]	@ movhi
.L116:
	mov	r1, #1
	str	r1, [r4, #28]
	str	r1, [r4, #44]
.L115:
	add	r5, r5, #1
	str	r5, [r4, #24]
	b	.L117
.L102:
	cmp	r3, #0
	beq	.L104
	ldr	r3, .L167+28
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L164
.L104:
	ldr	r3, .L167+40
	ldrh	r3, [r3, #48]
	ldr	lr, .L167+24
	tst	r3, #64
	ldm	r4, {r0, ip}
	ldrh	r3, [lr]
	bne	.L106
	ldr	r2, .L167+32
	ldr	r2, [r2]
	sub	r6, r0, #1
	mul	r2, r6, r2
	ldr	r5, .L167+36
	add	r1, r2, ip
	ldr	r5, [r5]
	lsl	r1, r1, #1
	ldrh	r1, [r5, r1]
	cmp	r1, #0
	bne	.L165
.L107:
	mov	r2, #2
	str	r2, [r4, #28]
.L106:
	ldr	r1, .L167+40
	ldrh	r2, [r1, #48]
	ldr	r6, .L167+20
	tst	r2, #128
	ldrh	r2, [r6]
	bne	.L108
	ldr	r1, [r4, #20]
	ldr	r5, .L167+32
	add	r1, r0, r1
	ldr	r5, [r5]
	add	r1, r1, #1
	mul	r1, r5, r1
	ldr	r7, .L167+36
	add	r8, r1, ip
	ldr	r7, [r7]
	lsl	r8, r8, #1
	ldrh	r8, [r7, r8]
	cmp	r8, #0
	beq	.L109
	ldr	r8, [r4, #16]
	add	r1, r1, r8
	add	r1, r1, ip
	lsl	r1, r1, #1
	ldrh	r1, [r7, r1]
	cmp	r1, #0
	beq	.L109
	ldr	r1, .L167+44
	ldr	r1, [r1]
	add	r8, r3, #1
	sub	r1, r1, #160
	add	r0, r0, #1
	cmp	r8, r1
	str	r0, [r4]
	bge	.L109
	ldr	r1, [r4, #8]
	cmp	r1, #79
	lslgt	r8, r8, #16
	lsrgt	r8, r8, #16
	movgt	r3, r8
	strhgt	r8, [lr]	@ movhi
.L109:
	mov	r1, #0
	ldr	lr, .L167+40
	ldrh	lr, [lr, #48]
	tst	lr, #16
	str	r1, [r4, #28]
	bne	.L111
.L110:
	ldr	r1, [r4, #16]
	add	r1, ip, r1
	add	r1, r1, #1
	mla	lr, r0, r5, r1
	lsl	lr, lr, #1
	ldrh	lr, [r7, lr]
	cmp	lr, #0
	beq	.L113
	ldr	lr, [r4, #20]
	add	lr, r0, lr
	sub	lr, lr, #1
	mla	r1, r5, lr, r1
	lsl	r1, r1, #1
	ldrh	r1, [r7, r1]
	cmp	r1, #0
	beq	.L113
	sub	r5, r5, #240
	add	r1, r2, #1
	add	ip, ip, #1
	cmp	r1, r5
	str	ip, [r4, #4]
	blt	.L166
.L113:
	mov	r1, #1
	str	r1, [r4, #28]
.L111:
	mov	r1, #0
	ldr	lr, .L167+40
	ldrh	lr, [lr, #48]
	tst	lr, #32
	str	r1, [r4, #44]
	ldr	r5, [r4, #24]
	bne	.L115
	b	.L119
.L165:
	ldr	r1, [r4, #16]
	add	r2, r2, r1
	add	r2, r2, ip
	lsl	r2, r2, #1
	ldrh	r2, [r5, r2]
	cmp	r2, #0
	beq	.L107
	cmp	r3, #1
	str	r6, [r4]
	bls	.L121
	ldr	r2, [r4, #8]
	cmp	r2, #80
	bgt	.L121
	sub	r3, r3, #1
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	mov	r0, r6
	strh	r3, [lr]	@ movhi
	b	.L107
.L164:
	ldr	r3, .L167+48
	ldr	r3, [r3]
	cmp	r3, #0
	moveq	r3, #67108864
	moveq	r2, #4608
	strheq	r2, [r3]	@ movhi
	beq	.L104
	mov	r3, #1
	str	r3, [r2]
	bl	printText
	mov	r3, #67108864
	mov	r2, #4864
	strh	r2, [r3]	@ movhi
	b	.L104
.L163:
	ldr	lr, .L167+32
	ldr	r1, .L167+36
	ldr	r5, [lr]
	ldr	r7, [r1]
	b	.L110
.L166:
	ldr	lr, [r4, #12]
	cmp	lr, #119
	lslgt	r2, r1, #16
	lsrgt	r2, r2, #16
	strhgt	r2, [r6]	@ movhi
	b	.L113
.L121:
	mov	r0, r6
	b	.L107
.L123:
	mov	ip, lr
	b	.L116
.L168:
	.align	2
.L167:
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
	ldr	r3, .L174
	ldr	ip, [r3]
	cmp	ip, #0
	ble	.L170
	mov	r0, #0
	ldr	r1, .L174+4
	ldr	r2, .L174+8
	ldr	r3, .L174+12
	ldrh	r4, [r1]
	ldrh	lr, [r2]
	ldr	r3, [r3]
.L171:
	ldr	r1, [r3, #4]
	ldr	r2, [r3]
	add	r0, r0, #1
	sub	r1, r1, r4
	sub	r2, r2, lr
	cmp	r0, ip
	str	r1, [r3, #12]
	str	r2, [r3, #8]
	add	r3, r3, #52
	bne	.L171
.L170:
	pop	{r4, lr}
	b	checkSpriteCollision
.L175:
	.align	2
.L174:
	.word	currSpriteArrCount
	.word	hOff
	.word	vOff
	.word	currSpriteArr
	.size	updateGame, .-updateGame
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
	ldr	r3, .L184
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L183
	mov	r3, #67108864
	mov	r2, #4608
	strh	r2, [r3]	@ movhi
	bx	lr
.L183:
	mov	r2, #1
	ldr	r3, .L184+4
	push	{r4, lr}
	str	r2, [r3]
	bl	printText
	mov	r3, #67108864
	mov	r2, #4864
	pop	{r4, lr}
	strh	r2, [r3]	@ movhi
	bx	lr
.L185:
	.align	2
.L184:
	.word	spriteCollisionBool
	.word	messageActiveBool
	.size	checkMoreInfo, .-checkMoreInfo
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
	ldr	ip, .L192
	str	lr, [sp, #-4]!
	ldr	r3, .L192+4
	ldrh	lr, [ip, #8]
	sub	ip, ip, #1488
	b	.L187
.L189:
	tst	r2, #31
	movne	r3, r1
	addeq	r3, r3, #7
.L187:
	add	r1, r3, #1
	sub	r2, r3, #440
	lsl	r0, r3, #1
	cmp	r1, #604
	strh	lr, [ip, r0]	@ movhi
	sub	r2, r2, #3
	blt	.L189
	ldr	lr, [sp], #4
	bx	lr
.L193:
	.align	2
.L192:
	.word	messagescreenMap+1488
	.word	418
	.size	clearMessage, .-clearMessage
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
	.comm	activeSprite,4,4
	.comm	currSpriteArrCount,4,4
	.comm	currSpriteArr,4,4
	.comm	protag,48,4
	.comm	state,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
