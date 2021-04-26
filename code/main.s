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
	ldr	r3, .L4
	mov	lr, pc
	bx	r3
	mov	lr, #0
	ldr	ip, .L4+4
	ldr	r4, .L4+8
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L4+12
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	mov	r3, #3664
	mov	r0, #3
	ldr	r2, .L4+16
	ldr	r1, .L4+20
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L4+24
	ldr	r1, .L4+28
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	ldr	r1, .L4+32
	ldr	r3, .L4+36
	strh	r1, [r2, #10]	@ movhi
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	stopSound
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
	mov	ip, #6144
	mov	r0, #4864
	ldr	r2, .L22+44
	ldr	r1, .L22+48
	strh	ip, [r3, #8]	@ movhi
	ldr	r1, [r1]
	strh	r2, [r3, #10]	@ movhi
	strh	r0, [r3]	@ movhi
	mov	r2, #1
	ldr	r0, .L22+52
	ldr	r3, .L22+56
	mov	lr, pc
	bx	r3
	ldr	r3, .L22+60
	mov	lr, pc
	bx	r3
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
	.word	introdrone_length
	.word	introdrone_data
	.word	playSoundA
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
	mov	r3, #1328
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
	bl	goToLivingRoom
	ldr	r3, .L38+8
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L39:
	.align	2
.L38:
	.word	updateColdDark
	.word	nextRoomBool
	.word	playTLMOE
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
	push	{r4, lr}
	mov	lr, #8
	mov	r1, #0
	ldr	r3, .L92
	ldr	r0, .L92+4
	ldr	ip, [r3]
	ldr	r2, .L92+8
	str	lr, [r3]
	ldr	r3, .L92+12
	str	ip, [r0]
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L92+16
	mov	lr, pc
	bx	r3
	ldr	r4, .L92+20
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L92+24
	ldr	r1, .L92+28
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L92+32
	ldr	r1, .L92+36
	mov	lr, pc
	bx	r4
	ldr	r3, .L92+40
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L93:
	.align	2
.L92:
	.word	state
	.word	priorState
	.word	nextRoomBool
	.word	hideSprites
	.word	initLivingRoomOutro
	.word	DMANow
	.word	83886592
	.word	outrospritesPal
	.word	100728832
	.word	outrospritesTiles
	.word	stopSound
	.size	goToLivingRoomOutro, .-goToLivingRoomOutro
	.align	2
	.global	goToFinale
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToFinale, %function
goToFinale:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #9
	mov	r1, #0
	ldr	r3, .L102
	push	{r4, r5, r6, lr}
	ldr	r0, [r3]
	ldr	r6, .L102+4
	ldr	r2, .L102+8
	str	ip, [r3]
	ldr	r3, .L102+12
	str	r0, [r6]
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, [r6]
	cmp	r3, #8
	beq	.L100
	mov	r3, #1328
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L102+16
	ldr	r4, .L102+20
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L102+24
	ldr	r1, .L102+28
	mov	lr, pc
	bx	r4
.L96:
	mov	r5, #67108864
	mov	r2, #6144
	mov	r3, #256
	mov	r0, #3
	strh	r2, [r5, #8]	@ movhi
	ldr	r1, .L102+32
	mov	r2, #83886080
	mov	lr, pc
	bx	r4
	mov	r3, #3072
	mov	r0, #3
	ldr	r2, .L102+36
	ldr	r1, .L102+40
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L102+44
	ldr	r1, .L102+48
	mov	lr, pc
	bx	r4
	ldr	r2, .L102+52
	mov	r3, #1824
	mov	r0, #3
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L102+56
	ldr	r2, .L102+60
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L102+64
	ldr	r1, .L102+68
	mov	lr, pc
	bx	r4
	ldr	r2, .L102+72
	mov	r3, #256
	mov	r0, #3
	strh	r2, [r5, #12]	@ movhi
	ldr	r1, .L102+76
	ldr	r2, .L102+80
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L102+84
	ldr	r1, .L102+88
	mov	lr, pc
	bx	r4
	ldr	r3, .L102+92
	mov	lr, pc
	bx	r3
	ldr	r3, [r6]
	cmp	r3, #8
	movne	r3, #5632
	strhne	r3, [r5]	@ movhi
	beq	.L101
.L98:
	ldr	r3, .L102+96
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	bx	lr
.L100:
	mov	r3, #2288
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L102+100
	ldr	r4, .L102+20
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L102+24
	ldr	r1, .L102+104
	mov	lr, pc
	bx	r4
	b	.L96
.L101:
	ldr	r3, .L102+108
	ldrh	r2, [r3]
	ldr	r3, .L102+112
	strh	r2, [r5, #20]	@ movhi
	ldrh	r3, [r3]
	strh	r3, [r5, #22]	@ movhi
	ldrh	r3, [r5]
	orr	r3, r3, #1280
	strh	r3, [r5]	@ movhi
	ldr	r3, .L102+116
	mov	lr, pc
	bx	r3
	b	.L98
.L103:
	.align	2
.L102:
	.word	state
	.word	priorState
	.word	nextRoomBool
	.word	hideSprites
	.word	messagescreenTiles
	.word	DMANow
	.word	100712448
	.word	messagescreenMap
	.word	finalebgPal
	.word	100679680
	.word	finalebgTiles
	.word	100720640
	.word	finalebgMap
	.word	23558
	.word	finalewindowsTiles
	.word	100696064
	.word	100716544
	.word	finalewindowsMap
	.word	23050
	.word	finalespritesPal
	.word	83886592
	.word	100728832
	.word	finalespritesTiles
	.word	loadFinale
	.word	playSpettacolo
	.word	chapter3bgTiles
	.word	chapter3bgMap
	.word	hOff
	.word	vOff
	.word	chapterThreeIntro
	.size	goToFinale, .-goToFinale
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
	ldr	r3, .L108
	mov	lr, pc
	bx	r3
	ldr	r3, .L108+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L108+8
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L107
	pop	{r4, lr}
	bx	lr
.L107:
	pop	{r4, lr}
	b	goToFinale
.L109:
	.align	2
.L108:
	.word	updateOutro
	.word	drawOutroSprites
	.word	nextRoomBool
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
	mov	ip, #10
	mov	r2, #0
	ldr	r0, .L112
	push	{r4, lr}
	ldr	r1, .L112+4
	ldr	lr, [r0]
	str	ip, [r0]
	ldr	r0, .L112+8
	ldrh	ip, [r1]
	ldr	r3, .L112+12
	str	lr, [r0]
	ldr	r0, .L112+16
	ldrh	lr, [r3]
	strh	ip, [r0]	@ movhi
	ldr	ip, .L112+20
	ldr	r0, .L112+24
	strh	lr, [ip]	@ movhi
	strh	r2, [r1]	@ movhi
	strh	r2, [r3]	@ movhi
	mov	lr, pc
	bx	r0
	ldr	r3, .L112+28
	mov	lr, pc
	bx	r3
	ldr	r4, .L112+32
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L112+36
	mov	lr, pc
	bx	r4
	mov	r3, #2800
	mov	r0, #3
	ldr	r2, .L112+40
	ldr	r1, .L112+44
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L112+48
	mov	r0, #3
	ldr	r1, .L112+52
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L112+56
	pop	{r4, lr}
	strh	r2, [r3, #10]	@ movhi
	bx	lr
.L113:
	.align	2
.L112:
	.word	state
	.word	vOff
	.word	priorState
	.word	hOff
	.word	priorVoff
	.word	priorHoff
	.word	hideSprites
	.word	pauseSound
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
	ldr	r3, .L140
	ldr	r4, .L140+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L140+8
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L115
	ldr	r3, .L140+12
	ldrh	r3, [r3]
	tst	r3, #8
	moveq	r2, #4
	ldreq	r3, .L140+16
	streq	r2, [r3]
.L115:
	ldr	r3, .L140+20
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L136
.L116:
	ldr	r3, .L140+24
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L137
.L117:
	ldr	r3, .L140+28
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L138
.L118:
	ldrh	r3, [r4]
	tst	r3, #4
	beq	.L114
	ldr	r3, .L140+12
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L139
.L114:
	pop	{r4, lr}
	bx	lr
.L138:
	bl	goToLivingRoomOutro
	b	.L118
.L137:
	bl	goToComputer
	b	.L117
.L136:
	bl	goToKitchen
	b	.L116
.L139:
	pop	{r4, lr}
	b	goToPause
.L141:
	.align	2
.L140:
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
	ldr	r3, .L158
	mov	lr, pc
	bx	r3
	ldr	r3, .L158+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L158+8
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L154
	cmp	r3, #2
	beq	.L155
.L144:
	ldr	r4, .L158+12
	ldrh	r3, [r4]
	tst	r3, #4
	beq	.L145
	ldr	r2, .L158+16
	ldrh	r2, [r2]
	tst	r2, #4
	beq	.L156
.L145:
	tst	r3, #256
	beq	.L142
	ldr	r3, .L158+16
	ldrh	r3, [r3]
	tst	r3, #256
	beq	.L157
.L142:
	pop	{r4, lr}
	bx	lr
.L154:
	bl	goToLivingRoom
	b	.L144
.L157:
	pop	{r4, lr}
	b	goToLivingRoomOutro
.L156:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L145
.L155:
	bl	goToBedroom
	b	.L144
.L159:
	.align	2
.L158:
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
	ldr	r3, .L171
	mov	lr, pc
	bx	r3
	ldr	r3, .L171+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L171+8
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L161
	ldr	r3, .L171+12
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L168
.L161:
	ldr	r3, .L171+16
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L169
	cmp	r3, #2
	beq	.L170
	pop	{r4, lr}
	bx	lr
.L169:
	pop	{r4, lr}
	b	goToKitchen
.L168:
	bl	goToPause
	b	.L161
.L170:
	pop	{r4, lr}
	b	goToSafe
.L172:
	.align	2
.L171:
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
	ldr	r4, .L198
	ldrh	r3, [r4]
	tst	r3, #4
	beq	.L174
	ldr	r2, .L198+4
	ldrh	r2, [r2]
	tst	r2, #4
	beq	.L195
.L174:
	tst	r3, #8
	beq	.L182
	ldr	r2, .L198+4
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L196
.L182:
	tst	r3, #2
	beq	.L173
	ldr	r3, .L198+4
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L197
.L173:
	pop	{r4, lr}
	bx	lr
.L197:
	ldr	r2, .L198+8
	ldr	r3, .L198+12
	ldr	r2, [r2]
	pop	{r4, lr}
	str	r2, [r3]
	b	goToInstructions
.L195:
	ldr	r3, .L198+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L198+8
	ldr	r3, [r3]
	sub	r3, r3, #2
	cmp	r3, #6
	ldrls	pc, [pc, r3, asl #2]
	b	.L194
.L177:
	.word	.L181
	.word	.L180
	.word	.L194
	.word	.L179
	.word	.L178
	.word	.L194
	.word	.L176
.L196:
	bl	goToStart
	ldrh	r3, [r4]
	b	.L182
.L176:
	bl	goToLivingRoomOutro
.L194:
	ldrh	r3, [r4]
	b	.L174
.L178:
	bl	goToBedroom
	ldrh	r3, [r4]
	b	.L174
.L179:
	bl	goToKitchen
	ldrh	r3, [r4]
	b	.L174
.L180:
	bl	goToLivingRoom
	ldrh	r3, [r4]
	b	.L174
.L181:
	bl	goToIntro
	ldrh	r3, [r4]
	b	.L174
.L199:
	.align	2
.L198:
	.word	oldButtons
	.word	buttons
	.word	priorState
	.word	state
	.word	unpauseSound
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
	push	{r4, r5, r6, lr}
	mov	r1, #11
	mov	r5, #67108864
	mov	r4, #0
	ldr	r2, .L202
	ldr	r3, .L202+4
	str	r1, [r2]
	strh	r4, [r5, #20]	@ movhi
	strh	r4, [r5, #22]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r6, .L202+8
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L202+12
	mov	lr, pc
	bx	r6
	mov	r3, #8704
	mov	r0, #3
	ldr	r2, .L202+16
	ldr	r1, .L202+20
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L202+24
	mov	r0, #3
	ldr	r1, .L202+28
	mov	lr, pc
	bx	r6
	ldr	r2, .L202+32
	ldr	r3, .L202+36
	strh	r2, [r5, #10]	@ movhi
	strb	r4, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L203:
	.align	2
.L202:
	.word	state
	.word	hideSprites
	.word	DMANow
	.word	winscreenPal
	.word	100679680
	.word	winscreenTiles
	.word	100720640
	.word	winscreenMap
	.word	7174
	.word	messageInd
	.size	goToWin, .-goToWin
	.align	2
	.global	finale
	.syntax unified
	.arm
	.fpu softvfp
	.type	finale, %function
finale:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L210
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L205
	ldr	r3, .L210+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L210+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L210+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L210+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L210+20
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L209
.L204:
	pop	{r4, lr}
	bx	lr
.L205:
	ldr	r3, .L210+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L210+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L210+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L210+20
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L204
.L209:
	pop	{r4, lr}
	b	goToWin
.L211:
	.align	2
.L210:
	.word	marsInteractBool
	.word	updateGame
	.word	updatePersistentSprites
	.word	drawGame
	.word	drawPersistentSprites
	.word	nextRoomBool
	.word	updateFinale
	.size	finale, .-finale
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"You had forgotten how beautiful the outside could b"
	.ascii	"e...\000"
	.align	2
.LC1:
	.ascii	"You consider how worried you had been, when you wer"
	.ascii	"e safe the whole time.\000"
	.align	2
.LC2:
	.ascii	"In the coming weeks, your attacks become less and l"
	.ascii	"ess frequent.\000"
	.align	2
.LC3:
	.ascii	"Eventually, without your fear feeding them, they di"
	.ascii	"sappear altogether.\000"
	.align	2
.LC4:
	.ascii	"You live. And at last, you are at peace.\000"
	.text
	.align	2
	.global	win
	.syntax unified
	.arm
	.fpu softvfp
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 336
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldr	lr, .L223
	sub	sp, sp, #340
	ldmia	lr!, {r0, r1, r2, r3}
	add	ip, sp, #64
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1}
	add	r7, sp, #260
	stm	ip, {r0, r1}
	ldr	r4, .L223+4
	mov	r2, #74
	ldr	r1, .L223+8
	add	r6, sp, #120
	mov	r0, r7
	mov	lr, pc
	bx	r4
	add	r5, sp, #188
	mov	r2, #65
	ldr	r1, .L223+12
	mov	r0, r6
	mov	lr, pc
	bx	r4
	mov	r2, #71
	ldr	r1, .L223+16
	mov	r0, r5
	mov	lr, pc
	bx	r4
	ldr	lr, .L223+20
	ldmia	lr!, {r0, r1, r2, r3}
	add	ip, sp, #20
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1, r2}
	ldr	r3, .L223+24
	stmia	ip!, {r0, r1}
	ldrh	r3, [r3]
	ldr	r4, .L223+28
	tst	r3, #1
	add	r0, sp, #64
	add	r1, sp, #20
	str	r7, [sp, #4]
	str	r6, [sp, #8]
	str	r5, [sp, #12]
	strb	r2, [ip]
	ldrb	r3, [r4]	@ zero_extendqisi2
	str	r0, [sp]
	str	r1, [sp, #16]
	beq	.L213
	ldr	r2, .L223+32
	ldrh	r2, [r2]
	tst	r2, #1
	beq	.L220
.L213:
	cmp	r3, #5
	beq	.L221
.L214:
	cmp	r3, #6
	beq	.L222
	add	sp, sp, #340
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L220:
	add	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #4
	strb	r3, [r4]
	bhi	.L213
	add	r1, sp, #336
	ldr	r2, .L223+36
	add	r3, r1, r3, lsl #2
	ldr	r1, [r3, #-336]
	ldr	r2, [r2]
	ldr	r3, .L223+40
	str	r1, [r2, #48]
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	ldrh	r3, [r2]
	orr	r3, r3, #256
	strh	r3, [r2]	@ movhi
	ldrb	r3, [r4]	@ zero_extendqisi2
	b	.L213
.L222:
	bl	goToStart
	add	sp, sp, #340
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L221:
	mov	r2, #67108864
	ldr	r3, .L223+44
	ldrh	r1, [r2]
	and	r3, r3, r1
	strh	r3, [r2]	@ movhi
	ldr	r5, .L223+48
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L223+52
	mov	lr, pc
	bx	r5
	mov	r3, #8704
	mov	r0, #3
	ldr	r2, .L223+56
	ldr	r1, .L223+60
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L223+64
	ldr	r1, .L223+68
	mov	lr, pc
	bx	r5
	ldrb	r3, [r4]	@ zero_extendqisi2
	b	.L214
.L224:
	.align	2
.L223:
	.word	.LC0
	.word	memcpy
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	oldButtons
	.word	messageInd
	.word	buttons
	.word	activeSprite
	.word	printText
	.word	65279
	.word	DMANow
	.word	finscreenPal
	.word	100679680
	.word	finscreenTiles
	.word	100720640
	.word	finscreenMap
	.size	win, .-win
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
	mov	r2, #4608
	mov	r1, #0
	push	{r4, r7, fp, lr}
	strh	r2, [r3]	@ movhi
	add	r3, r3, #256
	ldrh	r0, [r3, #48]
	ldr	r5, .L245+8
	ldr	r10, .L245+12
	ldr	r2, .L245+16
	mov	fp, r3
	strh	r0, [r5]	@ movhi
	strh	r1, [r10]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r8, .L245+20
	ldr	r7, .L245+24
	ldr	r6, .L245+28
	ldr	r9, .L245+32
.L240:
	ldrh	r1, [r5]
	strh	r1, [r10]	@ movhi
	ldr	r2, [r8]
	ldrh	r3, [fp, #48]
	strh	r3, [r5]	@ movhi
	cmp	r2, #11
	ldrls	pc, [pc, r2, asl #2]
	b	.L226
.L228:
	.word	.L239
	.word	.L238
	.word	.L237
	.word	.L236
	.word	.L235
	.word	.L234
	.word	.L233
	.word	.L232
	.word	.L231
	.word	.L230
	.word	.L229
	.word	.L227
.L227:
	ldr	r3, .L245+36
	mov	lr, pc
	bx	r3
.L226:
	mov	r4, #67108864
	ldr	r3, .L245+40
	mov	lr, pc
	bx	r3
	ldrh	r3, [r7]
	strh	r3, [r4, #20]	@ movhi
	ldrh	r3, [r6]
	strh	r3, [r4, #22]	@ movhi
	ldr	r3, .L245+44
	ldrh	r0, [r7]
	mov	lr, pc
	bx	r3
	adr	r3, .L245
	ldmia	r3, {r2-r3}
	ldr	ip, .L245+48
	mov	lr, pc
	bx	ip
	ldr	r3, .L245+52
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
	ldr	ip, .L245+56
	mov	lr, pc
	bx	ip
	b	.L240
.L229:
	ldr	r3, .L245+60
	mov	lr, pc
	bx	r3
	b	.L226
.L230:
	ldr	r3, .L245+64
	mov	lr, pc
	bx	r3
	b	.L226
.L231:
	ldr	r3, .L245+68
	mov	lr, pc
	bx	r3
	b	.L226
.L232:
	ldr	r3, .L245+72
	mov	lr, pc
	bx	r3
	b	.L226
.L233:
	ldr	r3, .L245+76
	mov	lr, pc
	bx	r3
	b	.L226
.L234:
	ldr	r3, .L245+80
	mov	lr, pc
	bx	r3
	b	.L226
.L235:
	ldr	r3, .L245+84
	mov	lr, pc
	bx	r3
	b	.L226
.L236:
	ldr	r3, .L245+88
	mov	lr, pc
	bx	r3
	b	.L226
.L237:
	ldr	r3, .L245+92
	mov	lr, pc
	bx	r3
	b	.L226
.L239:
	tst	r1, #1
	beq	.L226
	tst	r3, #1
	bne	.L226
	ldr	r3, .L245+96
	mov	lr, pc
	bx	r3
	b	.L226
.L238:
	ldr	r3, .L245+100
	mov	lr, pc
	bx	r3
	b	.L226
.L246:
	.align	3
.L245:
	.word	3435973837
	.word	1072483532
	.word	buttons
	.word	oldButtons
	.word	goToStart
	.word	state
	.word	hOff
	.word	vOff
	.word	shadowOAM
	.word	win
	.word	waitForVBlank
	.word	__aeabi_i2d
	.word	__aeabi_dmul
	.word	__aeabi_d2uiz
	.word	DMANow
	.word	pause
	.word	finale
	.word	livingRoomOutro
	.word	safe
	.word	bedroom
	.word	kitchen
	.word	computer
	.word	livingRoom
	.word	intro
	.word	goToInstructions
	.word	instructions
	.size	main, .-main
	.comm	shadowOAM,1024,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	messageInd,1,1
	.comm	priorState,4,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.comm	currSong,4,4
	.comm	state,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
