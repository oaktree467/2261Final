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
	str	ip, [r3, #80]
	ldr	ip, .L4+4
	str	r8, [r3, #36]
	str	r7, [r3, #4]
	strh	r6, [r3, #44]	@ movhi
	str	r5, [r3, #72]
	str	r4, [r3, #84]
	str	lr, [r3, #52]
	strh	ip, [r3, #92]	@ movhi
	str	r0, [r3, #28]
	str	r0, [r3, #76]
	str	r2, [r3, #32]
	str	r2, [r3, #40]
	str	r2, [r3, #88]
	str	r1, [r3]
	str	r1, [r3, #48]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	kitchenSpritesArr
	.word	32608
	.size	initKitchenSprites, .-initKitchenSprites
	.align	2
	.global	checkKitchenCollide
	.syntax unified
	.arm
	.fpu softvfp
	.type	checkKitchenCollide, %function
checkKitchenCollide:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r10, #0
	mov	r6, #1
	mov	r9, r10
	ldr	r4, .L12
	ldr	r5, .L12+4
	ldr	r7, .L12+8
	ldr	r8, .L12+12
.L9:
	ldr	r3, [r5, #16]
	ldr	r0, [r5, #4]
	add	r3, r3, r3, lsr #31
	add	r0, r0, r3, asr #1
	ldr	r1, [r5]
	mov	lr, pc
	bx	r7
	ldrh	r3, [r4, #44]
	cmp	r3, r0
	streq	r9, [r4, #40]
	strne	r6, [r4, #40]
	streq	r6, [r8]
	cmp	r10, #1
	add	r4, r4, #48
	bne	.L10
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L10:
	mov	r10, #1
	b	.L9
.L13:
	.align	2
.L12:
	.word	kitchenSpritesArr
	.word	protag
	.word	checkCollisionMapColor
	.word	spriteCollisionBool
	.size	checkKitchenCollide, .-checkKitchenCollide
	.comm	kitchenSpritesArr,96,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
