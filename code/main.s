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
	ldr	r3, .L29
	ldrh	r3, [r3]
	tst	r3, #1
	bxeq	lr
	ldr	r3, .L29+4
	ldrh	r3, [r3]
	tst	r3, #1
	bxne	lr
	b	goToIntro
.L30:
	.align	2
.L29:
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
	ldr	r3, .L33
	ldr	ip, .L33+4
	ldr	lr, [r3]
	ldr	r1, .L33+8
	ldr	r2, .L33+12
	str	lr, [ip]
	ldr	r5, .L33+16
	str	r4, [r3]
	str	r0, [r1]
	mov	lr, pc
	bx	r2
	mov	r0, r4
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L33+20
	mov	lr, pc
	bx	r5
	mov	r0, r4
	mov	r3, #8832
	ldr	r2, .L33+24
	ldr	r1, .L33+28
	mov	lr, pc
	bx	r5
	mov	r0, r4
	mov	r3, #4096
	ldr	r2, .L33+32
	ldr	r1, .L33+36
	mov	lr, pc
	bx	r5
	ldr	r3, .L33+40
	mov	r0, r4
	strh	r3, [r6, #10]	@ movhi
	ldr	r2, .L33+44
	mov	r3, #256
	ldr	r1, .L33+48
	mov	lr, pc
	bx	r5
	mov	r0, r4
	mov	r3, #16384
	ldr	r2, .L33+52
	ldr	r1, .L33+56
	mov	lr, pc
	bx	r5
	mov	r0, r4
	mov	r3, #1280
	mov	r2, #100663296
	ldr	r1, .L33+60
	mov	lr, pc
	bx	r5
	mov	r0, r4
	mov	r3, #4096
	ldr	r2, .L33+64
	ldr	r1, .L33+68
	mov	lr, pc
	bx	r5
	mov	r3, #6144
	mov	r2, #4608
	strh	r3, [r6, #8]	@ movhi
	strh	r2, [r6]	@ movhi
	ldr	r3, .L33+72
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	bx	lr
.L34:
	.align	2
.L33:
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
	ldr	r4, .L37
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L37+4
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L37+8
	ldr	r1, .L37+12
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	b	goToLivingRoom
.L38:
	.align	2
.L37:
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
	ldr	r3, .L43
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L43+4
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L42
	pop	{r4, lr}
	bx	lr
.L42:
	pop	{r4, lr}
	b	intro.part.0
.L44:
	.align	2
.L43:
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
	ldr	r3, .L47
	ldr	r0, .L47+4
	ldr	ip, [r3]
	ldr	r2, .L47+8
	str	lr, [r3]
	ldr	r3, .L47+12
	str	ip, [r0]
	ldr	r4, .L47+16
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L47+20
	mov	lr, pc
	bx	r4
	mov	r3, #1168
	mov	r0, #3
	ldr	r2, .L47+24
	ldr	r1, .L47+28
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L47+32
	ldr	r1, .L47+36
	mov	lr, pc
	bx	r4
	ldr	r2, .L47+40
	mov	r3, #256
	strh	r2, [r5, #10]	@ movhi
	mov	r0, #3
	ldr	r2, .L47+44
	ldr	r1, .L47+48
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L47+52
	ldr	r1, .L47+56
	mov	lr, pc
	bx	r4
	mov	r2, #4608
	ldr	r3, .L47+60
	strh	r2, [r5]	@ movhi
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	bx	lr
.L48:
	.align	2
.L47:
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
	ldr	r3, .L56
	mov	lr, pc
	bx	r3
	ldr	r3, .L56+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L56+8
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L49
	ldr	r3, .L56+12
	ldrh	r3, [r3]
	ands	r3, r3, #2
	beq	.L55
.L49:
	pop	{r4, lr}
	bx	lr
.L55:
	ldr	r2, .L56+16
	strb	r3, [r2]
	pop	{r4, lr}
	b	goToLivingRoom
.L57:
	.align	2
.L56:
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
	ldr	r3, .L60
	ldr	r0, .L60+4
	ldr	ip, [r3]
	ldr	r2, .L60+8
	str	lr, [r3]
	ldr	r3, .L60+12
	str	ip, [r0]
	ldr	r4, .L60+16
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L60+20
	mov	lr, pc
	bx	r4
	mov	r3, #3152
	mov	r0, #3
	ldr	r2, .L60+24
	ldr	r1, .L60+28
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L60+32
	ldr	r1, .L60+36
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	ldr	r1, .L60+40
	mov	r3, #256
	strh	r1, [r2, #10]	@ movhi
	mov	r0, #3
	ldr	r2, .L60+44
	ldr	r1, .L60+48
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L60+52
	ldr	r1, .L60+56
	mov	lr, pc
	bx	r4
	ldr	r3, .L60+60
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L61:
	.align	2
.L60:
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
	ldr	r3, .L64
	ldr	r0, .L64+4
	ldr	ip, [r3]
	ldr	r2, .L64+8
	str	lr, [r3]
	ldr	r3, .L64+12
	str	ip, [r0]
	ldr	r4, .L64+16
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L64+20
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r3, .L64+24
	ldr	r2, .L64+28
	ldr	r1, .L64+32
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L64+36
	ldr	r1, .L64+40
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	ldr	r1, .L64+44
	mov	r3, #256
	strh	r1, [r2, #10]	@ movhi
	mov	r0, #3
	ldr	r2, .L64+48
	ldr	r1, .L64+52
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L64+56
	ldr	r1, .L64+60
	mov	lr, pc
	bx	r4
	ldr	r3, .L64+64
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L65:
	.align	2
.L64:
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
	ldr	r3, .L68
	ldr	r0, .L68+4
	ldr	r1, .L68+8
	ldrh	ip, [r0]
	ldr	lr, .L68+12
	ldr	r4, [r3]
	ldrh	r1, [r1]
	str	r2, [r3]
	ldr	r0, .L68+16
	ldr	r2, .L68+20
	ldr	r3, .L68+24
	str	r4, [lr]
	strh	ip, [r0]	@ movhi
	ldr	r4, .L68+28
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L68+32
	mov	lr, pc
	bx	r4
	mov	r3, #480
	mov	r0, #3
	ldr	r2, .L68+36
	ldr	r1, .L68+40
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L68+44
	ldr	r1, .L68+48
	mov	lr, pc
	bx	r4
	ldr	r2, .L68+52
	mov	r3, #256
	strh	r2, [r5, #10]	@ movhi
	mov	r0, #3
	ldr	r2, .L68+56
	ldr	r1, .L68+60
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L68+64
	ldr	r1, .L68+68
	mov	lr, pc
	bx	r4
	mov	r3, #6144
	strh	r3, [r5, #8]	@ movhi
	ldrh	r3, [r5]
	orr	r3, r3, #4608
	strh	r3, [r5]	@ movhi
	ldr	r3, .L68+72
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	bx	lr
.L69:
	.align	2
.L68:
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
	ldr	r3, .L76
	mov	lr, pc
	bx	r3
	ldr	r3, .L76+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L76+8
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L74
	cmp	r3, #2
	beq	.L75
	pop	{r4, lr}
	bx	lr
.L74:
	pop	{r4, lr}
	b	goToKitchen
.L75:
	pop	{r4, lr}
	b	goToSafe
.L77:
	.align	2
.L76:
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
	ldr	r3, .L89
	mov	lr, pc
	bx	r3
	ldr	r3, .L89+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L89+8
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L79
	ldr	r3, .L89+12
	ldrh	r3, [r3]
	tst	r3, #2
	bne	.L79
.L80:
	mov	r3, #67108864
	mov	r2, #4608
	pop	{r4, lr}
	strh	r2, [r3]	@ movhi
	b	goToBedroom
.L79:
	ldr	r3, .L89+16
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L80
	pop	{r4, lr}
	bx	lr
.L90:
	.align	2
.L89:
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
	ldr	ip, .L93
	ldr	lr, .L93+4
	ldr	r1, .L93+8
	ldr	r2, .L93+12
	strh	r3, [lr]	@ movhi
	strh	r3, [ip]	@ movhi
	ldr	r4, .L93+16
	str	r0, [r1]
	mov	lr, pc
	bx	r2
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L93+20
	mov	lr, pc
	bx	r4
	mov	r3, #1504
	mov	r0, #3
	ldr	r2, .L93+24
	ldr	r1, .L93+28
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	ldr	r2, .L93+32
	mov	r0, #3
	ldr	r1, .L93+36
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L93+40
	pop	{r4, lr}
	strh	r2, [r3, #10]	@ movhi
	bx	lr
.L94:
	.align	2
.L93:
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
	ldr	r0, .L97
	push	{r4, lr}
	ldr	r1, .L97+4
	ldr	lr, [r0]
	str	ip, [r0]
	ldr	r0, .L97+8
	ldrh	ip, [r1]
	ldr	r3, .L97+12
	str	lr, [r0]
	ldr	r0, .L97+16
	ldrh	lr, [r3]
	strh	ip, [r0]	@ movhi
	ldr	ip, .L97+20
	ldr	r0, .L97+24
	strh	lr, [ip]	@ movhi
	ldr	r4, .L97+28
	strh	r2, [r1]	@ movhi
	strh	r2, [r3]	@ movhi
	mov	lr, pc
	bx	r0
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L97+32
	mov	lr, pc
	bx	r4
	mov	r3, #2800
	mov	r0, #3
	ldr	r2, .L97+36
	ldr	r1, .L97+40
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	ldr	r2, .L97+44
	mov	r0, #3
	ldr	r1, .L97+48
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L97+52
	pop	{r4, lr}
	strh	r2, [r3, #10]	@ movhi
	bx	lr
.L98:
	.align	2
.L97:
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
	ldr	r3, .L121
	mov	lr, pc
	bx	r3
	ldr	r3, .L121+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L121+8
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L117
.L100:
	ldr	r3, .L121+12
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L118
.L101:
	ldr	r4, .L121+16
	ldrh	r3, [r4]
	tst	r3, #256
	beq	.L102
	ldr	r2, .L121+20
	ldrh	r2, [r2]
	tst	r2, #256
	beq	.L119
.L102:
	tst	r3, #4
	beq	.L99
	ldr	r3, .L121+20
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L120
.L99:
	pop	{r4, lr}
	bx	lr
.L118:
	bl	goToComputer
	b	.L101
.L117:
	bl	goToKitchen
	b	.L100
.L120:
	pop	{r4, lr}
	b	goToPause
.L119:
	bl	goToOutro
	ldrh	r3, [r4]
	b	.L102
.L122:
	.align	2
.L121:
	.word	updateGame
	.word	drawGame
	.word	nextRoomBool
	.word	computerAccessBool
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
	ldr	r3, .L139
	mov	lr, pc
	bx	r3
	ldr	r3, .L139+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L139+8
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L135
	cmp	r3, #2
	beq	.L136
.L125:
	ldr	r4, .L139+12
	ldrh	r3, [r4]
	tst	r3, #4
	beq	.L126
	ldr	r2, .L139+16
	ldrh	r2, [r2]
	tst	r2, #4
	beq	.L137
.L126:
	tst	r3, #256
	beq	.L123
	ldr	r3, .L139+16
	ldrh	r3, [r3]
	tst	r3, #256
	beq	.L138
.L123:
	pop	{r4, lr}
	bx	lr
.L135:
	bl	goToLivingRoom
	b	.L125
.L138:
	pop	{r4, lr}
	b	goToOutro
.L137:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L126
.L136:
	bl	goToBedroom
	b	.L125
.L140:
	.align	2
.L139:
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
	ldr	r4, .L163
	ldrh	r3, [r4]
	tst	r3, #4
	beq	.L142
	ldr	r2, .L163+4
	ldrh	r2, [r2]
	tst	r2, #4
	beq	.L160
.L142:
	tst	r3, #8
	beq	.L148
	ldr	r2, .L163+4
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L161
.L148:
	tst	r3, #2
	beq	.L141
	ldr	r3, .L163+4
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L162
.L141:
	pop	{r4, lr}
	bx	lr
.L160:
	ldr	r2, .L163+8
	ldr	r2, [r2]
	sub	r2, r2, #2
	cmp	r2, #6
	ldrls	pc, [pc, r2, asl #2]
	b	.L142
.L144:
	.word	.L147
	.word	.L146
	.word	.L142
	.word	.L145
	.word	.L142
	.word	.L142
	.word	.L143
.L162:
	mov	r2, #9
	ldr	r3, .L163+8
	pop	{r4, lr}
	str	r2, [r3]
	b	goToInstructions
.L161:
	bl	goToStart
	ldrh	r3, [r4]
	b	.L148
.L143:
	bl	goToOutro
	ldrh	r3, [r4]
	b	.L142
.L147:
	bl	goToIntro
	ldrh	r3, [r4]
	b	.L142
.L145:
	bl	goToKitchen
	ldrh	r3, [r4]
	b	.L142
.L146:
	bl	goToLivingRoom
	ldrh	r3, [r4]
	b	.L142
.L164:
	.align	2
.L163:
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
	ldr	r2, .L167
	push	{r4, lr}
	ldr	r3, .L167+4
	ldr	r4, .L167+8
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L167+12
	mov	lr, pc
	bx	r4
	mov	r3, #2032
	mov	r0, #3
	ldr	r2, .L167+16
	ldr	r1, .L167+20
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	ldr	r2, .L167+24
	mov	r0, #3
	ldr	r1, .L167+28
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L167+32
	pop	{r4, lr}
	strh	r2, [r3, #10]	@ movhi
	bx	lr
.L168:
	.align	2
.L167:
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
	ldr	r4, .L181
	ldrh	r3, [r4]
	tst	r3, #1
	beq	.L170
	ldr	r2, .L181+4
	ldrh	r2, [r2]
	tst	r2, #1
	beq	.L179
.L170:
	tst	r3, #4
	beq	.L169
	ldr	r3, .L181+4
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L180
.L169:
	pop	{r4, lr}
	bx	lr
.L180:
	pop	{r4, lr}
	b	goToPause
.L179:
	bl	goToWin
	ldrh	r3, [r4]
	b	.L170
.L182:
	.align	2
.L181:
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
	ldr	r3, .L208
	ldr	r4, .L208+4
	ldrh	r1, [r3, #48]
	ldr	r8, .L208+8
	mov	r9, r3
	ldr	r3, .L208+12
	strh	r1, [r4]	@ movhi
	strh	r2, [r8]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r6, .L208+16
	ldr	fp, .L208+20
	ldr	r10, .L208+24
	ldr	r7, .L208+28
.L199:
	ldrh	r1, [r4]
	strh	r1, [r8]	@ movhi
	ldr	r2, [r6]
	ldrh	r3, [r9, #48]
	strh	r3, [r4]	@ movhi
	cmp	r2, #10
	ldrls	pc, [pc, r2, asl #2]
	b	.L184
.L186:
	.word	.L196
	.word	.L195
	.word	.L194
	.word	.L193
	.word	.L192
	.word	.L191
	.word	.L190
	.word	.L189
	.word	.L188
	.word	.L187
	.word	.L185
.L185:
	tst	r1, #1
	beq	.L184
	tst	r3, #1
	beq	.L207
.L184:
	mov	lr, pc
	bx	fp
	ldrh	r3, [r10]
	strh	r3, [r5, #20]	@ movhi
	ldr	r3, .L208+32
	ldrh	r2, [r3]
	mov	r1, r7
	strh	r2, [r5, #22]	@ movhi
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	ip, .L208+36
	mov	lr, pc
	bx	ip
	b	.L199
.L187:
	ldr	r3, .L208+40
	mov	lr, pc
	bx	r3
	b	.L184
.L188:
	ldr	r3, .L208+44
	mov	lr, pc
	bx	r3
	b	.L184
.L189:
	ldr	r3, .L208+48
	mov	lr, pc
	bx	r3
	b	.L184
.L190:
	ldr	r3, .L208+52
	mov	lr, pc
	bx	r3
	b	.L184
.L191:
	ldr	r3, .L208+56
	mov	lr, pc
	bx	r3
	b	.L184
.L192:
	ldr	r3, .L208+60
	mov	lr, pc
	bx	r3
	b	.L184
.L193:
	ldr	r3, .L208+64
	mov	lr, pc
	bx	r3
	b	.L184
.L194:
	ldr	r3, .L208+68
	mov	lr, pc
	bx	r3
	ldr	r3, .L208+72
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L184
	ldr	r3, .L208+76
	mov	lr, pc
	bx	r3
	b	.L184
.L196:
	tst	r1, #1
	beq	.L184
	tst	r3, #1
	bne	.L184
	ldr	r3, .L208+80
	mov	lr, pc
	bx	r3
	b	.L184
.L195:
	tst	r1, #1
	beq	.L184
	tst	r3, #1
	bne	.L184
	ldr	r3, .L208+84
	mov	lr, pc
	bx	r3
	b	.L184
.L207:
	ldr	r3, .L208+12
	mov	lr, pc
	bx	r3
	b	.L184
.L209:
	.align	2
.L208:
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
	.word	intro.part.0
	.word	goToInstructions
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
	ldr	r3, .L215
	ldrh	r3, [r3]
	tst	r3, #1
	bxeq	lr
	ldr	r3, .L215+4
	ldrh	r3, [r3]
	tst	r3, #1
	bxne	lr
	b	goToStart
.L216:
	.align	2
.L215:
	.word	oldButtons
	.word	buttons
	.size	win, .-win
	.comm	shadowOAM,1024,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	priorState,4,4
	.comm	state,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
