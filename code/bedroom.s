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
	.file	"bedroom.c"
	.text
	.align	2
	.global	initBedroomSprites
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBedroomSprites, %function
initBedroomSprites:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r8, #16
	ldr	r3, .L4
	str	r8, [r3, #80]
	mov	r8, #84
	str	r8, [r3, #56]
	mov	r8, #45
	mvn	r9, #64512
	str	r8, [r3, #52]
	ldr	r8, .L4+4
	strh	r8, [r3, #96]	@ movhi
	ldr	r8, .L4+8
	strh	r9, [r3, #44]	@ movhi
	strh	r8, [r3, #148]	@ movhi
	mov	r9, #130
	mov	r8, #198
	mov	r2, #1
	mov	r1, #12
	mov	ip, #0
	mov	lr, #3
	mov	r0, #2
	mov	r5, #8
	mov	r6, #49
	mov	fp, #21
	mov	r10, #76
	str	r9, [r3, #108]
	str	r8, [r3, #160]
	mov	r9, #10
	mov	r8, #31	@ movhi
	mov	r4, #60
	mov	r7, #996
	stm	r3, {r10, fp}
	str	ip, [r3, #24]
	str	ip, [r3, #76]
	str	ip, [r3, #84]
	str	r9, [r3, #184]
	strh	r8, [r3, #200]	@ movhi
	str	r1, [r3, #28]
	str	r1, [r3, #132]
	str	r1, [r3, #180]
	str	lr, [r3, #36]
	str	lr, [r3, #140]
	str	r5, [r3, #128]
	str	r6, [r3, #104]
	str	r2, [r3, #32]
	str	r2, [r3, #40]
	str	r2, [r3, #92]
	str	r2, [r3, #136]
	str	r2, [r3, #144]
	str	r2, [r3, #188]
	str	r2, [r3, #196]
	str	r0, [r3, #88]
	str	r0, [r3, #192]
	str	r6, [r3, #156]
	ldr	r6, .L4+12
	str	r5, [r3, #236]
	str	r6, [r3, #204]
	ldr	r5, .L4+16
	ldr	r6, .L4+20
	str	ip, [r3, #288]
	ldr	ip, .L4+24
	str	r1, [r3, #232]
	str	r1, [r3, #284]
	add	r1, r3, #304
	str	lr, [r3, #296]
	str	r6, [r3, #212]
	strh	r7, [r3, #252]	@ movhi
	str	r5, [r3, #264]
	str	r4, [r3, #208]
	str	r4, [r3, #260]
	str	r2, [r3, #240]
	str	r0, [r3, #244]
	str	r2, [r3, #248]
	str	r0, [r3, #292]
	str	r2, [r3, #300]
	strh	ip, [r1]	@ movhi
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	bedroomSpritesArr
	.word	32608
	.word	3655
	.word	.LANCHOR0
	.word	355
	.word	285
	.word	27669
	.size	initBedroomSprites, .-initBedroomSprites
	.align	2
	.global	loadBedroom
	.syntax unified
	.arm
	.fpu softvfp
	.type	loadBedroom, %function
loadBedroom:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L10
	ldr	r3, [r3]
	sub	r3, r3, #7
	bics	r3, r3, #2
	push	{r4, lr}
	beq	.L7
	mov	r0, #120
	mov	r2, #30
	mov	lr, #2
	mov	ip, #0
	mov	r1, #10
	ldr	r3, .L10+4
	str	r0, [r3]
	str	r2, [r3, #4]
	ldr	r0, .L10+8
	ldr	r2, .L10+12
	str	lr, [r3, #28]
	strh	ip, [r0]	@ movhi
	strh	r1, [r2]	@ movhi
.L8:
	mov	r1, #512
	mov	lr, #388
	mov	r0, #256
	mov	r2, #170
	ldr	r3, .L10+16
	ldr	ip, .L10+20
	str	r1, [r3]
	ldr	r1, .L10+24
	ldr	r3, .L10+28
	str	lr, [ip]
	str	r0, [r1]
	str	r2, [r3]
	bl	initBedroomSprites
	mov	lr, #6
	ldr	ip, .L10+32
	ldr	r1, .L10+36
	ldr	r0, .L10+40
	ldr	r3, .L10+44
	ldr	r2, .L10+48
	str	lr, [ip]
	str	r0, [r1]
	str	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L7:
	ldr	r2, .L10+52
	ldr	r3, .L10+56
	ldrh	r0, [r2]
	ldr	r1, .L10+8
	ldrh	r2, [r3]
	ldr	r3, .L10+12
	strh	r0, [r1]	@ movhi
	strh	r2, [r3]	@ movhi
	b	.L8
.L11:
	.align	2
.L10:
	.word	priorState
	.word	protag
	.word	hOff
	.word	vOff
	.word	totalMapWidth
	.word	visMapWidth
	.word	totalMapHeight
	.word	visMapHeight
	.word	currSpriteArrCount
	.word	currSpriteArr
	.word	bedroomSpritesArr
	.word	currCollisionMap
	.word	bedroomcollisionBitmap
	.word	priorHoff
	.word	priorVoff
	.size	loadBedroom, .-loadBedroom
	.align	2
	.global	safeOpenMessage
	.syntax unified
	.arm
	.fpu softvfp
	.type	safeOpenMessage, %function
safeOpenMessage:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	safeOpenMessage, .-safeOpenMessage
	.global	wallsafe
	.comm	bedroomSpritesArr,312,4
	.comm	state,4,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	wallsafe, %object
	.size	wallsafe, 19
wallsafe:
	.ascii	"The safe is empty.\000"
	.ident	"GCC: (devkitARM release 53) 9.1.0"
