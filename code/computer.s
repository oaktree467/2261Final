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
	.file	"computer.c"
	.text
	.align	2
	.global	initMouse
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initMouse, %function
initMouse:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, #120
	mov	r2, #72
	mov	ip, #8
	mov	r0, #11
	ldr	r3, .L3
	str	r1, [r3, #4]
	str	r1, [r3, #12]
	str	ip, [r3, #16]
	str	r0, [r3, #20]
	str	r2, [r3]
	str	r2, [r3, #8]
	bx	lr
.L4:
	.align	2
.L3:
	.word	mouse
	.size	initMouse, .-initMouse
	.align	2
	.global	initComputerSprites
	.syntax unified
	.arm
	.fpu softvfp
	.type	initComputerSprites, %function
initComputerSprites:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mvn	fp, #64512
	mov	r8, #17
	mov	r7, #47
	mov	r2, #0
	mov	r0, #120
	mov	r1, #72
	mov	ip, #1
	mov	lr, #2
	mov	r4, #4
	mov	r6, #6
	mov	r5, #3
	mov	r9, #5
	ldr	r3, .L7
	strh	fp, [r3, #44]	@ movhi
	ldr	fp, .L7+4
	str	r8, [r3]
	str	r8, [r3, #8]
	str	r7, [r3, #52]
	str	r7, [r3, #60]
	add	r10, r3, #304
	add	r8, r3, #356
	add	r7, r3, #408
	str	lr, [r3, #28]
	strh	fp, [r3, #96]	@ movhi
	str	lr, [r3, #36]
	str	lr, [r3, #88]
	str	r9, [r3, #4]
	str	r9, [r3, #12]
	str	r6, [r3, #80]
	str	r6, [r3, #180]
	str	r5, [r3, #56]
	str	r5, [r3, #64]
	str	r4, [r3, #128]
	str	r2, [r3, #24]
	str	r2, [r3, #32]
	str	r2, [r3, #76]
	str	r2, [r3, #84]
	str	r2, [r3, #92]
	str	r2, [r3, #132]
	str	r2, [r3, #136]
	strh	r2, [r3, #148]	@ movhi
	str	r2, [r3, #184]
	str	ip, [r3, #40]
	str	ip, [r3, #140]
	str	ip, [r3, #144]
	str	r0, [r3, #108]
	str	r0, [r3, #116]
	str	r1, [r3, #104]
	str	r1, [r3, #112]
	strh	r2, [r10]	@ movhi
	str	r4, [r3, #232]
	str	lr, [r3, #236]
	str	r4, [r3, #284]
	str	lr, [r3, #288]
	str	r6, [r3, #336]
	str	lr, [r3, #340]
	str	r2, [r3, #188]
	str	r2, [r3, #192]
	str	r0, [r3, #160]
	str	r1, [r3, #156]
	str	ip, [r3, #196]
	str	r0, [r3, #168]
	str	r1, [r3, #164]
	strh	r2, [r3, #200]	@ movhi
	str	r2, [r3, #240]
	str	r2, [r3, #244]
	str	r0, [r3, #212]
	str	r1, [r3, #208]
	str	ip, [r3, #248]
	str	r0, [r3, #220]
	str	r1, [r3, #216]
	strh	r2, [r3, #252]	@ movhi
	str	r2, [r3, #292]
	str	r2, [r3, #296]
	str	r0, [r3, #264]
	str	r1, [r3, #260]
	str	ip, [r3, #300]
	str	r0, [r3, #272]
	str	r1, [r3, #268]
	str	r2, [r3, #344]
	str	r2, [r3, #348]
	str	r0, [r3, #316]
	str	r4, [r3, #388]
	str	r4, [r3, #392]
	str	r5, [r3, #400]
	strh	r2, [r8]	@ movhi
	strh	r2, [r7]	@ movhi
	str	r1, [r3, #312]
	str	ip, [r3, #352]
	str	r0, [r3, #324]
	str	r1, [r3, #320]
	str	ip, [r3, #396]
	str	r0, [r3, #368]
	str	r1, [r3, #364]
	str	ip, [r3, #404]
	str	r0, [r3, #376]
	str	r1, [r3, #372]
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L8:
	.align	2
.L7:
	.word	computerSpritesArr
	.word	32608
	.size	initComputerSprites, .-initComputerSprites
	.align	2
	.global	loadComputer
	.syntax unified
	.arm
	.fpu softvfp
	.type	loadComputer, %function
loadComputer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #0
	mov	r3, #256
	push	{r4, r5, r6, lr}
	mov	r5, #240
	mov	r4, #160
	mov	r1, #120
	mov	lr, #8
	mov	r2, #72
	mov	ip, #11
	ldr	r6, .L11
	strh	r0, [r6]	@ movhi
	ldr	r6, .L11+4
	strh	r0, [r6]	@ movhi
	ldr	r0, .L11+8
	str	r3, [r0]
	ldr	r0, .L11+12
	str	r3, [r0]
	ldr	r3, .L11+16
	str	r5, [r3]
	ldr	r3, .L11+20
	str	r4, [r3]
	ldr	r3, .L11+24
	ldr	r0, .L11+28
	str	r1, [r3, #4]
	str	r1, [r3, #12]
	ldr	r1, .L11+32
	str	lr, [r3, #16]
	pop	{r4, r5, r6, lr}
	str	ip, [r3, #20]
	str	r2, [r3]
	str	r2, [r3, #8]
	str	r1, [r0]
	b	initComputerSprites
.L12:
	.align	2
.L11:
	.word	hOff
	.word	vOff
	.word	totalMapWidth
	.word	totalMapHeight
	.word	visMapWidth
	.word	visMapHeight
	.word	mouse
	.word	currCollisionMap
	.word	desktopcollisionBitmap
	.size	loadComputer, .-loadComputer
	.align	2
	.global	drawMouse
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawMouse, %function
drawMouse:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, #2048
	ldr	r3, .L14
	ldr	r2, [r3, #8]
	ldr	r0, [r3, #12]
	ldr	r3, .L14+4
	orr	r2, r2, #40960
	strh	r2, [r3]	@ movhi
	strh	r0, [r3, #2]	@ movhi
	strh	r1, [r3, #4]	@ movhi
	bx	lr
.L15:
	.align	2
.L14:
	.word	mouse
	.word	shadowOAM
	.size	drawMouse, .-drawMouse
	.align	2
	.global	drawComputerSprites
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawComputerSprites, %function
drawComputerSprites:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, #512
	ldr	r3, .L22
	ldr	r1, .L22+4
	add	lr, r3, #416
.L19:
	ldr	r2, [r3, #40]
	cmp	r2, #1
	strheq	r4, [r1, #8]	@ movhi
	beq	.L18
	add	r2, r3, #24
	ldm	r2, {r2, ip}
	ldr	r6, [r3, #32]
	ldr	r0, [r3, #8]
	add	r2, r2, ip, lsl #4
	ldr	r5, [r3, #36]
	ldr	ip, [r3, #12]
	lsl	r2, r2, #1
	orr	r0, r0, r6, lsl #14
	orr	r2, r2, #2048
	orr	r0, r0, #8192
	orr	ip, ip, r5, lsl #14
	strh	r2, [r1, #12]	@ movhi
	strh	r0, [r1, #8]	@ movhi
	strh	ip, [r1, #10]	@ movhi
.L18:
	add	r3, r3, #52
	cmp	r3, lr
	add	r1, r1, #8
	bne	.L19
	pop	{r4, r5, r6, lr}
	bx	lr
.L23:
	.align	2
.L22:
	.word	computerSpritesArr
	.word	shadowOAM
	.size	drawComputerSprites, .-drawComputerSprites
	.align	2
	.global	drawComputer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawComputer, %function
drawComputer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, #2048
	ldr	r3, .L25
	ldr	r2, [r3, #8]
	ldr	r0, [r3, #12]
	ldr	r3, .L25+4
	orr	r2, r2, #40960
	strh	r2, [r3]	@ movhi
	strh	r0, [r3, #2]	@ movhi
	strh	r1, [r3, #4]	@ movhi
	b	drawComputerSprites
.L26:
	.align	2
.L25:
	.word	mouse
	.word	shadowOAM
	.size	drawComputer, .-drawComputer
	.align	2
	.global	updateMouse
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateMouse, %function
updateMouse:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L32
	ldrh	r2, [r3, #48]
	ldr	r3, .L32+4
	tst	r2, #64
	ldr	r2, [r3]
	bne	.L28
	cmp	r2, #0
	subgt	r2, r2, #1
	strgt	r2, [r3]
.L28:
	ldr	r1, .L32
	ldrh	r1, [r1, #48]
	tst	r1, #128
	bne	.L29
	ldr	r1, .L32+8
	ldr	ip, [r3, #20]
	ldr	r1, [r1]
	add	r0, r2, #1
	sub	r1, r1, ip
	cmp	r0, r1
	movlt	r2, r0
	strlt	r0, [r3]
.L29:
	ldr	r1, .L32
	ldrh	r1, [r1, #48]
	tst	r1, #32
	ldr	r1, [r3, #4]
	bne	.L30
	cmp	r1, #0
	subgt	r1, r1, #1
	strgt	r1, [r3, #4]
.L30:
	ldr	r0, .L32
	ldrh	r0, [r0, #48]
	tst	r0, #16
	bne	.L31
	ldr	r0, .L32+12
	ldr	ip, [r3, #16]
	ldr	r0, [r0]
	sub	r0, r0, ip
	add	ip, r1, #1
	cmp	ip, r0
	movlt	r1, ip
	strlt	ip, [r3, #4]
.L31:
	ldr	ip, .L32+16
	ldr	r0, .L32+20
	ldrh	ip, [ip]
	ldrh	r0, [r0]
	sub	r1, r1, ip
	sub	r2, r2, r0
	str	r1, [r3, #12]
	str	r2, [r3, #8]
	bx	lr
.L33:
	.align	2
.L32:
	.word	67109120
	.word	mouse
	.word	visMapHeight
	.word	visMapWidth
	.word	hOff
	.word	vOff
	.size	updateMouse, .-updateMouse
	.align	2
	.global	checkComputerSpriteCollision
	.syntax unified
	.arm
	.fpu softvfp
	.type	checkComputerSpriteCollision, %function
checkComputerSpriteCollision:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L46
	push	{r4, r5, r6, lr}
	ldr	r2, .L46+4
	ldr	r1, [r3]
	ldr	r0, [r3, #4]
	mov	lr, pc
	bx	r2
	cmp	r0, #0
	beq	.L34
	mov	lr, #0
	mov	ip, #1
	mov	r5, lr
	ldr	r6, .L46+8
	ldr	r3, .L46+12
	ldr	r4, [r6]
	add	r1, r3, #416
.L39:
	ldrh	r2, [r3, #44]
	cmp	r2, r0
	moveq	r4, r3
	streq	r5, [r3, #40]
	strne	ip, [r3, #40]
	add	r3, r3, #52
	moveq	lr, #1
	cmp	r3, r1
	bne	.L39
	cmp	lr, #0
	strne	r4, [r6]
.L34:
	pop	{r4, r5, r6, lr}
	bx	lr
.L47:
	.align	2
.L46:
	.word	mouse
	.word	checkCollisionMapColor
	.word	activeSprite
	.word	computerSpritesArr
	.size	checkComputerSpriteCollision, .-checkComputerSpriteCollision
	.align	2
	.global	updateComputer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateComputer, %function
updateComputer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	updateMouse
	pop	{r4, lr}
	b	checkComputerSpriteCollision
	.size	updateComputer, .-updateComputer
	.comm	mouse,48,4
	.comm	computerSpritesArr,416,4
	.comm	state,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
