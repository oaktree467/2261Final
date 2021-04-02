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
	mov	r3, #0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r6, r3
	mov	r9, r3
	mov	r7, #1
	ldr	r8, .L13
	ldr	r5, .L13+4
	str	r3, [r8]
	ldr	r4, .L13+8
	ldr	r10, .L13+12
.L9:
	ldr	r3, [r4, #16]
	ldr	r0, [r4, #4]
	add	r3, r3, r3, lsr #31
	add	r0, r0, r3, asr #1
	ldr	r1, [r4]
	mov	lr, pc
	bx	r10
	ldrh	r3, [r5, #44]
	cmp	r3, r0
	streq	r9, [r5, #40]
	strne	r7, [r5, #40]
	streq	r7, [r8]
	cmp	r6, #1
	add	r5, r5, #48
	bne	.L11
	ldr	r3, [r4, #16]
	ldr	r0, [r4, #4]
	add	r3, r3, r3, lsr #31
	ldr	r1, [r4]
	add	r0, r0, r3, asr #1
	mov	lr, pc
	bx	r10
	cmp	r0, #31
	ldreq	r3, .L13+16
	streq	r6, [r3]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L11:
	mov	r6, #1
	b	.L9
.L14:
	.align	2
.L13:
	.word	spriteCollisionBool
	.word	kitchenSpritesArr
	.word	protag
	.word	checkCollisionMapColor
	.word	nextRoomBool
	.size	checkKitchenCollide, .-checkKitchenCollide
	.comm	kitchenSpritesArr,96,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
