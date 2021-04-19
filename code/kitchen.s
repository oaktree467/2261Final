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
	.file	"kitchen.c"
	.text
	.align	2
	.global	initKitchenSprites
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initKitchenSprites, %function
initKitchenSprites:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r2, #0
	mov	r10, #2
	mov	r9, #53
	mov	r8, #84
	mvn	r7, #64512
	mov	r6, #4
	mov	r5, #3
	mov	r4, #67
	mov	lr, #109
	mov	r0, #12
	mov	r1, #1
	ldr	r3, .L4
	ldr	ip, .L4+4
	add	fp, ip, #68
	str	ip, [r3, #48]
	ldr	ip, .L4+8
	str	fp, [r3, #100]
	str	r10, [r3, #36]
	str	r9, [r3]
	str	r8, [r3, #4]
	strh	r7, [r3, #44]	@ movhi
	str	r6, [r3, #76]
	str	r5, [r3, #88]
	str	r4, [r3, #52]
	str	lr, [r3, #56]
	strh	ip, [r3, #96]	@ movhi
	str	r2, [r3, #24]
	str	r2, [r3, #32]
	str	r2, [r3, #84]
	str	r0, [r3, #28]
	str	r0, [r3, #80]
	str	r1, [r3, #40]
	str	r1, [r3, #92]
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	kitchenSpritesArr
	.word	.LANCHOR0
	.word	32608
	.size	initKitchenSprites, .-initKitchenSprites
	.align	2
	.global	loadKitchen
	.syntax unified
	.arm
	.fpu softvfp
	.type	loadKitchen, %function
loadKitchen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L13
	ldr	r3, [r3]
	cmp	r3, #3
	push	{r4, lr}
	beq	.L11
	cmp	r3, #6
	beq	.L12
	ldr	r2, .L13+4
	ldr	r3, .L13+8
	ldrh	r0, [r2]
	ldr	r1, .L13+12
	ldrh	r2, [r3]
	ldr	r3, .L13+16
	strh	r0, [r1]	@ movhi
	strh	r2, [r3]	@ movhi
.L8:
	mov	r3, #256
	mov	r1, #160
	ldr	lr, .L13+20
	ldr	ip, .L13+24
	ldr	r0, .L13+28
	ldr	r2, .L13+32
	str	r3, [lr]
	str	r3, [ip]
	str	r3, [r0]
	str	r1, [r2]
	bl	initKitchenSprites
	mov	lr, #2
	ldr	ip, .L13+36
	ldr	r1, .L13+40
	ldr	r0, .L13+44
	ldr	r3, .L13+48
	ldr	r2, .L13+52
	str	lr, [ip]
	str	r0, [r1]
	str	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L12:
	mov	r3, #0
	mov	lr, #75
	mov	ip, #30
	ldr	r2, .L13+56
	ldr	r0, .L13+12
	ldr	r1, .L13+16
	str	lr, [r2]
	str	ip, [r2, #4]
	str	r3, [r2, #28]
	strh	r3, [r0]	@ movhi
	strh	r3, [r1]	@ movhi
	b	.L8
.L11:
	mov	r1, #120
	mov	r2, #0
	mov	lr, #200
	mov	ip, #2
	ldr	r3, .L13+56
	ldr	r0, .L13+12
	str	r1, [r3]
	ldr	r1, .L13+16
	str	lr, [r3, #4]
	str	ip, [r3, #28]
	strh	r2, [r0]	@ movhi
	strh	r2, [r1]	@ movhi
	b	.L8
.L14:
	.align	2
.L13:
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
	.word	kitchenSpritesArr
	.word	currCollisionMap
	.word	kitchencollisionBitmap
	.word	protag
	.size	loadKitchen, .-loadKitchen
	.align	2
	.global	reassignRefrigeratorMessage
	.syntax unified
	.arm
	.fpu softvfp
	.type	reassignRefrigeratorMessage, %function
reassignRefrigeratorMessage:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L18
	ldr	r3, .L18+4
	ldr	r1, [r2, #100]
	cmp	r1, r3
	addne	r3, r3, #184
	addeq	r3, r3, #60
	str	r3, [r2, #100]
	bx	lr
.L19:
	.align	2
.L18:
	.word	kitchenSpritesArr
	.word	.LANCHOR0+68
	.size	reassignRefrigeratorMessage, .-reassignRefrigeratorMessage
	.global	refrigerator_2
	.global	refrigerator_1
	.global	refrigerator_0
	.global	pictureFrame
	.comm	kitchenSpritesArr,104,4
	.comm	state,4,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	pictureFrame, %object
	.size	pictureFrame, 68
pictureFrame:
	.ascii	"Your aunt, in her infinite wisdom, only ever 'updat"
	.ascii	"ed' the kitchen.\000"
	.type	refrigerator_0, %object
	.size	refrigerator_0, 57
refrigerator_0:
	.ascii	"Not much in here but... wait, is that the phone rin"
	.ascii	"ging?\000"
	.space	3
	.type	refrigerator_1, %object
	.size	refrigerator_1, 123
refrigerator_1:
	.ascii	"It's the key you were looking for. You must have be"
	.ascii	"en distracted by the phone earlier. But why was it "
	.ascii	"in the refrigerator?\000"
	.space	1
	.type	refrigerator_2, %object
	.size	refrigerator_2, 32
refrigerator_2:
	.ascii	"Not much in here but ice cream.\000"
	.ident	"GCC: (devkitARM release 53) 9.1.0"
