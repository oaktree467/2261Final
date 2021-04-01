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
	.global	initialize
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	mov	r1, #4608
	mov	r3, #0
	push	{r4, lr}
	strh	r1, [r2]	@ movhi
	add	r2, r2, #256
	ldrh	lr, [r2, #48]
	ldr	ip, .L4
	ldr	r0, .L4+4
	ldr	r1, .L4+8
	ldr	r2, .L4+12
	strh	lr, [ip]	@ movhi
	strh	r3, [r0]	@ movhi
	str	r3, [r1]
	mov	lr, pc
	bx	r2
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	buttons
	.word	oldButtons
	.word	state
	.word	initGame
	.size	initialize, .-initialize
	.align	2
	.global	goToStart
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #0
	push	{r4, lr}
	ldr	r2, .L8
	ldr	r3, .L8+4
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	state
	.word	initGame
	.size	goToStart, .-goToStart
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
	mov	r1, #1
	ldr	r2, .L12
	push	{r4, lr}
	ldr	r3, .L12+4
	ldr	r4, .L12+8
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L12+12
	mov	lr, pc
	bx	r4
	mov	r3, #12992
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L12+16
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L12+20
	ldr	r1, .L12+24
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	mov	r1, #56320
	mov	r3, #256
	strh	r1, [r2, #10]	@ movhi
	mov	r0, #3
	ldr	r2, .L12+28
	ldr	r1, .L12+32
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L12+36
	ldr	r1, .L12+40
	mov	lr, pc
	bx	r4
	ldr	r3, .L12+44
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	state
	.word	loadLivingRoom
	.word	DMANow
	.word	livingroombgPal
	.word	livingroombgTiles
	.word	100720640
	.word	livingroombgMap
	.word	83886592
	.word	livingroomspritesPal
	.word	100728832
	.word	livingroomspritesTiles
	.word	hideSprites
	.size	goToLivingRoom, .-goToLivingRoom
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
	ldr	r3, .L16
	mov	lr, pc
	bx	r3
	ldr	r3, .L16+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L16+8
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L17:
	.align	2
.L16:
	.word	updateGame
	.word	checkLivingRoomCollide
	.word	drawGame
	.size	livingRoom, .-livingRoom
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
	mov	r1, #2
	ldr	r2, .L20
	push	{r4, lr}
	ldr	r3, .L20+4
	ldr	r4, .L20+8
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L20+12
	mov	lr, pc
	bx	r4
	mov	r3, #1872
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L20+16
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L20+20
	ldr	r1, .L20+24
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	mov	r1, #7168
	mov	r3, #256
	strh	r1, [r2, #10]	@ movhi
	mov	r0, #3
	ldr	r2, .L20+28
	ldr	r1, .L20+32
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L20+36
	ldr	r1, .L20+40
	mov	lr, pc
	bx	r4
	ldr	r3, .L20+44
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L21:
	.align	2
.L20:
	.word	state
	.word	loadKitchen
	.word	DMANow
	.word	kitchenbgPal
	.word	kitchenbgTiles
	.word	100720640
	.word	kitchenbgMap
	.word	83886592
	.word	kitchenspritesPal
	.word	100728832
	.word	kitchenspritesTiles
	.word	hideSprites
	.size	goToKitchen, .-goToKitchen
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
	b	goToKitchen
	.size	start, .-start
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
	ldrh	r1, [r2, #48]
	ldr	r10, .L43
	strh	r1, [r10]	@ movhi
	ldr	r1, .L43+4
	strh	r3, [r1]	@ movhi
	ldr	r1, .L43+8
	ldr	r2, .L43+12
	str	r3, [r1]
	mov	lr, pc
	bx	r2
	ldr	r6, .L43+16
	ldr	r5, .L43+20
	ldr	r7, .L43+24
	ldr	r8, .L43+28
	ldr	r9, .L43+32
.L24:
	ldrh	r3, [r10]
	ldr	r2, .L43+4
	strh	r3, [r2]	@ movhi
	ldr	r3, .L43+8
	ldr	r2, .L43+36
	ldr	r3, [r3]
	ldrh	r2, [r2, #48]
	cmp	r3, #1
	strh	r2, [r10]	@ movhi
	beq	.L25
	cmp	r3, #2
	beq	.L26
	cmp	r3, #0
	beq	.L40
.L27:
	ldr	r3, .L43+40
	ldr	r3, [r3]
	cmp	r3, #4
	bne	.L28
	mov	r3, #67108864
	mov	fp, #0
	ldr	r2, .L43+44
	strh	r2, [r3]	@ movhi
.L29:
	mov	r4, #0
	b	.L34
.L32:
	ldrh	r1, [r6]
	ldrh	r0, [r5]
	add	r1, r1, r4
	add	r0, r0, fp
	mov	lr, pc
	bx	r7
	ldr	r3, .L43+48
	cmp	r0, r3
	movne	r2, #3
	beq	.L41
.L39:
	mov	r1, r4
	mov	r0, fp
	mov	lr, pc
	bx	r8
.L31:
	add	r4, r4, #1
	cmp	r4, #160
	beq	.L42
.L34:
	ldrh	r1, [r6]
	ldrh	r0, [r5]
	add	r1, r1, r4
	add	r0, r0, fp
	mov	lr, pc
	bx	r7
	subs	r2, r0, #0
	beq	.L39
	ldrh	r1, [r6]
	ldrh	r0, [r5]
	add	r1, r1, r4
	add	r0, r0, fp
	mov	lr, pc
	bx	r7
	cmp	r0, r9
	bne	.L32
	mov	r1, r4
	mov	r2, #1
	mov	r0, fp
	add	r4, r4, #1
	mov	lr, pc
	bx	r8
	cmp	r4, #160
	bne	.L34
.L42:
	add	fp, fp, #1
	cmp	fp, #240
	bne	.L29
	ldr	r3, .L43+52
	mov	lr, pc
	bx	r3
	ldr	r3, .L43+56
	mov	lr, pc
	bx	r3
	b	.L24
.L41:
	mov	r2, #2
	mov	r1, r4
	mov	r0, fp
	mov	lr, pc
	bx	r8
	b	.L31
.L28:
	ldr	r3, .L43+52
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
	ldr	r1, .L43+60
	ldr	ip, .L43+64
	mov	lr, pc
	bx	ip
	b	.L24
.L40:
	ldr	r3, .L43+68
	mov	lr, pc
	bx	r3
	b	.L27
.L26:
	ldr	r3, .L43+72
	mov	lr, pc
	bx	r3
	ldr	r3, .L43+76
	mov	lr, pc
	bx	r3
	ldr	r3, .L43+80
	mov	lr, pc
	bx	r3
	b	.L27
.L25:
	ldr	r3, .L43+72
	mov	lr, pc
	bx	r3
	ldr	r3, .L43+84
	mov	lr, pc
	bx	r3
	ldr	r3, .L43+80
	mov	lr, pc
	bx	r3
	b	.L27
.L44:
	.align	2
.L43:
	.word	buttons
	.word	oldButtons
	.word	state
	.word	initGame
	.word	vOff
	.word	hOff
	.word	checkCollisionMapColor
	.word	setPixel4
	.word	32767
	.word	67109120
	.word	mode
	.word	1044
	.word	32608
	.word	waitForVBlank
	.word	flipPage
	.word	shadowOAM
	.word	DMANow
	.word	goToKitchen
	.word	updateGame
	.word	checkKitchenCollide
	.word	drawGame
	.word	checkLivingRoomCollide
	.size	main, .-main
	.text
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
	ldr	r3, .L47
	mov	lr, pc
	bx	r3
	ldr	r3, .L47+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L47+8
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L48:
	.align	2
.L47:
	.word	updateGame
	.word	checkKitchenCollide
	.word	drawGame
	.size	kitchen, .-kitchen
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
	@ link register save eliminated.
	bx	lr
	.size	goToPause, .-goToPause
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
	@ link register save eliminated.
	bx	lr
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
	bx	lr
	.size	win, .-win
	.align	2
	.global	goToLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	goToLose, .-goToLose
	.align	2
	.global	lose
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	lose, .-lose
	.comm	shadowOAM,1024,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	state,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
