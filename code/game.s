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
	ldr	r4, .L81
	ldr	r3, [r4, #28]
	cmp	r3, #3
	movne	r2, #3
	ldr	r5, [r4, #24]
	strne	r3, [r4, #32]
	ldr	r3, .L81+4
	strne	r2, [r4, #28]
	smull	r1, r2, r3, r5
	asr	r3, r5, #31
	rsb	r3, r3, r2, asr #2
	add	r3, r3, r3, lsl #2
	cmp	r5, r3, lsl #1
	bne	.L12
	ldr	r0, [r4, #36]
	ldr	r3, .L81+8
	ldr	r1, [r4, #40]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #36]
.L12:
	ldr	r2, .L81+12
	ldr	r3, .L81+16
	ldr	r1, [r2]
	ldrh	lr, [r3]
	cmp	r1, #0
	and	r1, lr, #1
	beq	.L13
	cmp	r1, #0
	beq	.L14
	ldr	r1, .L81+20
	ldrh	r1, [r1]
	ands	r1, r1, #1
	bne	.L14
	mov	r0, #67108864
	mov	ip, #4608
	strh	ip, [r0]	@ movhi
	str	r1, [r2]
	ldrh	lr, [r3]
.L14:
	ldr	r1, [r4, #28]
	ldr	r2, .L81+24
	ldr	r3, .L81+28
	cmp	r1, #3
	ldrh	r2, [r2]
	ldrh	r3, [r3]
	ldm	r4, {r0, ip}
	bne	.L26
.L31:
	mov	r5, #0
	ldr	r1, [r4, #32]
	str	r5, [r4, #36]
	str	r1, [r4, #28]
	b	.L28
.L19:
	ldrh	r7, [r1, #48]
	tst	r7, #16
	bne	.L23
	ldr	r7, .L81+32
	ldr	r1, .L81+36
	ldr	r8, [r7]
	ldr	r9, [r1]
.L21:
	ldr	r1, [r4, #16]
	add	r1, ip, r1
	add	r1, r1, #1
	mla	r7, r0, r8, r1
	lsl	r7, r7, #1
	ldrh	r7, [r9, r7]
	cmp	r7, #0
	beq	.L24
	ldr	r7, [r4, #20]
	add	r7, r0, r7
	mla	r1, r8, r7, r1
	lsl	r1, r1, #1
	ldrh	r1, [r9, r1]
	cmp	r1, #0
	beq	.L24
	sub	r8, r8, #240
	add	r1, r2, #1
	add	ip, ip, #1
	cmp	r1, r8
	str	ip, [r4, #4]
	bge	.L24
	ldr	r7, [r4, #12]
	cmp	r7, #119
	lslgt	r2, r1, #16
	lsrgt	r2, r2, #16
	strhgt	r2, [r6]	@ movhi
.L24:
	mov	r1, #1
	str	r1, [r4, #28]
.L22:
	mov	r1, #0
	ldr	r7, .L81+40
	ldrh	r7, [r7, #48]
	tst	r7, #32
	str	r1, [r4, #44]
	bne	.L26
.L30:
	ldr	r1, .L81+32
	ldr	r10, [r1]
	sub	r7, ip, #1
	mla	r9, r0, r10, r7
	ldr	r1, .L81+36
	ldr	r8, [r1]
	lsl	r9, r9, #1
	ldrh	r1, [r8, r9]
	cmp	r1, #0
	beq	.L27
	ldr	r1, [r4, #20]
	add	r1, r0, r1
	mla	r1, r10, r1, r7
	lsl	r1, r1, #1
	ldrh	r1, [r8, r1]
	cmp	r1, #0
	beq	.L27
	cmp	r2, #1
	str	r7, [r4, #4]
	bls	.L35
	ldr	r1, [r4, #12]
	cmp	r1, #120
	bgt	.L35
	mov	ip, r7
	sub	r2, r2, #1
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	strh	r2, [r6]	@ movhi
.L27:
	mov	r1, #1
	str	r1, [r4, #28]
	str	r1, [r4, #44]
.L26:
	add	r5, r5, #1
	str	r5, [r4, #24]
.L28:
	sub	r2, ip, r2
	sub	r3, r0, r3
	tst	lr, #8
	str	r2, [r4, #12]
	str	r3, [r4, #8]
	beq	.L10
	ldr	r3, .L81+20
	ldrh	r3, [r3]
	tst	r3, #8
	moveq	r2, #4
	ldreq	r3, .L81+44
	streq	r2, [r3]
.L10:
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L13:
	cmp	r1, #0
	beq	.L15
	ldr	r1, .L81+20
	ldrh	r1, [r1]
	tst	r1, #1
	beq	.L79
.L15:
	ldr	r3, .L81+40
	ldrh	r3, [r3, #48]
	ldr	r7, .L81+28
	tst	r3, #64
	ldm	r4, {r0, ip}
	ldrh	r3, [r7]
	bne	.L17
	ldr	r2, .L81+32
	ldr	r9, [r2]
	sub	r6, r0, #1
	mla	r8, r9, r6, ip
	ldr	r2, .L81+36
	ldr	r1, [r2]
	lsl	r8, r8, #1
	ldrh	r2, [r1, r8]
	cmp	r2, #0
	bne	.L80
.L18:
	mov	r2, #2
	str	r2, [r4, #28]
.L17:
	ldr	r1, .L81+40
	ldrh	r2, [r1, #48]
	ldr	r6, .L81+24
	tst	r2, #128
	ldrh	r2, [r6]
	bne	.L19
	ldr	r1, [r4, #20]
	ldr	r8, .L81+32
	add	r1, r0, r1
	ldr	r8, [r8]
	add	r1, r1, #1
	mul	r1, r8, r1
	ldr	r9, .L81+36
	add	r10, r1, ip
	ldr	r9, [r9]
	lsl	r10, r10, #1
	ldrh	r10, [r9, r10]
	cmp	r10, #0
	beq	.L20
	ldr	r10, [r4, #16]
	add	r1, r1, r10
	add	r1, r1, ip
	lsl	r1, r1, #1
	ldrh	r1, [r9, r1]
	cmp	r1, #0
	beq	.L20
	ldr	r1, .L81+48
	ldr	r1, [r1]
	add	r10, r3, #1
	sub	r1, r1, #160
	add	r0, r0, #1
	cmp	r10, r1
	str	r0, [r4]
	bge	.L20
	ldr	r1, [r4, #8]
	cmp	r1, #79
	lslgt	r10, r10, #16
	lsrgt	r10, r10, #16
	movgt	r3, r10
	strhgt	r10, [r7]	@ movhi
.L20:
	mov	r1, #0
	ldr	r7, .L81+40
	ldrh	r7, [r7, #48]
	tst	r7, #16
	str	r1, [r4, #28]
	beq	.L21
	b	.L22
.L23:
	ldr	r7, [r4, #28]
	cmp	r7, #3
	bne	.L22
	ldrh	r1, [r1, #48]
	tst	r1, #32
	bne	.L31
	b	.L30
.L80:
	ldr	r2, [r4, #20]
	ldr	r8, [r4, #16]
	add	r2, r0, r2
	sub	r2, r2, #1
	add	r8, ip, r8
	mla	r2, r9, r2, r8
	lsl	r2, r2, #1
	ldrh	r2, [r1, r2]
	cmp	r2, #0
	beq	.L18
	cmp	r3, #1
	str	r6, [r4]
	bls	.L33
	ldr	r2, [r4, #8]
	cmp	r2, #80
	bgt	.L33
	sub	r3, r3, #1
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	mov	r0, r6
	strh	r3, [r7]	@ movhi
	b	.L18
.L79:
	ldr	r1, .L81+52
	ldr	r1, [r1]
	cmp	r1, #0
	movne	ip, #1
	movne	r1, #67108864
	movne	r0, #4864
	moveq	r2, #67108864
	moveq	r1, #4608
	strne	ip, [r2]
	strheq	r1, [r2]	@ movhi
	strhne	r0, [r1]	@ movhi
	ldrh	lr, [r3]
	b	.L15
.L33:
	mov	r0, r6
	b	.L18
.L35:
	mov	ip, r7
	b	.L27
.L82:
	.align	2
.L81:
	.word	protag
	.word	1717986919
	.word	__aeabi_idivmod
	.word	messageActiveBool
	.word	oldButtons
	.word	buttons
	.word	hOff
	.word	vOff
	.word	mapWidth
	.word	currCollisionMap
	.word	67109120
	.word	mode
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
	bl	updateProtagonist
	ldr	r3, .L88
	ldr	ip, [r3]
	cmp	ip, #0
	ble	.L83
	mov	r0, #0
	ldr	r1, .L88+4
	ldr	r2, .L88+8
	ldr	r3, .L88+12
	ldrh	r4, [r1]
	ldrh	lr, [r2]
	ldr	r3, [r3]
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
.L83:
	pop	{r4, lr}
	bx	lr
.L89:
	.align	2
.L88:
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
	ldr	r3, .L98
	ldr	ip, [r3]
	cmp	ip, #0
	bxle	lr
	mov	r0, #0
	ldr	r1, .L98+4
	ldr	r2, .L98+8
	ldr	r3, .L98+12
	push	{r4, lr}
	ldr	r3, [r3]
	ldrh	r4, [r1]
	ldrh	lr, [r2]
.L92:
	ldr	r1, [r3, #4]
	ldr	r2, [r3]
	add	r0, r0, #1
	sub	r1, r1, r4
	sub	r2, r2, lr
	cmp	r0, ip
	str	r1, [r3, #12]
	str	r2, [r3, #8]
	add	r3, r3, #48
	bne	.L92
	pop	{r4, lr}
	bx	lr
.L99:
	.align	2
.L98:
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
	ldr	r3, .L108
	push	{r4, r5, r6, r7, lr}
	ldr	r4, [r3]
	cmp	r4, #0
	ble	.L100
	mov	ip, #0
	mov	r5, #512
	ldr	r3, .L108+4
	ldr	r1, .L108+8
	ldr	r3, [r3]
.L104:
	ldr	r2, [r3, #40]
	cmp	r2, #1
	strheq	r5, [r1, #8]	@ movhi
	add	ip, ip, #1
	beq	.L103
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
.L103:
	cmp	ip, r4
	add	r3, r3, #48
	add	r1, r1, #8
	bne	.L104
.L100:
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L109:
	.align	2
.L108:
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
	ldr	r1, .L111
	ldr	r3, [r1, #44]
	ldr	r2, [r1, #12]
	orr	r2, r2, r3, lsl #12
	mvn	r2, r2, lsl #17
	mvn	r2, r2, lsr #17
	ldr	ip, [r1, #36]
	ldr	r3, [r1, #28]
	ldr	r0, [r1, #8]
	add	r3, r3, ip, lsl #4
	ldr	r1, .L111+4
	lsl	r3, r3, #3
	orr	r0, r0, #8192
	orr	r3, r3, #2048
	strh	r2, [r1, #2]	@ movhi
	strh	r0, [r1]	@ movhi
	strh	r3, [r1, #4]	@ movhi
	bx	lr
.L112:
	.align	2
.L111:
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
	ldr	r3, .L116
	ldr	r3, [r3]
	mla	r1, r3, r1, r0
	ldr	r3, .L116+4
	ldr	r3, [r3]
	lsl	r1, r1, #1
	ldrh	r0, [r3, r1]
	bx	lr
.L117:
	.align	2
.L116:
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
	ldr	r3, .L122
	ldr	r3, [r3]
	cmp	r3, #6
	push	{r4, lr}
	beq	.L119
	mov	r1, #412
	mov	r2, #300
	mov	ip, #0
	ldr	r3, .L122+4
	ldr	lr, .L122+8
	ldr	r0, .L122+12
	str	r1, [r3, #4]
	ldr	r1, .L122+16
	str	lr, [r3]
	str	ip, [r3, #28]
	strh	r2, [r0]	@ movhi
	strh	r2, [r1]	@ movhi
.L120:
	mov	ip, #512
	ldr	r0, .L122+20
	ldr	r2, .L122+24
	ldr	r1, .L122+28
	ldr	r3, .L122+32
	str	ip, [r0]
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	mov	lr, #6
	ldr	ip, .L122+36
	ldr	r1, .L122+40
	ldr	r0, .L122+44
	ldr	r3, .L122+48
	ldr	r2, .L122+52
	str	lr, [ip]
	str	r0, [r1]
	str	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L119:
	ldr	r2, .L122+56
	ldr	r3, .L122+60
	ldrh	r0, [r2]
	ldr	r1, .L122+12
	ldrh	r2, [r3]
	ldr	r3, .L122+16
	strh	r0, [r1]	@ movhi
	strh	r2, [r3]	@ movhi
	b	.L120
.L123:
	.align	2
.L122:
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
	ldr	r3, .L128
	ldr	r3, [r3]
	cmp	r3, #6
	push	{r4, lr}
	beq	.L125
	mov	r3, #0
	mov	lr, #120
	mov	ip, #30
	ldr	r2, .L128+4
	ldr	r0, .L128+8
	ldr	r1, .L128+12
	str	lr, [r2]
	str	ip, [r2, #4]
	str	r3, [r2, #28]
	strh	r3, [r0]	@ movhi
	strh	r3, [r1]	@ movhi
.L126:
	mov	ip, #256
	mov	r1, #160
	ldr	r0, .L128+16
	ldr	r2, .L128+20
	ldr	r3, .L128+24
	str	ip, [r0]
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	mov	lr, #2
	ldr	ip, .L128+28
	ldr	r1, .L128+32
	ldr	r0, .L128+36
	ldr	r3, .L128+40
	ldr	r2, .L128+44
	str	lr, [ip]
	str	r0, [r1]
	str	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L125:
	ldr	r2, .L128+48
	ldr	r3, .L128+52
	ldrh	r0, [r2]
	ldr	r1, .L128+8
	ldrh	r2, [r3]
	ldr	r3, .L128+12
	strh	r0, [r1]	@ movhi
	strh	r2, [r3]	@ movhi
	b	.L126
.L129:
	.align	2
.L128:
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
	@ link register save eliminated.
	ldr	r3, .L133
	ldr	r3, [r3]
	cmp	r3, #0
	movne	r0, #1
	movne	r3, #67108864
	movne	r2, #4864
	moveq	r3, #67108864
	moveq	r2, #4608
	ldrne	r1, .L133+4
	strne	r0, [r1]
	strh	r2, [r3]	@ movhi
	bx	lr
.L134:
	.align	2
.L133:
	.word	spriteCollisionBool
	.word	messageActiveBool
	.size	checkSpriteCollision, .-checkSpriteCollision
	.comm	mode,4,4
	.comm	mapHeight,4,4
	.comm	mapWidth,4,4
	.comm	vOff,2,2
	.comm	hOff,2,2
	.comm	priorVoff,2,2
	.comm	priorHoff,2,2
	.comm	nextRoomBool,4,4
	.comm	messageActiveBool,4,4
	.comm	spriteCollisionBool,4,4
	.comm	currCollisionMap,4,4
	.comm	currSpriteArrCount,4,4
	.comm	currSpriteArr,4,4
	.comm	protag,48,4
	.comm	state,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
