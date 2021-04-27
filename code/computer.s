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
	mov	r7, #5
	ldr	r3, .L7
	str	r7, [r3, #4]
	str	r7, [r3, #12]
	str	r7, [r3, #80]
	mov	r7, #39
	str	r7, [r3, #52]
	str	r7, [r3, #60]
	mov	r7, #10
	mvn	fp, #64512
	str	r7, [r3, #108]
	str	r7, [r3, #116]
	mov	r7, #14
	strh	fp, [r3, #44]	@ movhi
	ldr	fp, .L7+4
	strh	fp, [r3, #96]	@ movhi
	ldr	fp, .L7+8
	mov	r2, #0
	mov	r1, #1
	mov	r0, #2
	mov	lr, #3
	mov	r4, #4
	mov	r8, #17
	strh	fp, [r3, #148]	@ movhi
	mov	fp, #6
	str	r7, [r3, #104]
	str	r7, [r3, #112]
	mov	r7, #31	@ movhi
	str	r0, [r3, #28]
	str	r0, [r3, #36]
	str	r0, [r3, #88]
	str	lr, [r3, #56]
	str	lr, [r3, #64]
	str	r4, [r3, #128]
	str	r8, [r3]
	str	r8, [r3, #8]
	str	r2, [r3, #24]
	str	r2, [r3, #32]
	str	r1, [r3, #40]
	str	r2, [r3, #76]
	str	r2, [r3, #84]
	str	r2, [r3, #92]
	str	r2, [r3, #132]
	str	r2, [r3, #136]
	str	r1, [r3, #140]
	str	r1, [r3, #144]
	str	r2, [r3, #184]
	str	fp, [r3, #180]
	str	r4, [r3, #232]
	str	r4, [r3, #284]
	str	r4, [r3, #336]
	str	r4, [r3, #340]
	ldr	r4, .L7+12
	strh	r7, [r3, #200]	@ movhi
	ldr	r7, .L7+16
	strh	r4, [r3, #252]	@ movhi
	add	r4, r3, #304
	strh	r7, [r4]	@ movhi
	mov	r4, #38
	str	r4, [r3, #160]
	str	r4, [r3, #168]
	mov	r4, #16
	str	r4, [r3, #156]
	str	r4, [r3, #164]
	mov	r4, #53
	str	r4, [r3, #208]
	str	r4, [r3, #216]
	mov	r4, #67
	mov	r6, #40
	str	r4, [r3, #260]
	str	r4, [r3, #268]
	mov	r4, #169
	str	r6, [r3, #212]
	str	r6, [r3, #220]
	str	r6, [r3, #264]
	str	r6, [r3, #272]
	mov	r6, #57
	str	r0, [r3, #236]
	str	r0, [r3, #288]
	str	lr, [r3, #348]
	str	r2, [r3, #188]
	str	r2, [r3, #192]
	str	r1, [r3, #196]
	str	r2, [r3, #240]
	str	r2, [r3, #244]
	str	r1, [r3, #248]
	str	r2, [r3, #292]
	str	r2, [r3, #296]
	str	r1, [r3, #300]
	str	r1, [r3, #344]
	str	r4, [r3, #316]
	str	r4, [r3, #324]
	mov	r4, #12
	str	r6, [r3, #312]
	str	r6, [r3, #320]
	mov	r6, #996	@ movhi
	str	r4, [r3, #388]
	add	r4, r3, #356
	strh	r6, [r4]	@ movhi
	ldr	r6, .L7+20
	add	r4, r3, #408
	strh	r6, [r4]	@ movhi
	sub	r6, r6, #15296
	add	r4, r3, #460
	strh	r6, [r4]	@ movhi
	mov	r4, #72
	str	r4, [r3, #364]
	str	r4, [r3, #372]
	mov	r4, #131
	str	r4, [r3, #420]
	str	r4, [r3, #428]
	str	r4, [r3, #472]
	str	r4, [r3, #480]
	mov	r4, #44
	mov	r10, #8
	str	r4, [r3, #416]
	str	r4, [r3, #424]
	mov	r4, #56
	str	r0, [r3, #400]
	str	r0, [r3, #368]
	str	r0, [r3, #376]
	str	r10, [r3, #440]
	str	r10, [r3, #492]
	str	r1, [r3, #352]
	str	r2, [r3, #392]
	str	r2, [r3, #396]
	str	r1, [r3, #404]
	str	r2, [r3, #444]
	str	r2, [r3, #448]
	str	r2, [r3, #452]
	str	r1, [r3, #456]
	str	r2, [r3, #496]
	str	r2, [r3, #500]
	str	r2, [r3, #504]
	str	r1, [r3, #508]
	str	r4, [r3, #468]
	str	r0, [r3, #548]
	add	r0, r3, #564
	strh	r2, [r0]	@ movhi
	add	r0, r3, #616
	strh	r2, [r0]	@ movhi
	str	r4, [r3, #476]
	add	r0, r3, #668
	ldr	r4, .L7+24
	strh	r2, [r0]	@ movhi
	add	r0, r3, #512
	strh	r4, [r0]	@ movhi
	mov	r0, #20
	str	r0, [r3, #524]
	str	r0, [r3, #532]
	mov	r0, #45
	mov	ip, #55
	mov	r9, #30
	mov	r5, #86
	str	r0, [r3, #520]
	str	r0, [r3, #528]
	mov	r0, #9
	str	fp, [r3, #544]
	str	lr, [r3, #608]
	str	r8, [r3, #652]
	str	lr, [r3, #660]
	str	r10, [r3, #700]
	str	r0, [r3, #600]
	str	r9, [r3, #572]
	str	r9, [r3, #580]
	str	r5, [r3, #624]
	add	r4, r3, #720
	str	r2, [r3, #552]
	str	r2, [r3, #556]
	str	r1, [r3, #560]
	str	r2, [r3, #596]
	str	r2, [r3, #604]
	str	r1, [r3, #612]
	str	r2, [r3, #648]
	str	r2, [r3, #656]
	str	r1, [r3, #664]
	str	ip, [r3, #576]
	str	ip, [r3, #584]
	str	ip, [r3, #628]
	str	ip, [r3, #636]
	str	r5, [r3, #632]
	str	r0, [r3, #704]
	add	r0, r3, #772
	str	r10, [r3, #752]
	str	r9, [r3, #676]
	str	r9, [r3, #684]
	str	r8, [r3, #756]
	str	r5, [r3, #728]
	str	r5, [r3, #736]
	str	lr, [r3, #712]
	str	lr, [r3, #764]
	strh	r2, [r4]	@ movhi
	str	ip, [r3, #680]
	str	ip, [r3, #688]
	str	ip, [r3, #732]
	str	ip, [r3, #740]
	str	r2, [r3, #708]
	str	r1, [r3, #716]
	str	r2, [r3, #760]
	str	r1, [r3, #768]
	strh	r2, [r0]	@ movhi
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
	.word	15903
	.word	31936
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
	ldr	r3, .L15
	ldr	r3, [r3]
	cmp	r3, #10
	cmpne	r3, #1
	push	{r4, r5, lr}
	beq	.L10
	mov	r2, #0
	ldr	r1, .L15+4
	ldr	r3, .L15+8
	ldrh	lr, [r1]
	ldr	r0, .L15+12
	ldrh	ip, [r3]
	strh	lr, [r0]	@ movhi
	ldr	r0, .L15+16
	strh	r2, [r1]	@ movhi
	strh	r2, [r3]	@ movhi
	strh	ip, [r0]	@ movhi
.L10:
	mov	r3, #256
	mov	r4, #240
	mov	r0, #160
	mov	r1, #120
	mov	lr, #8
	mov	r2, #72
	mov	ip, #11
	ldr	r5, .L15+20
	str	r3, [r5]
	ldr	r5, .L15+24
	str	r3, [r5]
	ldr	r3, .L15+28
	str	r4, [r3]
	ldr	r3, .L15+32
	str	r0, [r3]
	ldr	r3, .L15+36
	ldr	r0, .L15+40
	str	r1, [r3, #4]
	str	r1, [r3, #12]
	ldr	r1, .L15+44
	str	lr, [r3, #16]
	pop	{r4, r5, lr}
	str	ip, [r3, #20]
	str	r2, [r3]
	str	r2, [r3, #8]
	str	r1, [r0]
	b	initComputerSprites
.L16:
	.align	2
.L15:
	.word	priorState
	.word	hOff
	.word	vOff
	.word	priorHoff
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
	ldr	r3, .L18
	ldr	r2, [r3, #8]
	ldr	r0, [r3, #12]
	ldr	r3, .L18+4
	orr	r2, r2, #40960
	strh	r2, [r3]	@ movhi
	strh	r0, [r3, #2]	@ movhi
	strh	r1, [r3, #4]	@ movhi
	bx	lr
.L19:
	.align	2
.L18:
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
	ldr	r3, .L26
	ldr	r2, .L26+4
	add	r4, r3, #780
.L23:
	ldr	r1, [r3, #40]
	cmp	r1, #1
	strheq	r5, [r2, #8]	@ movhi
	beq	.L22
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
.L22:
	add	r3, r3, #52
	cmp	r3, r4
	add	r2, r2, #8
	bne	.L23
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L27:
	.align	2
.L26:
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
	ldr	r3, .L29
	ldr	r2, [r3, #8]
	ldr	r0, [r3, #12]
	ldr	r3, .L29+4
	orr	r2, r2, #40960
	strh	r2, [r3]	@ movhi
	strh	r0, [r3, #2]	@ movhi
	strh	r1, [r3, #4]	@ movhi
	b	drawComputerSprites
.L30:
	.align	2
.L29:
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
	ldr	r3, .L43
	push	{r4, r5, r6, lr}
	ldr	r1, [r3]
	ldr	r2, .L43+4
	ldr	r0, [r3, #4]
	mov	lr, pc
	bx	r2
	mov	r1, #0
	ldr	r5, .L43+8
	cmp	r0, #0
	str	r1, [r5]
	beq	.L31
	mov	lr, #1
	mov	r4, r1
	mov	r6, r1
	ldr	r3, .L43+12
	add	ip, r3, #520
.L36:
	ldrh	r2, [r3, #44]
	cmp	r2, r0
	moveq	r4, r3
	streq	r6, [r3, #40]
	strne	lr, [r3, #40]
	add	r3, r3, #52
	moveq	r1, #1
	cmp	r3, ip
	bne	.L36
	cmp	r1, #0
	strne	r4, [r5]
.L31:
	pop	{r4, r5, r6, lr}
	bx	lr
.L44:
	.align	2
.L43:
	.word	mouse
	.word	checkCollisionMapColor
	.word	activeSprite
	.word	computerSpritesArr
	.size	checkComputerSpriteCollision, .-checkComputerSpriteCollision
	.align	2
	.global	disableSprites
	.syntax unified
	.arm
	.fpu softvfp
	.type	disableSprites, %function
disableSprites:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #1
	ldr	r3, .L46
	str	r2, [r3, #612]
	str	r2, [r3, #664]
	str	r2, [r3, #716]
	str	r2, [r3, #768]
	bx	lr
.L47:
	.align	2
.L46:
	.word	computerSpritesArr
	.size	disableSprites, .-disableSprites
	.align	2
	.global	playSpettacolo
	.syntax unified
	.arm
	.fpu softvfp
	.type	playSpettacolo, %function
playSpettacolo:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L50
	mov	lr, pc
	bx	r3
	mov	r2, #1
	mov	ip, #0
	ldr	r3, .L50+4
	ldr	r0, .L50+8
	ldr	r1, [r3]
	ldr	r3, .L50+12
	str	r2, [r0]
	ldr	r4, .L50+16
	ldr	r0, .L50+20
	str	r2, [r3, #612]
	str	r2, [r3, #664]
	str	ip, [r3, #716]
	str	ip, [r3, #768]
	sub	r1, r1, #1000
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L51:
	.align	2
.L50:
	.word	stopSoundA
	.word	spettacolo_length
	.word	currSong
	.word	computerSpritesArr
	.word	playSoundA
	.word	spettacolo_data
	.size	playSpettacolo, .-playSpettacolo
	.align	2
	.global	playTLMOE
	.syntax unified
	.arm
	.fpu softvfp
	.type	playTLMOE, %function
playTLMOE:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L54
	mov	lr, pc
	bx	r3
	mov	ip, #0
	mov	r2, #1
	ldr	r3, .L54+4
	ldr	r1, [r3]
	ldr	r3, .L54+8
	ldr	lr, .L54+12
	str	r2, [r3, #716]
	str	r2, [r3, #768]
	str	ip, [r3, #612]
	str	ip, [r3, #664]
	ldr	r0, .L54+16
	ldr	r3, .L54+20
	sub	r1, r1, #1000
	str	ip, [lr]
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L55:
	.align	2
.L54:
	.word	stopSoundA
	.word	LastManOn8rth_length
	.word	computerSpritesArr
	.word	currSong
	.word	LastManOn8rth_data
	.word	playSoundA
	.size	playTLMOE, .-playTLMOE
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
	ldr	r3, .L101
	ldr	r2, .L101+4
	ldr	r3, [r3]
	cmp	r3, r2
	beq	.L92
	push	{r4, r5, r6, lr}
	sub	r4, r2, #156
	cmp	r3, r4
	beq	.L93
	add	r1, r2, #156
	cmp	r3, r1
	beq	.L94
	sub	r0, r2, #52
	sub	r1, r2, #104
	cmp	r3, r1
	cmpne	r3, r0
	moveq	r5, #1
	movne	r5, #0
	bne	.L63
	ldr	r3, .L101+8
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L95
	mov	r3, #768
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L101+12
	ldr	r5, .L101+16
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L101+20
	ldr	r1, .L101+24
	mov	lr, pc
	bx	r5
.L65:
	mov	r1, #10
	mov	r0, #14
	ldr	r3, .L101+28
	ldr	r2, .L101+32
	str	r1, [r4, #160]
	str	r0, [r4, #156]
	str	r2, [r3]
	b	.L60
.L94:
	ldr	r3, .L101+36
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L96
.L62:
	add	r0, r4, #156
	ldm	r0, {r0, r1}
.L60:
	ldr	r3, .L101+40
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L75
.L72:
	ldr	r3, .L101+44
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L76
.L75:
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
.L63:
	add	r1, r2, #208
	cmp	r3, r1
	beq	.L97
	add	r1, r2, #260
	cmp	r3, r1
	beq	.L98
	add	r1, r2, #312
	cmp	r3, r1
	beq	.L99
	add	r2, r2, #52
	cmp	r3, r2
	beq	.L100
	add	r2, r4, #260
	cmp	r3, r2
	bne	.L62
	mov	r3, #3952
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L101+48
	ldr	r5, .L101+16
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L101+20
	ldr	r1, .L101+52
	mov	lr, pc
	bx	r5
	mov	r0, #1
	ldr	r3, .L101+40
	ldr	r1, .L101+44
	ldrb	ip, [r3]	@ zero_extendqisi2
	ldr	r2, .L101+56
	ldr	r3, .L101+28
	strb	r0, [r1]
	cmp	ip, #0
	add	r0, r4, #156
	str	r2, [r3]
	ldm	r0, {r0, r1}
	beq	.L75
.L76:
	mov	r2, #1
	ldr	r3, .L101+60
	strb	r2, [r3]
	b	.L75
.L95:
	mov	ip, #1
	mov	r3, #1584
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L101+64
	ldr	r5, .L101+16
	str	ip, [r4, #560]
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L101+20
	ldr	r1, .L101+68
	mov	lr, pc
	bx	r5
	b	.L65
.L96:
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L101+72
	ldr	r1, .L101+76
	ldr	r5, .L101+16
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L101+20
	ldr	r1, .L101+80
	mov	lr, pc
	bx	r5
	mov	r1, #0
	mov	r2, #1
	ldr	r3, .L101+8
	add	r0, r4, #156
	str	r1, [r4, #560]
	strb	r2, [r3]
	ldm	r0, {r0, r1}
	b	.L60
.L92:
	mov	r1, #67108864
	mov	r0, #4608
	mov	r2, #1
	strh	r0, [r1]	@ movhi
	ldr	r1, .L101+8
	ldrb	ip, [r1]	@ zero_extendqisi2
	cmp	ip, #0
	str	r2, [r3, #456]
	str	r2, [r3, #508]
	str	r2, [r3, #560]
	str	r2, [r3, #612]
	movne	r2, #0
	ldr	r1, .L101+28
	ldr	r0, .L101+84
	sub	r3, r3, #156
	str	r0, [r1]
	strne	r2, [r3, #560]
	bx	lr
.L93:
	mov	r3, #4032
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L101+88
	ldr	r5, .L101+16
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L101+20
	ldr	r1, .L101+92
	mov	lr, pc
	bx	r5
	mov	r1, #38
	mov	r0, #16
	ldr	r3, .L101+28
	ldr	r2, .L101+96
	str	r1, [r4, #160]
	str	r0, [r4, #156]
	str	r2, [r3]
	b	.L60
.L97:
	mov	r3, #624
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L101+100
	ldr	r6, .L101+16
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L101+20
	ldr	r1, .L101+104
	mov	lr, pc
	bx	r6
	mov	r2, #16
	ldr	r3, .L101+108
	ldr	r3, [r3]
	cmp	r3, #0
	movne	r3, #1
	str	r2, [r4, #156]
	moveq	r2, #1
	mov	r1, #38
	streq	r3, [r4, #612]
	streq	r3, [r4, #664]
	streq	r2, [r4, #716]
	streq	r2, [r4, #768]
	strne	r3, [r4, #612]
	strne	r3, [r4, #664]
	ldr	r2, .L101+112
	ldr	r3, .L101+28
	str	r1, [r4, #160]
	mov	r0, #16
	mov	r1, #38
	strne	r5, [r4, #716]
	strne	r5, [r4, #768]
	str	r2, [r3]
	b	.L60
.L98:
	bl	playSpettacolo
	add	r0, r4, #156
	ldm	r0, {r0, r1}
	b	.L60
.L99:
	bl	playTLMOE
	add	r0, r4, #156
	ldm	r0, {r0, r1}
	b	.L60
.L100:
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L101+116
	ldr	r1, .L101+120
	ldr	r5, .L101+16
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L101+20
	ldr	r1, .L101+124
	mov	lr, pc
	bx	r5
	mov	r0, #1
	ldr	r1, .L101+40
	ldr	r3, .L101+28
	ldr	r2, .L101+56
	strb	r0, [r1]
	add	r0, r4, #156
	str	r2, [r3]
	ldm	r0, {r0, r1}
	b	.L72
.L102:
	.align	2
.L101:
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
	.word	ruthEmailBool
	.word	marsEmailBool
	.word	inboxmarsTiles
	.word	inboxmarsMap
	.word	inboxmessagecollisionBitmap
	.word	allEmailsBool
	.word	inboxfullTiles
	.word	inboxfullMap
	.word	4336
	.word	webpagedocTiles
	.word	webpagedocMap
	.word	desktopcollisionBitmap
	.word	websitebgTiles
	.word	websitebgMap
	.word	websitecollisionBitmap
	.word	musicbgTiles
	.word	musicbgMap
	.word	currSong
	.word	musiccollisionBitmap
	.word	5136
	.word	inboxruthTiles
	.word	inboxruthMap
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
	ldr	r3, .L118
	ldrh	r3, [r3, #48]
	tst	r3, #64
	push	{r4, lr}
	ldr	r4, .L118+4
	bne	.L104
	ldr	r3, [r4]
	cmp	r3, #0
	subgt	r3, r3, #1
	strgt	r3, [r4]
.L104:
	ldr	r3, .L118
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bne	.L105
	ldr	r3, .L118+8
	ldr	r1, [r4, #20]
	ldr	r2, [r3]
	ldr	r3, [r4]
	sub	r2, r2, r1
	add	r3, r3, #1
	cmp	r3, r2
	strlt	r3, [r4]
.L105:
	ldr	r3, .L118
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L106
	ldr	r3, [r4, #4]
	cmp	r3, #0
	subgt	r3, r3, #1
	strgt	r3, [r4, #4]
.L106:
	ldr	r3, .L118
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L107
	ldr	r3, .L118+12
	ldr	r1, [r4, #16]
	ldr	r2, [r3]
	ldr	r3, [r4, #4]
	sub	r2, r2, r1
	add	r3, r3, #1
	cmp	r3, r2
	strlt	r3, [r4, #4]
.L107:
	ldr	r3, .L118+16
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L108
	ldr	r3, .L118+20
	ldrh	r3, [r3]
	tst	r3, #1
	bne	.L108
	ldr	r3, .L118+24
	ldr	r3, [r3]
	cmp	r3, #0
	blne	loadSecondaryScreen
.L108:
	ldr	r2, .L118+28
	ldr	r3, .L118+32
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
.L119:
	.align	2
.L118:
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
	.align	2
	.global	tlmoeHide
	.syntax unified
	.arm
	.fpu softvfp
	.type	tlmoeHide, %function
tlmoeHide:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L123
	str	r0, [r3, #612]
	str	r0, [r3, #664]
	bx	lr
.L124:
	.align	2
.L123:
	.word	computerSpritesArr
	.size	tlmoeHide, .-tlmoeHide
	.align	2
	.global	spettacoloHide
	.syntax unified
	.arm
	.fpu softvfp
	.type	spettacoloHide, %function
spettacoloHide:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L126
	str	r0, [r3, #716]
	str	r0, [r3, #768]
	bx	lr
.L127:
	.align	2
.L126:
	.word	computerSpritesArr
	.size	spettacoloHide, .-spettacoloHide
	.comm	mouse,48,4
	.comm	computerSpritesArr,780,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.comm	currSong,4,4
	.comm	state,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
