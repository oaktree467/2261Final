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
	ldr	r0, .L4
	ldr	r3, .L4+4
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	fp, r0, #116
	str	fp, [r3, #152]
	ldr	fp, .L4+8
	str	fp, [r3]
	mov	fp, #312
	str	fp, [r3, #4]
	mov	fp, #3168	@ movhi
	mov	r7, #189
	strh	fp, [r3, #44]	@ movhi
	mov	fp, #107
	mvn	r4, #64512
	str	r7, [r3, #56]
	ldr	r7, .L4+12
	mov	r2, #1
	mov	r1, #0
	mov	ip, #3
	mov	lr, #12
	mov	r5, #2
	mov	r9, #4
	mov	r10, #8
	str	fp, [r3, #52]
	strh	r7, [r3, #96]	@ movhi
	mov	fp, #70
	mov	r7, #59
	strh	r4, [r3, #148]	@ movhi
	ldr	r4, .L4+16
	str	r0, [r3, #48]
	str	r0, [r3, #100]
	str	fp, [r3, #104]
	str	r7, [r3, #108]
	str	lr, [r3, #24]
	str	r4, [r3, #156]
	str	lr, [r3, #76]
	str	lr, [r3, #132]
	str	lr, [r3, #184]
	str	r1, [r3, #28]
	str	r1, [r3, #32]
	str	r1, [r3, #128]
	str	r1, [r3, #136]
	str	r1, [r3, #188]
	str	r5, [r3, #36]
	str	r5, [r3, #84]
	str	r2, [r3, #40]
	str	r2, [r3, #92]
	str	r2, [r3, #144]
	str	r9, [r3, #80]
	str	ip, [r3, #88]
	str	ip, [r3, #140]
	str	ip, [r3, #192]
	str	r10, [r3, #180]
	str	ip, [r3, #244]
	str	ip, [r3, #296]
	mov	ip, #101
	str	ip, [r3, #208]
	mov	ip, #31	@ movhi
	strh	ip, [r3, #252]	@ movhi
	mov	ip, #113
	str	r1, [r3, #232]
	str	r1, [r3, #240]
	str	r1, [r3, #336]
	str	r1, [r3, #344]
	ldr	r1, .L4+20
	strh	r1, [r3, #200]	@ movhi
	sub	r1, r1, #320
	str	r1, [r3, #212]
	add	r1, r0, #256
	str	r1, [r3, #256]
	ldr	r1, .L4+24
	str	ip, [r3, #260]
	add	ip, ip, #229
	str	r1, [r3, #204]
	str	ip, [r3, #264]
	add	ip, r1, r9
	add	r1, r1, r10
	str	r1, [r3, #360]
	mov	r1, #137
	str	ip, [r3, #308]
	mov	ip, #996	@ movhi
	mov	r8, #20
	mov	r6, #28
	mov	lr, #132
	str	r1, [r3, #312]
	ldr	r1, .L4+28
	str	r1, [r3, #316]
	add	r1, r3, #304
	strh	ip, [r1]	@ movhi
	ldr	ip, .L4+32
	add	r1, r3, #356
	strh	ip, [r1]	@ movhi
	str	lr, [r3, #160]
	str	r2, [r3, #196]
	str	r2, [r3, #248]
	str	r10, [r3, #284]
	str	r2, [r3, #292]
	str	r2, [r3, #300]
	str	r2, [r3, #348]
	str	r2, [r3, #352]
	str	r9, [r3, #388]
	str	r8, [r3, #236]
	str	r8, [r3, #288]
	str	r6, [r3, #340]
	str	r6, [r3, #392]
	str	r2, [r3, #400]
	str	r2, [r3, #404]
	mov	r2, #135
	str	r2, [r3, #364]
	mov	r2, #235
	ldr	ip, .L4+36
	add	r0, r0, #360
	add	r1, r3, #408
	str	r5, [r3, #396]
	str	r0, [r3, #412]
	str	r2, [r3, #368]
	strh	ip, [r1]	@ movhi
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	.LANCHOR0
	.word	livingRoomSpritesArr
	.word	355
	.word	32608
	.word	285
	.word	607
	.word	.LANCHOR1
	.word	454
	.word	27669
	.word	3655
	.size	initLivingRoomSprites, .-initLivingRoomSprites
	.align	2
	.global	loadLivingRoom
	.syntax unified
	.arm
	.fpu softvfp
	.type	loadLivingRoom, %function
loadLivingRoom:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L12
	ldr	r2, [r3]
	mov	r3, #512
	cmp	r2, #9
	cmpne	r2, #4
	ldr	r0, .L12+4
	push	{r4, lr}
	ldr	ip, .L12+8
	ldr	lr, .L12+12
	ldr	r1, .L12+16
	str	r3, [r0]
	ldr	r0, .L12+20
	str	r3, [lr]
	str	r3, [ip]
	str	r0, [r1]
	beq	.L7
	cmp	r2, #5
	beq	.L11
	mov	r1, #140
	mov	r2, #0
	mov	lr, #30
	mov	r0, #40
	ldr	r3, .L12+24
	ldr	ip, .L12+28
	str	r1, [r3]
	ldr	r1, .L12+32
	str	lr, [r3, #4]
	str	r2, [r3, #28]
	strh	r2, [ip]	@ movhi
	strh	r0, [r1]	@ movhi
	b	.L9
.L7:
	ldr	r2, .L12+36
	ldr	r3, .L12+40
	ldrh	r0, [r2]
	ldr	r1, .L12+28
	ldrh	r2, [r3]
	ldr	r3, .L12+32
	strh	r0, [r1]	@ movhi
	strh	r2, [r3]	@ movhi
.L9:
	bl	initLivingRoomSprites
	mov	lr, #8
	ldr	ip, .L12+44
	ldr	r1, .L12+48
	ldr	r0, .L12+52
	ldr	r3, .L12+56
	ldr	r2, .L12+60
	str	lr, [ip]
	str	r0, [r1]
	str	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L11:
	mov	lr, #272
	ldr	r1, .L12+28
	ldr	r3, .L12+24
	ldr	ip, .L12+64
	ldr	r2, .L12+32
	strh	lr, [r1]	@ movhi
	ldr	r1, .L12+68
	sub	r0, r0, #28
	str	ip, [r3]
	str	r0, [r3, #4]
	strh	r1, [r2]	@ movhi
	b	.L9
.L13:
	.align	2
.L12:
	.word	priorState
	.word	visMapWidth
	.word	totalMapHeight
	.word	totalMapWidth
	.word	visMapHeight
	.word	478
	.word	protag
	.word	hOff
	.word	vOff
	.word	priorHoff
	.word	priorVoff
	.word	currSpriteArrCount
	.word	currSpriteArr
	.word	livingRoomSpritesArr
	.word	currCollisionMap
	.word	livingroomcollisionmapBitmap
	.word	370
	.word	318
	.size	loadLivingRoom, .-loadLivingRoom
	.global	TV
	.global	computerScreen
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
	.type	poster, %object
	.size	poster, 101
poster:
	.ascii	"'2001: A Space Odyssey'   Suspended animation, the "
	.ascii	" question of sentience...  this movie haunts you.\000"
	.space	3
	.type	TV, %object
	.size	TV, 72
TV:
	.ascii	"Some show about being     buried alive... you can't"
	.ascii	" bear to watch this.\000"
	.bss
	.align	2
	.set	.LANCHOR1,. + 0
	.type	painting, %object
	.size	painting, 1
painting:
	.space	1
	.space	3
	.type	bookcase, %object
	.size	bookcase, 1
bookcase:
	.space	1
	.space	3
	.type	computerScreen, %object
	.size	computerScreen, 1
computerScreen:
	.space	1
	.ident	"GCC: (devkitARM release 53) 9.1.0"
