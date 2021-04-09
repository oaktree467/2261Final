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
	push	{r4, lr}
	mov	r3, #1280
	ldr	r4, .L8
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L8+4
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L8+8
	ldr	r1, .L8+12
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	mov	r0, #6144
	mov	r1, #4608
	mov	r2, #0
	strh	r0, [r3, #8]	@ movhi
	strh	r1, [r3]	@ movhi
	ldr	r0, .L8+16
	ldr	r1, .L8+20
	ldrh	r0, [r0, #48]
	ldr	r3, .L8+24
	pop	{r4, lr}
	strh	r0, [r1]	@ movhi
	strh	r2, [r3]	@ movhi
	b	goToStart
.L9:
	.align	2
.L8:
	.word	DMANow
	.word	messagescreenTiles
	.word	100712448
	.word	messagescreenMap
	.word	67109120
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
	ldr	ip, .L12
	ldr	r4, .L12+4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L12+8
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r3, .L12+12
	ldr	r2, .L12+16
	ldr	r1, .L12+20
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	ldr	r2, .L12+24
	mov	r0, #3
	ldr	r1, .L12+28
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L12+32
	pop	{r4, lr}
	strh	r2, [r3, #10]	@ movhi
	bx	lr
.L13:
	.align	2
.L12:
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
	ldr	r0, .L16
	push	{r4, lr}
	ldr	lr, .L16+4
	str	ip, [r0]
	ldr	r4, .L16+8
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L16+12
	str	ip, [lr]
	mov	lr, pc
	bx	r4
	mov	r3, #1504
	mov	r0, #3
	ldr	r2, .L16+16
	ldr	r1, .L16+20
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	ldr	r2, .L16+24
	mov	r0, #3
	ldr	r1, .L16+28
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L16+32
	pop	{r4, lr}
	strh	r2, [r3, #10]	@ movhi
	bx	lr
.L17:
	.align	2
.L16:
	.word	state
	.word	priorState
	.word	DMANow
	.word	introscreenPal
	.word	100679680
	.word	introscreenTiles
	.word	100704256
	.word	introscreenMap
	.word	5126
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
	ldr	r1, .L20
	ldr	r2, .L20+4
	ldr	r3, .L20+8
	str	r0, [r1]
	str	r4, [r2]
	mov	lr, pc
	bx	r3
	ldr	ip, .L20+12
	ldr	r5, .L20+16
	mov	r0, r4
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L20+20
	str	r4, [ip]
	mov	lr, pc
	bx	r5
	mov	r0, r4
	mov	r3, #8832
	ldr	r2, .L20+24
	ldr	r1, .L20+28
	mov	lr, pc
	bx	r5
	mov	r0, r4
	mov	r3, #4096
	ldr	r2, .L20+32
	ldr	r1, .L20+36
	mov	lr, pc
	bx	r5
	mov	r3, #67108864
	ldr	r2, .L20+40
	mov	r0, r4
	strh	r2, [r3, #10]	@ movhi
	ldr	r1, .L20+44
	mov	r3, #256
	ldr	r2, .L20+48
	mov	lr, pc
	bx	r5
	mov	r0, r4
	mov	r3, #16384
	ldr	r2, .L20+52
	ldr	r1, .L20+56
	mov	lr, pc
	bx	r5
	ldr	r3, .L20+60
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	bx	lr
.L21:
	.align	2
.L20:
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
	.word	livingroomspritesPal
	.word	83886592
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
	ldr	r1, .L24
	ldr	r2, .L24+4
	ldr	r3, .L24+8
	str	r0, [r1]
	str	r4, [r2]
	mov	lr, pc
	bx	r3
	ldr	ip, .L24+12
	mov	r3, #256
	str	r4, [ip]
	mov	r2, #83886080
	ldr	r4, .L24+16
	mov	r0, #3
	ldr	r1, .L24+20
	mov	lr, pc
	bx	r4
	mov	r3, #3152
	mov	r0, #3
	ldr	r2, .L24+24
	ldr	r1, .L24+28
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L24+32
	ldr	r1, .L24+36
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	ldr	r1, .L24+40
	mov	r3, #256
	strh	r1, [r2, #10]	@ movhi
	mov	r0, #3
	ldr	r2, .L24+44
	ldr	r1, .L24+48
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L24+52
	ldr	r1, .L24+56
	mov	lr, pc
	bx	r4
	ldr	r3, .L24+60
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L25:
	.align	2
.L24:
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
	ldr	r3, .L28
	ldr	r0, .L28+4
	ldr	ip, [r3]
	ldr	r2, .L28+8
	str	lr, [r3]
	ldr	r3, .L28+12
	str	ip, [r0]
	ldr	r4, .L28+16
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L28+20
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r3, .L28+24
	ldr	r2, .L28+28
	ldr	r1, .L28+32
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L28+36
	ldr	r1, .L28+40
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	ldr	r1, .L28+44
	mov	r3, #256
	strh	r1, [r2, #10]	@ movhi
	mov	r0, #3
	ldr	r2, .L28+48
	ldr	r1, .L28+52
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L28+56
	ldr	r1, .L28+60
	mov	lr, pc
	bx	r4
	ldr	r3, .L28+64
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L29:
	.align	2
.L28:
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
	.global	start
	.syntax unified
	.arm
	.fpu softvfp
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	goToBedroom
	ldr	r3, .L37
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L30
	ldr	r3, .L37+4
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L36
.L30:
	pop	{r4, lr}
	bx	lr
.L36:
	pop	{r4, lr}
	b	goToInstructions
.L38:
	.align	2
.L37:
	.word	oldButtons
	.word	buttons
	.size	start, .-start
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
	ldr	r3, .L41
	ldr	r0, .L41+4
	ldr	r1, .L41+8
	push	{r4, lr}
	ldrh	ip, [r0]
	ldr	lr, .L41+12
	ldr	r4, [r3]
	ldrh	r1, [r1]
	str	r2, [r3]
	ldr	r0, .L41+16
	ldr	r2, .L41+20
	ldr	r3, .L41+24
	str	r4, [lr]
	strh	ip, [r0]	@ movhi
	ldr	r4, .L41+28
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L41+32
	mov	lr, pc
	bx	r4
	mov	r3, #480
	mov	r0, #3
	ldr	r2, .L41+36
	ldr	r1, .L41+40
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L41+44
	ldr	r1, .L41+48
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	ldr	r1, .L41+52
	mov	r3, #256
	strh	r1, [r2, #10]	@ movhi
	mov	r0, #3
	ldr	r2, .L41+56
	ldr	r1, .L41+60
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L41+64
	ldr	r1, .L41+68
	mov	lr, pc
	bx	r4
	ldr	r3, .L41+72
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L42:
	.align	2
.L41:
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
	ldr	r3, .L49
	mov	lr, pc
	bx	r3
	ldr	r3, .L49+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L49+8
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L47
	cmp	r3, #2
	beq	.L48
	pop	{r4, lr}
	bx	lr
.L47:
	pop	{r4, lr}
	b	goToKitchen
.L48:
	pop	{r4, lr}
	b	goToSafe
.L50:
	.align	2
.L49:
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
	ldr	r3, .L60
	mov	lr, pc
	bx	r3
	ldr	r3, .L60+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L60+8
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L52
	ldr	r3, .L60+12
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L58
.L52:
	ldr	r3, .L60+16
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L59
	pop	{r4, lr}
	bx	lr
.L59:
	pop	{r4, lr}
	b	goToKitchen
.L58:
	bl	goToBedroom
	b	.L52
.L61:
	.align	2
.L60:
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
	ldr	r1, .L64
	push	{r4, lr}
	ldr	ip, .L64+4
	ldr	lr, .L64+8
	ldr	r0, .L64+12
	strh	r2, [r1]	@ movhi
	ldr	r1, .L64+16
	strh	r2, [lr]	@ movhi
	str	r3, [ip]
	ldr	r4, .L64+20
	str	r3, [r0]
	mov	lr, pc
	bx	r1
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L64+24
	mov	lr, pc
	bx	r4
	mov	r3, #1504
	mov	r0, #3
	ldr	r2, .L64+28
	ldr	r1, .L64+32
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	ldr	r2, .L64+36
	mov	r0, #3
	ldr	r1, .L64+40
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L64+44
	pop	{r4, lr}
	strh	r2, [r3, #10]	@ movhi
	bx	lr
.L65:
	.align	2
.L64:
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
	ldr	r3, .L76
	ldrh	r3, [r3]
	tst	r3, #1
	bxeq	lr
	ldr	r3, .L76+4
	ldrh	r3, [r3]
	tst	r3, #1
	bxne	lr
	ldr	r3, .L76+8
	ldr	r3, [r3]
	sub	r3, r3, #2
	cmp	r3, #5
	ldrls	pc, [pc, r3, asl #2]
	b	.L66
.L69:
	.word	.L72
	.word	.L71
	.word	.L70
	.word	.L66
	.word	.L66
	.word	.L68
.L66:
	bx	lr
.L68:
	b	goToOutro
.L70:
	b	goToKitchen
.L71:
	b	goToLivingRoom
.L72:
	b	goToIntro
.L77:
	.align	2
.L76:
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
	ldr	r1, .L80
	push	{r4, lr}
	ldr	r3, .L80+4
	ldrh	r4, [r1]
	ldr	ip, .L80+8
	ldrh	lr, [r3]
	strh	r2, [r1]	@ movhi
	strh	r4, [ip]	@ movhi
	ldr	r1, .L80+12
	ldr	ip, .L80+16
	strh	r2, [r3]	@ movhi
	ldr	r3, .L80+20
	strh	lr, [ip]	@ movhi
	ldr	r4, .L80+24
	str	r0, [r1]
	mov	lr, pc
	bx	r3
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L80+28
	mov	lr, pc
	bx	r4
	mov	r3, #2800
	mov	r0, #3
	ldr	r2, .L80+32
	ldr	r1, .L80+36
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	ldr	r2, .L80+40
	mov	r0, #3
	ldr	r1, .L80+44
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L80+48
	pop	{r4, lr}
	strh	r2, [r3, #10]	@ movhi
	bx	lr
.L81:
	.align	2
.L80:
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
	.syntax unified
	.arm
	.fpu softvfp
	.type	intro.part.0, %function
intro.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L84
	ldrh	r3, [r3]
	tst	r3, #4
	bxne	lr
	b	goToPause
.L85:
	.align	2
.L84:
	.word	buttons
	.size	intro.part.0, .-intro.part.0
	.set	outro.part.0,intro.part.0
	.set	livingRoom.part.0,intro.part.0
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
	ldr	r3, .L99
	mov	lr, pc
	bx	r3
	ldr	r3, .L99+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L99+8
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L97
.L87:
	ldr	r4, .L99+12
	ldrh	r3, [r4]
	tst	r3, #256
	beq	.L88
	ldr	r2, .L99+16
	ldrh	r2, [r2]
	tst	r2, #256
	beq	.L98
.L88:
	tst	r3, #4
	popne	{r4, lr}
	bne	livingRoom.part.0
.L86:
	pop	{r4, lr}
	bx	lr
.L97:
	bl	goToKitchen
	b	.L87
.L98:
	bl	goToOutro
	ldrh	r3, [r4]
	b	.L88
.L100:
	.align	2
.L99:
	.word	updateGame
	.word	drawGame
	.word	nextRoomBool
	.word	oldButtons
	.word	buttons
	.size	livingRoom, .-livingRoom
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
	ldr	r4, .L109
	ldrh	r3, [r4]
	tst	r3, #1
	beq	.L102
	ldr	r2, .L109+4
	ldrh	r2, [r2]
	tst	r2, #1
	beq	.L108
.L102:
	tst	r3, #4
	popne	{r4, lr}
	bne	intro.part.0
.L101:
	pop	{r4, lr}
	bx	lr
.L108:
	bl	goToLivingRoom
	ldrh	r3, [r4]
	b	.L102
.L110:
	.align	2
.L109:
	.word	oldButtons
	.word	buttons
	.size	intro, .-intro
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
	ldr	r1, .L151+8
	ldr	r2, [r1]
	sub	r2, r2, #2
	cmp	r2, #5
	ldrls	pc, [pc, r2, asl #2]
	b	.L130
.L132:
	.word	.L135
	.word	.L134
	.word	.L133
	.word	.L130
	.word	.L130
	.word	.L131
.L150:
	mov	r2, #8
	ldr	r3, .L151+8
	pop	{r4, lr}
	str	r2, [r3]
	b	goToInstructions
.L149:
	bl	goToStart
	ldrh	r3, [r4]
	b	.L136
.L131:
	mov	r3, #8
	str	r3, [r1]
	bl	goToOutro
	ldrh	r3, [r4]
	b	.L130
.L135:
	mov	r3, #8
	str	r3, [r1]
	bl	goToIntro
	ldrh	r3, [r4]
	b	.L130
.L133:
	mov	r3, #8
	str	r3, [r1]
	bl	goToKitchen
	ldrh	r3, [r4]
	b	.L130
.L134:
	mov	r3, #8
	str	r3, [r1]
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
	mov	r1, #9
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
	ldr	r4, .L165
	ldrh	r3, [r4]
	tst	r3, #1
	beq	.L158
	ldr	r2, .L165+4
	ldrh	r2, [r2]
	tst	r2, #1
	beq	.L164
.L158:
	tst	r3, #4
	popne	{r4, lr}
	bne	outro.part.0
.L157:
	pop	{r4, lr}
	bx	lr
.L164:
	bl	goToWin
	ldrh	r3, [r4]
	b	.L158
.L166:
	.align	2
.L165:
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
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, .L198
	mov	lr, pc
	bx	r3
	ldr	fp, .L198+4
	ldr	r6, .L198+8
	ldr	r5, .L198+12
	ldr	r7, .L198+16
	ldr	r8, .L198+20
	ldr	r9, .L198+24
.L168:
	ldr	r0, .L198+28
	ldr	r1, .L198+32
	ldrh	r2, [r0]
	ldr	r3, .L198+36
	strh	r2, [r1]	@ movhi
	ldr	r1, [fp]
	ldrh	r3, [r3, #48]
	strh	r3, [r0]	@ movhi
	cmp	r1, #9
	ldrls	pc, [pc, r1, asl #2]
	b	.L169
.L171:
	.word	.L180
	.word	.L179
	.word	.L178
	.word	.L177
	.word	.L176
	.word	.L175
	.word	.L174
	.word	.L173
	.word	.L172
	.word	.L170
.L180:
	ldr	r3, .L198+40
	mov	lr, pc
	bx	r3
.L169:
	ldr	r3, .L198+44
	ldr	r3, [r3]
	cmp	r3, #4
	bne	.L181
	mov	r3, #67108864
	mov	r10, #0
	ldr	r2, .L198+48
	strh	r2, [r3]	@ movhi
.L182:
	mov	r4, #0
	b	.L187
.L185:
	ldrh	r1, [r6]
	ldrh	r0, [r5]
	add	r1, r1, r4
	add	r0, r0, r10
	mov	lr, pc
	bx	r7
	ldr	r3, .L198+52
	cmp	r0, r3
	movne	r2, #3
	beq	.L196
.L195:
	mov	r1, r4
	mov	r0, r10
	mov	lr, pc
	bx	r8
.L184:
	add	r4, r4, #1
	cmp	r4, #160
	beq	.L197
.L187:
	ldrh	r1, [r6]
	ldrh	r0, [r5]
	add	r1, r1, r4
	add	r0, r0, r10
	mov	lr, pc
	bx	r7
	subs	r2, r0, #0
	beq	.L195
	ldrh	r1, [r6]
	ldrh	r0, [r5]
	add	r1, r1, r4
	add	r0, r0, r10
	mov	lr, pc
	bx	r7
	cmp	r0, r9
	bne	.L185
	mov	r1, r4
	mov	r2, #1
	mov	r0, r10
	add	r4, r4, #1
	mov	lr, pc
	bx	r8
	cmp	r4, #160
	bne	.L187
.L197:
	add	r10, r10, #1
	cmp	r10, #240
	bne	.L182
	ldr	r3, .L198+56
	mov	lr, pc
	bx	r3
	ldr	r3, .L198+60
	mov	lr, pc
	bx	r3
	b	.L168
.L196:
	mov	r2, #2
	mov	r1, r4
	mov	r0, r10
	mov	lr, pc
	bx	r8
	b	.L184
.L181:
	ldr	r3, .L198+56
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
	ldr	r1, .L198+64
	ldr	ip, .L198+68
	mov	lr, pc
	bx	ip
	b	.L168
.L170:
	tst	r2, #1
	beq	.L169
	tst	r3, #1
	bne	.L169
	ldr	r3, .L198+72
	mov	lr, pc
	bx	r3
	b	.L169
.L172:
	ldr	r3, .L198+76
	mov	lr, pc
	bx	r3
	b	.L169
.L173:
	ldr	r3, .L198+80
	mov	lr, pc
	bx	r3
	b	.L169
.L174:
	ldr	r3, .L198+84
	mov	lr, pc
	bx	r3
	b	.L169
.L175:
	ldr	r3, .L198+88
	mov	lr, pc
	bx	r3
	b	.L169
.L176:
	ldr	r3, .L198+92
	mov	lr, pc
	bx	r3
	b	.L169
.L177:
	ldr	r3, .L198+96
	mov	lr, pc
	bx	r3
	b	.L169
.L178:
	ldr	r3, .L198+100
	mov	lr, pc
	bx	r3
	b	.L169
.L179:
	ldr	r3, .L198+104
	mov	lr, pc
	bx	r3
	b	.L169
.L199:
	.align	2
.L198:
	.word	initialize
	.word	state
	.word	vOff
	.word	hOff
	.word	checkCollisionMapColor
	.word	setPixel4
	.word	32767
	.word	buttons
	.word	oldButtons
	.word	67109120
	.word	start
	.word	mode
	.word	1044
	.word	32608
	.word	waitForVBlank
	.word	flipPage
	.word	shadowOAM
	.word	DMANow
	.word	goToStart
	.word	pause
	.word	outro
	.word	safe
	.word	bedroom
	.word	kitchen
	.word	livingRoom
	.word	intro
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
	ldr	r3, .L205
	ldrh	r3, [r3]
	tst	r3, #1
	bxeq	lr
	ldr	r3, .L205+4
	ldrh	r3, [r3]
	tst	r3, #1
	bxne	lr
	b	goToStart
.L206:
	.align	2
.L205:
	.word	oldButtons
	.word	buttons
	.size	win, .-win
	.comm	shadowOAM,1024,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	priorState,4,4
	.comm	state,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
