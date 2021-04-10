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
	mov	r0, #0
	push	{r4, lr}
	mov	lr, #2
	ldr	r1, .L4
	ldr	ip, .L4+4
	ldr	r4, .L4+8
	str	r0, [r1]
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
	mov	r3, #4096
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
	.word	state
	.word	priorState
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
	push	{r4, lr}
	mov	lr, #1
	ldr	ip, .L11
	ldr	r4, .L11+4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L11+8
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r3, .L11+12
	ldr	r2, .L11+16
	ldr	r1, .L11+20
	mov	lr, pc
	bx	r4
	mov	r3, #4096
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
	.word	DMANow
	.word	instructionscreenPal
	.word	5200
	.word	100679680
	.word	instructionscreenTiles
	.word	100704256
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
	mov	ip, #2
	ldr	r0, .L22
	push	{r4, lr}
	ldr	lr, .L22+4
	str	ip, [r0]
	ldr	r4, .L22+8
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L22+12
	str	ip, [lr]
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
	mov	r3, #2240
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
	.word	priorState
	.word	DMANow
	.word	blackbgPal
	.word	100679680
	.word	blackbgTiles
	.word	100704256
	.word	blackbgMap
	.word	colddarkmessagebgTiles
	.word	100712448
	.word	colddarkmessagebgMap
	.word	5126
	.word	initColdDark
	.size	goToIntro, .-goToIntro
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
	push	{r4, lr}
	ldr	r3, .L26
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L27:
	.align	2
.L26:
	.word	updateColdDark
	.size	intro, .-intro
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
	ldr	r1, .L30
	ldr	r2, .L30+4
	ldr	r3, .L30+8
	str	r0, [r1]
	str	r4, [r2]
	mov	lr, pc
	bx	r3
	ldr	ip, .L30+12
	ldr	r5, .L30+16
	mov	r0, r4
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L30+20
	str	r4, [ip]
	mov	lr, pc
	bx	r5
	mov	r0, r4
	mov	r3, #8832
	ldr	r2, .L30+24
	ldr	r1, .L30+28
	mov	lr, pc
	bx	r5
	mov	r0, r4
	mov	r3, #4096
	ldr	r2, .L30+32
	ldr	r1, .L30+36
	mov	lr, pc
	bx	r5
	ldr	r3, .L30+40
	mov	r0, r4
	strh	r3, [r6, #10]	@ movhi
	ldr	r2, .L30+44
	mov	r3, #256
	ldr	r1, .L30+48
	mov	lr, pc
	bx	r5
	mov	r0, r4
	mov	r3, #16384
	ldr	r2, .L30+52
	ldr	r1, .L30+56
	mov	lr, pc
	bx	r5
	mov	r2, #4608
	ldr	r3, .L30+60
	strh	r2, [r6]	@ movhi
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	bx	lr
.L31:
	.align	2
.L30:
	.word	nextRoomBool
	.word	state
	.word	loadLivingRoom
	.word	priorState
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
	.word	hideSprites
	.size	goToLivingRoom, .-goToLivingRoom
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
	mov	r0, #0
	mov	r4, #4
	ldr	r1, .L34
	ldr	r2, .L34+4
	ldr	r3, .L34+8
	str	r0, [r1]
	str	r4, [r2]
	mov	lr, pc
	bx	r3
	ldr	ip, .L34+12
	mov	r3, #256
	str	r4, [ip]
	mov	r2, #83886080
	ldr	r4, .L34+16
	mov	r0, #3
	ldr	r1, .L34+20
	mov	lr, pc
	bx	r4
	mov	r3, #3152
	mov	r0, #3
	ldr	r2, .L34+24
	ldr	r1, .L34+28
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L34+32
	ldr	r1, .L34+36
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	ldr	r1, .L34+40
	mov	r3, #256
	strh	r1, [r2, #10]	@ movhi
	mov	r0, #3
	ldr	r2, .L34+44
	ldr	r1, .L34+48
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L34+52
	ldr	r1, .L34+56
	mov	lr, pc
	bx	r4
	ldr	r3, .L34+60
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L35:
	.align	2
.L34:
	.word	nextRoomBool
	.word	state
	.word	loadKitchen
	.word	priorState
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
	mov	lr, #5
	mov	r1, #0
	ldr	r3, .L38
	ldr	r0, .L38+4
	ldr	ip, [r3]
	ldr	r2, .L38+8
	str	lr, [r3]
	ldr	r3, .L38+12
	str	ip, [r0]
	ldr	r4, .L38+16
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L38+20
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r3, .L38+24
	ldr	r2, .L38+28
	ldr	r1, .L38+32
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L38+36
	ldr	r1, .L38+40
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	ldr	r1, .L38+44
	mov	r3, #256
	strh	r1, [r2, #10]	@ movhi
	mov	r0, #3
	ldr	r2, .L38+48
	ldr	r1, .L38+52
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L38+56
	ldr	r1, .L38+60
	mov	lr, pc
	bx	r4
	ldr	r3, .L38+64
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L39:
	.align	2
.L38:
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
	mov	r2, #6
	push	{r4, r5, r6, lr}
	mov	r5, #67108864
	ldr	r3, .L42
	ldr	r0, .L42+4
	ldr	r1, .L42+8
	ldrh	ip, [r0]
	ldr	lr, .L42+12
	ldr	r4, [r3]
	ldrh	r1, [r1]
	str	r2, [r3]
	ldr	r0, .L42+16
	ldr	r2, .L42+20
	ldr	r3, .L42+24
	str	r4, [lr]
	strh	ip, [r0]	@ movhi
	ldr	r4, .L42+28
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L42+32
	mov	lr, pc
	bx	r4
	mov	r3, #480
	mov	r0, #3
	ldr	r2, .L42+36
	ldr	r1, .L42+40
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L42+44
	ldr	r1, .L42+48
	mov	lr, pc
	bx	r4
	ldr	r2, .L42+52
	mov	r3, #256
	strh	r2, [r5, #10]	@ movhi
	mov	r0, #3
	ldr	r2, .L42+56
	ldr	r1, .L42+60
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L42+64
	ldr	r1, .L42+68
	mov	lr, pc
	bx	r4
	mov	r2, #4864
	ldr	r3, .L42+72
	strh	r2, [r5]	@ movhi
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	bx	lr
.L43:
	.align	2
.L42:
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
	ldr	r3, .L50
	mov	lr, pc
	bx	r3
	ldr	r3, .L50+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L50+8
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L48
	cmp	r3, #2
	beq	.L49
	pop	{r4, lr}
	bx	lr
.L48:
	pop	{r4, lr}
	b	goToKitchen
.L49:
	pop	{r4, lr}
	b	goToSafe
.L51:
	.align	2
.L50:
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
	ldr	r3, .L61
	mov	lr, pc
	bx	r3
	ldr	r3, .L61+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L61+8
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L53
	ldr	r3, .L61+12
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L59
.L53:
	ldr	r3, .L61+16
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L60
	pop	{r4, lr}
	bx	lr
.L60:
	pop	{r4, lr}
	b	goToKitchen
.L59:
	mov	r3, #67108864
	mov	r2, #4608
	strh	r2, [r3]	@ movhi
	bl	goToBedroom
	b	.L53
.L62:
	.align	2
.L61:
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
	mov	r2, #0
	mov	r3, #7
	ldr	r1, .L65
	push	{r4, lr}
	ldr	ip, .L65+4
	ldr	lr, .L65+8
	ldr	r0, .L65+12
	strh	r2, [r1]	@ movhi
	ldr	r1, .L65+16
	strh	r2, [lr]	@ movhi
	str	r3, [ip]
	ldr	r4, .L65+20
	str	r3, [r0]
	mov	lr, pc
	bx	r1
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L65+24
	mov	lr, pc
	bx	r4
	mov	r3, #1504
	mov	r0, #3
	ldr	r2, .L65+28
	ldr	r1, .L65+32
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	ldr	r2, .L65+36
	mov	r0, #3
	ldr	r1, .L65+40
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L65+44
	pop	{r4, lr}
	strh	r2, [r3, #10]	@ movhi
	bx	lr
.L66:
	.align	2
.L65:
	.word	vOff
	.word	state
	.word	hOff
	.word	priorState
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
	ldr	r3, .L77
	ldrh	r3, [r3]
	tst	r3, #1
	bxeq	lr
	ldr	r3, .L77+4
	ldrh	r3, [r3]
	tst	r3, #1
	bxne	lr
	ldr	r3, .L77+8
	ldr	r3, [r3]
	sub	r3, r3, #2
	cmp	r3, #5
	ldrls	pc, [pc, r3, asl #2]
	b	.L67
.L70:
	.word	.L73
	.word	.L72
	.word	.L71
	.word	.L67
	.word	.L67
	.word	.L69
.L67:
	bx	lr
.L69:
	b	goToOutro
.L71:
	b	goToKitchen
.L72:
	b	goToLivingRoom
.L73:
	b	goToIntro
.L78:
	.align	2
.L77:
	.word	oldButtons
	.word	buttons
	.word	priorState
	.size	instructions, .-instructions
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
	mov	r2, #0
	mov	r0, #8
	ldr	r1, .L81
	push	{r4, lr}
	ldr	r3, .L81+4
	ldrh	r4, [r1]
	ldr	ip, .L81+8
	ldrh	lr, [r3]
	strh	r2, [r1]	@ movhi
	strh	r4, [ip]	@ movhi
	ldr	r1, .L81+12
	ldr	ip, .L81+16
	strh	r2, [r3]	@ movhi
	ldr	r3, .L81+20
	strh	lr, [ip]	@ movhi
	ldr	r4, .L81+24
	str	r0, [r1]
	mov	lr, pc
	bx	r3
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L81+28
	mov	lr, pc
	bx	r4
	mov	r3, #2800
	mov	r0, #3
	ldr	r2, .L81+32
	ldr	r1, .L81+36
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	ldr	r2, .L81+40
	mov	r0, #3
	ldr	r1, .L81+44
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L81+48
	pop	{r4, lr}
	strh	r2, [r3, #10]	@ movhi
	bx	lr
.L82:
	.align	2
.L81:
	.word	vOff
	.word	hOff
	.word	priorVoff
	.word	state
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
	ldr	r3, .L100
	mov	lr, pc
	bx	r3
	ldr	r3, .L100+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L100+8
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L97
.L84:
	ldr	r4, .L100+12
	ldrh	r3, [r4]
	tst	r3, #256
	beq	.L85
	ldr	r2, .L100+16
	ldrh	r2, [r2]
	tst	r2, #256
	beq	.L98
.L85:
	tst	r3, #4
	beq	.L83
	ldr	r3, .L100+16
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L99
.L83:
	pop	{r4, lr}
	bx	lr
.L97:
	bl	goToKitchen
	b	.L84
.L99:
	pop	{r4, lr}
	b	goToPause
.L98:
	bl	goToOutro
	ldrh	r3, [r4]
	b	.L85
.L101:
	.align	2
.L100:
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
	ldr	r3, .L118
	mov	lr, pc
	bx	r3
	ldr	r3, .L118+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L118+8
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L114
	cmp	r3, #2
	beq	.L115
.L104:
	ldr	r4, .L118+12
	ldrh	r3, [r4]
	tst	r3, #4
	beq	.L105
	ldr	r2, .L118+16
	ldrh	r2, [r2]
	tst	r2, #4
	beq	.L116
.L105:
	tst	r3, #256
	beq	.L102
	ldr	r3, .L118+16
	ldrh	r3, [r3]
	tst	r3, #256
	beq	.L117
.L102:
	pop	{r4, lr}
	bx	lr
.L114:
	bl	goToLivingRoom
	b	.L104
.L117:
	pop	{r4, lr}
	b	goToOutro
.L116:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L105
.L115:
	bl	goToBedroom
	b	.L104
.L119:
	.align	2
.L118:
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
	ldr	r4, .L142
	ldrh	r3, [r4]
	tst	r3, #4
	beq	.L121
	ldr	r2, .L142+4
	ldrh	r2, [r2]
	tst	r2, #4
	beq	.L139
.L121:
	tst	r3, #8
	beq	.L127
	ldr	r2, .L142+4
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L140
.L127:
	tst	r3, #2
	beq	.L120
	ldr	r3, .L142+4
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L141
.L120:
	pop	{r4, lr}
	bx	lr
.L139:
	ldr	r1, .L142+8
	ldr	r2, [r1]
	sub	r2, r2, #2
	cmp	r2, #5
	ldrls	pc, [pc, r2, asl #2]
	b	.L121
.L123:
	.word	.L126
	.word	.L125
	.word	.L124
	.word	.L121
	.word	.L121
	.word	.L122
.L141:
	mov	r2, #8
	ldr	r3, .L142+8
	pop	{r4, lr}
	str	r2, [r3]
	b	goToInstructions
.L140:
	bl	goToStart
	ldrh	r3, [r4]
	b	.L127
.L122:
	mov	r3, #8
	str	r3, [r1]
	bl	goToOutro
	ldrh	r3, [r4]
	b	.L121
.L126:
	mov	r3, #8
	str	r3, [r1]
	bl	goToIntro
	ldrh	r3, [r4]
	b	.L121
.L124:
	mov	r3, #8
	str	r3, [r1]
	bl	goToKitchen
	ldrh	r3, [r4]
	b	.L121
.L125:
	mov	r3, #8
	str	r3, [r1]
	bl	goToLivingRoom
	ldrh	r3, [r4]
	b	.L121
.L143:
	.align	2
.L142:
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
	mov	r1, #9
	ldr	r2, .L146
	push	{r4, lr}
	ldr	r3, .L146+4
	ldr	r4, .L146+8
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L146+12
	mov	lr, pc
	bx	r4
	mov	r3, #2032
	mov	r0, #3
	ldr	r2, .L146+16
	ldr	r1, .L146+20
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	ldr	r2, .L146+24
	mov	r0, #3
	ldr	r1, .L146+28
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L146+32
	pop	{r4, lr}
	strh	r2, [r3, #10]	@ movhi
	bx	lr
.L147:
	.align	2
.L146:
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
	ldr	r4, .L160
	ldrh	r3, [r4]
	tst	r3, #1
	beq	.L149
	ldr	r2, .L160+4
	ldrh	r2, [r2]
	tst	r2, #1
	beq	.L158
.L149:
	tst	r3, #4
	beq	.L148
	ldr	r3, .L160+4
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L159
.L148:
	pop	{r4, lr}
	bx	lr
.L159:
	pop	{r4, lr}
	b	goToPause
.L158:
	bl	goToWin
	ldrh	r3, [r4]
	b	.L149
.L161:
	.align	2
.L160:
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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	mov	r1, #4608
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r3, #0
	strh	r1, [r2]	@ movhi
	add	r2, r2, #256
	ldrh	r2, [r2, #48]
	ldr	r10, .L196
	strh	r2, [r10]	@ movhi
	ldr	r2, .L196+4
	strh	r3, [r2]	@ movhi
	ldr	r3, .L196+8
	mov	lr, pc
	bx	r3
	ldr	r6, .L196+12
	ldr	r5, .L196+16
	ldr	r7, .L196+20
	ldr	r8, .L196+24
	ldr	r9, .L196+28
.L163:
	ldrh	r2, [r10]
	ldr	r1, .L196+4
	ldr	r3, .L196+32
	strh	r2, [r1]	@ movhi
	ldr	r1, .L196+36
	ldrh	r3, [r3, #48]
	ldr	r1, [r1]
	strh	r3, [r10]	@ movhi
	cmp	r1, #9
	ldrls	pc, [pc, r1, asl #2]
	b	.L164
.L166:
	.word	.L175
	.word	.L174
	.word	.L173
	.word	.L172
	.word	.L171
	.word	.L170
	.word	.L169
	.word	.L168
	.word	.L167
	.word	.L165
.L175:
	tst	r2, #1
	beq	.L164
	tst	r3, #1
	ldreq	r3, .L196+40
	moveq	lr, pc
	bxeq	r3
.L164:
	ldr	r3, .L196+44
	ldr	r3, [r3]
	cmp	r3, #4
	bne	.L176
	mov	r3, #67108864
	mov	fp, #0
	ldr	r2, .L196+48
	strh	r2, [r3]	@ movhi
.L177:
	mov	r4, #0
	b	.L182
.L180:
	ldrh	r1, [r6]
	ldrh	r0, [r5]
	add	r1, r1, r4
	add	r0, r0, fp
	mov	lr, pc
	bx	r7
	ldr	r3, .L196+52
	cmp	r0, r3
	movne	r2, #3
	beq	.L194
.L193:
	mov	r1, r4
	mov	r0, fp
	mov	lr, pc
	bx	r8
.L179:
	add	r4, r4, #1
	cmp	r4, #160
	beq	.L195
.L182:
	ldrh	r1, [r6]
	ldrh	r0, [r5]
	add	r1, r1, r4
	add	r0, r0, fp
	mov	lr, pc
	bx	r7
	subs	r2, r0, #0
	beq	.L193
	ldrh	r1, [r6]
	ldrh	r0, [r5]
	add	r1, r1, r4
	add	r0, r0, fp
	mov	lr, pc
	bx	r7
	cmp	r0, r9
	bne	.L180
	mov	r1, r4
	mov	r2, #1
	mov	r0, fp
	add	r4, r4, #1
	mov	lr, pc
	bx	r8
	cmp	r4, #160
	bne	.L182
.L195:
	add	fp, fp, #1
	cmp	fp, #240
	bne	.L177
	ldr	r3, .L196+56
	mov	lr, pc
	bx	r3
	ldr	r3, .L196+60
	mov	lr, pc
	bx	r3
	b	.L163
.L194:
	mov	r2, #2
	mov	r1, r4
	mov	r0, fp
	mov	lr, pc
	bx	r8
	b	.L179
.L176:
	ldr	r3, .L196+56
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	ldrh	r3, [r5]
	strh	r3, [r2, #20]	@ movhi
	ldrh	r1, [r6]
	mov	r3, #512
	strh	r1, [r2, #22]	@ movhi
	mov	r0, #3
	mov	r2, #117440512
	ldr	r1, .L196+64
	ldr	ip, .L196+68
	mov	lr, pc
	bx	ip
	b	.L163
.L165:
	tst	r2, #1
	beq	.L164
	tst	r3, #1
	bne	.L164
	ldr	r3, .L196+8
	mov	lr, pc
	bx	r3
	b	.L164
.L167:
	ldr	r3, .L196+72
	mov	lr, pc
	bx	r3
	b	.L164
.L168:
	ldr	r3, .L196+76
	mov	lr, pc
	bx	r3
	b	.L164
.L169:
	ldr	r3, .L196+80
	mov	lr, pc
	bx	r3
	b	.L164
.L170:
	ldr	r3, .L196+84
	mov	lr, pc
	bx	r3
	b	.L164
.L171:
	ldr	r3, .L196+88
	mov	lr, pc
	bx	r3
	b	.L164
.L172:
	ldr	r3, .L196+92
	mov	lr, pc
	bx	r3
	b	.L164
.L173:
	ldr	r3, .L196+96
	mov	lr, pc
	bx	r3
	b	.L164
.L174:
	ldr	r3, .L196+100
	mov	lr, pc
	bx	r3
	b	.L164
.L197:
	.align	2
.L196:
	.word	buttons
	.word	oldButtons
	.word	goToStart
	.word	vOff
	.word	hOff
	.word	checkCollisionMapColor
	.word	setPixel4
	.word	32767
	.word	67109120
	.word	state
	.word	goToInstructions
	.word	mode
	.word	1044
	.word	32608
	.word	waitForVBlank
	.word	flipPage
	.word	shadowOAM
	.word	DMANow
	.word	pause
	.word	outro
	.word	safe
	.word	bedroom
	.word	kitchen
	.word	livingRoom
	.word	updateColdDark
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
