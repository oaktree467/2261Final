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
	mov	r6, #3
	ldr	r3, .L39
	ldr	r5, .L39+4
	ldr	r2, [r3]
	ldr	r1, .L39+8
	str	r2, [r5]
	ldr	r2, .L39+12
	str	r6, [r3]
	str	r0, [r1]
	mov	lr, pc
	bx	r2
	ldr	r3, [r5]
	cmp	r3, #2
	beq	.L37
	mov	r3, #1280
	mov	r2, #100663296
	mov	r0, r6
	ldr	r1, .L39+16
	ldr	r4, .L39+20
	mov	lr, pc
	bx	r4
	mov	r0, r6
	mov	r3, #1024
	ldr	r2, .L39+24
	ldr	r1, .L39+28
	mov	lr, pc
	bx	r4
.L33:
	mov	r6, #67108864
	mov	r2, #6144
	mov	r3, #256
	mov	r0, #3
	strh	r2, [r6, #8]	@ movhi
	ldr	r1, .L39+32
	mov	r2, #83886080
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r3, .L39+36
	ldr	r2, .L39+40
	ldr	r1, .L39+44
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L39+48
	ldr	r1, .L39+52
	mov	lr, pc
	bx	r4
	ldr	r2, .L39+56
	mov	r3, #256
	mov	r0, #3
	strh	r2, [r6, #10]	@ movhi
	ldr	r1, .L39+60
	ldr	r2, .L39+64
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L39+68
	ldr	r1, .L39+72
	mov	lr, pc
	bx	r4
	ldr	r3, .L39+76
	mov	lr, pc
	bx	r3
	ldr	r3, [r5]
	cmp	r3, #2
	movne	r3, #4608
	strhne	r3, [r6]	@ movhi
	beq	.L38
	pop	{r4, r5, r6, lr}
	bx	lr
.L37:
	mov	r0, r6
	mov	r3, #2160
	mov	r2, #100663296
	ldr	r1, .L39+80
	ldr	r4, .L39+20
	mov	lr, pc
	bx	r4
	mov	r0, r6
	mov	r3, #1024
	ldr	r2, .L39+24
	ldr	r1, .L39+84
	mov	lr, pc
	bx	r4
	b	.L33
.L38:
	mov	r2, #4864
	ldr	r3, .L39+88
	strh	r2, [r6]	@ movhi
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	bx	lr
.L40:
	.align	2
.L39:
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
	ldr	r3, .L45
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L45+4
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L44
	pop	{r4, lr}
	bx	lr
.L44:
	pop	{r4, lr}
	b	goToLivingRoom
.L46:
	.align	2
.L45:
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
	ldr	r3, .L49
	ldr	r0, .L49+4
	ldr	ip, [r3]
	ldr	r2, .L49+8
	str	lr, [r3]
	ldr	r3, .L49+12
	str	ip, [r0]
	ldr	r4, .L49+16
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L49+20
	mov	lr, pc
	bx	r4
	mov	r3, #1184
	mov	r0, #3
	ldr	r2, .L49+24
	ldr	r1, .L49+28
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L49+32
	ldr	r1, .L49+36
	mov	lr, pc
	bx	r4
	ldr	r2, .L49+40
	mov	r3, #256
	strh	r2, [r5, #10]	@ movhi
	mov	r0, #3
	ldr	r2, .L49+44
	ldr	r1, .L49+48
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L49+52
	ldr	r1, .L49+56
	mov	lr, pc
	bx	r4
	mov	r2, #4608
	ldr	r3, .L49+60
	strh	r2, [r5]	@ movhi
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	bx	lr
.L50:
	.align	2
.L49:
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
	ldr	r3, .L58
	mov	lr, pc
	bx	r3
	ldr	r3, .L58+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L58+8
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L51
	ldr	r3, .L58+12
	ldrh	r3, [r3]
	ands	r3, r3, #2
	beq	.L57
.L51:
	pop	{r4, lr}
	bx	lr
.L57:
	ldr	r2, .L58+16
	strb	r3, [r2]
	pop	{r4, lr}
	b	goToLivingRoom
.L59:
	.align	2
.L58:
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
	ldr	r3, .L62
	ldr	r0, .L62+4
	ldr	ip, [r3]
	ldr	r2, .L62+8
	str	lr, [r3]
	ldr	r3, .L62+12
	str	ip, [r0]
	ldr	r4, .L62+16
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L62+20
	mov	lr, pc
	bx	r4
	mov	r3, #3152
	mov	r0, #3
	ldr	r2, .L62+24
	ldr	r1, .L62+28
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L62+32
	ldr	r1, .L62+36
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	ldr	r1, .L62+40
	mov	r3, #256
	strh	r1, [r2, #10]	@ movhi
	mov	r0, #3
	ldr	r2, .L62+44
	ldr	r1, .L62+48
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L62+52
	ldr	r1, .L62+56
	mov	lr, pc
	bx	r4
	ldr	r3, .L62+60
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L63:
	.align	2
.L62:
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
	ldr	r3, .L66
	ldr	r0, .L66+4
	ldr	ip, [r3]
	ldr	r2, .L66+8
	str	lr, [r3]
	ldr	r3, .L66+12
	str	ip, [r0]
	ldr	r4, .L66+16
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L66+20
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r3, .L66+24
	ldr	r2, .L66+28
	ldr	r1, .L66+32
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L66+36
	ldr	r1, .L66+40
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	ldr	r1, .L66+44
	mov	r3, #256
	strh	r1, [r2, #10]	@ movhi
	mov	r0, #3
	ldr	r2, .L66+48
	ldr	r1, .L66+52
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L66+56
	ldr	r1, .L66+60
	mov	lr, pc
	bx	r4
	ldr	r3, .L66+64
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L67:
	.align	2
.L66:
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
	ldr	r3, .L70
	ldr	r0, .L70+4
	ldr	r1, .L70+8
	ldrh	ip, [r0]
	ldr	lr, .L70+12
	ldr	r4, [r3]
	ldrh	r1, [r1]
	str	r2, [r3]
	ldr	r0, .L70+16
	ldr	r2, .L70+20
	ldr	r3, .L70+24
	str	r4, [lr]
	strh	ip, [r0]	@ movhi
	ldr	r4, .L70+28
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L70+32
	mov	lr, pc
	bx	r4
	mov	r3, #480
	mov	r0, #3
	ldr	r2, .L70+36
	ldr	r1, .L70+40
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L70+44
	ldr	r1, .L70+48
	mov	lr, pc
	bx	r4
	ldr	r2, .L70+52
	mov	r3, #256
	strh	r2, [r5, #10]	@ movhi
	mov	r0, #3
	ldr	r2, .L70+56
	ldr	r1, .L70+60
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L70+64
	ldr	r1, .L70+68
	mov	lr, pc
	bx	r4
	mov	r3, #6144
	strh	r3, [r5, #8]	@ movhi
	ldrh	r3, [r5]
	orr	r3, r3, #4608
	strh	r3, [r5]	@ movhi
	ldr	r3, .L70+72
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	bx	lr
.L71:
	.align	2
.L70:
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
	ldr	r3, .L78
	mov	lr, pc
	bx	r3
	ldr	r3, .L78+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L78+8
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L76
	cmp	r3, #2
	beq	.L77
	pop	{r4, lr}
	bx	lr
.L76:
	pop	{r4, lr}
	b	goToKitchen
.L77:
	pop	{r4, lr}
	b	goToSafe
.L79:
	.align	2
.L78:
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
	ldr	r3, .L91
	mov	lr, pc
	bx	r3
	ldr	r3, .L91+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L91+8
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L81
	ldr	r3, .L91+12
	ldrh	r3, [r3]
	tst	r3, #2
	bne	.L81
.L82:
	mov	r3, #67108864
	mov	r2, #4608
	pop	{r4, lr}
	strh	r2, [r3]	@ movhi
	b	goToBedroom
.L81:
	ldr	r3, .L91+16
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L82
	pop	{r4, lr}
	bx	lr
.L92:
	.align	2
.L91:
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
	ldr	ip, .L95
	ldr	lr, .L95+4
	ldr	r1, .L95+8
	ldr	r2, .L95+12
	strh	r3, [lr]	@ movhi
	strh	r3, [ip]	@ movhi
	ldr	r4, .L95+16
	str	r0, [r1]
	mov	lr, pc
	bx	r2
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L95+20
	mov	lr, pc
	bx	r4
	mov	r3, #1504
	mov	r0, #3
	ldr	r2, .L95+24
	ldr	r1, .L95+28
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	ldr	r2, .L95+32
	mov	r0, #3
	ldr	r1, .L95+36
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L95+40
	pop	{r4, lr}
	strh	r2, [r3, #10]	@ movhi
	bx	lr
.L96:
	.align	2
.L95:
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
	ldr	r0, .L99
	push	{r4, lr}
	ldr	r1, .L99+4
	ldr	lr, [r0]
	str	ip, [r0]
	ldr	r0, .L99+8
	ldrh	ip, [r1]
	ldr	r3, .L99+12
	str	lr, [r0]
	ldr	r0, .L99+16
	ldrh	lr, [r3]
	strh	ip, [r0]	@ movhi
	ldr	ip, .L99+20
	ldr	r0, .L99+24
	strh	lr, [ip]	@ movhi
	ldr	r4, .L99+28
	strh	r2, [r1]	@ movhi
	strh	r2, [r3]	@ movhi
	mov	lr, pc
	bx	r0
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L99+32
	mov	lr, pc
	bx	r4
	mov	r3, #2800
	mov	r0, #3
	ldr	r2, .L99+36
	ldr	r1, .L99+40
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	ldr	r2, .L99+44
	mov	r0, #3
	ldr	r1, .L99+48
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L99+52
	pop	{r4, lr}
	strh	r2, [r3, #10]	@ movhi
	bx	lr
.L100:
	.align	2
.L99:
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
	ldr	r3, .L127
	ldr	r4, .L127+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L127+8
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L102
	ldr	r3, .L127+12
	ldrh	r3, [r3]
	tst	r3, #8
	moveq	r2, #4
	ldreq	r3, .L127+16
	streq	r2, [r3]
.L102:
	ldr	r3, .L127+20
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L123
.L103:
	ldr	r3, .L127+24
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L124
.L104:
	ldr	r3, .L127+28
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L125
.L105:
	ldrh	r3, [r4]
	tst	r3, #4
	beq	.L101
	ldr	r3, .L127+12
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L126
.L101:
	pop	{r4, lr}
	bx	lr
.L125:
	bl	goToOutro
	b	.L105
.L124:
	bl	goToComputer
	b	.L104
.L123:
	bl	goToKitchen
	b	.L103
.L126:
	pop	{r4, lr}
	b	goToPause
.L128:
	.align	2
.L127:
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
	ldr	r3, .L145
	mov	lr, pc
	bx	r3
	ldr	r3, .L145+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L145+8
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L141
	cmp	r3, #2
	beq	.L142
.L131:
	ldr	r4, .L145+12
	ldrh	r3, [r4]
	tst	r3, #4
	beq	.L132
	ldr	r2, .L145+16
	ldrh	r2, [r2]
	tst	r2, #4
	beq	.L143
.L132:
	tst	r3, #256
	beq	.L129
	ldr	r3, .L145+16
	ldrh	r3, [r3]
	tst	r3, #256
	beq	.L144
.L129:
	pop	{r4, lr}
	bx	lr
.L141:
	bl	goToLivingRoom
	b	.L131
.L144:
	pop	{r4, lr}
	b	goToOutro
.L143:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L132
.L142:
	bl	goToBedroom
	b	.L131
.L146:
	.align	2
.L145:
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
	ldr	r4, .L169
	ldrh	r3, [r4]
	tst	r3, #4
	beq	.L148
	ldr	r2, .L169+4
	ldrh	r2, [r2]
	tst	r2, #4
	beq	.L166
.L148:
	tst	r3, #8
	beq	.L154
	ldr	r2, .L169+4
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L167
.L154:
	tst	r3, #2
	beq	.L147
	ldr	r3, .L169+4
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L168
.L147:
	pop	{r4, lr}
	bx	lr
.L166:
	ldr	r2, .L169+8
	ldr	r2, [r2]
	sub	r2, r2, #2
	cmp	r2, #6
	ldrls	pc, [pc, r2, asl #2]
	b	.L148
.L150:
	.word	.L153
	.word	.L152
	.word	.L148
	.word	.L151
	.word	.L148
	.word	.L148
	.word	.L149
.L168:
	mov	r2, #9
	ldr	r3, .L169+8
	pop	{r4, lr}
	str	r2, [r3]
	b	goToInstructions
.L167:
	bl	goToStart
	ldrh	r3, [r4]
	b	.L154
.L149:
	bl	goToOutro
	ldrh	r3, [r4]
	b	.L148
.L153:
	bl	goToIntro
	ldrh	r3, [r4]
	b	.L148
.L151:
	bl	goToKitchen
	ldrh	r3, [r4]
	b	.L148
.L152:
	bl	goToLivingRoom
	ldrh	r3, [r4]
	b	.L148
.L170:
	.align	2
.L169:
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
	ldr	r2, .L173
	push	{r4, lr}
	ldr	r3, .L173+4
	ldr	r4, .L173+8
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L173+12
	mov	lr, pc
	bx	r4
	mov	r3, #2032
	mov	r0, #3
	ldr	r2, .L173+16
	ldr	r1, .L173+20
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	ldr	r2, .L173+24
	mov	r0, #3
	ldr	r1, .L173+28
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L173+32
	pop	{r4, lr}
	strh	r2, [r3, #10]	@ movhi
	bx	lr
.L174:
	.align	2
.L173:
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
	ldr	r4, .L187
	ldrh	r3, [r4]
	tst	r3, #1
	beq	.L176
	ldr	r2, .L187+4
	ldrh	r2, [r2]
	tst	r2, #1
	beq	.L185
.L176:
	tst	r3, #4
	beq	.L175
	ldr	r3, .L187+4
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L186
.L175:
	pop	{r4, lr}
	bx	lr
.L186:
	pop	{r4, lr}
	b	goToPause
.L185:
	bl	goToWin
	ldrh	r3, [r4]
	b	.L176
.L188:
	.align	2
.L187:
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
	ldr	r3, .L214
	ldr	r4, .L214+4
	ldrh	r1, [r3, #48]
	ldr	r8, .L214+8
	mov	r9, r3
	ldr	r3, .L214+12
	strh	r1, [r4]	@ movhi
	strh	r2, [r8]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r6, .L214+16
	ldr	fp, .L214+20
	ldr	r10, .L214+24
	ldr	r7, .L214+28
.L205:
	ldrh	r1, [r4]
	strh	r1, [r8]	@ movhi
	ldr	r2, [r6]
	ldrh	r3, [r9, #48]
	strh	r3, [r4]	@ movhi
	cmp	r2, #10
	ldrls	pc, [pc, r2, asl #2]
	b	.L190
.L192:
	.word	.L202
	.word	.L201
	.word	.L200
	.word	.L199
	.word	.L198
	.word	.L197
	.word	.L196
	.word	.L195
	.word	.L194
	.word	.L193
	.word	.L191
.L191:
	tst	r1, #1
	beq	.L190
	tst	r3, #1
	beq	.L213
.L190:
	mov	lr, pc
	bx	fp
	ldrh	r3, [r10]
	strh	r3, [r5, #20]	@ movhi
	ldr	r3, .L214+32
	ldrh	r2, [r3]
	mov	r1, r7
	strh	r2, [r5, #22]	@ movhi
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	ip, .L214+36
	mov	lr, pc
	bx	ip
	b	.L205
.L193:
	ldr	r3, .L214+40
	mov	lr, pc
	bx	r3
	b	.L190
.L194:
	ldr	r3, .L214+44
	mov	lr, pc
	bx	r3
	b	.L190
.L195:
	ldr	r3, .L214+48
	mov	lr, pc
	bx	r3
	b	.L190
.L196:
	ldr	r3, .L214+52
	mov	lr, pc
	bx	r3
	b	.L190
.L197:
	ldr	r3, .L214+56
	mov	lr, pc
	bx	r3
	b	.L190
.L198:
	ldr	r3, .L214+60
	mov	lr, pc
	bx	r3
	b	.L190
.L199:
	ldr	r3, .L214+64
	mov	lr, pc
	bx	r3
	b	.L190
.L200:
	ldr	r3, .L214+68
	mov	lr, pc
	bx	r3
	ldr	r3, .L214+72
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L190
	ldr	r3, .L214+76
	mov	lr, pc
	bx	r3
	b	.L190
.L202:
	tst	r1, #1
	beq	.L190
	tst	r3, #1
	bne	.L190
	ldr	r3, .L214+80
	mov	lr, pc
	bx	r3
	b	.L190
.L201:
	tst	r1, #1
	beq	.L190
	tst	r3, #1
	bne	.L190
	ldr	r3, .L214+84
	mov	lr, pc
	bx	r3
	b	.L190
.L213:
	ldr	r3, .L214+12
	mov	lr, pc
	bx	r3
	b	.L190
.L215:
	.align	2
.L214:
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
	ldr	r3, .L221
	ldrh	r3, [r3]
	tst	r3, #1
	bxeq	lr
	ldr	r3, .L221+4
	ldrh	r3, [r3]
	tst	r3, #1
	bxne	lr
	b	goToStart
.L222:
	.align	2
.L221:
	.word	oldButtons
	.word	buttons
	.size	win, .-win
	.comm	shadowOAM,1024,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	priorState,4,4
	.comm	state,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
