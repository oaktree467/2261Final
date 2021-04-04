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
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r8, #189
	ldr	r3, .L4
	str	ip, [r3, #24]
	str	ip, [r3, #72]
	str	ip, [r3, #124]
	str	ip, [r3, #172]
	ldr	ip, .L4+4
	str	ip, [r3]
	ldr	ip, .L4+8
	strh	ip, [r3, #92]	@ movhi
	mov	ip, #59
	str	r8, [r3, #52]
	mov	r8, #70
	str	ip, [r3, #100]
	mvn	ip, #64512
	mov	r2, #1
	mov	r1, #0
	mov	r0, #3
	mov	lr, #2
	mov	r6, #4
	mov	r7, #8
	mov	fp, #312
	mov	r10, #3168
	mov	r9, #107
	str	r8, [r3, #96]
	mov	r8, #132
	strh	ip, [r3, #140]	@ movhi
	ldr	ip, .L4+12
	str	ip, [r3, #144]
	ldr	ip, .L4+16
	str	fp, [r3, #4]
	strh	r10, [r3, #44]	@ movhi
	str	r9, [r3, #48]
	str	r8, [r3, #148]
	str	r1, [r3, #28]
	strh	ip, [r3, #188]	@ movhi
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
	str	r6, [r3, #76]
	str	r0, [r3, #84]
	str	r0, [r3, #132]
	str	r0, [r3, #180]
	str	r7, [r3, #168]
	str	r2, [r3, #232]
	str	r2, [r3, #272]
	str	r2, [r3, #280]
	str	r2, [r3, #324]
	str	r2, [r3, #328]
	str	r2, [r3, #372]
	str	r2, [r3, #376]
	mov	r2, #101
	str	r2, [r3, #192]
	add	r2, r2, #186
	str	r2, [r3, #196]
	mov	r2, #113
	str	r2, [r3, #240]
	mov	r2, #137
	str	r1, [r3, #216]
	str	r1, [r3, #224]
	str	r1, [r3, #312]
	str	r1, [r3, #320]
	str	r2, [r3, #288]
	mov	r1, #31	@ movhi
	ldr	r2, .L4+20
	str	r2, [r3, #292]
	mov	r2, #135
	str	r0, [r3, #228]
	str	r0, [r3, #276]
	str	lr, [r3, #368]
	mov	r0, #235
	mov	lr, #996	@ movhi
	mov	r5, #20
	mov	r4, #28
	strh	r1, [r3, #236]	@ movhi
	ldr	r1, .L4+24
	str	r2, [r3, #336]
	str	r1, [r3, #244]
	add	r2, r3, #284
	ldr	ip, .L4+28
	ldr	r1, .L4+32
	strh	lr, [r2]	@ movhi
	str	r0, [r3, #340]
	add	r2, r3, #380
	add	r0, r3, #332
	str	r7, [r3, #264]
	str	r6, [r3, #360]
	strh	ip, [r0]	@ movhi
	strh	r1, [r2]	@ movhi
	str	r5, [r3, #220]
	str	r5, [r3, #268]
	str	r4, [r3, #316]
	str	r4, [r3, #364]
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
	.word	454
	.word	342
	.word	27669
	.word	3655
	.size	initLivingRoomSprites, .-initLivingRoomSprites
	.comm	livingRoomSpritesArr,384,4
	.comm	state,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
