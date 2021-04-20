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
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L4+20
	ldr	r1, .L4+24
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	ldr	r1, .L4+28
	ldr	r3, .L4+32
	strh	r1, [r2, #10]	@ movhi
	mov	lr, pc
	bx	r3
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
	.word	100720640
	.word	startscreenMap
	.word	7174
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
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L11+28
	ldr	r1, .L11+32
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
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
	.word	100720640
	.word	instructionscreenMap
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
	mov	r3, #1024
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
	mov	r3, #1024
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
	.word	100720640
	.word	blackbgMap
	.word	chapter1bgTiles
	.word	100712448
	.word	chapter1bgMap
	.word	7174
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
	mov	r5, #3
	ldr	r3, .L32
	ldr	r6, .L32+4
	ldr	r2, [r3]
	ldr	r1, .L32+8
	str	r2, [r6]
	ldr	r2, .L32+12
	str	r5, [r3]
	str	r0, [r1]
	mov	lr, pc
	bx	r2
	ldr	r3, [r6]
	cmp	r3, #2
	beq	.L30
	mov	r3, #1280
	mov	r2, #100663296
	mov	r0, r5
	ldr	r1, .L32+16
	ldr	r4, .L32+20
	mov	lr, pc
	bx	r4
	mov	r0, r5
	mov	r3, #1024
	ldr	r2, .L32+24
	ldr	r1, .L32+28
	mov	lr, pc
	bx	r4
.L26:
	mov	r5, #67108864
	mov	r2, #6144
	mov	r3, #256
	mov	r0, #3
	strh	r2, [r5, #8]	@ movhi
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
	mov	r3, #3200
	mov	r0, #3
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L32+60
	ldr	r2, .L32+64
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L32+68
	ldr	r1, .L32+72
	mov	lr, pc
	bx	r4
	ldr	r2, .L32+76
	mov	r3, #256
	mov	r0, #3
	strh	r2, [r5, #12]	@ movhi
	ldr	r1, .L32+80
	ldr	r2, .L32+84
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L32+88
	ldr	r1, .L32+92
	mov	lr, pc
	bx	r4
	ldr	r3, .L32+96
	mov	lr, pc
	bx	r3
	ldr	r3, [r6]
	cmp	r3, #2
	movne	r3, #5632
	strhne	r3, [r5]	@ movhi
	beq	.L31
	pop	{r4, r5, r6, lr}
	bx	lr
.L30:
	mov	r0, r5
	mov	r3, #2160
	mov	r2, #100663296
	ldr	r1, .L32+100
	ldr	r4, .L32+20
	mov	lr, pc
	bx	r4
	mov	r0, r5
	mov	r3, #1024
	ldr	r2, .L32+24
	ldr	r1, .L32+104
	mov	lr, pc
	bx	r4
	b	.L26
.L31:
	ldr	r3, .L32+108
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
	.word	8080
	.word	100679680
	.word	livingroombgTiles
	.word	100720640
	.word	livingroombgMap
	.word	-9210
	.word	ldoorwaybgTiles
	.word	100696064
	.word	100716544
	.word	ldoorwaybgMap
	.word	23050
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
	mov	r3, #1024
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
	.word	100720640
	.word	computerscreenbgMap
	.word	7174
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
	push	{r4, r5, r6, lr}
	mov	lr, #5
	mov	r1, #0
	mov	r5, #67108864
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
	mov	r3, #3280
	mov	r0, #3
	ldr	r2, .L55+24
	ldr	r1, .L55+28
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L55+32
	ldr	r1, .L55+36
	mov	lr, pc
	bx	r4
	ldr	r2, .L55+40
	mov	r3, #2896
	strh	r2, [r5, #10]	@ movhi
	mov	r0, #3
	ldr	r2, .L55+44
	ldr	r1, .L55+48
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L55+52
	ldr	r1, .L55+56
	mov	lr, pc
	bx	r4
	ldr	r2, .L55+60
	mov	r3, #256
	strh	r2, [r5, #12]	@ movhi
	mov	r0, #3
	ldr	r2, .L55+64
	ldr	r1, .L55+68
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L55+72
	ldr	r1, .L55+76
	mov	lr, pc
	bx	r4
	ldrh	r3, [r5]
	orr	r3, r3, #1024
	strh	r3, [r5]	@ movhi
	ldr	r3, .L55+80
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
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
	.word	100720640
	.word	kitchenbgMap
	.word	7174
	.word	100696064
	.word	kdoorwaybgTiles
	.word	100716544
	.word	kdoorwaybgMap
	.word	6666
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
	push	{r4, r5, r6, lr}
	mov	lr, #6
	mov	r1, #0
	mov	r5, #67108864
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
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L59+36
	ldr	r1, .L59+40
	mov	lr, pc
	bx	r4
	ldr	r2, .L59+44
	mov	r3, #2480
	strh	r2, [r5, #10]	@ movhi
	mov	r0, #3
	ldr	r2, .L59+48
	ldr	r1, .L59+52
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L59+56
	ldr	r1, .L59+60
	mov	lr, pc
	bx	r4
	ldr	r2, .L59+64
	mov	r3, #256
	strh	r2, [r5, #12]	@ movhi
	mov	r0, #3
	ldr	r2, .L59+68
	ldr	r1, .L59+72
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L59+76
	ldr	r1, .L59+80
	mov	lr, pc
	bx	r4
	ldrh	r3, [r5]
	orr	r3, r3, #1024
	strh	r3, [r5]	@ movhi
	ldr	r3, .L59+84
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
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
	.word	100720640
	.word	bedroombgMap
	.word	23558
	.word	100696064
	.word	cloudsbgTiles
	.word	100716544
	.word	cloudsbgMap
	.word	23050
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
	mov	r3, #1024
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
	.word	100720640
	.word	safebgMap
	.word	7174
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
	bne	.L78
	ldr	r3, .L88+12
	ldrb	r3, [r3]	@ zero_extendqisi2
.L79:
	cmp	r3, #0
	beq	.L87
.L81:
	mov	r2, #67108864
	ldrh	r3, [r2]
	orr	r3, r3, #256
	strh	r3, [r2]	@ movhi
	pop	{r4, lr}
	b	goToBedroom
.L78:
	ldr	r3, .L88+16
	ldrh	r2, [r3]
	ldr	r3, .L88+12
	tst	r2, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	bne	.L79
	cmp	r3, #0
	bne	.L81
	mov	r1, #67108864
	ldr	r2, .L88+20
	ldrh	ip, [r1]
	ldr	r0, .L88+24
	and	r2, r2, ip
	strh	r2, [r1]	@ movhi
	pop	{r4, lr}
	str	r3, [r0]
	b	goToBedroom
.L87:
	pop	{r4, lr}
	bx	lr
.L89:
	.align	2
.L88:
	.word	updateCursor
	.word	drawSafeSprites
	.word	oldButtons
	.word	openSafeBool
	.word	buttons
	.word	65279
	.word	messageActiveBool
	.size	safe, .-safe
	.align	2
	.global	goToLivingRoomOutro
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLivingRoomOutro, %function
goToLivingRoomOutro:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #8
	push	{r4, lr}
	ldr	r2, .L92
	ldr	r3, .L92+4
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L92+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L92+12
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L92+16
	ldr	r1, .L92+20
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L92+24
	ldr	r1, .L92+28
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L93:
	.align	2
.L92:
	.word	state
	.word	hideSprites
	.word	initLivingRoomOutro
	.word	DMANow
	.word	83886592
	.word	outrospritesPal
	.word	100728832
	.word	outrospritesTiles
	.size	goToLivingRoomOutro, .-goToLivingRoomOutro
	.align	2
	.global	livingRoomOutro
	.syntax unified
	.arm
	.fpu softvfp
	.type	livingRoomOutro, %function
livingRoomOutro:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L96
	mov	lr, pc
	bx	r3
	ldr	r3, .L96+4
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L97:
	.align	2
.L96:
	.word	updateOutro
	.word	drawOutroSprites
	.size	livingRoomOutro, .-livingRoomOutro
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
	ldr	r0, .L100
	push	{r4, lr}
	ldr	r1, .L100+4
	ldr	lr, [r0]
	str	ip, [r0]
	ldr	r0, .L100+8
	ldrh	ip, [r1]
	ldr	r3, .L100+12
	str	lr, [r0]
	ldr	r0, .L100+16
	ldrh	lr, [r3]
	strh	ip, [r0]	@ movhi
	ldr	ip, .L100+20
	ldr	r0, .L100+24
	strh	lr, [ip]	@ movhi
	ldr	r4, .L100+28
	strh	r2, [r1]	@ movhi
	strh	r2, [r3]	@ movhi
	mov	lr, pc
	bx	r0
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L100+32
	mov	lr, pc
	bx	r4
	mov	r3, #2800
	mov	r0, #3
	ldr	r2, .L100+36
	ldr	r1, .L100+40
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L100+44
	mov	r0, #3
	ldr	r1, .L100+48
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L100+52
	pop	{r4, lr}
	strh	r2, [r3, #10]	@ movhi
	bx	lr
.L101:
	.align	2
.L100:
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
	.word	100720640
	.word	pausescreenMap
	.word	7174
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
	ldr	r3, .L128
	ldr	r4, .L128+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L128+8
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L103
	ldr	r3, .L128+12
	ldrh	r3, [r3]
	tst	r3, #8
	moveq	r2, #4
	ldreq	r3, .L128+16
	streq	r2, [r3]
.L103:
	ldr	r3, .L128+20
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L124
.L104:
	ldr	r3, .L128+24
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L125
.L105:
	ldr	r3, .L128+28
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L126
.L106:
	ldrh	r3, [r4]
	tst	r3, #4
	beq	.L102
	ldr	r3, .L128+12
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L127
.L102:
	pop	{r4, lr}
	bx	lr
.L126:
	bl	goToLivingRoomOutro
	b	.L106
.L125:
	bl	goToComputer
	b	.L105
.L124:
	bl	goToKitchen
	b	.L104
.L127:
	pop	{r4, lr}
	b	goToPause
.L129:
	.align	2
.L128:
	.word	updateGame
	.word	oldButtons
	.word	drawGame
	.word	buttons
	.word	mode
	.word	nextRoomBool
	.word	computerAccessBool
	.word	livingRoomOutroBool
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
	ldr	r3, .L146
	mov	lr, pc
	bx	r3
	ldr	r3, .L146+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L146+8
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L142
	cmp	r3, #2
	beq	.L143
.L132:
	ldr	r4, .L146+12
	ldrh	r3, [r4]
	tst	r3, #4
	beq	.L133
	ldr	r2, .L146+16
	ldrh	r2, [r2]
	tst	r2, #4
	beq	.L144
.L133:
	tst	r3, #256
	beq	.L130
	ldr	r3, .L146+16
	ldrh	r3, [r3]
	tst	r3, #256
	beq	.L145
.L130:
	pop	{r4, lr}
	bx	lr
.L142:
	bl	goToLivingRoom
	b	.L132
.L145:
	pop	{r4, lr}
	b	goToLivingRoomOutro
.L144:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L133
.L143:
	bl	goToBedroom
	b	.L132
.L147:
	.align	2
.L146:
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
	ldr	r3, .L159
	mov	lr, pc
	bx	r3
	ldr	r3, .L159+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L159+8
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L149
	ldr	r3, .L159+12
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L156
.L149:
	ldr	r3, .L159+16
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L157
	cmp	r3, #2
	beq	.L158
	pop	{r4, lr}
	bx	lr
.L157:
	pop	{r4, lr}
	b	goToKitchen
.L156:
	bl	goToPause
	b	.L149
.L158:
	pop	{r4, lr}
	b	goToSafe
.L160:
	.align	2
.L159:
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
	ldr	r4, .L184
	ldrh	r3, [r4]
	tst	r3, #4
	beq	.L162
	ldr	r2, .L184+4
	ldrh	r2, [r2]
	tst	r2, #4
	beq	.L181
.L162:
	tst	r3, #8
	beq	.L169
	ldr	r2, .L184+4
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L182
.L169:
	tst	r3, #2
	beq	.L161
	ldr	r3, .L184+4
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L183
.L161:
	pop	{r4, lr}
	bx	lr
.L181:
	ldr	r2, .L184+8
	ldr	r2, [r2]
	sub	r2, r2, #2
	cmp	r2, #6
	ldrls	pc, [pc, r2, asl #2]
	b	.L162
.L164:
	.word	.L168
	.word	.L167
	.word	.L162
	.word	.L166
	.word	.L165
	.word	.L162
	.word	.L163
.L183:
	ldr	r2, .L184+8
	ldr	r3, .L184+12
	ldr	r2, [r2]
	pop	{r4, lr}
	str	r2, [r3]
	b	goToInstructions
.L182:
	bl	goToStart
	ldrh	r3, [r4]
	b	.L169
.L168:
	bl	goToIntro
	ldrh	r3, [r4]
	b	.L162
.L167:
	bl	goToLivingRoom
	ldrh	r3, [r4]
	b	.L162
.L166:
	bl	goToKitchen
	ldrh	r3, [r4]
	b	.L162
.L165:
	bl	goToBedroom
	ldrh	r3, [r4]
	b	.L162
.L163:
	bl	goToLivingRoomOutro
	ldrh	r3, [r4]
	b	.L162
.L185:
	.align	2
.L184:
	.word	oldButtons
	.word	buttons
	.word	priorState
	.word	state
	.size	pause, .-pause
	.global	__aeabi_i2d
	.global	__aeabi_dmul
	.global	__aeabi_d2uiz
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
	mov	r3, #67108864
	mov	r1, #4608
	mov	r2, #0
	push	{r4, r7, fp, lr}
	strh	r1, [r3]	@ movhi
	add	r3, r3, #256
	ldrh	r1, [r3, #48]
	ldr	r5, .L208+8
	ldr	r10, .L208+12
	mov	fp, r3
	ldr	r3, .L208+16
	strh	r1, [r5]	@ movhi
	strh	r2, [r10]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r8, .L208+20
	ldr	r7, .L208+24
	ldr	r6, .L208+28
	ldr	r9, .L208+32
.L202:
	ldrh	r1, [r5]
	strh	r1, [r10]	@ movhi
	ldr	r2, [r8]
	ldrh	r3, [fp, #48]
	strh	r3, [r5]	@ movhi
	cmp	r2, #10
	ldrls	pc, [pc, r2, asl #2]
	b	.L187
.L189:
	.word	.L199
	.word	.L198
	.word	.L197
	.word	.L196
	.word	.L195
	.word	.L194
	.word	.L193
	.word	.L192
	.word	.L191
	.word	.L190
	.word	.L188
.L188:
	tst	r1, #1
	beq	.L187
	tst	r3, #1
	beq	.L207
.L187:
	mov	r4, #67108864
	ldr	r3, .L208+36
	mov	lr, pc
	bx	r3
	ldrh	r3, [r7]
	strh	r3, [r4, #20]	@ movhi
	ldrh	r3, [r6]
	strh	r3, [r4, #22]	@ movhi
	ldr	r3, .L208+40
	ldrh	r0, [r7]
	mov	lr, pc
	bx	r3
	adr	r3, .L208
	ldmia	r3, {r2-r3}
	ldr	ip, .L208+44
	mov	lr, pc
	bx	ip
	ldr	r3, .L208+48
	mov	lr, pc
	bx	r3
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	strh	r0, [r4, #24]	@ movhi
	ldrh	r2, [r6]
	mov	r3, #512
	strh	r2, [r4, #26]	@ movhi
	mov	r1, r9
	mov	r2, #117440512
	mov	r0, #3
	ldr	ip, .L208+52
	mov	lr, pc
	bx	ip
	b	.L202
.L190:
	ldr	r3, .L208+56
	mov	lr, pc
	bx	r3
	b	.L187
.L191:
	ldr	r3, .L208+60
	mov	lr, pc
	bx	r3
	ldr	r3, .L208+64
	mov	lr, pc
	bx	r3
	b	.L187
.L192:
	ldr	r3, .L208+68
	mov	lr, pc
	bx	r3
	b	.L187
.L193:
	ldr	r3, .L208+72
	mov	lr, pc
	bx	r3
	b	.L187
.L194:
	ldr	r3, .L208+76
	mov	lr, pc
	bx	r3
	b	.L187
.L195:
	ldr	r3, .L208+80
	mov	lr, pc
	bx	r3
	b	.L187
.L196:
	ldr	r3, .L208+84
	mov	lr, pc
	bx	r3
	b	.L187
.L197:
	ldr	r3, .L208+88
	mov	lr, pc
	bx	r3
	ldr	r3, .L208+92
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L187
	ldr	r3, .L208+96
	mov	lr, pc
	bx	r3
	b	.L187
.L199:
	tst	r1, #1
	beq	.L187
	tst	r3, #1
	bne	.L187
	ldr	r3, .L208+100
	mov	lr, pc
	bx	r3
	b	.L187
.L198:
	ldr	r3, .L208+104
	mov	lr, pc
	bx	r3
	b	.L187
.L207:
	ldr	r3, .L208+16
	mov	lr, pc
	bx	r3
	b	.L187
.L209:
	.align	3
.L208:
	.word	3435973837
	.word	1072483532
	.word	buttons
	.word	oldButtons
	.word	goToStart
	.word	state
	.word	hOff
	.word	vOff
	.word	shadowOAM
	.word	waitForVBlank
	.word	__aeabi_i2d
	.word	__aeabi_dmul
	.word	__aeabi_d2uiz
	.word	DMANow
	.word	pause
	.word	updateOutro
	.word	drawOutroSprites
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
	ldr	r2, .L212
	push	{r4, lr}
	ldr	r3, .L212+4
	ldr	r4, .L212+8
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L212+12
	mov	lr, pc
	bx	r4
	mov	r3, #2032
	mov	r0, #3
	ldr	r2, .L212+16
	ldr	r1, .L212+20
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L212+24
	mov	r0, #3
	ldr	r1, .L212+28
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L212+32
	pop	{r4, lr}
	strh	r2, [r3, #10]	@ movhi
	bx	lr
.L213:
	.align	2
.L212:
	.word	state
	.word	hideSprites
	.word	DMANow
	.word	winscreenPal
	.word	100679680
	.word	winscreenTiles
	.word	100720640
	.word	winscreenMap
	.word	7174
	.size	goToWin, .-goToWin
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
	ldr	r3, .L219
	ldrh	r3, [r3]
	tst	r3, #1
	bxeq	lr
	ldr	r3, .L219+4
	ldrh	r3, [r3]
	tst	r3, #1
	bxne	lr
	b	goToStart
.L220:
	.align	2
.L219:
	.word	oldButtons
	.word	buttons
	.size	win, .-win
	.comm	shadowOAM,1024,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	priorState,4,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.comm	state,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
