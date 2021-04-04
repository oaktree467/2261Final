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
	mov	ip, #0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r2, #1
	mov	r8, #2
	mov	r7, #84
	mvn	r6, #64512
	mov	r5, #4
	mov	r4, #3
	mov	lr, #109
	mov	r0, #12
	mov	r1, #67
	ldr	r3, .L4
	str	ip, [r3, #24]
	str	ip, [r3, #84]
	ldr	ip, .L4+4
	str	ip, [r3, #48]
	ldr	ip, .L4+8
	str	r8, [r3, #36]
	str	r7, [r3, #4]
	strh	r6, [r3, #44]	@ movhi
	str	r5, [r3, #76]
	str	r4, [r3, #88]
	str	lr, [r3, #56]
	strh	ip, [r3, #96]	@ movhi
	str	r0, [r3, #28]
	str	r0, [r3, #80]
	str	r2, [r3, #32]
	str	r2, [r3, #40]
	str	r2, [r3, #92]
	str	r1, [r3]
	str	r1, [r3, #52]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	kitchenSpritesArr
	.word	.LANCHOR0
	.word	32608
	.size	initKitchenSprites, .-initKitchenSprites
	.global	pictureFrame
	.comm	kitchenSpritesArr,104,4
	.comm	state,4,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	pictureFrame, %object
	.size	pictureFrame, 67
pictureFrame:
	.ascii	"Your aunt, in her infinite wisdom, only ever 'updat"
	.ascii	"ed'the kitchen.\000"
	.ident	"GCC: (devkitARM release 53) 9.1.0"
