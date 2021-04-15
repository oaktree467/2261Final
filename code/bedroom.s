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
	mvn	r8, #64512
	ldr	r3, .L4
	strh	r8, [r3, #44]	@ movhi
	mov	r8, #16
	str	r8, [r3, #80]
	mov	r8, #84
	mov	r10, #21
	mov	r9, #76
	str	r8, [r3, #56]
	mov	r8, #45
	stm	r3, {r9, r10}
	mov	r9, #130
	str	r8, [r3, #52]
	ldr	r8, .L4+4
	ldr	r1, .L4+8
	strh	r8, [r3, #96]	@ movhi
	ldr	r8, .L4+12
	strh	r8, [r3, #148]	@ movhi
	add	r8, r1, #196
	mov	r2, #1
	mov	r0, #12
	mov	lr, #0
	mov	ip, #2
	mov	r4, #3
	mov	r6, #8
	mov	r7, #49
	str	r9, [r3, #108]
	str	r8, [r3, #152]
	mov	r9, #10
	mov	r8, #198
	add	fp, r1, #88
	str	fp, [r3, #100]
	str	r1, [r3, #48]
	str	r9, [r3, #184]
	str	r8, [r3, #160]
	str	lr, [r3, #24]
	str	lr, [r3, #76]
	str	lr, [r3, #84]
	str	r0, [r3, #28]
	str	r0, [r3, #132]
	str	r0, [r3, #180]
	str	r2, [r3, #32]
	str	r2, [r3, #40]
	str	r2, [r3, #92]
	str	r2, [r3, #136]
	str	r2, [r3, #144]
	str	r2, [r3, #188]
	str	r4, [r3, #36]
	str	r4, [r3, #140]
	str	ip, [r3, #88]
	str	ip, [r3, #192]
	str	r6, [r3, #128]
	str	r7, [r3, #104]
	str	r2, [r3, #196]
	str	r2, [r3, #240]
	str	r2, [r3, #248]
	str	r4, [r3, #296]
	str	r2, [r3, #300]
	add	r4, r1, #304
	mov	r2, #31	@ movhi
	mov	r5, #60
	str	r4, [r3, #204]
	mov	r4, #996	@ movhi
	str	r0, [r3, #232]
	str	r6, [r3, #236]
	str	r0, [r3, #284]
	ldr	r6, .L4+16
	str	lr, [r3, #288]
	ldr	r0, .L4+20
	ldr	lr, .L4+24
	str	ip, [r3, #244]
	str	ip, [r3, #292]
	strh	r2, [r3, #200]	@ movhi
	add	ip, r1, #324
	add	r2, r3, #304
	add	r1, r1, #400
	str	r7, [r3, #156]
	str	r6, [r3, #212]
	strh	r4, [r3, #252]	@ movhi
	str	lr, [r3, #264]
	str	r5, [r3, #208]
	str	r5, [r3, #260]
	str	ip, [r3, #256]
	str	r1, [r3, #308]
	strh	r0, [r2]	@ movhi
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	bedroomSpritesArr
	.word	32608
	.word	.LANCHOR0
	.word	3655
	.word	285
	.word	27669
	.word	355
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
	ldr	r3, .L11
	ldr	r3, [r3]
	bic	r2, r3, #8
	cmp	r2, #1
	cmpne	r3, #7
	push	{r4, lr}
	bne	.L10
	ldr	r2, .L11+4
	ldr	r3, .L11+8
	ldrh	r0, [r2]
	ldr	r1, .L11+12
	ldrh	r2, [r3]
	ldr	r3, .L11+16
	strh	r0, [r1]	@ movhi
	strh	r2, [r3]	@ movhi
.L8:
	mov	r1, #512
	mov	lr, #388
	mov	r0, #256
	mov	r2, #170
	ldr	r3, .L11+20
	ldr	ip, .L11+24
	str	r1, [r3]
	ldr	r1, .L11+28
	ldr	r3, .L11+32
	str	lr, [ip]
	str	r0, [r1]
	str	r2, [r3]
	bl	initBedroomSprites
	mov	lr, #6
	ldr	ip, .L11+36
	ldr	r1, .L11+40
	ldr	r0, .L11+44
	ldr	r3, .L11+48
	ldr	r2, .L11+52
	str	lr, [ip]
	str	r0, [r1]
	str	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L10:
	mov	r0, #120
	mov	r2, #30
	mov	lr, #2
	mov	ip, #0
	mov	r1, #10
	ldr	r3, .L11+56
	str	r0, [r3]
	str	r2, [r3, #4]
	ldr	r0, .L11+12
	ldr	r2, .L11+16
	str	lr, [r3, #28]
	strh	ip, [r0]	@ movhi
	strh	r1, [r2]	@ movhi
	b	.L8
.L12:
	.align	2
.L11:
	.word	priorState
	.word	priorHoff
	.word	priorVoff
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
	.word	protag
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
	.global	bookshelfTwo
	.global	chair
	.global	vanity
	.global	wardrobe
	.global	bedFrame
	.global	wallsafe
	.comm	bedroomSpritesArr,312,4
	.comm	state,4,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	bedFrame, %object
	.size	bedFrame, 86
bedFrame:
	.ascii	"God only knows how old this bedframe is, but you DI"
	.ascii	"D just buy the mattress last year.\000"
	.space	2
	.type	wardrobe, %object
	.size	wardrobe, 106
wardrobe:
	.ascii	"If you spend too long with your head stuck in the w"
	.ascii	"ardrobe, it begins to feel like one of your attacks"
	.ascii	"...\000"
	.space	2
	.type	vanity, %object
	.size	vanity, 105
vanity:
	.ascii	"Your aunt's vanity. When you first inherited it, fa"
	.ascii	"r more of the family jewelry remained in the drawer"
	.ascii	"s.\000"
	.space	3
	.type	wallsafe, %object
	.size	wallsafe, 19
wallsafe:
	.ascii	"The safe is empty.\000"
	.space	1
	.type	chair, %object
	.size	chair, 73
chair:
	.ascii	"A beautiful chair that is also, unfortunately, not "
	.ascii	"terribly comfortable.\000"
	.space	3
	.type	bookshelfTwo, %object
	.size	bookshelfTwo, 110
bookshelfTwo:
	.ascii	"Your aunt couldn't fool you with all those Jane Aus"
	.ascii	"ten novels. This shelf is packed with vampire bests"
	.ascii	"ellers.\000"
	.ident	"GCC: (devkitARM release 53) 9.1.0"
