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
	ldr	r2, .L11+24
	mov	r0, #3
	ldr	r1, .L11+28
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L11+32
	pop	{r4, lr}
	strh	r2, [r3, #10]	@ movhi
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
	.word	chapterIntro
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
	mov	r4, #3
	mov	r6, #67108864
	ldr	r1, .L26
	ldr	r2, .L26+4
	ldr	r3, .L26+8
	ldr	r5, .L26+12
	str	r0, [r1]
	str	r4, [r2]
	mov	lr, pc
	bx	r3
	mov	r0, r4
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L26+16
	mov	lr, pc
	bx	r5
	mov	r0, r4
	mov	r3, #8832
	ldr	r2, .L26+20
	ldr	r1, .L26+24
	mov	lr, pc
	bx	r5
	mov	r0, r4
	mov	r3, #4096
	ldr	r2, .L26+28
	ldr	r1, .L26+32
	mov	lr, pc
	bx	r5
	ldr	r3, .L26+36
	mov	r0, r4
	strh	r3, [r6, #10]	@ movhi
	ldr	r2, .L26+40
	mov	r3, #256
	ldr	r1, .L26+44
	mov	lr, pc
	bx	r5
	mov	r0, r4
	mov	r3, #16384
	ldr	r2, .L26+48
	ldr	r1, .L26+52
	mov	lr, pc
	bx	r5
	mov	r0, r4
	mov	r3, #1280
	mov	r2, #100663296
	ldr	r1, .L26+56
	mov	lr, pc
	bx	r5
	mov	r0, r4
	mov	r3, #4096
	ldr	r2, .L26+60
	ldr	r1, .L26+64
	mov	lr, pc
	bx	r5
	mov	r3, #6144
	mov	r2, #4608
	strh	r3, [r6, #8]	@ movhi
	strh	r2, [r6]	@ movhi
	ldr	r3, .L26+68
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	bx	lr
.L27:
	.align	2
.L26:
	.word	nextRoomBool
	.word	state
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
	ldr	r3, .L33
	ldrh	r3, [r3]
	tst	r3, #1
	bxeq	lr
	ldr	r3, .L33+4
	ldrh	r3, [r3]
	tst	r3, #1
	bxne	lr
	b	goToLivingRoom
.L34:
	.align	2
.L33:
	.word	oldButtons
	.word	buttons
	.size	instructions, .-instructions
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
	.global	goToKitchen
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToKitchen, %function
goToKitchen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #0
	mov	r1, #4
	ldr	r0, .L47
	ldr	r2, .L47+4
	push	{r4, lr}
	ldr	r3, .L47+8
	str	ip, [r0]
	ldr	r4, .L47+12
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L47+16
	mov	lr, pc
	bx	r4
	mov	r3, #3152
	mov	r0, #3
	ldr	r2, .L47+20
	ldr	r1, .L47+24
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L47+28
	ldr	r1, .L47+32
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	ldr	r1, .L47+36
	mov	r3, #256
	strh	r1, [r2, #10]	@ movhi
	mov	r0, #3
	ldr	r2, .L47+40
	ldr	r1, .L47+44
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L47+48
	ldr	r1, .L47+52
	mov	lr, pc
	bx	r4
	ldr	r3, .L47+56
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L48:
	.align	2
.L47:
	.word	nextRoomBool
	.word	state
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
	mov	ip, #0
	mov	r1, #5
	ldr	r0, .L51
	ldr	r2, .L51+4
	push	{r4, lr}
	ldr	r3, .L51+8
	str	ip, [r0]
	ldr	r4, .L51+12
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L51+16
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r3, .L51+20
	ldr	r2, .L51+24
	ldr	r1, .L51+28
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L51+32
	ldr	r1, .L51+36
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	ldr	r1, .L51+40
	mov	r3, #256
	strh	r1, [r2, #10]	@ movhi
	mov	r0, #3
	ldr	r2, .L51+44
	ldr	r1, .L51+48
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L51+52
	ldr	r1, .L51+56
	mov	lr, pc
	bx	r4
	ldr	r3, .L51+60
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L52:
	.align	2
.L51:
	.word	nextRoomBool
	.word	state
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
	mov	r1, #6
	push	{r4, r5, r6, lr}
	mov	r5, #67108864
	ldr	r3, .L55
	ldr	r2, .L55+4
	ldrh	lr, [r3]
	ldr	r3, .L55+8
	ldrh	ip, [r2]
	ldr	r0, .L55+12
	ldr	r2, .L55+16
	strh	lr, [r3]	@ movhi
	ldr	r3, .L55+20
	strh	ip, [r0]	@ movhi
	ldr	r4, .L55+24
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L55+28
	mov	lr, pc
	bx	r4
	mov	r3, #480
	mov	r0, #3
	ldr	r2, .L55+32
	ldr	r1, .L55+36
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L55+40
	ldr	r1, .L55+44
	mov	lr, pc
	bx	r4
	ldr	r2, .L55+48
	mov	r3, #256
	strh	r2, [r5, #10]	@ movhi
	mov	r0, #3
	ldr	r2, .L55+52
	ldr	r1, .L55+56
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L55+60
	ldr	r1, .L55+64
	mov	lr, pc
	bx	r4
	mov	r2, #4608
	ldr	r3, .L55+68
	strh	r2, [r5]	@ movhi
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	bx	lr
.L56:
	.align	2
.L55:
	.word	hOff
	.word	vOff
	.word	priorHoff
	.word	priorVoff
	.word	state
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
	ldr	r3, .L63
	mov	lr, pc
	bx	r3
	ldr	r3, .L63+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L63+8
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L61
	cmp	r3, #2
	beq	.L62
	pop	{r4, lr}
	bx	lr
.L61:
	pop	{r4, lr}
	b	goToKitchen
.L62:
	pop	{r4, lr}
	b	goToSafe
.L64:
	.align	2
.L63:
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
	ldr	r3, .L74
	mov	lr, pc
	bx	r3
	ldr	r3, .L74+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L74+8
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L66
	ldr	r3, .L74+12
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L72
.L66:
	ldr	r3, .L74+16
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L73
	pop	{r4, lr}
	bx	lr
.L73:
	pop	{r4, lr}
	b	goToKitchen
.L72:
	mov	r3, #67108864
	mov	r2, #4608
	strh	r2, [r3]	@ movhi
	bl	goToBedroom
	b	.L66
.L75:
	.align	2
.L74:
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
	mov	r0, #7
	push	{r4, lr}
	ldr	ip, .L78
	ldr	lr, .L78+4
	ldr	r1, .L78+8
	ldr	r2, .L78+12
	strh	r3, [lr]	@ movhi
	strh	r3, [ip]	@ movhi
	ldr	r4, .L78+16
	str	r0, [r1]
	mov	lr, pc
	bx	r2
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L78+20
	mov	lr, pc
	bx	r4
	mov	r3, #1504
	mov	r0, #3
	ldr	r2, .L78+24
	ldr	r1, .L78+28
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	ldr	r2, .L78+32
	mov	r0, #3
	ldr	r1, .L78+36
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L78+40
	pop	{r4, lr}
	strh	r2, [r3, #10]	@ movhi
	bx	lr
.L79:
	.align	2
.L78:
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
	mov	r2, #0
	mov	r0, #8
	ldr	r1, .L82
	push	{r4, lr}
	ldr	r3, .L82+4
	ldrh	r4, [r1]
	ldr	ip, .L82+8
	ldrh	lr, [r3]
	strh	r2, [r1]	@ movhi
	strh	r4, [ip]	@ movhi
	ldr	r1, .L82+12
	ldr	ip, .L82+16
	strh	r2, [r3]	@ movhi
	ldr	r3, .L82+20
	strh	lr, [ip]	@ movhi
	ldr	r4, .L82+24
	str	r0, [r1]
	mov	lr, pc
	bx	r3
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L82+28
	mov	lr, pc
	bx	r4
	mov	r3, #2800
	mov	r0, #3
	ldr	r2, .L82+32
	ldr	r1, .L82+36
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	ldr	r2, .L82+40
	mov	r0, #3
	ldr	r1, .L82+44
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L82+48
	pop	{r4, lr}
	strh	r2, [r3, #10]	@ movhi
	bx	lr
.L83:
	.align	2
.L82:
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
	ldr	r3, .L101
	mov	lr, pc
	bx	r3
	ldr	r3, .L101+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L101+8
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L98
.L85:
	ldr	r4, .L101+12
	ldrh	r3, [r4]
	tst	r3, #256
	beq	.L86
	ldr	r2, .L101+16
	ldrh	r2, [r2]
	tst	r2, #256
	beq	.L99
.L86:
	tst	r3, #4
	beq	.L84
	ldr	r3, .L101+16
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L100
.L84:
	pop	{r4, lr}
	bx	lr
.L98:
	bl	goToKitchen
	b	.L85
.L100:
	pop	{r4, lr}
	b	goToPause
.L99:
	bl	goToOutro
	ldrh	r3, [r4]
	b	.L86
.L102:
	.align	2
.L101:
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
	ldr	r3, .L119
	mov	lr, pc
	bx	r3
	ldr	r3, .L119+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L119+8
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L115
	cmp	r3, #2
	beq	.L116
.L105:
	ldr	r4, .L119+12
	ldrh	r3, [r4]
	tst	r3, #4
	beq	.L106
	ldr	r2, .L119+16
	ldrh	r2, [r2]
	tst	r2, #4
	beq	.L117
.L106:
	tst	r3, #256
	beq	.L103
	ldr	r3, .L119+16
	ldrh	r3, [r3]
	tst	r3, #256
	beq	.L118
.L103:
	pop	{r4, lr}
	bx	lr
.L115:
	bl	goToLivingRoom
	b	.L105
.L118:
	pop	{r4, lr}
	b	goToOutro
.L117:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L106
.L116:
	bl	goToBedroom
	b	.L105
.L120:
	.align	2
.L119:
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
	@ link register save eliminated.
	bx	lr
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
	ldr	r2, .L124
	push	{r4, lr}
	ldr	r3, .L124+4
	ldr	r4, .L124+8
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L124+12
	mov	lr, pc
	bx	r4
	mov	r3, #2032
	mov	r0, #3
	ldr	r2, .L124+16
	ldr	r1, .L124+20
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	ldr	r2, .L124+24
	mov	r0, #3
	ldr	r1, .L124+28
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L124+32
	pop	{r4, lr}
	strh	r2, [r3, #10]	@ movhi
	bx	lr
.L125:
	.align	2
.L124:
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
	ldr	r4, .L138
	ldrh	r3, [r4]
	tst	r3, #1
	beq	.L127
	ldr	r2, .L138+4
	ldrh	r2, [r2]
	tst	r2, #1
	beq	.L136
.L127:
	tst	r3, #4
	beq	.L126
	ldr	r3, .L138+4
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L137
.L126:
	pop	{r4, lr}
	bx	lr
.L137:
	pop	{r4, lr}
	b	goToPause
.L136:
	bl	goToWin
	ldrh	r3, [r4]
	b	.L127
.L139:
	.align	2
.L138:
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
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #4608
	mov	r4, #67108864
	mov	r2, #0
	push	{r7, fp, lr}
	strh	r3, [r4]	@ movhi
	ldr	r3, .L163
	sub	sp, sp, #12
	ldrh	r1, [r3, #48]
	ldr	r5, .L163+4
	ldr	r7, .L163+8
	str	r3, [sp, #4]
	ldr	r3, .L163+12
	strh	r1, [r5]	@ movhi
	strh	r2, [r7]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	fp, .L163+16
	ldr	r10, .L163+20
	ldr	r9, .L163+24
	ldr	r8, .L163+28
	ldr	r6, .L163+32
.L154:
	ldrh	r1, [r5]
	ldr	r3, [sp, #4]
	strh	r1, [r7]	@ movhi
	ldr	r2, [fp]
	ldrh	r3, [r3, #48]
	strh	r3, [r5]	@ movhi
	cmp	r2, #9
	ldrls	pc, [pc, r2, asl #2]
	b	.L141
.L143:
	.word	.L151
	.word	.L150
	.word	.L149
	.word	.L148
	.word	.L147
	.word	.L146
	.word	.L145
	.word	.L144
	.word	.L141
	.word	.L142
.L142:
	tst	r1, #1
	beq	.L141
	tst	r3, #1
	beq	.L162
.L141:
	mov	lr, pc
	bx	r10
	ldrh	r3, [r9]
	strh	r3, [r4, #20]	@ movhi
	ldrh	r2, [r8]
	mov	r3, #512
	strh	r2, [r4, #22]	@ movhi
	mov	r1, r6
	mov	r2, #117440512
	mov	r0, #3
	ldr	ip, .L163+36
	mov	lr, pc
	bx	ip
	b	.L154
.L144:
	ldr	r3, .L163+40
	mov	lr, pc
	bx	r3
	b	.L141
.L145:
	ldr	r3, .L163+44
	mov	lr, pc
	bx	r3
	b	.L141
.L146:
	ldr	r3, .L163+48
	mov	lr, pc
	bx	r3
	b	.L141
.L147:
	ldr	r3, .L163+52
	mov	lr, pc
	bx	r3
	b	.L141
.L148:
	ldr	r3, .L163+56
	mov	lr, pc
	bx	r3
	b	.L141
.L149:
	ldr	r3, .L163+60
	mov	lr, pc
	bx	r3
	ldr	r3, .L163+64
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L141
	ldr	r3, .L163+68
	mov	lr, pc
	bx	r3
	b	.L141
.L151:
	tst	r1, #1
	beq	.L141
	tst	r3, #1
	bne	.L141
	ldr	r3, .L163+72
	mov	lr, pc
	bx	r3
	b	.L141
.L150:
	tst	r1, #1
	beq	.L141
	tst	r3, #1
	bne	.L141
	ldr	r3, .L163+76
	mov	lr, pc
	bx	r3
	b	.L141
.L162:
	ldr	r3, .L163+12
	mov	lr, pc
	bx	r3
	b	.L141
.L164:
	.align	2
.L163:
	.word	67109120
	.word	buttons
	.word	oldButtons
	.word	goToStart
	.word	state
	.word	waitForVBlank
	.word	hOff
	.word	vOff
	.word	shadowOAM
	.word	DMANow
	.word	outro
	.word	safe
	.word	bedroom
	.word	kitchen
	.word	livingRoom
	.word	updateColdDark
	.word	nextRoomBool
	.word	intro.part.0
	.word	goToInstructions
	.word	goToLivingRoom
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
	ldr	r3, .L170
	ldrh	r3, [r3]
	tst	r3, #1
	bxeq	lr
	ldr	r3, .L170+4
	ldrh	r3, [r3]
	tst	r3, #1
	bxne	lr
	b	goToStart
.L171:
	.align	2
.L170:
	.word	oldButtons
	.word	buttons
	.size	win, .-win
	.comm	shadowOAM,1024,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	priorState,4,4
	.comm	state,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
