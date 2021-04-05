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
	str	ip, [r3, #76]
	str	ip, [r3, #132]
	str	ip, [r3, #184]
	ldr	ip, .L4+4
	str	ip, [r3]
	ldr	ip, .L4+8
	strh	ip, [r3, #96]	@ movhi
	mov	ip, #59
	str	r8, [r3, #56]
	mov	r8, #70
	str	ip, [r3, #108]
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
	str	r8, [r3, #104]
	mov	r8, #132
	strh	ip, [r3, #148]	@ movhi
	ldr	ip, .L4+12
	str	ip, [r3, #156]
	ldr	ip, .L4+16
	str	fp, [r3, #4]
	strh	r10, [r3, #44]	@ movhi
	str	r9, [r3, #52]
	str	r8, [r3, #160]
	str	r1, [r3, #28]
	str	r1, [r3, #32]
	str	r1, [r3, #128]
	str	r1, [r3, #136]
	str	r1, [r3, #188]
	str	lr, [r3, #36]
	str	lr, [r3, #84]
	str	r2, [r3, #40]
	str	r2, [r3, #92]
	str	r2, [r3, #144]
	str	ip, [r3, #48]
	str	ip, [r3, #100]
	str	r6, [r3, #80]
	str	r0, [r3, #88]
	str	r0, [r3, #140]
	str	r0, [r3, #192]
	str	r7, [r3, #180]
	str	r2, [r3, #196]
	str	r2, [r3, #248]
	str	r2, [r3, #292]
	str	r2, [r3, #300]
	str	r2, [r3, #348]
	str	r2, [r3, #352]
	str	r2, [r3, #400]
	str	r2, [r3, #404]
	ldr	r2, .L4+20
	strh	r2, [r3, #200]	@ movhi
	sub	r2, r2, #320
	str	r2, [r3, #212]
	mov	r2, #113
	str	r1, [r3, #232]
	str	r1, [r3, #240]
	str	r1, [r3, #336]
	str	r1, [r3, #344]
	str	r2, [r3, #260]
	mov	r1, #101
	mov	r2, #137
	str	r1, [r3, #208]
	str	r2, [r3, #312]
	mov	r1, #31	@ movhi
	ldr	r2, .L4+24
	str	r2, [r3, #316]
	mov	r2, #135
	str	r0, [r3, #244]
	str	r0, [r3, #296]
	str	lr, [r3, #396]
	mov	r0, #235
	mov	lr, #996	@ movhi
	mov	r5, #20
	mov	r4, #28
	strh	r1, [r3, #252]	@ movhi
	ldr	r1, .L4+28
	str	r2, [r3, #364]
	str	r1, [r3, #264]
	add	r2, r3, #304
	ldr	ip, .L4+32
	ldr	r1, .L4+36
	strh	lr, [r2]	@ movhi
	str	r0, [r3, #368]
	add	r2, r3, #408
	add	r0, r3, #356
	str	r7, [r3, #284]
	str	r6, [r3, #388]
	str	r5, [r3, #236]
	str	r5, [r3, #288]
	str	r4, [r3, #340]
	strh	ip, [r0]	@ movhi
	str	r4, [r3, #392]
	strh	r1, [r2]	@ movhi
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	livingRoomSpritesArr
	.word	355
	.word	32608
	.word	285
	.word	.LANCHOR0
	.word	607
	.word	454
	.word	342
	.word	27669
	.word	3655
	.size	initLivingRoomSprites, .-initLivingRoomSprites
	.global	TV
	.global	bookcase
	.global	poster
	.global	painting
	.global	tapestry
	.global	record
	.comm	livingRoomSpritesArr,416,4
	.comm	state,4,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	record, %object
	.size	record, 105
record:
	.ascii	"A commemorative 50th       anniversary gold record "
	.ascii	"of MMMBop by Hansen. Just a   little touch you adde"
	.ascii	"d.\000"
	.space	3
	.type	TV, %object
	.size	TV, 74
TV:
	.ascii	"Some show about being buried prematurely... you can"
	.ascii	"'t bear to watch this.\000"
	.bss
	.align	2
	.type	bookcase, %object
	.size	bookcase, 1
bookcase:
	.space	1
	.space	3
	.type	poster, %object
	.size	poster, 1
poster:
	.space	1
	.space	3
	.type	painting, %object
	.size	painting, 1
painting:
	.space	1
	.space	3
	.type	tapestry, %object
	.size	tapestry, 1
tapestry:
	.space	1
	.ident	"GCC: (devkitARM release 53) 9.1.0"
