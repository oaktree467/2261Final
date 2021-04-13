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
	mov	r2, #0
	mov	r1, #1
	mov	r0, #2
	mov	ip, #4
	mov	r5, #3
	mov	r4, #6
	mov	r10, #5
	mov	r9, #17
	mov	r8, #47
	mov	r7, #10
	mov	r6, #14
	ldr	r3, .L7
	strh	fp, [r3, #44]	@ movhi
	ldr	fp, .L7+4
	strh	fp, [r3, #96]	@ movhi
	ldr	fp, .L7+8
	str	r2, [r3, #24]
	str	r2, [r3, #32]
	str	r2, [r3, #76]
	str	r2, [r3, #84]
	str	r5, [r3, #56]
	str	r2, [r3, #92]
	str	r5, [r3, #64]
	str	ip, [r3, #128]
	str	r2, [r3, #132]
	str	r2, [r3, #136]
	str	r2, [r3, #184]
	str	r10, [r3, #4]
	str	r10, [r3, #12]
	strh	fp, [r3, #148]	@ movhi
	str	r9, [r3]
	str	r9, [r3, #8]
	str	r4, [r3, #80]
	str	r4, [r3, #180]
	str	r8, [r3, #52]
	str	r8, [r3, #60]
	str	r7, [r3, #108]
	str	r7, [r3, #116]
	str	r6, [r3, #104]
	str	r0, [r3, #28]
	str	r0, [r3, #36]
	str	r1, [r3, #40]
	str	r0, [r3, #88]
	str	r1, [r3, #140]
	str	r1, [r3, #144]
	str	r6, [r3, #112]
	str	r5, [r3, #348]
	mov	r5, #31	@ movhi
	str	ip, [r3, #232]
	str	ip, [r3, #284]
	str	ip, [r3, #336]
	str	ip, [r3, #340]
	ldr	ip, .L7+12
	strh	r5, [r3, #200]	@ movhi
	ldr	r5, .L7+16
	strh	ip, [r3, #252]	@ movhi
	add	ip, r3, #304
	strh	r5, [ip]	@ movhi
	mov	ip, #38
	str	ip, [r3, #160]
	str	ip, [r3, #168]
	mov	ip, #16
	str	ip, [r3, #156]
	str	ip, [r3, #164]
	mov	ip, #53
	mov	lr, #40
	str	ip, [r3, #208]
	str	ip, [r3, #216]
	mov	ip, #67
	str	lr, [r3, #212]
	str	lr, [r3, #220]
	str	lr, [r3, #264]
	str	lr, [r3, #272]
	mov	lr, #169
	str	ip, [r3, #260]
	str	ip, [r3, #268]
	add	ip, r3, #408
	str	r2, [r3, #188]
	str	r2, [r3, #192]
	str	r2, [r3, #240]
	str	r2, [r3, #244]
	str	r2, [r3, #292]
	str	r2, [r3, #296]
	str	r1, [r3, #196]
	str	r0, [r3, #236]
	str	r1, [r3, #248]
	str	r0, [r3, #288]
	str	r1, [r3, #300]
	str	r1, [r3, #344]
	str	lr, [r3, #316]
	strh	r2, [ip]	@ movhi
	str	r2, [r3, #396]
	str	r2, [r3, #400]
	mov	r2, #996	@ movhi
	add	ip, r3, #356
	strh	r2, [ip]	@ movhi
	mov	r2, #20
	mov	r5, #57
	str	r2, [r3, #368]
	str	r2, [r3, #376]
	mov	r2, #45
	str	r5, [r3, #312]
	str	lr, [r3, #324]
	str	r5, [r3, #320]
	str	r4, [r3, #388]
	str	r1, [r3, #352]
	str	r0, [r3, #392]
	str	r1, [r3, #404]
	str	r2, [r3, #364]
	str	r2, [r3, #372]
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L8:
	.align	2
.L7:
	.word	computerSpritesArr
	.word	32608
	.word	3183
	.word	3655
	.word	27669
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
	mov	ip, #0
	mov	r3, #256
	push	{r4, r5, r6, r7, r8, lr}
	mov	r6, #240
	mov	r5, #160
	mov	r1, #120
	mov	r4, #8
	mov	lr, #11
	mov	r2, #72
	ldr	r0, .L11
	ldr	r7, .L11+4
	ldrh	r8, [r0]
	strh	ip, [r0]	@ movhi
	ldr	r0, .L11+8
	strh	r8, [r7]	@ movhi
	ldrh	r7, [r0]
	strh	ip, [r0]	@ movhi
	ldr	r0, .L11+12
	strh	r7, [r0]	@ movhi
	ldr	r0, .L11+16
	str	r3, [r0]
	ldr	r0, .L11+20
	str	r3, [r0]
	ldr	r3, .L11+24
	str	r6, [r3]
	ldr	r3, .L11+28
	str	r5, [r3]
	ldr	r3, .L11+32
	ldr	r0, .L11+36
	str	r1, [r3, #4]
	str	r1, [r3, #12]
	ldr	r1, .L11+40
	str	r4, [r3, #16]
	str	lr, [r3, #20]
	pop	{r4, r5, r6, r7, r8, lr}
	str	r2, [r3]
	str	r2, [r3, #8]
	str	r1, [r0]
	b	initComputerSprites
.L12:
	.align	2
.L11:
	.word	hOff
	.word	priorHoff
	.word	vOff
	.word	priorVoff
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
	mov	r1, #0
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
	push	{r4, r5, r6, r7, lr}
	mov	r5, #512
	ldr	r3, .L22
	ldr	r2, .L22+4
	add	r4, r3, #416
.L19:
	ldr	r1, [r3, #40]
	cmp	r1, #1
	strheq	r5, [r2, #8]	@ movhi
	beq	.L18
	add	r1, r3, #24
	ldr	r7, [r3, #32]
	ldr	r0, [r3, #8]
	ldm	r1, {r1, r6}
	ldr	lr, [r3, #36]
	ldr	ip, [r3, #12]
	orr	r0, r0, r7, lsl #14
	add	r1, r1, r6, lsl #4
	orr	r0, r0, #8192
	lsl	r1, r1, #1
	orr	ip, ip, lr, lsl #14
	strh	r0, [r2, #8]	@ movhi
	strh	r1, [r2, #12]	@ movhi
	strh	ip, [r2, #10]	@ movhi
.L18:
	add	r3, r3, #52
	cmp	r3, r4
	add	r2, r2, #8
	bne	.L19
	pop	{r4, r5, r6, r7, lr}
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
	mov	r1, #0
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
	.global	checkComputerSpriteCollision
	.syntax unified
	.arm
	.fpu softvfp
	.type	checkComputerSpriteCollision, %function
checkComputerSpriteCollision:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L39
	push	{r4, r5, r6, lr}
	ldr	r1, [r3]
	ldr	r2, .L39+4
	ldr	r0, [r3, #4]
	mov	lr, pc
	bx	r2
	mov	r1, #0
	ldr	r4, .L39+8
	cmp	r0, #0
	str	r1, [r4]
	beq	.L27
	mov	lr, #1
	mov	r5, r1
	mov	r6, r1
	ldr	r3, .L39+12
	add	ip, r3, #364
.L32:
	ldrh	r2, [r3, #44]
	cmp	r2, r0
	moveq	r5, r3
	streq	r6, [r3, #40]
	strne	lr, [r3, #40]
	add	r3, r3, #52
	moveq	r1, #1
	cmp	r3, ip
	bne	.L32
	cmp	r1, #0
	strne	r5, [r4]
.L27:
	pop	{r4, r5, r6, lr}
	bx	lr
.L40:
	.align	2
.L39:
	.word	mouse
	.word	checkCollisionMapColor
	.word	activeSprite
	.word	computerSpritesArr
	.size	checkComputerSpriteCollision, .-checkComputerSpriteCollision
	.align	2
	.global	loadSecondaryScreen
	.syntax unified
	.arm
	.fpu softvfp
	.type	loadSecondaryScreen, %function
loadSecondaryScreen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L63
	ldr	r3, .L63+4
	ldr	r2, [r2]
	cmp	r2, r3
	beq	.L58
	push	{r4, r5, r6, lr}
	sub	r4, r3, #156
	cmp	r2, r4
	beq	.L59
	add	r1, r3, #156
	cmp	r2, r1
	beq	.L60
	sub	r0, r3, #104
	sub	r1, r3, #52
	cmp	r2, r1
	cmpne	r2, r0
	bne	.L48
	ldr	r3, .L63+8
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L61
	mov	r3, #768
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L63+12
	ldr	r5, .L63+16
	mov	lr, pc
	bx	r5
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L63+20
	ldr	r1, .L63+24
	mov	lr, pc
	bx	r5
.L50:
	mov	r1, #10
	mov	r0, #14
	ldr	r3, .L63+28
	ldr	r2, .L63+32
	str	r1, [r4, #160]
	str	r0, [r4, #156]
	str	r2, [r3]
	b	.L45
.L60:
	ldr	r3, .L63+36
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L47
.L56:
	add	r0, r4, #156
	ldm	r0, {r0, r1}
.L45:
	mov	r3, #67108864
	mov	r2, #6144
	strh	r2, [r3, #8]	@ movhi
	ldrh	r2, [r3]
	orr	r2, r2, #256
	str	r0, [r4, #164]
	str	r1, [r4, #168]
	strh	r2, [r3]	@ movhi
	pop	{r4, r5, r6, lr}
	bx	lr
.L48:
	add	r3, r3, #52
	cmp	r2, r3
	beq	.L62
	add	r3, r4, #260
	cmp	r2, r3
	bne	.L56
	mov	r3, #4000
	mov	r2, #100663296
	ldr	r1, .L63+40
	mov	r0, #3
	ldr	r5, .L63+16
	mov	lr, pc
	bx	r5
	mov	r3, #4096
	ldr	r2, .L63+20
	ldr	r1, .L63+44
	b	.L57
.L61:
	mov	r3, #1632
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L63+48
	ldr	r5, .L63+16
	mov	lr, pc
	bx	r5
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L63+20
	ldr	r1, .L63+52
	mov	lr, pc
	bx	r5
	b	.L50
.L47:
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L63+56
	ldr	r1, .L63+60
	ldr	r5, .L63+16
	mov	lr, pc
	bx	r5
	mov	r3, #4096
	ldr	r2, .L63+20
	ldr	r1, .L63+64
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r2, #1
	mov	r1, #0
	ldr	r3, .L63+8
	str	r1, [r4, #404]
	strb	r2, [r3]
	b	.L56
.L58:
	mov	r1, #67108864
	mov	r0, #4608
	ldr	r3, .L63+28
	ldr	r2, .L63+68
	strh	r0, [r1]	@ movhi
	str	r2, [r3]
	bx	lr
.L59:
	mov	r3, #4032
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L63+72
	ldr	r5, .L63+16
	mov	lr, pc
	bx	r5
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L63+20
	ldr	r1, .L63+76
	mov	lr, pc
	bx	r5
	mov	r1, #38
	mov	r0, #16
	ldr	r3, .L63+28
	ldr	r2, .L63+80
	str	r1, [r4, #160]
	str	r0, [r4, #156]
	str	r2, [r3]
	b	.L45
.L62:
	mov	r2, #100663296
	ldr	r3, .L63+84
	ldr	r1, .L63+88
	mov	r0, #3
	ldr	r5, .L63+16
	mov	lr, pc
	bx	r5
	mov	r3, #4096
	ldr	r2, .L63+20
	ldr	r1, .L63+92
.L57:
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r3, .L63+28
	ldr	r2, .L63+96
	ldr	r0, [r4, #156]
	str	r2, [r3]
	ldr	r1, [r4, #160]
	b	.L45
.L64:
	.align	2
.L63:
	.word	activeSprite
	.word	computerSpritesArr+156
	.word	documentsUploaded
	.word	inboxemptyTiles
	.word	DMANow
	.word	100712448
	.word	inboxemptyMap
	.word	currCollisionMap
	.word	inboxmaincollisionBitmap
	.word	openSafeBool
	.word	inboxmarleyTiles
	.word	inboxmarleyMap
	.word	inboxfullTiles
	.word	inboxfullMap
	.word	4336
	.word	webpagedocTiles
	.word	webpagedocMap
	.word	desktopcollisionBitmap
	.word	websitebgTiles
	.word	websitebgMap
	.word	websitecollisionBitmap
	.word	5136
	.word	inboxruthTiles
	.word	inboxruthMap
	.word	inboxmessagecollisionBitmap
	.size	loadSecondaryScreen, .-loadSecondaryScreen
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
	ldr	r3, .L80
	ldrh	r3, [r3, #48]
	tst	r3, #64
	push	{r4, lr}
	ldr	r4, .L80+4
	bne	.L66
	ldr	r3, [r4]
	cmp	r3, #0
	subgt	r3, r3, #1
	strgt	r3, [r4]
.L66:
	ldr	r3, .L80
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bne	.L67
	ldr	r3, .L80+8
	ldr	r1, [r4, #20]
	ldr	r2, [r3]
	ldr	r3, [r4]
	sub	r2, r2, r1
	add	r3, r3, #1
	cmp	r3, r2
	strlt	r3, [r4]
.L67:
	ldr	r3, .L80
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L68
	ldr	r3, [r4, #4]
	cmp	r3, #0
	subgt	r3, r3, #1
	strgt	r3, [r4, #4]
.L68:
	ldr	r3, .L80
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L69
	ldr	r3, .L80+12
	ldr	r1, [r4, #16]
	ldr	r2, [r3]
	ldr	r3, [r4, #4]
	sub	r2, r2, r1
	add	r3, r3, #1
	cmp	r3, r2
	strlt	r3, [r4, #4]
.L69:
	ldr	r3, .L80+16
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L70
	ldr	r3, .L80+20
	ldrh	r3, [r3]
	tst	r3, #1
	bne	.L70
	ldr	r3, .L80+24
	ldr	r3, [r3]
	cmp	r3, #0
	blne	loadSecondaryScreen
.L70:
	ldr	r2, .L80+28
	ldr	r3, .L80+32
	ldrh	r0, [r2]
	ldrh	r1, [r3]
	ldr	r2, [r4, #4]
	ldr	r3, [r4]
	sub	r2, r2, r0
	sub	r3, r3, r1
	str	r2, [r4, #12]
	str	r3, [r4, #8]
	pop	{r4, lr}
	bx	lr
.L81:
	.align	2
.L80:
	.word	67109120
	.word	mouse
	.word	visMapHeight
	.word	visMapWidth
	.word	oldButtons
	.word	buttons
	.word	activeSprite
	.word	hOff
	.word	vOff
	.size	updateMouse, .-updateMouse
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
