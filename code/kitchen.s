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
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r2, #1
	mov	r9, #2
	mov	r8, #84
	mvn	r7, #64512
	mov	r6, #4
	mov	r5, #3
	mov	r4, #109
	mov	ip, #0
	mov	r0, #12
	mov	r1, #67
	ldr	r3, .L4
	ldr	lr, .L4+4
	add	r10, lr, #68
	str	lr, [r3, #48]
	ldr	lr, .L4+8
	str	r10, [r3, #100]
	str	r9, [r3, #36]
	str	r8, [r3, #4]
	strh	r7, [r3, #44]	@ movhi
	str	r6, [r3, #76]
	str	r5, [r3, #88]
	str	r4, [r3, #56]
	strh	lr, [r3, #96]	@ movhi
	str	ip, [r3, #24]
	str	ip, [r3, #84]
	str	r0, [r3, #28]
	str	r0, [r3, #80]
	str	r2, [r3, #32]
	str	r2, [r3, #40]
	str	r2, [r3, #92]
	str	r1, [r3]
	str	r1, [r3, #52]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	kitchenSpritesArr
	.word	.LANCHOR0
	.word	32608
	.size	initKitchenSprites, .-initKitchenSprites
	.global	refrigerator
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
	.space	1
	.type	refrigerator, %object
	.size	refrigerator, 78
refrigerator:
	.ascii	"It's the key you were      looking for... but why w"
	.ascii	"as it in the refrigerator?\000"
	.ident	"GCC: (devkitARM release 53) 9.1.0"
