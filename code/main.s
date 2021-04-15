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
	.file	"main.c"
	.text
	.align	2
	.global	goToStart
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	lr, #0
	ldr	ip, .L4
	ldr	r4, .L4+4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L4+8
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	mov	r3, #3664
	mov	r0, #3
	ldr	r2, .L4+12
	ldr	r1, .L4+16
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L4+20
	ldr	r1, .L4+24
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	mov	r1, #4608
	ldr	r0, .L4+28
	ldr	r2, .L4+32
	strh	r0, [r3, #10]	@ movhi
	strh	r1, [r3]	@ movhi
	mov	lr, pc
	bx	r2
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	state
	.word	DMANow
	.word	startscreenPal
	.word	100679680
	.word	startscreenTiles
	.word	100704256
	.word	startscreenMap
	.word	5126
	.word	initGame
	.size	goToStart, .-goToStart
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #67108864
	mov	r1, #4608
	mov	r2, #0
	strh	r1, [r3]	@ movhi
	add	r3, r3, #256
	ldrh	r0, [r3, #48]
	ldr	r1, .L7
	ldr	r3, .L7+4
	strh	r0, [r1]	@ movhi
	strh	r2, [r3]	@ movhi
	b	goToStart
.L8:
	.align	2
.L7:
	.word	buttons
	.word	oldButtons
	.size	initialize, .-initialize
	.align	2
	.global	goToInstructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToInstructions, %function
goToInstructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #1
	ldr	r1, .L11
	push	{r4, lr}
	ldr	ip, .L11+4
	ldr	lr, [r1]
	ldr	r4, .L11+8
	str	r0, [r1]
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L11+12
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r3, .L11+16
	ldr	r2, .L11+20
	ldr	r1, .L11+24
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	ldr	r2, .L11+28
	mov	r0, #3
	ldr	r1, .L11+32
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L11+36
	pop	{r4, lr}
	strh	r2, [r3, #10]	@ movhi
	bx	lr
.L12:
	.align	2
.L11:
	.word	state
	.word	priorState
	.word	DMANow
	.word	instructionscreenPal
	.word	5200
	.word	100679680
	.word	instructionscreenTiles
	.word	100704256
	.word	instructionscreenMap
	.word	5126
	.size	goToInstructions, .-goToInstructions
	.align	2
	.global	start
	.syntax unified
	.arm
	.fpu softvfp
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L18
	ldrh	r3, [r3]
	tst	r3, #1
	bxeq	lr
	ldr	r3, .L18+4
	ldrh	r3, [r3]
	tst	r3, #1
	bxne	lr
	b	goToInstructions
.L19:
	.align	2
.L18:
	.word	oldButtons
	.word	buttons
	.size	start, .-start
	.align	2
	.global	goToIntro
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToIntro, %function
goToIntro:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #2
	ldr	r2, .L22
	push	{r4, lr}
	ldr	r3, .L22+4
	ldr	r4, .L22+8
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L22+12
	mov	lr, pc
	bx	r4
	mov	r3, #48
	mov	r0, #3
	ldr	r2, .L22+16
	ldr	r1, .L22+20
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L22+24
	ldr	r1, .L22+28
	mov	lr, pc
	bx	r4
	mov	r3, #2736
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L22+32
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L22+36
	ldr	r1, .L22+40
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	mov	r2, #6144
	mov	r1, #4864
	ldr	r0, .L22+44
	strh	r2, [r3, #8]	@ movhi
	strh	r0, [r3, #10]	@ movhi
	ldr	r2, .L22+48
	strh	r1, [r3]	@ movhi
	mov	lr, pc
	bx	r2
	pop	{r4, lr}
	bx	lr
.L23:
	.align	2
.L22:
	.word	state
	.word	initColdDark
	.word	DMANow
	.word	blackbgPal
	.word	100679680
	.word	blackbgTiles
	.word	100704256
	.word	blackbgMap
	.word	chapter1bgTiles
	.word	100712448
	.word	chapter1bgMap
	.word	5126
	.word	chapterOneIntro
	.size	goToIntro, .-goToIntro
	.align	2
	.global	goToLivingRoom
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLivingRoom, %function
goToLivingRoom:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r0, #0
	mov	r6, #3
	ldr	r3, .L32
	ldr	r5, .L32+4
	ldr	r2, [r3]
	ldr	r1, .L32+8
	str	r2, [r5]
	ldr	r2, .L32+12
	str	r6, [r3]
	str	r0, [r1]
	mov	lr, pc
	bx	r2
	ldr	r3, [r5]
	cmp	r3, #2
	beq	.L30
	mov	r3, #1280
	mov	r2, #100663296
	mov	r0, r6
	ldr	r1, .L32+16
	ldr	r4, .L32+20
	mov	lr, pc
	bx	r4
	mov	r0, r6
	mov	r3, #1024
	ldr	r2, .L32+24
	ldr	r1, .L32+28
	mov	lr, pc
	bx	r4
.L26:
	mov	r6, #67108864
	mov	r2, #6144
	mov	r3, #256
	mov	r0, #3
	strh	r2, [r6, #8]	@ movhi
	ldr	r1, .L32+32
	mov	r2, #83886080
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r3, .L32+36
	ldr	r2, .L32+40
	ldr	r1, .L32+44
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L32+48
	ldr	r1, .L32+52
	mov	lr, pc
	bx	r4
	ldr	r2, .L32+56
	mov	r3, #256
	mov	r0, #3
	strh	r2, [r6, #10]	@ movhi
	ldr	r1, .L32+60
	ldr	r2, .L32+64
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L32+68
	ldr	r1, .L32+72
	mov	lr, pc
	bx	r4
	ldr	r3, .L32+76
	mov	lr, pc
	bx	r3
	ldr	r3, [r5]
	cmp	r3, #2
	movne	r3, #4608
	strhne	r3, [r6]	@ movhi
	beq	.L31
	pop	{r4, r5, r6, lr}
	bx	lr
.L30:
	mov	r0, r6
	mov	r3, #2160
	mov	r2, #100663296
	ldr	r1, .L32+80
	ldr	r4, .L32+20
	mov	lr, pc
	bx	r4
	mov	r0, r6
	mov	r3, #1024
	ldr	r2, .L32+24
	ldr	r1, .L32+84
	mov	lr, pc
	bx	r4
	b	.L26
.L31:
	mov	r2, #4864
	ldr	r3, .L32+88
	strh	r2, [r6]	@ movhi
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	bx	lr
.L33:
	.align	2
.L32:
	.word	state
	.word	priorState
	.word	nextRoomBool
	.word	loadLivingRoom
	.word	messagescreenTiles
	.word	DMANow
	.word	100712448
	.word	messagescreenMap
	.word	livingroombgPal
	.word	8848
	.word	100679680
	.word	livingroombgTiles
	.word	100704256
	.word	livingroombgMap
	.word	-11258
	.word	livingroomspritesPal
	.word	83886592
	.word	100728832
	.word	livingroomspritesTiles
	.word	hideSprites
	.word	chapter2bgTiles
	.word	chapter2bgMap
	.word	chapterTwoIntro
	.size	goToLivingRoom, .-goToLivingRoom
	.align	2
	.global	intro
	.syntax unified
	.arm
	.fpu softvfp
	.type	intro, %function
intro:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L38
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L38+4
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L37
	pop	{r4, lr}
	bx	lr
.L37:
	pop	{r4, lr}
	b	goToLivingRoom
.L39:
	.align	2
.L38:
	.word	updateColdDark
	.word	nextRoomBool
	.size	intro, .-intro
	.align	2
	.global	goToComputer
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToComputer, %function
goToComputer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	lr, #4
	mov	r1, #0
	mov	r5, #67108864
	ldr	r3, .L42
	ldr	r0, .L42+4
	ldr	ip, [r3]
	ldr	r2, .L42+8
	str	lr, [r3]
	ldr	r3, .L42+12
	str	ip, [r0]
	ldr	r4, .L42+16
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L42+20
	mov	lr, pc
	bx	r4
	mov	r3, #1184
	mov	r0, #3
	ldr	r2, .L42+24
	ldr	r1, .L42+28
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L42+32
	ldr	r1, .L42+36
	mov	lr, pc
	bx	r4
	ldr	r2, .L42+40
	mov	r3, #256
	strh	r2, [r5, #10]	@ movhi
	mov	r0, #3
	ldr	r2, .L42+44
	ldr	r1, .L42+48
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L42+52
	ldr	r1, .L42+56
	mov	lr, pc
	bx	r4
	mov	r2, #4608
	ldr	r3, .L42+60
	strh	r2, [r5]	@ movhi
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	bx	lr
.L43:
	.align	2
.L42:
	.word	state
	.word	priorState
	.word	nextRoomBool
	.word	loadComputer
	.word	DMANow
	.word	computerscreenbgPal
	.word	100679680
	.word	computerscreenbgTiles
	.word	100704256
	.word	computerscreenbgMap
	.word	5126
	.word	83886592
	.word	computerspritesPal
	.word	100728832
	.word	computerspritesTiles
	.word	hideSprites
	.size	goToComputer, .-goToComputer
	.align	2
	.global	computer
	.syntax unified
	.arm
	.fpu softvfp
	.type	computer, %function
computer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L51
	mov	lr, pc
	bx	r3
	ldr	r3, .L51+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L51+8
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L44
	ldr	r3, .L51+12
	ldrh	r3, [r3]
	ands	r3, r3, #2
	beq	.L50
.L44:
	pop	{r4, lr}
	bx	lr
.L50:
	ldr	r2, .L51+16
	strb	r3, [r2]
	pop	{r4, lr}
	b	goToLivingRoom
.L52:
	.align	2
.L51:
	.word	updateComputer
	.word	drawComputer
	.word	oldButtons
	.word	buttons
	.word	computerAccessBool
	.size	computer, .-computer
	.align	2
	.global	goToKitchen
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToKitchen, %function
goToKitchen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	lr, #5
	mov	r1, #0
	ldr	r3, .L55
	ldr	r0, .L55+4
	ldr	ip, [r3]
	ldr	r2, .L55+8
	str	lr, [r3]
	ldr	r3, .L55+12
	str	ip, [r0]
	ldr	r4, .L55+16
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L55+20
	mov	lr, pc
	bx	r4
	mov	r3, #3152
	mov	r0, #3
	ldr	r2, .L55+24
	ldr	r1, .L55+28
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L55+32
	ldr	r1, .L55+36
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	ldr	r1, .L55+40
	mov	r3, #256
	strh	r1, [r2, #10]	@ movhi
	mov	r0, #3
	ldr	r2, .L55+44
	ldr	r1, .L55+48
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L55+52
	ldr	r1, .L55+56
	mov	lr, pc
	bx	r4
	ldr	r3, .L55+60
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L56:
	.align	2
.L55:
	.word	state
	.word	priorState
	.word	nextRoomBool
	.word	loadKitchen
	.word	DMANow
	.word	kitchenbgPal
	.word	100679680
	.word	kitchenbgTiles
	.word	100704256
	.word	kitchenbgMap
	.word	5126
	.word	83886592
	.word	kitchenspritesPal
	.word	100728832
	.word	kitchenspritesTiles
	.word	hideSprites
	.size	goToKitchen, .-goToKitchen
	.align	2
	.global	goToBedroom
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToBedroom, %function
goToBedroom:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	lr, #6
	mov	r1, #0
	ldr	r3, .L59
	ldr	r0, .L59+4
	ldr	ip, [r3]
	ldr	r2, .L59+8
	str	lr, [r3]
	ldr	r3, .L59+12
	str	ip, [r0]
	ldr	r4, .L59+16
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L59+20
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r3, .L59+24
	ldr	r2, .L59+28
	ldr	r1, .L59+32
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L59+36
	ldr	r1, .L59+40
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	ldr	r1, .L59+44
	mov	r3, #256
	strh	r1, [r2, #10]	@ movhi
	mov	r0, #3
	ldr	r2, .L59+48
	ldr	r1, .L59+52
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L59+56
	ldr	r1, .L59+60
	mov	lr, pc
	bx	r4
	ldr	r3, .L59+64
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L60:
	.align	2
.L59:
	.word	state
	.word	priorState
	.word	nextRoomBool
	.word	loadBedroom
	.word	DMANow
	.word	bedroombgPal
	.word	5648
	.word	100679680
	.word	bedroombgTiles
	.word	100704256
	.word	bedroombgMap
	.word	21510
	.word	83886592
	.word	bedroomspritesPal
	.word	100728832
	.word	bedroomspritesTiles
	.word	hideSprites
	.size	goToBedroom, .-goToBedroom
	.align	2
	.global	instructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	instructions, %function
instructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L71
	ldrh	r3, [r3]
	tst	r3, #1
	bxeq	lr
	ldr	r3, .L71+4
	ldrh	r3, [r3]
	tst	r3, #1
	bxne	lr
	ldr	r3, .L71+8
	ldr	r3, [r3]
	cmp	r3, #6
	ldrls	pc, [pc, r3, asl #2]
	b	.L61
.L64:
	.word	.L67
	.word	.L61
	.word	.L61
	.word	.L66
	.word	.L61
	.word	.L65
	.word	.L63
.L61:
	bx	lr
.L63:
	b	goToBedroom
.L65:
	b	goToKitchen
.L66:
	b	goToLivingRoom
.L67:
	b	goToIntro
.L72:
	.align	2
.L71:
	.word	oldButtons
	.word	buttons
	.word	priorState
	.size	instructions, .-instructions
	.align	2
	.global	goToSafe
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToSafe, %function
goToSafe:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #7
	push	{r4, r5, r6, lr}
	mov	r5, #67108864
	ldr	r3, .L75
	ldr	r0, .L75+4
	ldr	r1, .L75+8
	ldrh	ip, [r0]
	ldr	lr, .L75+12
	ldr	r4, [r3]
	ldrh	r1, [r1]
	str	r2, [r3]
	ldr	r0, .L75+16
	ldr	r2, .L75+20
	ldr	r3, .L75+24
	str	r4, [lr]
	strh	ip, [r0]	@ movhi
	ldr	r4, .L75+28
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L75+32
	mov	lr, pc
	bx	r4
	mov	r3, #480
	mov	r0, #3
	ldr	r2, .L75+36
	ldr	r1, .L75+40
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L75+44
	ldr	r1, .L75+48
	mov	lr, pc
	bx	r4
	ldr	r2, .L75+52
	mov	r3, #256
	strh	r2, [r5, #10]	@ movhi
	mov	r0, #3
	ldr	r2, .L75+56
	ldr	r1, .L75+60
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L75+64
	ldr	r1, .L75+68
	mov	lr, pc
	bx	r4
	mov	r3, #6144
	strh	r3, [r5, #8]	@ movhi
	ldrh	r3, [r5]
	orr	r3, r3, #4608
	strh	r3, [r5]	@ movhi
	ldr	r3, .L75+72
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	bx	lr
.L76:
	.align	2
.L75:
	.word	state
	.word	hOff
	.word	vOff
	.word	priorState
	.word	priorHoff
	.word	priorVoff
	.word	loadSafe
	.word	DMANow
	.word	safebgPal
	.word	100679680
	.word	safebgTiles
	.word	100704256
	.word	safebgMap
	.word	5126
	.word	83886592
	.word	safespritesPal
	.word	100728832
	.word	safespritesTiles
	.word	hideSprites
	.size	goToSafe, .-goToSafe
	.align	2
	.global	safe
	.syntax unified
	.arm
	.fpu softvfp
	.type	safe, %function
safe:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L88
	mov	lr, pc
	bx	r3
	ldr	r3, .L88+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L88+8
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L78
	ldr	r3, .L88+12
	ldrh	r3, [r3]
	tst	r3, #2
	bne	.L78
.L79:
	mov	r3, #67108864
	mov	r2, #4608
	pop	{r4, lr}
	strh	r2, [r3]	@ movhi
	b	goToBedroom
.L78:
	ldr	r3, .L88+16
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L79
	pop	{r4, lr}
	bx	lr
.L89:
	.align	2
.L88:
	.word	updateCursor
	.word	drawSafeSprites
	.word	oldButtons
	.word	buttons
	.word	openSafeBool
	.size	safe, .-safe
	.align	2
	.global	goToOutro
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToOutro, %function
goToOutro:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	mov	r0, #8
	push	{r4, lr}
	ldr	ip, .L92
	ldr	lr, .L92+4
	ldr	r1, .L92+8
	ldr	r2, .L92+12
	strh	r3, [lr]	@ movhi
	strh	r3, [ip]	@ movhi
	ldr	r4, .L92+16
	str	r0, [r1]
	mov	lr, pc
	bx	r2
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L92+20
	mov	lr, pc
	bx	r4
	mov	r3, #1504
	mov	r0, #3
	ldr	r2, .L92+24
	ldr	r1, .L92+28
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	ldr	r2, .L92+32
	mov	r0, #3
	ldr	r1, .L92+36
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L92+40
	pop	{r4, lr}
	strh	r2, [r3, #10]	@ movhi
	bx	lr
.L93:
	.align	2
.L92:
	.word	hOff
	.word	vOff
	.word	state
	.word	hideSprites
	.word	DMANow
	.word	outroscreenPal
	.word	100679680
	.word	outroscreenTiles
	.word	100716544
	.word	outroscreenMap
	.word	6662
	.size	goToOutro, .-goToOutro
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #9
	mov	r2, #0
	ldr	r0, .L96
	push	{r4, lr}
	ldr	r1, .L96+4
	ldr	lr, [r0]
	str	ip, [r0]
	ldr	r0, .L96+8
	ldrh	ip, [r1]
	ldr	r3, .L96+12
	str	lr, [r0]
	ldr	r0, .L96+16
	ldrh	lr, [r3]
	strh	ip, [r0]	@ movhi
	ldr	ip, .L96+20
	ldr	r0, .L96+24
	strh	lr, [ip]	@ movhi
	ldr	r4, .L96+28
	strh	r2, [r1]	@ movhi
	strh	r2, [r3]	@ movhi
	mov	lr, pc
	bx	r0
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L96+32
	mov	lr, pc
	bx	r4
	mov	r3, #2800
	mov	r0, #3
	ldr	r2, .L96+36
	ldr	r1, .L96+40
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	ldr	r2, .L96+44
	mov	r0, #3
	ldr	r1, .L96+48
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L96+52
	pop	{r4, lr}
	strh	r2, [r3, #10]	@ movhi
	bx	lr
.L97:
	.align	2
.L96:
	.word	state
	.word	vOff
	.word	priorState
	.word	hOff
	.word	priorVoff
	.word	priorHoff
	.word	hideSprites
	.word	DMANow
	.word	pausescreenPal
	.word	100679680
	.word	pausescreenTiles
	.word	100716544
	.word	pausescreenMap
	.word	6662
	.size	goToPause, .-goToPause
	.align	2
	.global	livingRoom
	.syntax unified
	.arm
	.fpu softvfp
	.type	livingRoom, %function
livingRoom:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L124
	ldr	r4, .L124+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L124+8
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L99
	ldr	r3, .L124+12
	ldrh	r3, [r3]
	tst	r3, #8
	moveq	r2, #4
	ldreq	r3, .L124+16
	streq	r2, [r3]
.L99:
	ldr	r3, .L124+20
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L120
.L100:
	ldr	r3, .L124+24
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L121
.L101:
	ldr	r3, .L124+28
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L122
.L102:
	ldrh	r3, [r4]
	tst	r3, #4
	beq	.L98
	ldr	r3, .L124+12
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L123
.L98:
	pop	{r4, lr}
	bx	lr
.L122:
	bl	goToOutro
	b	.L102
.L121:
	bl	goToComputer
	b	.L101
.L120:
	bl	goToKitchen
	b	.L100
.L123:
	pop	{r4, lr}
	b	goToPause
.L125:
	.align	2
.L124:
	.word	updateGame
	.word	oldButtons
	.word	drawGame
	.word	buttons
	.word	mode
	.word	nextRoomBool
	.word	computerAccessBool
	.word	allEmailsBool
	.size	livingRoom, .-livingRoom
	.align	2
	.global	kitchen
	.syntax unified
	.arm
	.fpu softvfp
	.type	kitchen, %function
kitchen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L142
	mov	lr, pc
	bx	r3
	ldr	r3, .L142+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L142+8
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L138
	cmp	r3, #2
	beq	.L139
.L128:
	ldr	r4, .L142+12
	ldrh	r3, [r4]
	tst	r3, #4
	beq	.L129
	ldr	r2, .L142+16
	ldrh	r2, [r2]
	tst	r2, #4
	beq	.L140
.L129:
	tst	r3, #256
	beq	.L126
	ldr	r3, .L142+16
	ldrh	r3, [r3]
	tst	r3, #256
	beq	.L141
.L126:
	pop	{r4, lr}
	bx	lr
.L138:
	bl	goToLivingRoom
	b	.L128
.L141:
	pop	{r4, lr}
	b	goToOutro
.L140:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L129
.L139:
	bl	goToBedroom
	b	.L128
.L143:
	.align	2
.L142:
	.word	updateGame
	.word	drawGame
	.word	nextRoomBool
	.word	oldButtons
	.word	buttons
	.size	kitchen, .-kitchen
	.align	2
	.global	bedroom
	.syntax unified
	.arm
	.fpu softvfp
	.type	bedroom, %function
bedroom:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L155
	mov	lr, pc
	bx	r3
	ldr	r3, .L155+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L155+8
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L145
	ldr	r3, .L155+12
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L152
.L145:
	ldr	r3, .L155+16
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L153
	cmp	r3, #2
	beq	.L154
	pop	{r4, lr}
	bx	lr
.L153:
	pop	{r4, lr}
	b	goToKitchen
.L152:
	bl	goToPause
	b	.L145
.L154:
	pop	{r4, lr}
	b	goToSafe
.L156:
	.align	2
.L155:
	.word	updateGame
	.word	drawGame
	.word	oldButtons
	.word	buttons
	.word	nextRoomBool
	.size	bedroom, .-bedroom
	.align	2
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L180
	ldrh	r3, [r4]
	tst	r3, #4
	beq	.L158
	ldr	r2, .L180+4
	ldrh	r2, [r2]
	tst	r2, #4
	beq	.L177
.L158:
	tst	r3, #8
	beq	.L165
	ldr	r2, .L180+4
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L178
.L165:
	tst	r3, #2
	beq	.L157
	ldr	r3, .L180+4
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L179
.L157:
	pop	{r4, lr}
	bx	lr
.L177:
	ldr	r2, .L180+8
	ldr	r2, [r2]
	sub	r2, r2, #2
	cmp	r2, #6
	ldrls	pc, [pc, r2, asl #2]
	b	.L158
.L160:
	.word	.L164
	.word	.L163
	.word	.L158
	.word	.L162
	.word	.L161
	.word	.L158
	.word	.L159
.L179:
	ldr	r2, .L180+8
	ldr	r3, .L180+12
	ldr	r2, [r2]
	pop	{r4, lr}
	str	r2, [r3]
	b	goToInstructions
.L178:
	bl	goToStart
	ldrh	r3, [r4]
	b	.L165
.L164:
	bl	goToIntro
	ldrh	r3, [r4]
	b	.L158
.L163:
	bl	goToLivingRoom
	ldrh	r3, [r4]
	b	.L158
.L162:
	bl	goToKitchen
	ldrh	r3, [r4]
	b	.L158
.L161:
	bl	goToBedroom
	ldrh	r3, [r4]
	b	.L158
.L159:
	bl	goToOutro
	ldrh	r3, [r4]
	b	.L158
.L181:
	.align	2
.L180:
	.word	oldButtons
	.word	buttons
	.word	priorState
	.word	state
	.size	pause, .-pause
	.align	2
	.global	goToWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #10
	ldr	r2, .L184
	push	{r4, lr}
	ldr	r3, .L184+4
	ldr	r4, .L184+8
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L184+12
	mov	lr, pc
	bx	r4
	mov	r3, #2032
	mov	r0, #3
	ldr	r2, .L184+16
	ldr	r1, .L184+20
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	ldr	r2, .L184+24
	mov	r0, #3
	ldr	r1, .L184+28
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L184+32
	pop	{r4, lr}
	strh	r2, [r3, #10]	@ movhi
	bx	lr
.L185:
	.align	2
.L184:
	.word	state
	.word	hideSprites
	.word	DMANow
	.word	winscreenPal
	.word	100679680
	.word	winscreenTiles
	.word	100716544
	.word	winscreenMap
	.word	6662
	.size	goToWin, .-goToWin
	.align	2
	.global	outro
	.syntax unified
	.arm
	.fpu softvfp
	.type	outro, %function
outro:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L198
	ldrh	r3, [r4]
	tst	r3, #1
	beq	.L187
	ldr	r2, .L198+4
	ldrh	r2, [r2]
	tst	r2, #1
	beq	.L196
.L187:
	tst	r3, #4
	beq	.L186
	ldr	r3, .L198+4
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L197
.L186:
	pop	{r4, lr}
	bx	lr
.L197:
	pop	{r4, lr}
	b	goToPause
.L196:
	bl	goToWin
	ldrh	r3, [r4]
	b	.L187
.L199:
	.align	2
.L198:
	.word	oldButtons
	.word	buttons
	.size	outro, .-outro
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #4608
	mov	r5, #67108864
	mov	r2, #0
	push	{r4, r7, fp, lr}
	strh	r3, [r5]	@ movhi
	ldr	r3, .L222
	ldr	r4, .L222+4
	ldrh	r1, [r3, #48]
	ldr	r8, .L222+8
	mov	r9, r3
	ldr	r3, .L222+12
	strh	r1, [r4]	@ movhi
	strh	r2, [r8]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r6, .L222+16
	ldr	fp, .L222+20
	ldr	r10, .L222+24
	ldr	r7, .L222+28
.L216:
	ldrh	r1, [r4]
	strh	r1, [r8]	@ movhi
	ldr	r2, [r6]
	ldrh	r3, [r9, #48]
	strh	r3, [r4]	@ movhi
	cmp	r2, #10
	ldrls	pc, [pc, r2, asl #2]
	b	.L201
.L203:
	.word	.L213
	.word	.L212
	.word	.L211
	.word	.L210
	.word	.L209
	.word	.L208
	.word	.L207
	.word	.L206
	.word	.L205
	.word	.L204
	.word	.L202
.L202:
	tst	r1, #1
	beq	.L201
	tst	r3, #1
	beq	.L221
.L201:
	mov	lr, pc
	bx	fp
	ldrh	r3, [r10]
	strh	r3, [r5, #20]	@ movhi
	ldr	r3, .L222+32
	ldrh	r2, [r3]
	mov	r1, r7
	strh	r2, [r5, #22]	@ movhi
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	ip, .L222+36
	mov	lr, pc
	bx	ip
	b	.L216
.L204:
	ldr	r3, .L222+40
	mov	lr, pc
	bx	r3
	b	.L201
.L205:
	ldr	r3, .L222+44
	mov	lr, pc
	bx	r3
	b	.L201
.L206:
	ldr	r3, .L222+48
	mov	lr, pc
	bx	r3
	b	.L201
.L207:
	ldr	r3, .L222+52
	mov	lr, pc
	bx	r3
	b	.L201
.L208:
	ldr	r3, .L222+56
	mov	lr, pc
	bx	r3
	b	.L201
.L209:
	ldr	r3, .L222+60
	mov	lr, pc
	bx	r3
	b	.L201
.L210:
	ldr	r3, .L222+64
	mov	lr, pc
	bx	r3
	b	.L201
.L211:
	ldr	r3, .L222+68
	mov	lr, pc
	bx	r3
	ldr	r3, .L222+72
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L201
	ldr	r3, .L222+76
	mov	lr, pc
	bx	r3
	b	.L201
.L213:
	tst	r1, #1
	beq	.L201
	tst	r3, #1
	bne	.L201
	ldr	r3, .L222+80
	mov	lr, pc
	bx	r3
	b	.L201
.L212:
	ldr	r3, .L222+84
	mov	lr, pc
	bx	r3
	b	.L201
.L221:
	ldr	r3, .L222+12
	mov	lr, pc
	bx	r3
	b	.L201
.L223:
	.align	2
.L222:
	.word	67109120
	.word	buttons
	.word	oldButtons
	.word	goToStart
	.word	state
	.word	waitForVBlank
	.word	hOff
	.word	shadowOAM
	.word	vOff
	.word	DMANow
	.word	pause
	.word	outro
	.word	safe
	.word	bedroom
	.word	kitchen
	.word	computer
	.word	livingRoom
	.word	updateColdDark
	.word	nextRoomBool
	.word	goToLivingRoom
	.word	goToInstructions
	.word	instructions
	.size	main, .-main
	.text
	.align	2
	.global	win
	.syntax unified
	.arm
	.fpu softvfp
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L229
	ldrh	r3, [r3]
	tst	r3, #1
	bxeq	lr
	ldr	r3, .L229+4
	ldrh	r3, [r3]
	tst	r3, #1
	bxne	lr
	b	goToStart
.L230:
	.align	2
.L229:
	.word	oldButtons
	.word	buttons
	.size	win, .-win
	.comm	shadowOAM,1024,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	priorState,4,4
	.comm	state,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
