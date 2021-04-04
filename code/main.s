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
	mov	r3, #1264
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
	ldr	r3, .L19
	ldrh	r3, [r3]
	tst	r3, #1
	bxeq	lr
	ldr	r3, .L19+4
	ldrh	r3, [r3]
	tst	r3, #1
	bxne	lr
	b	goToInstructions
.L20:
	.align	2
.L19:
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
	ldr	r0, .L23
	push	{r4, lr}
	ldr	lr, .L23+4
	str	ip, [r0]
	ldr	r4, .L23+8
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L23+12
	str	ip, [lr]
	mov	lr, pc
	bx	r4
	mov	r3, #1504
	mov	r0, #3
	ldr	r2, .L23+16
	ldr	r1, .L23+20
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	ldr	r2, .L23+24
	mov	r0, #3
	ldr	r1, .L23+28
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L23+32
	pop	{r4, lr}
	strh	r2, [r3, #10]	@ movhi
	bx	lr
.L24:
	.align	2
.L23:
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
	ldr	r1, .L27
	ldr	r2, .L27+4
	ldr	r3, .L27+8
	str	r0, [r1]
	str	r4, [r2]
	mov	lr, pc
	bx	r3
	ldr	ip, .L27+12
	ldr	r5, .L27+16
	mov	r0, r4
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L27+20
	str	r4, [ip]
	mov	lr, pc
	bx	r5
	mov	r0, r4
	ldr	r3, .L27+24
	ldr	r2, .L27+28
	ldr	r1, .L27+32
	mov	lr, pc
	bx	r5
	mov	r0, r4
	mov	r3, #4096
	ldr	r2, .L27+36
	ldr	r1, .L27+40
	mov	lr, pc
	bx	r5
	mov	r3, #67108864
	ldr	r2, .L27+44
	mov	r0, r4
	strh	r2, [r3, #10]	@ movhi
	ldr	r1, .L27+48
	mov	r3, #256
	ldr	r2, .L27+52
	mov	lr, pc
	bx	r5
	mov	r0, r4
	mov	r3, #16384
	ldr	r2, .L27+56
	ldr	r1, .L27+60
	mov	lr, pc
	bx	r5
	ldr	r3, .L27+64
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	bx	lr
.L28:
	.align	2
.L27:
	.word	nextRoomBool
	.word	state
	.word	loadLivingRoom
	.word	priorState
	.word	DMANow
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
	ldr	r1, .L31
	ldr	r2, .L31+4
	ldr	r3, .L31+8
	str	r0, [r1]
	str	r4, [r2]
	mov	lr, pc
	bx	r3
	ldr	ip, .L31+12
	mov	r3, #256
	str	r4, [ip]
	mov	r2, #83886080
	ldr	r4, .L31+16
	mov	r0, #3
	ldr	r1, .L31+20
	mov	lr, pc
	bx	r4
	mov	r3, #3152
	mov	r0, #3
	ldr	r2, .L31+24
	ldr	r1, .L31+28
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L31+32
	ldr	r1, .L31+36
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	ldr	r1, .L31+40
	mov	r3, #256
	strh	r1, [r2, #10]	@ movhi
	mov	r0, #3
	ldr	r2, .L31+44
	ldr	r1, .L31+48
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L31+52
	ldr	r1, .L31+56
	mov	lr, pc
	bx	r4
	ldr	r3, .L31+60
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L32:
	.align	2
.L31:
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
	mov	r3, #5
	ldr	r1, .L35
	push	{r4, lr}
	ldr	ip, .L35+4
	ldr	lr, .L35+8
	ldr	r0, .L35+12
	strh	r2, [r1]	@ movhi
	ldr	r1, .L35+16
	strh	r2, [lr]	@ movhi
	str	r3, [ip]
	ldr	r4, .L35+20
	str	r3, [r0]
	mov	lr, pc
	bx	r1
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L35+24
	mov	lr, pc
	bx	r4
	mov	r3, #1504
	mov	r0, #3
	ldr	r2, .L35+28
	ldr	r1, .L35+32
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	ldr	r2, .L35+36
	mov	r0, #3
	ldr	r1, .L35+40
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L35+44
	pop	{r4, lr}
	strh	r2, [r3, #10]	@ movhi
	bx	lr
.L36:
	.align	2
.L35:
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
	ldr	r3, .L47
	ldrh	r3, [r3]
	tst	r3, #1
	bxeq	lr
	ldr	r3, .L47+4
	ldrh	r3, [r3]
	tst	r3, #1
	bxne	lr
	ldr	r3, .L47+8
	ldr	r3, [r3]
	sub	r3, r3, #2
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L37
.L40:
	.word	.L43
	.word	.L42
	.word	.L41
	.word	.L39
.L37:
	bx	lr
.L39:
	b	goToOutro
.L41:
	b	goToKitchen
.L42:
	b	goToLivingRoom
.L43:
	b	goToIntro
.L48:
	.align	2
.L47:
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
	mov	r0, #6
	ldr	r1, .L51
	push	{r4, lr}
	ldr	r3, .L51+4
	ldrh	r4, [r1]
	ldr	ip, .L51+8
	ldrh	lr, [r3]
	strh	r2, [r1]	@ movhi
	strh	r4, [ip]	@ movhi
	ldr	r1, .L51+12
	ldr	ip, .L51+16
	strh	r2, [r3]	@ movhi
	ldr	r3, .L51+20
	strh	lr, [ip]	@ movhi
	ldr	r4, .L51+24
	str	r0, [r1]
	mov	lr, pc
	bx	r3
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L51+28
	mov	lr, pc
	bx	r4
	mov	r3, #2800
	mov	r0, #3
	ldr	r2, .L51+32
	ldr	r1, .L51+36
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	ldr	r2, .L51+40
	mov	r0, #3
	ldr	r1, .L51+44
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L51+48
	pop	{r4, lr}
	strh	r2, [r3, #10]	@ movhi
	bx	lr
.L52:
	.align	2
.L51:
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
	ldr	r3, .L55
	ldrh	r3, [r3]
	tst	r3, #4
	bxne	lr
	b	goToPause
.L56:
	.align	2
.L55:
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
	ldr	r3, .L70
	mov	lr, pc
	bx	r3
	ldr	r3, .L70+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L70+8
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L68
.L58:
	ldr	r4, .L70+12
	ldrh	r3, [r4]
	tst	r3, #256
	beq	.L59
	ldr	r2, .L70+16
	ldrh	r2, [r2]
	tst	r2, #256
	beq	.L69
.L59:
	tst	r3, #4
	popne	{r4, lr}
	bne	livingRoom.part.0
.L57:
	pop	{r4, lr}
	bx	lr
.L68:
	bl	goToKitchen
	b	.L58
.L69:
	bl	goToOutro
	ldrh	r3, [r4]
	b	.L59
.L71:
	.align	2
.L70:
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
	ldr	r4, .L80
	ldrh	r3, [r4]
	tst	r3, #1
	beq	.L73
	ldr	r2, .L80+4
	ldrh	r2, [r2]
	tst	r2, #1
	beq	.L79
.L73:
	tst	r3, #4
	popne	{r4, lr}
	bne	intro.part.0
.L72:
	pop	{r4, lr}
	bx	lr
.L79:
	bl	goToLivingRoom
	ldrh	r3, [r4]
	b	.L73
.L81:
	.align	2
.L80:
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
	ldr	r3, .L99
	mov	lr, pc
	bx	r3
	ldr	r3, .L99+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L99+8
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L96
.L83:
	ldr	r4, .L99+12
	ldrh	r3, [r4]
	tst	r3, #4
	beq	.L84
	ldr	r2, .L99+16
	ldrh	r2, [r2]
	tst	r2, #4
	beq	.L97
.L84:
	tst	r3, #256
	beq	.L82
	ldr	r3, .L99+16
	ldrh	r3, [r3]
	tst	r3, #256
	beq	.L98
.L82:
	pop	{r4, lr}
	bx	lr
.L96:
	bl	goToLivingRoom
	b	.L83
.L98:
	pop	{r4, lr}
	b	goToOutro
.L97:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L84
.L100:
	.align	2
.L99:
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
	ldr	r4, .L123
	ldrh	r3, [r4]
	tst	r3, #4
	beq	.L102
	ldr	r2, .L123+4
	ldrh	r2, [r2]
	tst	r2, #4
	beq	.L120
.L102:
	tst	r3, #8
	beq	.L108
	ldr	r2, .L123+4
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L121
.L108:
	tst	r3, #2
	beq	.L101
	ldr	r3, .L123+4
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L122
.L101:
	pop	{r4, lr}
	bx	lr
.L120:
	ldr	r1, .L123+8
	ldr	r2, [r1]
	sub	r2, r2, #2
	cmp	r2, #3
	ldrls	pc, [pc, r2, asl #2]
	b	.L102
.L104:
	.word	.L107
	.word	.L106
	.word	.L105
	.word	.L103
.L122:
	mov	r2, #6
	ldr	r3, .L123+8
	pop	{r4, lr}
	str	r2, [r3]
	b	goToInstructions
.L121:
	bl	goToStart
	ldrh	r3, [r4]
	b	.L108
.L103:
	mov	r3, #6
	str	r3, [r1]
	bl	goToOutro
	ldrh	r3, [r4]
	b	.L102
.L107:
	mov	r3, #6
	str	r3, [r1]
	bl	goToIntro
	ldrh	r3, [r4]
	b	.L102
.L105:
	mov	r3, #6
	str	r3, [r1]
	bl	goToKitchen
	ldrh	r3, [r4]
	b	.L102
.L106:
	mov	r3, #6
	str	r3, [r1]
	bl	goToLivingRoom
	ldrh	r3, [r4]
	b	.L102
.L124:
	.align	2
.L123:
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
	mov	r1, #7
	ldr	r2, .L127
	push	{r4, lr}
	ldr	r3, .L127+4
	ldr	r4, .L127+8
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L127+12
	mov	lr, pc
	bx	r4
	mov	r3, #2032
	mov	r0, #3
	ldr	r2, .L127+16
	ldr	r1, .L127+20
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	ldr	r2, .L127+24
	mov	r0, #3
	ldr	r1, .L127+28
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L127+32
	pop	{r4, lr}
	strh	r2, [r3, #10]	@ movhi
	bx	lr
.L128:
	.align	2
.L127:
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
	ldr	r4, .L137
	ldrh	r3, [r4]
	tst	r3, #1
	beq	.L130
	ldr	r2, .L137+4
	ldrh	r2, [r2]
	tst	r2, #1
	beq	.L136
.L130:
	tst	r3, #4
	popne	{r4, lr}
	bne	outro.part.0
.L129:
	pop	{r4, lr}
	bx	lr
.L136:
	bl	goToWin
	ldrh	r3, [r4]
	b	.L130
.L138:
	.align	2
.L137:
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
	push	{r4, r7, fp, lr}
	ldr	r3, .L159
	mov	lr, pc
	bx	r3
	mov	r5, #67108864
	ldr	r4, .L159+4
	ldr	r8, .L159+8
	ldr	r7, .L159+12
	ldr	fp, .L159+16
	ldr	r10, .L159+20
	ldr	r6, .L159+24
	ldr	r9, .L159+28
.L150:
	ldrh	r1, [r4]
	strh	r1, [r8]	@ movhi
	ldr	r2, [r7]
	ldrh	r3, [r6, #48]
	strh	r3, [r4]	@ movhi
	cmp	r2, #7
	ldrls	pc, [pc, r2, asl #2]
	b	.L140
.L142:
	.word	.L149
	.word	.L148
	.word	.L147
	.word	.L146
	.word	.L145
	.word	.L144
	.word	.L143
	.word	.L141
.L141:
	tst	r1, #1
	beq	.L140
	tst	r3, #1
	beq	.L158
.L140:
	mov	lr, pc
	bx	fp
	ldr	r3, .L159+32
	ldrh	r3, [r3]
	strh	r3, [r5, #20]	@ movhi
	ldr	r3, .L159+36
	ldrh	r2, [r3]
	mov	r1, r9
	strh	r2, [r5, #22]	@ movhi
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	mov	lr, pc
	bx	r10
	b	.L150
.L143:
	ldr	r3, .L159+40
	mov	lr, pc
	bx	r3
	b	.L140
.L144:
	ldr	r3, .L159+44
	mov	lr, pc
	bx	r3
	b	.L140
.L145:
	ldr	r3, .L159+48
	mov	lr, pc
	bx	r3
	b	.L140
.L146:
	ldr	r3, .L159+52
	mov	lr, pc
	bx	r3
	b	.L140
.L147:
	ldr	r3, .L159+56
	mov	lr, pc
	bx	r3
	b	.L140
.L149:
	tst	r1, #1
	beq	.L140
	tst	r3, #1
	bne	.L140
	ldr	r3, .L159+60
	mov	lr, pc
	bx	r3
	b	.L140
.L148:
	ldr	r3, .L159+64
	mov	lr, pc
	bx	r3
	b	.L140
.L158:
	ldr	r3, .L159+68
	mov	lr, pc
	bx	r3
	b	.L140
.L160:
	.align	2
.L159:
	.word	initialize
	.word	buttons
	.word	oldButtons
	.word	state
	.word	waitForVBlank
	.word	DMANow
	.word	67109120
	.word	shadowOAM
	.word	hOff
	.word	vOff
	.word	pause
	.word	outro
	.word	kitchen
	.word	livingRoom
	.word	intro
	.word	goToInstructions
	.word	instructions
	.word	goToStart
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
	ldr	r3, .L166
	ldrh	r3, [r3]
	tst	r3, #1
	bxeq	lr
	ldr	r3, .L166+4
	ldrh	r3, [r3]
	tst	r3, #1
	bxne	lr
	b	goToStart
.L167:
	.align	2
.L166:
	.word	oldButtons
	.word	buttons
	.size	win, .-win
	.comm	shadowOAM,1024,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	priorState,4,4
	.comm	state,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
