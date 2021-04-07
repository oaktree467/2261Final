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
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r9, #3168
	ldr	r3, .L4
	strh	r9, [r3, #44]	@ movhi
	mov	r9, #107
	str	r9, [r3, #52]
	mov	r9, #189
	str	r9, [r3, #56]
	mov	r9, #70
	str	r9, [r3, #104]
	mov	r9, #59
	mov	r2, #1
	mov	r1, #0
	mov	r0, #3
	mov	ip, #12
	mov	r6, #2
	mov	r7, #4
	str	r9, [r3, #108]
	mov	r10, #312
	mvn	r9, #64512
	ldr	lr, .L4+4
	sub	sp, sp, #12
	str	lr, [r3, #48]
	str	lr, [r3, #100]
	add	fp, lr, #116
	add	lr, lr, #256
	str	lr, [sp, #4]
	ldr	lr, .L4+8
	str	fp, [r3, #152]
	strh	lr, [r3, #96]	@ movhi
	ldr	fp, .L4+12
	ldr	lr, .L4+16
	str	ip, [r3, #24]
	str	lr, [r3, #156]
	str	ip, [r3, #76]
	str	ip, [r3, #132]
	str	ip, [r3, #184]
	str	r1, [r3, #28]
	str	r1, [r3, #32]
	str	r1, [r3, #128]
	str	r1, [r3, #136]
	str	r1, [r3, #188]
	str	r6, [r3, #36]
	str	r6, [r3, #84]
	str	r0, [r3, #88]
	str	r0, [r3, #140]
	str	fp, [r3]
	str	r10, [r3, #4]
	strh	r9, [r3, #148]	@ movhi
	str	r2, [r3, #40]
	str	r2, [r3, #92]
	str	r2, [r3, #144]
	str	r7, [r3, #80]
	str	r0, [r3, #192]
	str	r1, [r3, #232]
	str	r1, [r3, #240]
	str	r1, [r3, #336]
	str	r1, [r3, #344]
	ldr	r1, .L4+20
	strh	r1, [r3, #200]	@ movhi
	mov	r1, #101
	str	r1, [r3, #208]
	add	r1, r1, #186
	str	r1, [r3, #212]
	mov	r1, #113
	str	r1, [r3, #260]
	mov	r1, #137
	mov	ip, #132
	str	r1, [r3, #312]
	ldr	r1, .L4+24
	str	r0, [r3, #244]
	str	r0, [r3, #296]
	mov	r0, #31	@ movhi
	str	ip, [r3, #160]
	str	r1, [r3, #316]
	mov	ip, #235
	mov	r1, #135
	mov	r8, #8
	mov	r5, #20
	mov	r4, #28
	str	r6, [r3, #396]
	mov	r6, #996	@ movhi
	strh	r0, [r3, #252]	@ movhi
	ldr	lr, .L4+28
	ldr	r0, .L4+32
	str	r1, [r3, #364]
	str	ip, [r3, #368]
	add	r1, r3, #304
	add	ip, r3, #356
	str	r0, [r3, #264]
	strh	r6, [r1]	@ movhi
	strh	lr, [ip]	@ movhi
	str	r8, [r3, #180]
	str	r2, [r3, #196]
	str	r2, [r3, #248]
	str	r8, [r3, #284]
	str	r2, [r3, #292]
	str	r2, [r3, #300]
	str	r2, [r3, #348]
	str	r2, [r3, #352]
	str	r7, [r3, #388]
	str	r2, [r3, #400]
	ldr	r0, .L4+36
	str	r5, [r3, #236]
	str	r5, [r3, #288]
	str	r4, [r3, #340]
	ldr	lr, [sp, #4]
	add	r1, r3, #408
	str	r4, [r3, #392]
	str	r2, [r3, #404]
	str	lr, [r3, #412]
	strh	r0, [r1]	@ movhi
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	livingRoomSpritesArr
	.word	.LANCHOR0
	.word	32608
	.word	355
	.word	285
	.word	607
	.word	454
	.word	27669
	.word	342
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
	.size	record, 114
record:
	.ascii	"A commemorative 50th      anniversary gold record o"
	.ascii	"f'MMMBop' by Hansen. Just alittle touch you added t"
	.ascii	"o the room.\000"
	.space	2
	.type	tapestry, %object
	.size	tapestry, 138
tapestry:
	.ascii	"You never really          understood this tapestry,"
	.ascii	" but when your aunt passed and left you the house, "
	.ascii	"  you kept it up in her     memory.\000"
	.space	2
	.type	TV, %object
	.size	TV, 72
TV:
	.ascii	"Some show about being     buried alive... you can't"
	.ascii	" bear to watch this.\000"
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
	.ident	"GCC: (devkitARM release 53) 9.1.0"
