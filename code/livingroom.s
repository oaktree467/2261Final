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
	.file	"livingroom.c"
	.text
	.align	2
	.global	initLivingRoomSprites
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initLivingRoomSprites, %function
initLivingRoomSprites:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #12
	ldr	r3, .L4
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	str	ip, [r3, #24]
	str	ip, [r3, #72]
	str	ip, [r3, #124]
	str	ip, [r3, #172]
	ldr	ip, .L4+4
	str	ip, [r3]
	ldr	ip, .L4+8
	strh	ip, [r3, #92]	@ movhi
	mov	ip, #59
	str	ip, [r3, #100]
	mvn	ip, #64512
	mov	r7, #70
	strh	ip, [r3, #140]	@ movhi
	ldr	ip, .L4+12
	mov	r2, #1
	mov	r1, #0
	mov	r0, #3
	mov	lr, #2
	mov	r5, #4
	mov	r6, #8
	mov	fp, #312
	mov	r10, #3168
	mov	r9, #107
	mov	r8, #189
	str	r7, [r3, #96]
	mov	r7, #132
	str	ip, [r3, #144]
	ldr	ip, .L4+16
	strh	ip, [r3, #188]	@ movhi
	mov	ip, #135
	str	fp, [r3, #4]
	strh	r10, [r3, #44]	@ movhi
	str	r9, [r3, #48]
	str	r8, [r3, #52]
	str	r7, [r3, #148]
	str	r1, [r3, #28]
	str	r1, [r3, #32]
	str	r1, [r3, #120]
	str	r1, [r3, #128]
	str	r1, [r3, #176]
	str	lr, [r3, #36]
	str	lr, [r3, #80]
	str	r2, [r3, #40]
	str	r2, [r3, #88]
	str	r2, [r3, #136]
	str	r2, [r3, #184]
	str	r5, [r3, #76]
	str	r0, [r3, #84]
	str	r0, [r3, #132]
	str	r0, [r3, #180]
	str	r6, [r3, #168]
	str	r2, [r3, #232]
	str	r2, [r3, #272]
	str	r2, [r3, #280]
	str	r2, [r3, #324]
	str	r2, [r3, #328]
	mov	r2, #101
	str	r1, [r3, #216]
	str	r1, [r3, #224]
	mov	r1, #31	@ movhi
	str	ip, [r3, #288]
	mov	ip, #235
	str	r2, [r3, #192]
	add	r2, r2, #186
	strh	r1, [r3, #236]	@ movhi
	str	r2, [r3, #196]
	mov	r1, #113
	add	r2, r2, #55
	str	r2, [r3, #244]
	mov	r2, #28
	mov	r4, #20
	str	ip, [r3, #292]
	mov	ip, #996	@ movhi
	str	r1, [r3, #240]
	ldr	r1, .L4+20
	str	r0, [r3, #228]
	str	r0, [r3, #276]
	str	r2, [r3, #316]
	add	r0, r3, #284
	add	r2, r3, #332
	str	r6, [r3, #264]
	str	r5, [r3, #312]
	str	lr, [r3, #320]
	strh	ip, [r0]	@ movhi
	strh	r1, [r2]	@ movhi
	str	r4, [r3, #220]
	str	r4, [r3, #268]
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	livingRoomSpritesArr
	.word	355
	.word	32608
	.word	285
	.word	607
	.word	3655
	.size	initLivingRoomSprites, .-initLivingRoomSprites
	.align	2
	.global	checkLivingRoomCollide
	.syntax unified
	.arm
	.fpu softvfp
	.type	checkLivingRoomCollide, %function
checkLivingRoomCollide:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r7, #1
	mov	r9, r3
	ldr	r8, .L13
	ldr	r4, .L13+4
	str	r3, [r8]
	ldr	r10, .L13+8
	ldr	r5, .L13+12
	add	r6, r4, #384
.L9:
	ldr	r3, [r10, #16]
	ldr	r0, [r10, #4]
	add	r3, r3, r3, lsr #31
	add	r0, r0, r3, asr #1
	ldr	r1, [r10]
	mov	lr, pc
	bx	r5
	ldrh	r3, [r4, #44]
	cmp	r3, r0
	streq	r9, [r4, #40]
	strne	r7, [r4, #40]
	add	r4, r4, #48
	streq	r7, [r8]
	cmp	r4, r6
	bne	.L9
	ldr	r1, [r10]
	ldr	r0, [r10, #4]
	mov	lr, pc
	bx	r5
	ldr	r3, .L13+16
	cmp	r0, r3
	moveq	r2, #1
	ldreq	r3, .L13+20
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	streq	r2, [r3]
	bx	lr
.L14:
	.align	2
.L13:
	.word	spriteCollisionBool
	.word	livingRoomSpritesArr
	.word	protag
	.word	checkCollisionMapColor
	.word	3183
	.word	nextRoomBool
	.size	checkLivingRoomCollide, .-checkLivingRoomCollide
	.comm	livingRoomSpritesArr,384,4
	.comm	state,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
