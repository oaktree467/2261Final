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
	mov	r0, #3
	ldr	r3, .L4+16
	ldr	r2, .L4+20
	ldr	r1, .L4+24
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L4+28
	ldr	r1, .L4+32
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	ldr	r1, .L4+36
	ldr	r3, .L4+40
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
	.word	7952
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
	mov	r3, #5120
	mov	r0, #3
	ldr	r2, .L11+16
	ldr	r1, .L11+20
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L11+24
	ldr	r1, .L11+28
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
	mov	r1, #4864
	mov	r2, #6144
	ldr	r0, .L22+44
	strh	r2, [r3, #8]	@ movhi
	strh	r0, [r3, #10]	@ movhi
	ldr	r2, .L22+48
	strh	r1, [r3]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L22+52
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L22+56
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
	.word	chapterOneIntro
	.word	introdrone_length
	.word	introdrone_data
	.word	playSoundA
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
	ldr	r3, .L32+112
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
	.word	playTLMOE
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
	ldr	r3, .L46
	ldr	r0, .L46+4
	ldr	ip, [r3]
	ldr	r2, .L46+8
	str	lr, [r3]
	ldr	r3, .L46+12
	str	ip, [r0]
	ldr	r4, .L46+16
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L46+20
	mov	lr, pc
	bx	r4
	mov	r3, #3280
	mov	r0, #3
	ldr	r2, .L46+24
	ldr	r1, .L46+28
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L46+32
	ldr	r1, .L46+36
	mov	lr, pc
	bx	r4
	ldr	r2, .L46+40
	mov	r3, #2896
	strh	r2, [r5, #10]	@ movhi
	mov	r0, #3
	ldr	r2, .L46+44
	ldr	r1, .L46+48
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L46+52
	ldr	r1, .L46+56
	mov	lr, pc
	bx	r4
	ldr	r2, .L46+60
	mov	r3, #256
	strh	r2, [r5, #12]	@ movhi
	mov	r0, #3
	ldr	r2, .L46+64
	ldr	r1, .L46+68
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L46+72
	ldr	r1, .L46+76
	mov	lr, pc
	bx	r4
	ldrh	r3, [r5]
	orr	r3, r3, #1024
	strh	r3, [r5]	@ movhi
	ldr	r3, .L46+80
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	bx	lr
.L47:
	.align	2
.L46:
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
	ldr	r3, .L50
	ldr	r0, .L50+4
	ldr	ip, [r3]
	ldr	r2, .L50+8
	str	lr, [r3]
	ldr	r3, .L50+12
	str	ip, [r0]
	ldr	r4, .L50+16
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L50+20
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r3, .L50+24
	ldr	r2, .L50+28
	ldr	r1, .L50+32
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L50+36
	ldr	r1, .L50+40
	mov	lr, pc
	bx	r4
	ldr	r2, .L50+44
	mov	r3, #2480
	strh	r2, [r5, #10]	@ movhi
	mov	r0, #3
	ldr	r2, .L50+48
	ldr	r1, .L50+52
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L50+56
	ldr	r1, .L50+60
	mov	lr, pc
	bx	r4
	ldr	r2, .L50+64
	mov	r3, #256
	strh	r2, [r5, #12]	@ movhi
	mov	r0, #3
	ldr	r2, .L50+68
	ldr	r1, .L50+72
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L50+76
	ldr	r1, .L50+80
	mov	lr, pc
	bx	r4
	ldrh	r3, [r5]
	orr	r3, r3, #1024
	strh	r3, [r5]	@ movhi
	ldr	r3, .L50+84
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	bx	lr
.L51:
	.align	2
.L50:
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
	ldr	r3, .L54
	ldr	r0, .L54+4
	ldr	r1, .L54+8
	ldrh	ip, [r0]
	ldr	lr, .L54+12
	ldr	r4, [r3]
	ldrh	r1, [r1]
	str	r2, [r3]
	ldr	r0, .L54+16
	ldr	r2, .L54+20
	ldr	r3, .L54+24
	str	r4, [lr]
	strh	ip, [r0]	@ movhi
	ldr	r4, .L54+28
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L54+32
	mov	lr, pc
	bx	r4
	mov	r3, #480
	mov	r0, #3
	ldr	r2, .L54+36
	ldr	r1, .L54+40
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L54+44
	ldr	r1, .L54+48
	mov	lr, pc
	bx	r4
	ldr	r2, .L54+52
	mov	r3, #256
	strh	r2, [r5, #10]	@ movhi
	mov	r0, #3
	ldr	r2, .L54+56
	ldr	r1, .L54+60
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L54+64
	ldr	r1, .L54+68
	mov	lr, pc
	bx	r4
	mov	r3, #6144
	strh	r3, [r5, #8]	@ movhi
	ldrh	r3, [r5]
	orr	r3, r3, #4608
	strh	r3, [r5]	@ movhi
	ldr	r3, .L54+72
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	bx	lr
.L55:
	.align	2
.L54:
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
	ldr	r3, .L58
	ldr	r0, .L58+4
	ldr	ip, [r3]
	ldr	r2, .L58+8
	str	lr, [r3]
	ldr	r3, .L58+12
	str	ip, [r0]
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L58+16
	mov	lr, pc
	bx	r3
	ldr	r4, .L58+20
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L58+24
	ldr	r1, .L58+28
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L58+32
	ldr	r1, .L58+36
	mov	lr, pc
	bx	r4
	ldr	r3, .L58+40
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L59:
	.align	2
.L58:
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
	ldr	r3, .L68
	push	{r4, r5, r6, lr}
	ldr	r0, [r3]
	ldr	r6, .L68+4
	ldr	r2, .L68+8
	str	ip, [r3]
	ldr	r3, .L68+12
	str	r0, [r6]
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, [r6]
	cmp	r3, #8
	beq	.L66
	mov	r3, #1328
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L68+16
	ldr	r4, .L68+20
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L68+24
	ldr	r1, .L68+28
	mov	lr, pc
	bx	r4
.L62:
	mov	r5, #67108864
	mov	r2, #6144
	mov	r3, #256
	mov	r0, #3
	strh	r2, [r5, #8]	@ movhi
	ldr	r1, .L68+32
	mov	r2, #83886080
	mov	lr, pc
	bx	r4
	mov	r3, #3072
	mov	r0, #3
	ldr	r2, .L68+36
	ldr	r1, .L68+40
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L68+44
	ldr	r1, .L68+48
	mov	lr, pc
	bx	r4
	ldr	r2, .L68+52
	mov	r3, #1824
	mov	r0, #3
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L68+56
	ldr	r2, .L68+60
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L68+64
	ldr	r1, .L68+68
	mov	lr, pc
	bx	r4
	ldr	r2, .L68+72
	mov	r3, #256
	mov	r0, #3
	strh	r2, [r5, #12]	@ movhi
	ldr	r1, .L68+76
	ldr	r2, .L68+80
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L68+84
	ldr	r1, .L68+88
	mov	lr, pc
	bx	r4
	ldr	r3, .L68+92
	mov	lr, pc
	bx	r3
	ldr	r3, [r6]
	cmp	r3, #8
	movne	r3, #5632
	strhne	r3, [r5]	@ movhi
	beq	.L67
	pop	{r4, r5, r6, lr}
	bx	lr
.L66:
	mov	r3, #2288
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L68+96
	ldr	r4, .L68+20
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L68+24
	ldr	r1, .L68+100
	mov	lr, pc
	bx	r4
	b	.L62
.L67:
	ldr	r3, .L68+104
	ldrh	r2, [r3]
	ldr	r3, .L68+108
	strh	r2, [r5, #20]	@ movhi
	ldrh	r3, [r3]
	strh	r3, [r5, #22]	@ movhi
	ldrh	r3, [r5]
	orr	r3, r3, #1280
	strh	r3, [r5]	@ movhi
	ldr	r3, .L68+112
	mov	lr, pc
	bx	r3
	ldr	r3, .L68+116
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	bx	lr
.L69:
	.align	2
.L68:
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
	.word	chapter3bgTiles
	.word	chapter3bgMap
	.word	hOff
	.word	vOff
	.word	chapterThreeIntro
	.word	playSpettacolo
	.size	goToFinale, .-goToFinale
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
	ldr	r3, .L92
	ldrh	r3, [r3]
	tst	r3, #1
	bxeq	lr
	ldr	r3, .L92+4
	ldrh	r3, [r3]
	tst	r3, #1
	bxne	lr
	push	{r4, lr}
	ldr	r4, .L92+8
	ldr	r3, [r4]
	cmp	r3, #0
	bne	.L91
.L72:
	pop	{r4, lr}
	b	goToIntro
.L91:
	ldr	r3, .L92+12
	mov	lr, pc
	bx	r3
	ldr	r3, [r4]
	cmp	r3, #9
	ldrls	pc, [pc, r3, asl #2]
	b	.L70
.L74:
	.word	.L72
	.word	.L70
	.word	.L70
	.word	.L80
	.word	.L79
	.word	.L78
	.word	.L77
	.word	.L76
	.word	.L75
	.word	.L73
.L70:
	pop	{r4, lr}
	bx	lr
.L80:
	pop	{r4, lr}
	b	goToLivingRoom
.L79:
	pop	{r4, lr}
	b	goToComputer
.L78:
	pop	{r4, lr}
	b	goToKitchen
.L77:
	pop	{r4, lr}
	b	goToBedroom
.L76:
	pop	{r4, lr}
	b	goToSafe
.L75:
	pop	{r4, lr}
	b	goToLivingRoomOutro
.L73:
	pop	{r4, lr}
	b	goToFinale
.L93:
	.align	2
.L92:
	.word	oldButtons
	.word	buttons
	.word	priorState
	.word	unpauseSound
	.size	instructions, .-instructions
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
	ldr	r3, .L98
	mov	lr, pc
	bx	r3
	ldr	r3, .L98+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L98+8
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L97
	pop	{r4, lr}
	bx	lr
.L97:
	pop	{r4, lr}
	b	goToFinale
.L99:
	.align	2
.L98:
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
	mov	r0, #10
	ldr	r2, .L106
	ldr	r3, [r2]
	ldr	r1, .L106+4
	cmp	r3, #4
	push	{r4, lr}
	str	r0, [r2]
	str	r3, [r1]
	beq	.L101
	mov	r2, #0
	ldr	r1, .L106+8
	ldr	r3, .L106+12
	ldrh	lr, [r1]
	ldr	r0, .L106+16
	ldrh	ip, [r3]
	strh	lr, [r0]	@ movhi
	ldr	r0, .L106+20
	strh	r2, [r1]	@ movhi
	strh	r2, [r3]	@ movhi
	strh	ip, [r0]	@ movhi
.L101:
	ldr	r3, .L106+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L106+28
	mov	lr, pc
	bx	r3
	ldr	r4, .L106+32
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L106+36
	mov	lr, pc
	bx	r4
	mov	r3, #2800
	mov	r0, #3
	ldr	r2, .L106+40
	ldr	r1, .L106+44
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L106+48
	ldr	r1, .L106+52
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L106+56
	strh	r2, [r3, #10]	@ movhi
	ldr	r2, .L106+60
	ldrh	r1, [r3]
	and	r2, r2, r1
	strh	r2, [r3]	@ movhi
	pop	{r4, lr}
	bx	lr
.L107:
	.align	2
.L106:
	.word	state
	.word	priorState
	.word	vOff
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
	.word	65279
	.size	goToPause, .-goToPause
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	livingRoom.part.0, %function
livingRoom.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L110
	ldrh	r3, [r3]
	tst	r3, #4
	bxne	lr
	b	goToPause
.L111:
	.align	2
.L110:
	.word	buttons
	.size	livingRoom.part.0, .-livingRoom.part.0
	.set	finale.part.0,livingRoom.part.0
	.set	safe.part.0,livingRoom.part.0
	.set	kitchen.part.0,livingRoom.part.0
	.set	computer.part.0,livingRoom.part.0
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
	ldr	r3, .L120
	ldr	r4, .L120+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L120+8
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #2
	beq	.L113
	ldr	r2, .L120+12
	ldrh	r2, [r2]
	ands	r2, r2, #2
	beq	.L119
.L113:
	tst	r3, #4
	popne	{r4, lr}
	bne	computer.part.0
.L112:
	pop	{r4, lr}
	bx	lr
.L119:
	ldr	r3, .L120+16
	strb	r2, [r3]
	bl	goToLivingRoom
	ldrh	r3, [r4]
	b	.L113
.L121:
	.align	2
.L120:
	.word	updateComputer
	.word	oldButtons
	.word	drawComputer
	.word	buttons
	.word	computerAccessBool
	.size	computer, .-computer
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
	ldr	r3, .L129
	mov	lr, pc
	bx	r3
	ldr	r3, .L129+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L129+8
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L127
	cmp	r3, #2
	beq	.L128
.L124:
	ldr	r3, .L129+12
	ldrh	r3, [r3]
	tst	r3, #4
	popne	{r4, lr}
	bne	kitchen.part.0
.L122:
	pop	{r4, lr}
	bx	lr
.L127:
	bl	goToLivingRoom
	b	.L124
.L128:
	bl	goToBedroom
	b	.L124
.L130:
	.align	2
.L129:
	.word	updateGame
	.word	drawGame
	.word	nextRoomBool
	.word	oldButtons
	.size	kitchen, .-kitchen
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
	ldr	r3, .L141
	ldr	r4, .L141+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L141+8
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #2
	bne	.L132
	ldr	r2, .L141+12
	ldrb	r2, [r2]	@ zero_extendqisi2
.L133:
	cmp	r2, #0
	beq	.L136
.L135:
	mov	r2, #67108864
	ldrh	r3, [r2]
	orr	r3, r3, #256
	strh	r3, [r2]	@ movhi
.L138:
	bl	goToBedroom
	ldrh	r3, [r4]
.L136:
	tst	r3, #4
	beq	.L131
	pop	{r4, lr}
	b	safe.part.0
.L132:
	ldr	r2, .L141+16
	ldrh	r1, [r2]
	ldr	r2, .L141+12
	tst	r1, #2
	ldrb	r2, [r2]	@ zero_extendqisi2
	bne	.L133
	cmp	r2, #0
	bne	.L135
	mov	r1, #67108864
	ldr	r3, .L141+20
	ldrh	ip, [r1]
	ldr	r0, .L141+24
	and	r3, r3, ip
	strh	r3, [r1]	@ movhi
	str	r2, [r0]
	b	.L138
.L131:
	pop	{r4, lr}
	bx	lr
.L142:
	.align	2
.L141:
	.word	updateCursor
	.word	oldButtons
	.word	drawSafeSprites
	.word	openSafeBool
	.word	buttons
	.word	65279
	.word	messageActiveBool
	.size	safe, .-safe
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
	ldr	r3, .L165
	ldr	r4, .L165+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L165+8
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L144
	ldr	r3, .L165+12
	ldrh	r3, [r3]
	tst	r3, #8
	moveq	r2, #4
	ldreq	r3, .L165+16
	streq	r2, [r3]
.L144:
	ldr	r3, .L165+20
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L162
	ldr	r3, .L165+24
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L163
.L146:
	ldr	r3, .L165+28
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L164
.L147:
	ldrh	r3, [r4]
	tst	r3, #4
	popne	{r4, lr}
	bne	livingRoom.part.0
.L143:
	pop	{r4, lr}
	bx	lr
.L162:
	bl	goToKitchen
	ldr	r3, .L165+24
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L146
.L163:
	bl	goToComputer
	ldr	r3, .L165+28
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L147
.L164:
	bl	goToLivingRoomOutro
	b	.L147
.L166:
	.align	2
.L165:
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
	ldr	r3, .L178
	mov	lr, pc
	bx	r3
	ldr	r3, .L178+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L178+8
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L168
	ldr	r3, .L178+12
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L175
.L168:
	ldr	r3, .L178+16
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L176
	cmp	r3, #2
	beq	.L177
	pop	{r4, lr}
	bx	lr
.L176:
	pop	{r4, lr}
	b	goToKitchen
.L175:
	bl	goToPause
	b	.L168
.L177:
	pop	{r4, lr}
	b	goToSafe
.L179:
	.align	2
.L178:
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
	ldr	r4, .L207
	ldrh	r3, [r4]
	tst	r3, #4
	beq	.L181
	ldr	r2, .L207+4
	ldrh	r2, [r2]
	tst	r2, #4
	beq	.L204
.L181:
	tst	r3, #8
	beq	.L191
	ldr	r2, .L207+4
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L205
.L191:
	tst	r3, #2
	beq	.L180
	ldr	r3, .L207+4
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L206
.L180:
	pop	{r4, lr}
	bx	lr
.L206:
	ldr	r2, .L207+8
	ldr	r3, .L207+12
	ldr	r2, [r2]
	pop	{r4, lr}
	str	r2, [r3]
	b	goToInstructions
.L204:
	ldr	r3, .L207+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L207+8
	ldr	r3, [r3]
	sub	r3, r3, #3
	cmp	r3, #6
	ldrls	pc, [pc, r3, asl #2]
	b	.L203
.L184:
	.word	.L190
	.word	.L189
	.word	.L188
	.word	.L187
	.word	.L186
	.word	.L185
	.word	.L183
.L205:
	bl	goToStart
	ldrh	r3, [r4]
	b	.L191
.L183:
	bl	goToFinale
.L203:
	ldrh	r3, [r4]
	b	.L181
.L185:
	bl	goToLivingRoomOutro
	ldrh	r3, [r4]
	b	.L181
.L186:
	bl	goToSafe
	ldrh	r3, [r4]
	b	.L181
.L187:
	bl	goToBedroom
	ldrh	r3, [r4]
	b	.L181
.L188:
	bl	goToKitchen
	ldrh	r3, [r4]
	b	.L181
.L190:
	bl	goToLivingRoom
	ldrh	r3, [r4]
	b	.L181
.L189:
	bl	goToComputer
	ldrh	r3, [r4]
	b	.L181
.L208:
	.align	2
.L207:
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
	mov	ip, #11
	mov	r4, #0
	ldr	r0, .L211
	ldr	r1, .L211+4
	ldr	r2, .L211+8
	ldr	r3, .L211+12
	str	ip, [r0]
	ldr	r5, .L211+16
	strh	r4, [r1]	@ movhi
	strh	r4, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L211+20
	mov	lr, pc
	bx	r5
	mov	r3, #8704
	mov	r0, #3
	ldr	r2, .L211+24
	ldr	r1, .L211+28
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L211+32
	ldr	r1, .L211+36
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r2, #67108864
	ldr	r1, .L211+40
	ldr	r3, .L211+44
	strh	r1, [r2, #10]	@ movhi
	strb	r4, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L212:
	.align	2
.L211:
	.word	state
	.word	hOff
	.word	vOff
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
	ldr	r3, .L221
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L214
	ldr	r3, .L221+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L221+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L221+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L221+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L221+20
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L219
.L216:
	ldr	r3, .L221+24
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L213
.L220:
	pop	{r4, lr}
	b	finale.part.0
.L214:
	ldr	r3, .L221+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L221+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L221+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L221+20
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L216
.L219:
	bl	goToWin
	ldr	r3, .L221+24
	ldrh	r3, [r3]
	tst	r3, #4
	bne	.L220
.L213:
	pop	{r4, lr}
	bx	lr
.L222:
	.align	2
.L221:
	.word	marsInteractBool
	.word	updateGame
	.word	updatePersistentSprites
	.word	drawGame
	.word	drawPersistentSprites
	.word	nextRoomBool
	.word	oldButtons
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
	ldr	lr, .L234
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
	ldr	r4, .L234+4
	mov	r2, #74
	ldr	r1, .L234+8
	add	r6, sp, #120
	mov	r0, r7
	mov	lr, pc
	bx	r4
	add	r5, sp, #188
	mov	r2, #65
	ldr	r1, .L234+12
	mov	r0, r6
	mov	lr, pc
	bx	r4
	mov	r2, #71
	ldr	r1, .L234+16
	mov	r0, r5
	mov	lr, pc
	bx	r4
	ldr	lr, .L234+20
	ldmia	lr!, {r0, r1, r2, r3}
	add	ip, sp, #20
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1, r2}
	ldr	r3, .L234+24
	stmia	ip!, {r0, r1}
	ldrh	r3, [r3]
	ldr	r4, .L234+28
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
	beq	.L224
	ldr	r2, .L234+32
	ldrh	r2, [r2]
	tst	r2, #1
	beq	.L231
.L224:
	cmp	r3, #5
	beq	.L232
.L225:
	cmp	r3, #6
	beq	.L233
	add	sp, sp, #340
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L231:
	add	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #4
	strb	r3, [r4]
	bhi	.L224
	add	r1, sp, #336
	ldr	r2, .L234+36
	add	r3, r1, r3, lsl #2
	ldr	r1, [r3, #-336]
	ldr	r2, [r2]
	ldr	r3, .L234+40
	str	r1, [r2, #48]
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	ldrh	r3, [r2]
	orr	r3, r3, #256
	strh	r3, [r2]	@ movhi
	ldrb	r3, [r4]	@ zero_extendqisi2
	b	.L224
.L233:
	bl	goToStart
	add	sp, sp, #340
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L232:
	mov	r2, #67108864
	ldr	r3, .L234+44
	ldrh	r1, [r2]
	and	r3, r3, r1
	strh	r3, [r2]	@ movhi
	ldr	r5, .L234+48
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L234+52
	mov	lr, pc
	bx	r5
	mov	r3, #8704
	mov	r0, #3
	ldr	r2, .L234+56
	ldr	r1, .L234+60
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L234+64
	ldr	r1, .L234+68
	mov	lr, pc
	bx	r5
	ldrb	r3, [r4]	@ zero_extendqisi2
	b	.L225
.L235:
	.align	2
.L234:
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
	ldr	r5, .L255+8
	ldr	r10, .L255+12
	ldr	r2, .L255+16
	mov	fp, r3
	strh	r0, [r5]	@ movhi
	strh	r1, [r10]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r8, .L255+20
	ldr	r7, .L255+24
	ldr	r6, .L255+28
	ldr	r9, .L255+32
.L253:
	ldrh	r1, [r5]
	strh	r1, [r10]	@ movhi
	ldr	r2, [r8]
	ldrh	r3, [fp, #48]
	strh	r3, [r5]	@ movhi
	cmp	r2, #11
	ldrls	pc, [pc, r2, asl #2]
	b	.L237
.L239:
	.word	.L250
	.word	.L249
	.word	.L248
	.word	.L247
	.word	.L246
	.word	.L245
	.word	.L244
	.word	.L243
	.word	.L242
	.word	.L241
	.word	.L240
	.word	.L238
.L238:
	ldr	r3, .L255+36
	mov	lr, pc
	bx	r3
.L237:
	mov	r4, #67108864
	ldr	r3, .L255+40
	mov	lr, pc
	bx	r3
	ldrh	r3, [r7]
	strh	r3, [r4, #20]	@ movhi
	ldrh	r3, [r6]
	strh	r3, [r4, #22]	@ movhi
	ldr	r3, .L255+44
	ldrh	r0, [r7]
	mov	lr, pc
	bx	r3
	adr	r3, .L255
	ldmia	r3, {r2-r3}
	ldr	ip, .L255+48
	mov	lr, pc
	bx	ip
	ldr	r3, .L255+52
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
	ldr	ip, .L255+56
	mov	lr, pc
	bx	ip
	b	.L253
.L240:
	ldr	r3, .L255+60
	mov	lr, pc
	bx	r3
	b	.L237
.L241:
	ldr	r3, .L255+64
	mov	lr, pc
	bx	r3
	b	.L237
.L242:
	ldr	r3, .L255+68
	mov	lr, pc
	bx	r3
	b	.L237
.L243:
	ldr	r3, .L255+72
	mov	lr, pc
	bx	r3
	b	.L237
.L244:
	ldr	r3, .L255+76
	mov	lr, pc
	bx	r3
	b	.L237
.L245:
	ldr	r3, .L255+80
	mov	lr, pc
	bx	r3
	b	.L237
.L246:
	ldr	r3, .L255+84
	mov	lr, pc
	bx	r3
	b	.L237
.L247:
	ldr	r3, .L255+88
	mov	lr, pc
	bx	r3
	b	.L237
.L248:
	ldr	r3, .L255+92
	mov	lr, pc
	bx	r3
	ldr	r3, .L255+96
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L237
	ldr	r3, .L255+100
	mov	lr, pc
	bx	r3
	b	.L237
.L250:
	tst	r1, #1
	beq	.L237
	tst	r3, #1
	bne	.L237
	ldr	r3, .L255+104
	mov	lr, pc
	bx	r3
	b	.L237
.L249:
	ldr	r3, .L255+108
	mov	lr, pc
	bx	r3
	b	.L237
.L256:
	.align	3
.L255:
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
	.word	updateColdDark
	.word	nextRoomBool
	.word	goToLivingRoom
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
