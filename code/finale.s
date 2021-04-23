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
	.file	"finale.c"
	.text
	.align	2
	.global	initFinaleSprites
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initFinaleSprites, %function
initFinaleSprites:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r6, #48
	ldr	r3, .L4
	str	r6, [r3, #52]
	mvn	r6, #64512
	strh	r6, [r3, #96]	@ movhi
	mov	r6, #117
	str	r6, [r3, #108]
	mov	r6, #55
	str	r6, [r3, #104]
	mov	r6, #16
	str	r6, [r3, #184]
	mov	r6, #63
	mov	r9, #15
	mov	r8, #29
	mov	r7, #4
	mov	r2, #0
	mov	r0, #12
	mov	lr, #1
	mov	r1, #2
	mov	fp, #8
	mov	r10, #3
	mov	ip, #66
	mov	r5, #28
	mov	r4, #70
	str	r6, [r3, #160]
	mov	r6, #56
	stm	r3, {r8, r9}
	str	r7, [r3, #80]
	ldr	r8, .L4+4
	ldr	r7, .L4+8
	str	fp, [r3, #24]
	str	r10, [r3, #36]
	strh	r8, [r3, #44]	@ movhi
	str	r7, [r3, #48]
	str	r6, [r3, #156]
	str	lr, [r3, #84]
	str	lr, [r3, #140]
	str	r0, [r3, #28]
	str	r0, [r3, #76]
	str	r0, [r3, #128]
	str	r2, [r3, #32]
	str	r2, [r3, #40]
	str	r2, [r3, #92]
	str	r2, [r3, #132]
	str	r2, [r3, #136]
	str	r2, [r3, #144]
	str	r2, [r3, #180]
	str	r2, [r3, #188]
	str	r2, [r3, #196]
	str	r2, [r3, #232]
	str	r1, [r3, #88]
	str	r1, [r3, #192]
	str	ip, [r3, #56]
	str	r5, [r3, #236]
	str	r4, [r3, #208]
	str	r2, [r3, #240]
	str	r1, [r3, #244]
	str	ip, [r3, #212]
	str	r2, [r3, #248]
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	finaleSpritesArr
	.word	32608
	.word	.LANCHOR0
	.size	initFinaleSprites, .-initFinaleSprites
	.align	2
	.global	loadFinale
	.syntax unified
	.arm
	.fpu softvfp
	.type	loadFinale, %function
loadFinale:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r7, #336
	mov	r6, #512
	mov	r5, #160
	mov	r4, #256
	ldr	r3, .L10
	mov	r0, #90
	mov	r1, #300
	ldr	r3, [r3]
	mov	lr, #3
	cmp	r3, #10
	cmpne	r3, #1
	mov	ip, #96
	mov	r3, #0
	ldr	r2, .L10+4
	str	r7, [r2]
	ldr	r2, .L10+8
	str	r6, [r2]
	ldr	r2, .L10+12
	str	r5, [r2]
	ldr	r2, .L10+16
	str	r4, [r2]
	ldr	r2, .L10+20
	str	r0, [r2]
	str	r1, [r2, #4]
	ldr	r0, .L10+24
	ldr	r1, .L10+28
	str	lr, [r2, #36]
	strh	ip, [r0]	@ movhi
	strh	r3, [r1]	@ movhi
	beq	.L7
	ldr	r1, .L10+32
	ldr	r2, .L10+36
	strb	r3, [r1]
	strb	r3, [r2]
	ldr	lr, .L10+40
	ldr	ip, .L10+44
	ldr	r0, .L10+48
	ldr	r1, .L10+52
	ldr	r2, .L10+56
	strb	r3, [lr]
	strb	r3, [ip]
	strb	r3, [r0]
	strb	r3, [r1]
	strb	r3, [r2]
.L8:
	bl	initFinaleSprites
	mov	ip, #2
	mov	r1, #0
	ldr	r3, .L10+60
	ldr	r2, .L10+64
	ldr	lr, .L10+68
	str	ip, [r3]
	str	lr, [r2]
	ldr	r3, .L10+72
	ldr	r2, .L10+76
	ldr	r0, .L10+80
	ldr	ip, .L10+84
	str	ip, [r0]
	strh	r1, [r3, #10]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	ldrh	r2, [r3, #10]
	orr	r2, r2, #66
	strh	r2, [r3, #10]	@ movhi
	ldrh	r2, [r3, #10]
	orr	r2, r2, #128
	strh	r2, [r3, #10]	@ movhi
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L7:
	ldr	r2, .L10+88
	ldr	r3, .L10+92
	ldrh	r2, [r2]
	ldrh	r3, [r3]
	strh	r2, [r0]	@ movhi
	strh	r3, [r1]	@ movhi
	b	.L8
.L11:
	.align	2
.L10:
	.word	priorState
	.word	visMapWidth
	.word	totalMapWidth
	.word	visMapHeight
	.word	totalMapHeight
	.word	protag
	.word	hOff
	.word	vOff
	.word	marsInteractBool
	.word	messageNum
	.word	replyBool
	.word	replyNum
	.word	checkOneBool
	.word	checkTwoBool
	.word	checkThreeBool
	.word	currSpriteArrCount
	.word	currSpriteArr
	.word	finaleSpritesArr
	.word	67109120
	.word	-20000
	.word	currCollisionMap
	.word	finalecollisionBitmap
	.word	priorHoff
	.word	priorVoff
	.size	loadFinale, .-loadFinale
	.align	2
	.global	updatePersistentSprites
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePersistentSprites, %function
updatePersistentSprites:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L16
	ldr	r2, .L16+4
	ldr	r3, .L16+8
	str	lr, [sp, #-4]!
	ldrh	ip, [r2]
	ldrh	lr, [r1]
	add	r0, r3, #156
.L13:
	ldr	r1, [r3, #108]
	ldr	r2, [r3, #104]
	sub	r1, r1, lr
	sub	r2, r2, ip
	str	r1, [r3, #116]
	str	r2, [r3, #112]
	add	r3, r3, #52
	cmp	r3, r0
	bne	.L13
	ldr	lr, [sp], #4
	bx	lr
.L17:
	.align	2
.L16:
	.word	hOff
	.word	vOff
	.word	finaleSpritesArr
	.size	updatePersistentSprites, .-updatePersistentSprites
	.align	2
	.global	drawPersistentSprites
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPersistentSprites, %function
drawPersistentSprites:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L22
	push	{r4, r5, r6, lr}
	ldr	ip, .L22+4
	ldr	r4, .L22+8
	add	lr, r3, #156
.L19:
	add	r2, r3, #128
	ldm	r2, {r2, r5}
	ldrb	r0, [r3, #112]	@ zero_extendqisi2
	ldr	r6, [r3, #136]
	ldr	r1, [r3, #116]
	add	r2, r2, r5, lsl #4
	ldr	r5, [r3, #140]
	lsl	r2, r2, #1
	orr	r0, r0, r6, lsl #14
	and	r1, r1, r4
	add	r3, r3, #52
	orr	r2, r2, #2048
	orr	r0, r0, #8192
	orr	r1, r1, r5, lsl #14
	cmp	lr, r3
	strh	r2, [ip, #44]	@ movhi
	strh	r0, [ip, #40]	@ movhi
	strh	r1, [ip, #42]	@ movhi
	add	ip, ip, #8
	bne	.L19
	pop	{r4, r5, r6, lr}
	bx	lr
.L23:
	.align	2
.L22:
	.word	finaleSpritesArr
	.word	shadowOAM
	.word	511
	.size	drawPersistentSprites, .-drawPersistentSprites
	.align	2
	.global	selectArrow
	.syntax unified
	.arm
	.fpu softvfp
	.type	selectArrow, %function
selectArrow:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r2, .L30
	ldr	r3, .L30+4
	ldrb	r2, [r2]	@ zero_extendqisi2
	ldrh	r1, [r3, #8]
	sub	lr, r3, #652
	sub	ip, r3, #588
	sub	r0, r3, #524
	cmp	r2, #2
	strh	r1, [lr]	@ movhi
	strh	r1, [ip]	@ movhi
	strh	r1, [r0]	@ movhi
	beq	.L25
	cmp	r2, #3
	beq	.L26
	cmp	r2, #1
	beq	.L29
.L27:
	ldr	r4, .L30+8
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L30+12
	ldr	r1, .L30+16
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L25:
	ldrh	r3, [r3, #10]
	strh	r3, [ip]	@ movhi
	b	.L27
.L29:
	ldrh	r3, [r3, #10]
	strh	r3, [lr]	@ movhi
	b	.L27
.L26:
	ldrh	r3, [r3, #10]
	strh	r3, [r0]	@ movhi
	b	.L27
.L31:
	.align	2
.L30:
	.word	replyNum
	.word	messagescreenMap+1488
	.word	DMANow
	.word	100712448
	.word	messagescreenMap
	.size	selectArrow, .-selectArrow
	.align	2
	.global	marsSpeaks
	.syntax unified
	.arm
	.fpu softvfp
	.type	marsSpeaks, %function
marsSpeaks:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r5, .L53
	ldr	r4, .L53+4
	ldrb	r2, [r5]	@ zero_extendqisi2
	ldrb	r3, [r4]	@ zero_extendqisi2
	add	r3, r2, r3
	and	r3, r3, #255
	cmp	r3, #4
	ldrls	pc, [pc, r3, asl #2]
	b	.L44
.L35:
	.word	.L39
	.word	.L38
	.word	.L37
	.word	.L36
	.word	.L34
.L34:
	mov	r8, #1
	mov	r7, #0
	ldr	r1, .L53+8
	ldr	r3, .L53+12
	strb	r8, [r1]
	ldr	r2, .L53+16
	ldr	r1, .L53+20
.L52:
	strb	r7, [r3]
	str	r1, [r2, #100]
	ldr	r3, .L53+24
	mov	lr, pc
	bx	r3
	ldr	r6, .L53+28
	strb	r8, [r5]
	strb	r7, [r4]
.L33:
	ldrb	r3, [r6]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L32
	ldr	r3, .L53+32
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L32
	ldr	r3, .L53+8
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	movne	r2, #1
	ldrne	r3, .L53+36
	strbne	r2, [r3]
.L32:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L39:
	ldr	r1, .L53+16
	ldr	r0, .L53+40
	add	r2, r2, #1
	ldr	r3, .L53+24
	str	r0, [r1, #100]
	strb	r2, [r5]
	ldr	r6, .L53+28
	mov	lr, pc
	bx	r3
	b	.L33
.L38:
	mov	r3, #1
	ldr	r1, .L53+16
	ldr	r0, .L53+44
	ldr	ip, .L53+12
	ldr	r2, .L53+24
	str	r0, [r1, #100]
	strb	r3, [r4]
	strb	r3, [ip]
	ldr	r6, .L53+28
	mov	lr, pc
	bx	r2
	bl	selectArrow
	b	.L33
.L37:
	mov	r7, #0
	mov	r8, #1
	ldr	r3, .L53+12
	ldr	r2, .L53+16
	ldr	r1, .L53+48
	ldr	r6, .L53+28
	strb	r7, [r3]
	str	r1, [r2, #100]
	ldr	r3, .L53+24
	strb	r8, [r6]
	mov	lr, pc
	bx	r3
	strb	r8, [r5]
	strb	r7, [r4]
	b	.L33
.L36:
	mov	r8, #1
	ldr	r1, .L53+32
	mov	r7, #0
	strb	r8, [r1]
	ldr	r3, .L53+12
	ldr	r2, .L53+16
	ldr	r1, .L53+52
	b	.L52
.L44:
	ldr	r6, .L53+28
	b	.L33
.L54:
	.align	2
.L53:
	.word	messageNum
	.word	replyNum
	.word	checkThreeBool
	.word	replyBool
	.word	finaleSpritesArr
	.word	.LANCHOR0+460
	.word	printText
	.word	checkOneBool
	.word	checkTwoBool
	.word	activateDoorBool
	.word	.LANCHOR0+112
	.word	.LANCHOR0+152
	.word	.LANCHOR0+220
	.word	.LANCHOR0+344
	.size	marsSpeaks, .-marsSpeaks
	.align	2
	.global	updateFinale
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateFinale, %function
updateFinale:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L82
	ldrh	r3, [r4]
	tst	r3, #1
	beq	.L56
	ldr	r2, .L82+4
	ldrh	r2, [r2]
	tst	r2, #1
	beq	.L79
.L56:
	tst	r3, #2
	beq	.L57
	ldr	r2, .L82+4
	ldrh	r2, [r2]
	ands	r2, r2, #2
	beq	.L80
.L57:
	ldr	r2, .L82+8
	ldrb	r2, [r2]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L55
	tst	r3, #64
	beq	.L60
	ldr	r2, .L82+4
	ldrh	r2, [r2]
	tst	r2, #64
	beq	.L81
.L60:
	tst	r3, #128
	beq	.L55
	ldr	r3, .L82+4
	ldrh	r3, [r3]
	tst	r3, #128
	bne	.L55
	ldr	r3, .L82+12
	ldrb	r2, [r3]	@ zero_extendqisi2
	cmp	r2, #3
	moveq	r2, #1
	addne	r2, r2, #1
	andne	r2, r2, #255
	strb	r2, [r3]
	pop	{r4, lr}
	b	selectArrow
.L80:
	mov	r1, #67108864
	ldr	r3, .L82+12
	ldr	ip, .L82+16
	ldr	r0, .L82+20
	strb	r2, [r3]
	strb	r2, [ip]
	strb	r2, [r0]
	ldr	r3, .L82+24
	ldrh	r2, [r1]
	and	r3, r3, r2
	strh	r3, [r1]	@ movhi
.L55:
	pop	{r4, lr}
	bx	lr
.L79:
	bl	marsSpeaks
	ldrh	r3, [r4]
	b	.L56
.L81:
	ldr	r3, .L82+12
	ldrb	r2, [r3]	@ zero_extendqisi2
	cmp	r2, #1
	moveq	r2, #3
	subne	r2, r2, #1
	andne	r2, r2, #255
	strb	r2, [r3]
	bl	selectArrow
	ldrh	r3, [r4]
	b	.L60
.L83:
	.align	2
.L82:
	.word	oldButtons
	.word	buttons
	.word	replyBool
	.word	replyNum
	.word	marsInteractBool
	.word	messageNum
	.word	65279
	.size	updateFinale, .-updateFinale
	.align	2
	.global	chapterThreeIntro
	.syntax unified
	.arm
	.fpu softvfp
	.type	chapterThreeIntro, %function
chapterThreeIntro:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 4096
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r4, #0
	sub	sp, sp, #4096
	sub	sp, sp, #4
	mov	r1, #256
	mov	r0, r4
	ldr	r3, .L90
	mov	lr, pc
	bx	r3
	ldr	r3, .L90+4
	mov	r0, sp
	mov	r2, #2048
	ldr	r1, .L90+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L90+12
	ldr	r7, .L90+16
	ldrh	r6, [r3, #10]
	ldr	r9, .L90+20
	ldr	r8, .L90+24
	sub	r5, sp, #2
	b	.L86
.L85:
	cmp	r4, #700
	beq	.L89
.L86:
	tst	r4, #31
	strh	r6, [r5, #2]!	@ movhi
	add	r4, r4, #1
	bne	.L85
	mov	r3, r9
	mov	r2, r8
	mov	r1, sp
	mov	r0, #3
	mov	lr, pc
	bx	r7
	cmp	r4, #700
	bne	.L86
.L89:
	mov	r2, #67108864
	ldr	r3, .L90+28
	ldrh	r1, [r2]
	and	r3, r3, r1
	strh	r3, [r2]	@ movhi
	mov	r0, #3
	mov	r3, #1328
	mov	r2, #100663296
	ldr	r1, .L90+32
	mov	lr, pc
	bx	r7
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L90+24
	ldr	r1, .L90+36
	mov	lr, pc
	bx	r7
	add	sp, sp, #4096
	add	sp, sp, #4
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L91:
	.align	2
.L90:
	.word	timerWait
	.word	memcpy
	.word	chapter3bgMap
	.word	chapter3bgMap+1392
	.word	DMANow
	.word	1073742848
	.word	100712448
	.word	65279
	.word	messagescreenTiles
	.word	messagescreenMap
	.size	chapterThreeIntro, .-chapterThreeIntro
	.comm	finaleSpritesArr,260,4
	.global	door
	.global	mars_5
	.global	mars_4
	.global	mars_3
	.global	mars_2
	.global	mars_1
	.comm	messageNum,1,1
	.comm	checkThreeBool,1,1
	.comm	checkTwoBool,1,1
	.comm	checkOneBool,1,1
	.comm	replyNum,1,1
	.comm	replyBool,1,1
	.comm	marsInteractBool,1,1
	.comm	currSong,4,4
	.comm	state,4,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	door, %object
	.size	door, 109
door:
	.ascii	"Fear crawls up your spine. You've been so scared of"
	.ascii	" being interned alive, you haven't gone outside in "
	.ascii	"weeks.\000"
	.space	3
	.type	mars_1, %object
	.size	mars_1, 39
mars_1:
	.ascii	"\"Oh, you're up! Are you feeling okay?\"\000"
	.space	1
	.type	mars_2, %object
	.size	mars_2, 65
mars_2:
	.ascii	" What happened?             Where are we?          "
	.ascii	"    What now?\000"
	.space	3
	.type	mars_3, %object
	.size	mars_3, 124
mars_3:
	.ascii	"\"I came by to pick you up, but you were having a c"
	.ascii	"ataleptic episode. You recovered, but once we got h"
	.ascii	"ere, you had another.\"\000"
	.type	mars_4, %object
	.size	mars_4, 114
mars_4:
	.ascii	"\"I rented us a cabin! You've been so paranoid abou"
	.ascii	"t EVERYTHING lately. And you haven't left your hous"
	.ascii	"e in weeks.\"\000"
	.space	2
	.type	mars_5, %object
	.size	mars_5, 123
mars_5:
	.ascii	"\"It's up to you, but personally? I think you shoul"
	.ascii	"d get some fresh air. That is, if you can bring you"
	.ascii	"rself to go outside.\"\000"
	.ident	"GCC: (devkitARM release 53) 9.1.0"
