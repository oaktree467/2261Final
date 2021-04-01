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
	ldr	r4, .L74
	ldr	r3, [r4, #28]
	cmp	r3, #3
	movne	r2, #3
	ldr	r5, [r4, #24]
	strne	r3, [r4, #32]
	ldr	r3, .L74+4
	strne	r2, [r4, #28]
	smull	r1, r2, r3, r5
	asr	r3, r5, #31
	rsb	r3, r3, r2, asr #2
	add	r3, r3, r3, lsl #2
	cmp	r5, r3, lsl #1
	bne	.L12
	ldr	r0, [r4, #36]
	ldr	r3, .L74+8
	ldr	r1, [r4, #40]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #36]
.L12:
	ldr	r3, .L74+12
	ldrh	r3, [r3, #48]
	ldr	r6, .L74+16
	tst	r3, #64
	ldr	r0, [r4, #4]
	ldrh	r3, [r6]
	ldr	r1, [r4]
	bne	.L13
	ldr	r2, .L74+20
	ldr	r8, [r2]
	sub	r7, r1, #1
	mla	ip, r8, r7, r0
	ldr	r2, .L74+24
	ldr	lr, [r2]
	lsl	ip, ip, #1
	ldrh	r2, [lr, ip]
	cmp	r2, #0
	bne	.L70
.L14:
	mov	r2, #2
	str	r2, [r4, #28]
.L13:
	ldr	r2, .L74+12
	ldrh	ip, [r2, #48]
	ldr	lr, .L74+28
	tst	ip, #128
	ldrh	ip, [lr]
	bne	.L15
	ldr	r2, [r4, #20]
	ldr	r7, .L74+20
	add	r2, r1, r2
	ldr	r7, [r7]
	add	r2, r2, #1
	mul	r2, r7, r2
	ldr	r8, .L74+24
	add	r9, r2, r0
	ldr	r8, [r8]
	lsl	r9, r9, #1
	ldrh	r9, [r8, r9]
	cmp	r9, #0
	beq	.L16
	ldr	r9, [r4, #16]
	add	r2, r2, r9
	add	r2, r2, r0
	lsl	r2, r2, #1
	ldrh	r2, [r8, r2]
	cmp	r2, #0
	beq	.L16
	ldr	r2, .L74+32
	ldr	r2, [r2]
	add	r9, r3, #1
	sub	r2, r2, #160
	add	r1, r1, #1
	cmp	r9, r2
	str	r1, [r4]
	bge	.L16
	ldr	r2, [r4, #8]
	cmp	r2, #79
	lslgt	r9, r9, #16
	lsrgt	r9, r9, #16
	movgt	r3, r9
	strhgt	r9, [r6]	@ movhi
.L16:
	mov	r2, #0
	ldr	r6, .L74+12
	ldrh	r6, [r6, #48]
	tst	r6, #16
	str	r2, [r4, #28]
	bne	.L18
.L17:
	ldr	r2, [r4, #16]
	add	r2, r0, r2
	add	r2, r2, #1
	mla	r6, r1, r7, r2
	lsl	r6, r6, #1
	ldrh	r6, [r8, r6]
	cmp	r6, #0
	bne	.L71
.L20:
	mov	r2, #1
	str	r2, [r4, #28]
.L18:
	mov	r2, #0
	ldr	r6, .L74+12
	ldrh	r6, [r6, #48]
	tst	r6, #32
	str	r2, [r4, #44]
	bne	.L22
.L26:
	ldr	r2, .L74+20
	ldr	r9, [r2]
	sub	r7, r0, #1
	mla	r6, r1, r9, r7
	ldr	r2, .L74+24
	ldr	r8, [r2]
	lsl	r6, r6, #1
	ldrh	r2, [r8, r6]
	cmp	r2, #0
	bne	.L72
.L23:
	mov	r2, #1
	str	r2, [r4, #28]
	str	r2, [r4, #44]
.L22:
	add	r5, r5, #1
	str	r5, [r4, #24]
.L25:
	ldr	r2, .L74+36
	ldrh	r2, [r2]
	sub	r0, r0, ip
	sub	r3, r1, r3
	tst	r2, #8
	str	r0, [r4, #12]
	str	r3, [r4, #8]
	beq	.L10
	ldr	r3, .L74+40
	ldrh	r3, [r3]
	tst	r3, #8
	moveq	r2, #4
	ldreq	r3, .L74+44
	streq	r2, [r3]
.L10:
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L15:
	ldrh	r6, [r2, #48]
	tst	r6, #16
	beq	.L73
	ldr	r6, [r4, #28]
	cmp	r6, #3
	bne	.L18
	ldrh	r2, [r2, #48]
	tst	r2, #32
	beq	.L26
	mov	lr, #0
	ldr	r2, [r4, #32]
	str	lr, [r4, #36]
	str	r2, [r4, #28]
	b	.L25
.L72:
	ldr	r2, [r4, #20]
	add	r2, r1, r2
	mla	r2, r9, r2, r7
	lsl	r2, r2, #1
	ldrh	r2, [r8, r2]
	cmp	r2, #0
	beq	.L23
	cmp	ip, #1
	str	r7, [r4, #4]
	bls	.L31
	ldr	r2, [r4, #12]
	cmp	r2, #120
	bgt	.L31
	sub	ip, ip, #1
	lsl	ip, ip, #16
	lsr	ip, ip, #16
	mov	r0, r7
	strh	ip, [lr]	@ movhi
	b	.L23
.L71:
	ldr	r6, [r4, #20]
	add	r6, r1, r6
	mla	r2, r7, r6, r2
	lsl	r2, r2, #1
	ldrh	r2, [r8, r2]
	cmp	r2, #0
	beq	.L20
	sub	r7, r7, #240
	add	r2, ip, #1
	add	r0, r0, #1
	cmp	r2, r7
	str	r0, [r4, #4]
	bge	.L20
	ldr	r6, [r4, #12]
	cmp	r6, #119
	lslgt	ip, r2, #16
	lsrgt	ip, ip, #16
	strhgt	ip, [lr]	@ movhi
	b	.L20
.L70:
	ldr	r2, [r4, #20]
	ldr	ip, [r4, #16]
	add	r2, r1, r2
	sub	r2, r2, #1
	add	ip, r0, ip
	mla	r2, r8, r2, ip
	lsl	r2, r2, #1
	ldrh	r2, [lr, r2]
	cmp	r2, #0
	beq	.L14
	cmp	r3, #1
	str	r7, [r4]
	bls	.L29
	ldr	r2, [r4, #8]
	cmp	r2, #80
	bgt	.L29
	sub	r3, r3, #1
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	mov	r1, r7
	strh	r3, [r6]	@ movhi
	b	.L14
.L73:
	ldr	r6, .L74+20
	ldr	r2, .L74+24
	ldr	r7, [r6]
	ldr	r8, [r2]
	b	.L17
.L31:
	mov	r0, r7
	b	.L23
.L29:
	mov	r1, r7
	b	.L14
.L75:
	.align	2
.L74:
	.word	protag
	.word	1717986919
	.word	__aeabi_idivmod
	.word	67109120
	.word	vOff
	.word	mapWidth
	.word	currCollisionMap
	.word	hOff
	.word	mapHeight
	.word	oldButtons
	.word	buttons
	.word	mode
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
	bl	updateProtagonist
	ldr	r3, .L81
	ldr	ip, [r3]
	cmp	ip, #0
	ble	.L76
	mov	r0, #0
	ldr	r1, .L81+4
	ldr	r2, .L81+8
	ldr	r3, .L81+12
	ldrh	r4, [r1]
	ldrh	lr, [r2]
	ldr	r3, [r3]
.L78:
	ldr	r1, [r3, #4]
	ldr	r2, [r3]
	add	r0, r0, #1
	sub	r1, r1, r4
	sub	r2, r2, lr
	cmp	r0, ip
	str	r1, [r3, #12]
	str	r2, [r3, #8]
	add	r3, r3, #48
	bne	.L78
.L76:
	pop	{r4, lr}
	bx	lr
.L82:
	.align	2
.L81:
	.word	currSpriteArrCount
	.word	hOff
	.word	vOff
	.word	currSpriteArr
	.size	updateGame, .-updateGame
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
	ldr	r3, .L91
	ldr	ip, [r3]
	cmp	ip, #0
	bxle	lr
	mov	r0, #0
	ldr	r1, .L91+4
	ldr	r2, .L91+8
	ldr	r3, .L91+12
	push	{r4, lr}
	ldr	r3, [r3]
	ldrh	r4, [r1]
	ldrh	lr, [r2]
.L85:
	ldr	r1, [r3, #4]
	ldr	r2, [r3]
	add	r0, r0, #1
	sub	r1, r1, r4
	sub	r2, r2, lr
	cmp	r0, ip
	str	r1, [r3, #12]
	str	r2, [r3, #8]
	add	r3, r3, #48
	bne	.L85
	pop	{r4, lr}
	bx	lr
.L92:
	.align	2
.L91:
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
	ldr	r3, .L101
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r4, [r3]
	cmp	r4, #0
	ble	.L93
	mov	ip, #0
	mov	r5, #512
	ldr	r3, .L101+4
	ldr	r2, .L101+8
	ldr	r3, [r3]
.L97:
	ldr	r1, [r3, #40]
	cmp	r1, #1
	strheq	r5, [r2, #8]	@ movhi
	add	ip, ip, #1
	beq	.L96
	add	r1, r3, #24
	ldr	r8, [r3, #32]
	ldr	r0, [r3, #8]
	ldm	r1, {r1, r7}
	ldr	r6, [r3, #36]
	ldr	lr, [r3, #12]
	orr	r0, r0, r8, lsl #14
	add	r1, r1, r7, lsl #4
	orr	r0, r0, #8192
	lsl	r1, r1, #1
	orr	lr, lr, r6, lsl #14
	strh	r0, [r2, #8]	@ movhi
	strh	r1, [r2, #12]	@ movhi
	strh	lr, [r2, #10]	@ movhi
.L96:
	cmp	ip, r4
	add	r3, r3, #48
	add	r2, r2, #8
	bne	.L97
.L93:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L102:
	.align	2
.L101:
	.word	currSpriteArrCount
	.word	currSpriteArr
	.word	shadowOAM
	.size	drawSprites, .-drawSprites
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
	@ link register save eliminated.
	ldr	r1, .L104
	ldr	r2, [r1, #44]
	ldr	r3, [r1, #12]
	orr	r3, r3, r2, lsl #12
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	ip, [r1, #36]
	ldr	r2, [r1, #28]
	ldr	r0, [r1, #8]
	add	r2, r2, ip, lsl #4
	ldr	r1, .L104+4
	orr	r0, r0, #8192
	lsl	r2, r2, #3
	strh	r3, [r1, #2]	@ movhi
	strh	r0, [r1]	@ movhi
	strh	r2, [r1, #4]	@ movhi
	b	drawSprites
.L105:
	.align	2
.L104:
	.word	protag
	.word	shadowOAM
	.size	drawGame, .-drawGame
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
	ldr	r1, .L107
	ldr	r2, [r1, #44]
	ldr	r3, [r1, #12]
	orr	r3, r3, r2, lsl #12
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	ip, [r1, #36]
	ldr	r2, [r1, #28]
	ldr	r0, [r1, #8]
	add	r2, r2, ip, lsl #4
	ldr	r1, .L107+4
	orr	r0, r0, #8192
	lsl	r2, r2, #3
	strh	r3, [r1, #2]	@ movhi
	strh	r0, [r1]	@ movhi
	strh	r2, [r1, #4]	@ movhi
	bx	lr
.L108:
	.align	2
.L107:
	.word	protag
	.word	shadowOAM
	.size	drawProtagonist, .-drawProtagonist
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
	ldr	r3, .L110
	ldr	r3, [r3]
	mla	r1, r3, r1, r0
	ldr	r3, .L110+4
	ldr	r3, [r3]
	lsl	r1, r1, #1
	ldrh	r0, [r3, r1]
	bx	lr
.L111:
	.align	2
.L110:
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
	mov	r2, #0
	mov	r1, #170
	push	{r4, lr}
	mov	ip, #512
	mov	r4, #100
	ldr	r3, .L114
	ldr	r0, .L114+4
	ldr	lr, .L114+8
	strh	r2, [r0]	@ movhi
	str	r2, [r3, #4]
	ldr	r0, .L114+12
	ldr	r2, .L114+16
	str	r1, [r3]
	add	r1, r1, #308
	ldr	r3, .L114+20
	strh	r4, [lr]	@ movhi
	str	ip, [r0]
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	mov	lr, #6
	ldr	ip, .L114+24
	ldr	r1, .L114+28
	ldr	r0, .L114+32
	ldr	r3, .L114+36
	ldr	r2, .L114+40
	str	lr, [ip]
	str	r0, [r1]
	str	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L115:
	.align	2
.L114:
	.word	protag
	.word	hOff
	.word	vOff
	.word	mapWidth
	.word	mapHeight
	.word	initLivingRoomSprites
	.word	currSpriteArrCount
	.word	currSpriteArr
	.word	livingRoomSpritesArr
	.word	currCollisionMap
	.word	livingroomcollisionmapBitmap
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
	mov	r1, #120
	push	{r4, lr}
	mov	r0, #30
	mov	r4, #256
	mov	r3, #0
	mov	lr, #160
	ldr	r2, .L118
	str	r1, [r2]
	ldr	r1, .L118+4
	str	r0, [r2, #4]
	str	r4, [r1]
	ldr	ip, .L118+8
	ldr	r0, .L118+12
	ldr	r1, .L118+16
	ldr	r2, .L118+20
	str	lr, [ip]
	strh	r3, [r0]	@ movhi
	strh	r3, [r1]	@ movhi
	mov	lr, pc
	bx	r2
	mov	lr, #2
	ldr	ip, .L118+24
	ldr	r1, .L118+28
	ldr	r0, .L118+32
	ldr	r3, .L118+36
	ldr	r2, .L118+40
	str	lr, [ip]
	str	r0, [r1]
	str	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L119:
	.align	2
.L118:
	.word	protag
	.word	mapWidth
	.word	mapHeight
	.word	hOff
	.word	vOff
	.word	initKitchenSprites
	.word	currSpriteArrCount
	.word	currSpriteArr
	.word	kitchenSpritesArr
	.word	currCollisionMap
	.word	kitchencollisionBitmap
	.size	loadKitchen, .-loadKitchen
	.comm	mode,4,4
	.comm	mapHeight,4,4
	.comm	mapWidth,4,4
	.comm	vOff,2,2
	.comm	hOff,2,2
	.comm	spriteCollisionBool,4,4
	.comm	currCollisionMap,4,4
	.comm	currSpriteArrCount,4,4
	.comm	currSpriteArr,4,4
	.comm	protag,48,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
