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
	ldr	r2, .L15
	push	{r4, lr}
	ldr	r3, .L15+4
	ldr	r4, .L15+8
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L15+12
	mov	lr, pc
	bx	r4
	mov	r3, #48
	mov	r0, #3
	ldr	r2, .L15+16
	ldr	r1, .L15+20
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L15+24
	ldr	r1, .L15+28
	mov	lr, pc
	bx	r4
	mov	r3, #2736
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L15+32
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L15+36
	ldr	r1, .L15+40
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	mov	r2, #6144
	mov	r1, #4864
	ldr	r0, .L15+44
	strh	r2, [r3, #8]	@ movhi
	strh	r0, [r3, #10]	@ movhi
	ldr	r2, .L15+48
	strh	r1, [r3]	@ movhi
	mov	lr, pc
	bx	r2
	pop	{r4, lr}
	bx	lr
.L16:
	.align	2
.L15:
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
	ldr	r3, .L22
	ldrh	r3, [r3]
	tst	r3, #1
	bxeq	lr
	ldr	r3, .L22+4
	ldrh	r3, [r3]
	tst	r3, #1
	bxne	lr
	b	goToIntro
.L23:
	.align	2
.L22:
	.word	oldButtons
	.word	buttons
	.size	instructions, .-instructions
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
	mov	r4, #3
	mov	r6, #67108864
	ldr	r3, .L26
	ldr	ip, .L26+4
	ldr	lr, [r3]
	ldr	r1, .L26+8
	ldr	r2, .L26+12
	str	lr, [ip]
	ldr	r5, .L26+16
	str	r4, [r3]
	str	r0, [r1]
	mov	lr, pc
	bx	r2
	mov	r0, r4
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L26+20
	mov	lr, pc
	bx	r5
	mov	r0, r4
	mov	r3, #8832
	ldr	r2, .L26+24
	ldr	r1, .L26+28
	mov	lr, pc
	bx	r5
	mov	r0, r4
	mov	r3, #4096
	ldr	r2, .L26+32
	ldr	r1, .L26+36
	mov	lr, pc
	bx	r5
	ldr	r3, .L26+40
	mov	r0, r4
	strh	r3, [r6, #10]	@ movhi
	ldr	r2, .L26+44
	mov	r3, #256
	ldr	r1, .L26+48
	mov	lr, pc
	bx	r5
	mov	r0, r4
	mov	r3, #16384
	ldr	r2, .L26+52
	ldr	r1, .L26+56
	mov	lr, pc
	bx	r5
	mov	r0, r4
	mov	r3, #1280
	mov	r2, #100663296
	ldr	r1, .L26+60
	mov	lr, pc
	bx	r5
	mov	r0, r4
	mov	r3, #4096
	ldr	r2, .L26+64
	ldr	r1, .L26+68
	mov	lr, pc
	bx	r5
	mov	r3, #6144
	mov	r2, #4608
	strh	r3, [r6, #8]	@ movhi
	strh	r2, [r6]	@ movhi
	ldr	r3, .L26+72
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	bx	lr
.L27:
	.align	2
.L26:
	.word	state
	.word	priorState
	.word	nextRoomBool
	.word	loadLivingRoom
	.word	DMANow
	.word	livingroombgPal
	.word	100679680
	.word	livingroombgTiles
	.word	100704256
	.word	livingroombgMap
	.word	-11258
	.word	83886592
	.word	livingroomspritesPal
	.word	100728832
	.word	livingroomspritesTiles
	.word	messagescreenTiles
	.word	100712448
	.word	messagescreenMap
	.word	hideSprites
	.size	goToLivingRoom, .-goToLivingRoom
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	intro.part.0, %function
intro.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #1280
	ldr	r4, .L30
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L30+4
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L30+8
	ldr	r1, .L30+12
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	b	goToLivingRoom
.L31:
	.align	2
.L30:
	.word	DMANow
	.word	messagescreenTiles
	.word	100712448
	.word	messagescreenMap
	.size	intro.part.0, .-intro.part.0
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
	ldr	r3, .L36
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L36+4
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L35
	pop	{r4, lr}
	bx	lr
.L35:
	pop	{r4, lr}
	b	intro.part.0
.L37:
	.align	2
.L36:
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
	ldr	r3, .L40
	ldr	r0, .L40+4
	ldr	ip, [r3]
	ldr	r2, .L40+8
	str	lr, [r3]
	ldr	r3, .L40+12
	str	ip, [r0]
	ldr	r4, .L40+16
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L40+20
	mov	lr, pc
	bx	r4
	mov	r3, #1168
	mov	r0, #3
	ldr	r2, .L40+24
	ldr	r1, .L40+28
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L40+32
	ldr	r1, .L40+36
	mov	lr, pc
	bx	r4
	ldr	r2, .L40+40
	mov	r3, #256
	strh	r2, [r5, #10]	@ movhi
	mov	r0, #3
	ldr	r2, .L40+44
	ldr	r1, .L40+48
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L40+52
	ldr	r1, .L40+56
	mov	lr, pc
	bx	r4
	mov	r2, #4608
	ldr	r3, .L40+60
	strh	r2, [r5]	@ movhi
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	bx	lr
.L41:
	.align	2
.L40:
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
	ldr	r3, .L47
	ldrh	r3, [r3]
	tst	r3, #1
	bxeq	lr
	ldr	r3, .L47+4
	ldrh	r3, [r3]
	tst	r3, #1
	bxne	lr
	b	goToComputer
.L48:
	.align	2
.L47:
	.word	oldButtons
	.word	buttons
	.size	start, .-start
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
	pop	{r4, lr}
	bx	lr
.L52:
	.align	2
.L51:
	.word	updateComputer
	.word	drawComputer
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
	ldr	r3, .L63
	ldr	r0, .L63+4
	ldr	r1, .L63+8
	ldrh	ip, [r0]
	ldr	lr, .L63+12
	ldr	r4, [r3]
	ldrh	r1, [r1]
	str	r2, [r3]
	ldr	r0, .L63+16
	ldr	r2, .L63+20
	ldr	r3, .L63+24
	str	r4, [lr]
	strh	ip, [r0]	@ movhi
	ldr	r4, .L63+28
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L63+32
	mov	lr, pc
	bx	r4
	mov	r3, #480
	mov	r0, #3
	ldr	r2, .L63+36
	ldr	r1, .L63+40
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L63+44
	ldr	r1, .L63+48
	mov	lr, pc
	bx	r4
	ldr	r2, .L63+52
	mov	r3, #256
	strh	r2, [r5, #10]	@ movhi
	mov	r0, #3
	ldr	r2, .L63+56
	ldr	r1, .L63+60
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L63+64
	ldr	r1, .L63+68
	mov	lr, pc
	bx	r4
	mov	r3, #6144
	strh	r3, [r5, #8]	@ movhi
	ldrh	r3, [r5]
	orr	r3, r3, #4608
	strh	r3, [r5]	@ movhi
	ldr	r3, .L63+72
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	bx	lr
.L64:
	.align	2
.L63:
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
	ldr	r3, .L71
	mov	lr, pc
	bx	r3
	ldr	r3, .L71+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L71+8
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L69
	cmp	r3, #2
	beq	.L70
	pop	{r4, lr}
	bx	lr
.L69:
	pop	{r4, lr}
	b	goToKitchen
.L70:
	pop	{r4, lr}
	b	goToSafe
.L72:
	.align	2
.L71:
	.word	updateGame
	.word	drawGame
	.word	nextRoomBool
	.size	bedroom, .-bedroom
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
	ldr	r3, .L82
	mov	lr, pc
	bx	r3
	ldr	r3, .L82+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L82+8
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L74
	ldr	r3, .L82+12
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L80
.L74:
	ldr	r3, .L82+16
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L81
	pop	{r4, lr}
	bx	lr
.L81:
	pop	{r4, lr}
	b	goToKitchen
.L80:
	mov	r3, #67108864
	mov	r2, #4608
	strh	r2, [r3]	@ movhi
	bl	goToBedroom
	b	.L74
.L83:
	.align	2
.L82:
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
	ldr	ip, .L86
	ldr	lr, .L86+4
	ldr	r1, .L86+8
	ldr	r2, .L86+12
	strh	r3, [lr]	@ movhi
	strh	r3, [ip]	@ movhi
	ldr	r4, .L86+16
	str	r0, [r1]
	mov	lr, pc
	bx	r2
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L86+20
	mov	lr, pc
	bx	r4
	mov	r3, #1504
	mov	r0, #3
	ldr	r2, .L86+24
	ldr	r1, .L86+28
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	ldr	r2, .L86+32
	mov	r0, #3
	ldr	r1, .L86+36
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L86+40
	pop	{r4, lr}
	strh	r2, [r3, #10]	@ movhi
	bx	lr
.L87:
	.align	2
.L86:
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
	ldr	r0, .L90
	push	{r4, lr}
	ldr	r1, .L90+4
	ldr	lr, [r0]
	str	ip, [r0]
	ldr	r0, .L90+8
	ldrh	ip, [r1]
	ldr	r3, .L90+12
	str	lr, [r0]
	ldr	r0, .L90+16
	ldrh	lr, [r3]
	strh	ip, [r0]	@ movhi
	ldr	ip, .L90+20
	ldr	r0, .L90+24
	strh	lr, [ip]	@ movhi
	ldr	r4, .L90+28
	strh	r2, [r1]	@ movhi
	strh	r2, [r3]	@ movhi
	mov	lr, pc
	bx	r0
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L90+32
	mov	lr, pc
	bx	r4
	mov	r3, #2800
	mov	r0, #3
	ldr	r2, .L90+36
	ldr	r1, .L90+40
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	ldr	r2, .L90+44
	mov	r0, #3
	ldr	r1, .L90+48
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L90+52
	pop	{r4, lr}
	strh	r2, [r3, #10]	@ movhi
	bx	lr
.L91:
	.align	2
.L90:
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
	ldr	r3, .L109
	mov	lr, pc
	bx	r3
	ldr	r3, .L109+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L109+8
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L106
.L93:
	ldr	r4, .L109+12
	ldrh	r3, [r4]
	tst	r3, #256
	beq	.L94
	ldr	r2, .L109+16
	ldrh	r2, [r2]
	tst	r2, #256
	beq	.L107
.L94:
	tst	r3, #4
	beq	.L92
	ldr	r3, .L109+16
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L108
.L92:
	pop	{r4, lr}
	bx	lr
.L106:
	bl	goToKitchen
	b	.L93
.L108:
	pop	{r4, lr}
	b	goToPause
.L107:
	bl	goToOutro
	ldrh	r3, [r4]
	b	.L94
.L110:
	.align	2
.L109:
	.word	updateGame
	.word	drawGame
	.word	nextRoomBool
	.word	oldButtons
	.word	buttons
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
	ldr	r3, .L127
	mov	lr, pc
	bx	r3
	ldr	r3, .L127+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L127+8
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L123
	cmp	r3, #2
	beq	.L124
.L113:
	ldr	r4, .L127+12
	ldrh	r3, [r4]
	tst	r3, #4
	beq	.L114
	ldr	r2, .L127+16
	ldrh	r2, [r2]
	tst	r2, #4
	beq	.L125
.L114:
	tst	r3, #256
	beq	.L111
	ldr	r3, .L127+16
	ldrh	r3, [r3]
	tst	r3, #256
	beq	.L126
.L111:
	pop	{r4, lr}
	bx	lr
.L123:
	bl	goToLivingRoom
	b	.L113
.L126:
	pop	{r4, lr}
	b	goToOutro
.L125:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L114
.L124:
	bl	goToBedroom
	b	.L113
.L128:
	.align	2
.L127:
	.word	updateGame
	.word	drawGame
	.word	nextRoomBool
	.word	oldButtons
	.word	buttons
	.size	kitchen, .-kitchen
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
	ldr	r4, .L151
	ldrh	r3, [r4]
	tst	r3, #4
	beq	.L130
	ldr	r2, .L151+4
	ldrh	r2, [r2]
	tst	r2, #4
	beq	.L148
.L130:
	tst	r3, #8
	beq	.L136
	ldr	r2, .L151+4
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L149
.L136:
	tst	r3, #2
	beq	.L129
	ldr	r3, .L151+4
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L150
.L129:
	pop	{r4, lr}
	bx	lr
.L148:
	ldr	r2, .L151+8
	ldr	r2, [r2]
	sub	r2, r2, #2
	cmp	r2, #6
	ldrls	pc, [pc, r2, asl #2]
	b	.L130
.L132:
	.word	.L135
	.word	.L134
	.word	.L130
	.word	.L133
	.word	.L130
	.word	.L130
	.word	.L131
.L150:
	mov	r2, #9
	ldr	r3, .L151+8
	pop	{r4, lr}
	str	r2, [r3]
	b	goToInstructions
.L149:
	bl	goToStart
	ldrh	r3, [r4]
	b	.L136
.L131:
	bl	goToOutro
	ldrh	r3, [r4]
	b	.L130
.L135:
	bl	goToIntro
	ldrh	r3, [r4]
	b	.L130
.L133:
	bl	goToKitchen
	ldrh	r3, [r4]
	b	.L130
.L134:
	bl	goToLivingRoom
	ldrh	r3, [r4]
	b	.L130
.L152:
	.align	2
.L151:
	.word	oldButtons
	.word	buttons
	.word	priorState
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
	ldr	r2, .L155
	push	{r4, lr}
	ldr	r3, .L155+4
	ldr	r4, .L155+8
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L155+12
	mov	lr, pc
	bx	r4
	mov	r3, #2032
	mov	r0, #3
	ldr	r2, .L155+16
	ldr	r1, .L155+20
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	ldr	r2, .L155+24
	mov	r0, #3
	ldr	r1, .L155+28
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L155+32
	pop	{r4, lr}
	strh	r2, [r3, #10]	@ movhi
	bx	lr
.L156:
	.align	2
.L155:
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
	ldr	r4, .L169
	ldrh	r3, [r4]
	tst	r3, #1
	beq	.L158
	ldr	r2, .L169+4
	ldrh	r2, [r2]
	tst	r2, #1
	beq	.L167
.L158:
	tst	r3, #4
	beq	.L157
	ldr	r3, .L169+4
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L168
.L157:
	pop	{r4, lr}
	bx	lr
.L168:
	pop	{r4, lr}
	b	goToPause
.L167:
	bl	goToWin
	ldrh	r3, [r4]
	b	.L158
.L170:
	.align	2
.L169:
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
	ldr	r3, .L196
	ldr	r4, .L196+4
	ldrh	r1, [r3, #48]
	ldr	r8, .L196+8
	mov	r9, r3
	ldr	r3, .L196+12
	strh	r1, [r4]	@ movhi
	strh	r2, [r8]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r6, .L196+16
	ldr	fp, .L196+20
	ldr	r10, .L196+24
	ldr	r7, .L196+28
.L187:
	ldrh	r1, [r4]
	strh	r1, [r8]	@ movhi
	ldr	r2, [r6]
	ldrh	r3, [r9, #48]
	strh	r3, [r4]	@ movhi
	cmp	r2, #10
	ldrls	pc, [pc, r2, asl #2]
	b	.L172
.L174:
	.word	.L184
	.word	.L183
	.word	.L182
	.word	.L181
	.word	.L180
	.word	.L179
	.word	.L178
	.word	.L177
	.word	.L176
	.word	.L175
	.word	.L173
.L173:
	tst	r1, #1
	beq	.L172
	tst	r3, #1
	beq	.L195
.L172:
	mov	lr, pc
	bx	fp
	ldrh	r3, [r10]
	strh	r3, [r5, #20]	@ movhi
	ldr	r3, .L196+32
	ldrh	r2, [r3]
	mov	r1, r7
	strh	r2, [r5, #22]	@ movhi
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	ip, .L196+36
	mov	lr, pc
	bx	ip
	b	.L187
.L175:
	ldr	r3, .L196+40
	mov	lr, pc
	bx	r3
	b	.L172
.L176:
	ldr	r3, .L196+44
	mov	lr, pc
	bx	r3
	b	.L172
.L177:
	ldr	r3, .L196+48
	mov	lr, pc
	bx	r3
	b	.L172
.L178:
	ldr	r3, .L196+52
	mov	lr, pc
	bx	r3
	b	.L172
.L179:
	ldr	r3, .L196+56
	mov	lr, pc
	bx	r3
	b	.L172
.L180:
	ldr	r3, .L196+60
	mov	lr, pc
	bx	r3
	ldr	r3, .L196+64
	mov	lr, pc
	bx	r3
	b	.L172
.L181:
	ldr	r3, .L196+68
	mov	lr, pc
	bx	r3
	b	.L172
.L182:
	ldr	r3, .L196+72
	mov	lr, pc
	bx	r3
	ldr	r3, .L196+76
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L172
	ldr	r3, .L196+80
	mov	lr, pc
	bx	r3
	b	.L172
.L184:
	tst	r1, #1
	beq	.L172
	tst	r3, #1
	bne	.L172
	ldr	r3, .L196+84
	mov	lr, pc
	bx	r3
	b	.L172
.L183:
	tst	r1, #1
	beq	.L172
	tst	r3, #1
	bne	.L172
	ldr	r3, .L196+88
	mov	lr, pc
	bx	r3
	b	.L172
.L195:
	ldr	r3, .L196+12
	mov	lr, pc
	bx	r3
	b	.L172
.L197:
	.align	2
.L196:
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
	.word	updateComputer
	.word	drawComputer
	.word	livingRoom
	.word	updateColdDark
	.word	nextRoomBool
	.word	intro.part.0
	.word	goToComputer
	.word	goToIntro
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
	ldr	r3, .L203
	ldrh	r3, [r3]
	tst	r3, #1
	bxeq	lr
	ldr	r3, .L203+4
	ldrh	r3, [r3]
	tst	r3, #1
	bxne	lr
	b	goToStart
.L204:
	.align	2
.L203:
	.word	oldButtons
	.word	buttons
	.size	win, .-win
	.comm	shadowOAM,1024,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	priorState,4,4
	.comm	state,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
