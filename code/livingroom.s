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
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mvn	r5, #64512
	ldr	r3, .L4
	ldr	r1, .L4+4
	mov	r10, #360
	mov	r8, #107
	strh	r5, [r3, #148]	@ movhi
	add	r5, r1, #192
	str	r5, [r3, #152]
	mov	r5, #132
	add	fp, r1, #72
	str	fp, [r3, #100]
	ldr	fp, .L4+8
	str	r8, [r3, #52]
	stm	r3, {r10, fp}
	ldr	r8, .L4+12
	ldr	r10, .L4+16
	mov	r2, #1
	mov	r0, #0
	mov	lr, #3
	mov	ip, #8
	mov	r4, #12
	str	r5, [r3, #160]
	mov	r6, #2
	mov	r5, #4
	strh	r10, [r3, #44]	@ movhi
	strh	r8, [r3, #96]	@ movhi
	mov	fp, #189
	mov	r10, #59
	mov	r8, #70
	str	r1, [r3, #48]
	str	fp, [r3, #56]
	str	r10, [r3, #108]
	str	r8, [r3, #104]
	str	r4, [r3, #24]
	str	r4, [r3, #76]
	str	r4, [r3, #132]
	str	r4, [r3, #184]
	str	r0, [r3, #28]
	str	r0, [r3, #32]
	str	r0, [r3, #128]
	str	r0, [r3, #136]
	str	r0, [r3, #188]
	str	r2, [r3, #36]
	str	r2, [r3, #40]
	str	r2, [r3, #92]
	str	r2, [r3, #144]
	str	r5, [r3, #80]
	str	r6, [r3, #84]
	str	lr, [r3, #88]
	str	lr, [r3, #140]
	str	lr, [r3, #192]
	str	ip, [r3, #180]
	str	lr, [r3, #244]
	str	lr, [r3, #296]
	mov	lr, #101
	str	lr, [r3, #208]
	mov	lr, #31	@ movhi
	strh	lr, [r3, #252]	@ movhi
	mov	lr, #113
	str	lr, [r3, #260]
	mov	lr, #137
	str	lr, [r3, #312]
	mov	lr, #996	@ movhi
	mov	r9, #20
	mov	r7, #28
	str	r0, [r3, #232]
	str	r0, [r3, #240]
	str	r0, [r3, #336]
	str	r0, [r3, #344]
	ldr	r0, .L4+20
	strh	r0, [r3, #200]	@ movhi
	add	r0, r1, #316
	str	r0, [r3, #204]
	ldr	r0, .L4+24
	str	r0, [r3, #212]
	add	r0, r1, #392
	str	r0, [r3, #256]
	ldr	r0, .L4+28
	str	r0, [r3, #264]
	add	r0, r1, #492
	str	r0, [r3, #308]
	ldr	r0, .L4+32
	str	r0, [r3, #316]
	ldr	r0, .L4+36
	str	r0, [r3, #360]
	add	r0, r3, #304
	strh	lr, [r0]	@ movhi
	ldr	r4, .L4+40
	ldr	lr, .L4+44
	add	r0, r3, #356
	add	r1, r1, #584
	str	r4, [r3, #156]
	str	r2, [r3, #196]
	str	r2, [r3, #248]
	str	r2, [r3, #292]
	str	r2, [r3, #300]
	str	r2, [r3, #348]
	str	r2, [r3, #352]
	str	r5, [r3, #388]
	str	r9, [r3, #236]
	str	r9, [r3, #288]
	str	r7, [r3, #340]
	str	ip, [r3, #284]
	strh	lr, [r0]	@ movhi
	str	r7, [r3, #392]
	str	r1, [r3, #412]
	mov	r1, #235
	str	r1, [r3, #368]
	ldr	r1, .L4+48
	str	r2, [r3, #400]
	str	r2, [r3, #404]
	str	r2, [r1, #40]
	str	r2, [r1, #92]
	str	r2, [r1, #144]
	str	r2, [r1, #196]
	mov	r2, #27
	str	r2, [r1, #28]
	mov	r2, #26
	str	r2, [r1, #80]
	mov	r2, #25
	mov	r0, #135
	str	r2, [r1, #132]
	mov	r2, #24
	ldr	lr, .L4+52
	str	r0, [r3, #364]
	str	r6, [r3, #396]
	add	r3, r3, #408
	strh	lr, [r3]	@ movhi
	ldr	r3, .L4+56
	add	r0, r0, #188
	str	ip, [r1, #24]
	str	ip, [r1, #76]
	str	ip, [r1, #128]
	str	ip, [r1, #180]
	str	r2, [r1, #184]
	str	r0, [r1, #4]
	str	r0, [r1, #56]
	str	r0, [r1, #108]
	str	r0, [r1, #160]
	str	r3, [r1]
	str	r3, [r1, #52]
	str	r3, [r1, #104]
	str	r3, [r1, #156]
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	livingRoomSpritesArr
	.word	.LANCHOR0
	.word	322
	.word	32608
	.word	31936
	.word	607
	.word	287
	.word	342
	.word	454
	.word	.LANCHOR1
	.word	285
	.word	27669
	.word	phoneRingSpritesArr
	.word	3655
	.word	350
	.size	initLivingRoomSprites, .-initLivingRoomSprites
	.align	2
	.global	ringSettings
	.syntax unified
	.arm
	.fpu softvfp
	.type	ringSettings, %function
ringSettings:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L9
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L7
	mov	r1, #512
	ldr	r2, .L9+4
	ldr	r0, .L9+8
	strh	r1, [r2, #72]	@ movhi
	strh	r1, [r2, #80]	@ movhi
	strh	r1, [r2, #88]	@ movhi
	strh	r1, [r2, #96]	@ movhi
	strh	r3, [r0, #10]	@ movhi
	bx	lr
.L7:
	mov	r0, #2
	ldr	r3, .L9+8
	ldr	r1, .L9+12
	ldrh	r2, [r3, #10]
	strh	r2, [r3, #10]	@ movhi
	strh	r0, [r3, #10]	@ movhi
	strh	r1, [r3, #8]	@ movhi
	ldrh	r2, [r3, #10]
	orr	r2, r2, #192
	strh	r2, [r3, #10]	@ movhi
	bx	lr
.L10:
	.align	2
.L9:
	.word	phoneRinging
	.word	shadowOAM
	.word	67109120
	.word	-20000
	.size	ringSettings, .-ringSettings
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
	ldr	r3, .L17
	ldr	r2, [r3]
	bic	r3, r2, #8
	cmp	r3, #1
	cmpne	r2, #4
	mov	r3, #512
	ldr	r0, .L17+4
	push	{r4, r5, r6, lr}
	ldr	ip, .L17+8
	ldr	lr, .L17+12
	ldr	r1, .L17+16
	str	r3, [r0]
	ldr	r0, .L17+20
	str	r3, [lr]
	str	r3, [ip]
	str	r0, [r1]
	bne	.L16
	ldr	r2, .L17+24
	ldr	r3, .L17+28
	ldrh	r0, [r2]
	ldr	r1, .L17+32
	ldrh	r2, [r3]
	ldr	r3, .L17+36
	strh	r0, [r1]	@ movhi
	strh	r2, [r3]	@ movhi
.L14:
	bl	initLivingRoomSprites
	mov	r0, #8
	mov	r2, #0
	mov	lr, #1
	ldr	r1, .L17+40
	ldr	r3, .L17+44
	ldr	ip, .L17+48
	str	r0, [r1]
	str	r2, [r3]
	ldr	r1, .L17+52
	ldr	r0, .L17+56
	ldr	r3, .L17+60
	ldr	r2, .L17+64
	str	lr, [ip]
	pop	{r4, r5, r6, lr}
	str	r0, [r1]
	str	r2, [r3]
	b	ringSettings
.L16:
	cmp	r2, #5
	bne	.L13
	mov	lr, #272
	ldr	r1, .L17+32
	ldr	r3, .L17+68
	ldr	ip, .L17+72
	ldr	r2, .L17+36
	strh	lr, [r1]	@ movhi
	ldr	r1, .L17+76
	sub	r0, r0, #28
	str	ip, [r3]
	str	r0, [r3, #4]
	strh	r1, [r2]	@ movhi
	b	.L14
.L13:
	mov	r1, #30
	mov	r2, #0
	mov	ip, #140
	mov	r0, #40
	ldr	r3, .L17+68
	ldr	r5, .L17+32
	ldr	r4, .L17+36
	str	r1, [r3, #4]
	ldr	r1, .L17+80
	str	r2, [r3, #28]
	str	ip, [r3]
	strh	r2, [r5]	@ movhi
	strh	r0, [r4]	@ movhi
	mov	lr, pc
	bx	r1
	mov	r3, #67108864
	ldrh	r2, [r5]
	strh	r2, [r3, #20]	@ movhi
	ldrh	r2, [r4]
	strh	r2, [r3, #22]	@ movhi
	b	.L14
.L18:
	.align	2
.L17:
	.word	priorState
	.word	visMapWidth
	.word	totalMapHeight
	.word	totalMapWidth
	.word	visMapHeight
	.word	478
	.word	priorHoff
	.word	priorVoff
	.word	hOff
	.word	vOff
	.word	currSpriteArrCount
	.word	currRing
	.word	phoneMessageIndex
	.word	currSpriteArr
	.word	livingRoomSpritesArr
	.word	currCollisionMap
	.word	livingroomcollisionmapBitmap
	.word	protag
	.word	370
	.word	318
	.word	waitForVBlank
	.size	loadLivingRoom, .-loadLivingRoom
	.align	2
	.global	updateRing
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateRing, %function
updateRing:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L23
	ldr	r2, .L23+4
	ldr	r3, .L23+8
	str	lr, [sp, #-4]!
	ldrh	ip, [r2]
	ldrh	lr, [r1]
	add	r0, r3, #208
.L20:
	ldr	r1, [r3, #4]
	ldr	r2, [r3]
	sub	r1, r1, lr
	sub	r2, r2, ip
	str	r1, [r3, #12]
	str	r2, [r3, #8]
	add	r3, r3, #52
	cmp	r3, r0
	bne	.L20
	ldr	lr, [sp], #4
	bx	lr
.L24:
	.align	2
.L23:
	.word	hOff
	.word	vOff
	.word	phoneRingSpritesArr
	.size	updateRing, .-updateRing
	.align	2
	.global	drawRing
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawRing, %function
drawRing:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, #512
	ldr	r3, .L31
	ldr	r1, .L31+4
	add	lr, r3, #208
.L28:
	ldr	r2, [r3, #40]
	cmp	r2, #1
	strheq	r4, [r1, #72]	@ movhi
	beq	.L27
	add	r2, r3, #24
	ldm	r2, {r2, ip}
	ldr	r0, [r3, #8]
	add	r2, r2, ip, lsl #4
	lsl	r2, r2, #1
	ldr	ip, [r3, #12]
	orr	r2, r2, #2048
	orr	r0, r0, #24576
	strh	r2, [r1, #76]	@ movhi
	strh	r0, [r1, #72]	@ movhi
	strh	ip, [r1, #74]	@ movhi
.L27:
	add	r3, r3, #52
	cmp	r3, lr
	add	r1, r1, #8
	bne	.L28
	pop	{r4, lr}
	bx	lr
.L32:
	.align	2
.L31:
	.word	phoneRingSpritesArr
	.word	shadowOAM
	.size	drawRing, .-drawRing
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"\"This is an automated message from POE CRYONICS.\""
	.ascii	"\000"
	.align	2
.LC1:
	.ascii	"\"Our records indicate you have not yet uploaded yo"
	.ascii	"ur life insurance documents.\"\000"
	.align	2
.LC2:
	.ascii	"\"Please upload your documents today, to be ready f"
	.ascii	"or your appointment next week.\"\000"
	.align	2
.LC3:
	.ascii	"Ah, that's right... you need to upload your documen"
	.ascii	"ts, which are in the SAFE.\000"
	.text
	.align	2
	.global	answerPhone
	.syntax unified
	.arm
	.fpu softvfp
	.type	answerPhone, %function
answerPhone:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 296
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	sub	sp, sp, #296
	mov	ip, sp
	ldr	lr, .L46
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [lr]
	ldr	r4, .L46+4
	mov	r2, #80
	ldr	r1, .L46+8
	add	r0, sp, #132
	strh	r3, [ip]	@ movhi
	mov	lr, pc
	bx	r4
	mov	r2, #82
	ldr	r1, .L46+12
	add	r0, sp, #212
	mov	lr, pc
	bx	r4
	mov	r2, #78
	ldr	r1, .L46+16
	add	r0, sp, #52
	mov	lr, pc
	bx	r4
	ldr	r3, .L46+20
	ldrh	r3, [r3]
	ldr	r2, .L46+24
	tst	r3, #1
	ldr	r3, [r2]
	beq	.L34
	ldr	r1, .L46+28
	ldrh	r1, [r1]
	tst	r1, #1
	addeq	r3, r3, #1
	streq	r3, [r2]
.L34:
	sub	r3, r3, #1
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L35
.L37:
	.word	.L40
	.word	.L39
	.word	.L38
	.word	.L36
.L36:
	ldr	r2, .L46+32
	add	r1, sp, #52
	ldr	r3, .L46+36
	str	r1, [r2, #48]
	mov	lr, pc
	bx	r3
.L33:
	add	sp, sp, #296
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L40:
	ldr	r2, .L46+32
	ldr	r3, .L46+36
	str	sp, [r2, #48]
	mov	lr, pc
	bx	r3
	add	sp, sp, #296
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L39:
	ldr	r2, .L46+32
	add	r1, sp, #132
	ldr	r3, .L46+36
	str	r1, [r2, #48]
	mov	lr, pc
	bx	r3
	add	sp, sp, #296
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L38:
	ldr	r2, .L46+32
	add	r1, sp, #212
	ldr	r3, .L46+36
	str	r1, [r2, #48]
	mov	lr, pc
	bx	r3
	add	sp, sp, #296
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L35:
	mov	r0, #0
	mov	lr, #1
	mov	r3, #67108864
	mov	r2, #4608
	ldr	r1, .L46+40
	ldr	ip, .L46+44
	strb	r0, [r1]
	ldr	r1, .L46+32
	ldr	r0, .L46+48
	strb	lr, [ip]
	str	r0, [r1, #48]
	strh	r2, [r3]	@ movhi
	b	.L33
.L47:
	.align	2
.L46:
	.word	.LC0
	.word	memcpy
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	oldButtons
	.word	phoneMessageIndex
	.word	buttons
	.word	livingRoomSpritesArr
	.word	printText
	.word	phoneAnswerBool
	.word	enableKeyFind
	.word	.LANCHOR0
	.size	answerPhone, .-answerPhone
	.align	2
	.global	chapterTwoIntro
	.syntax unified
	.arm
	.fpu softvfp
	.type	chapterTwoIntro, %function
chapterTwoIntro:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 4096
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	sub	sp, sp, #4096
	sub	sp, sp, #4
	mov	r1, #256
	mov	r0, #0
	ldr	r3, .L54
	mov	lr, pc
	bx	r3
	mov	r0, sp
	mov	r2, #2048
	ldr	r1, .L54+4
	ldr	r3, .L54+8
	mov	lr, pc
	bx	r3
	mov	r4, #0
	ldr	r6, .L54+12
	ldr	r7, .L54+16
	ldr	r9, .L54+20
	ldr	r8, .L54+24
	sub	r5, sp, #2
	b	.L50
.L49:
	cmp	r4, #700
	beq	.L53
.L50:
	ldrh	r1, [r6, #10]
	tst	r4, #31
	strh	r1, [r5, #2]!	@ movhi
	add	r4, r4, #1
	bne	.L49
	mov	r3, r9
	mov	r2, r8
	mov	r1, sp
	mov	r0, #3
	mov	lr, pc
	bx	r7
	cmp	r4, #700
	bne	.L50
.L53:
	mov	r2, #67108864
	mov	r1, #4608
	mov	r3, #1280
	strh	r1, [r2]	@ movhi
	mov	r0, #3
	mov	r2, #100663296
	ldr	r1, .L54+28
	mov	lr, pc
	bx	r7
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L54+24
	ldr	r1, .L54+32
	mov	lr, pc
	bx	r7
	add	sp, sp, #4096
	add	sp, sp, #4
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L55:
	.align	2
.L54:
	.word	timerWait
	.word	chapter2bgMap
	.word	memcpy
	.word	chapter2bgMap+1392
	.word	DMANow
	.word	1073745920
	.word	100712448
	.word	messagescreenTiles
	.word	messagescreenMap
	.size	chapterTwoIntro, .-chapterTwoIntro
	.global	telephone
	.global	TV
	.global	computerScreen
	.global	bookcase
	.global	poster
	.global	painting
	.global	tapestry
	.global	record
	.comm	phoneMessageIndex,4,4
	.comm	currRing,4,4
	.comm	phoneRingSpritesArr,208,4
	.comm	livingRoomSpritesArr,416,4
	.comm	state,4,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	telephone, %object
	.size	telephone, 71
telephone:
	.ascii	"You might be the only person you know who doesn't h"
	.ascii	"ave a mobile phone.\000"
	.space	1
	.type	record, %object
	.size	record, 118
record:
	.ascii	"A commemorative 50th anniversary gold record of 'To"
	.ascii	"xic' by Britney Spears. Just a little touch you add"
	.ascii	"ed to the room.\000"
	.space	2
	.type	tapestry, %object
	.size	tapestry, 123
tapestry:
	.ascii	"You never really understood this tapestry, but when"
	.ascii	" your aunt passed and left you the house, you kept "
	.ascii	"it up in her memory.\000"
	.space	1
	.type	painting, %object
	.size	painting, 76
painting:
	.ascii	"A painting of an unidentified woman. You wonder how"
	.ascii	" much it could be worth?\000"
	.type	poster, %object
	.size	poster, 98
poster:
	.ascii	"'2001: A Space Odyssey.' Suspended animation, the q"
	.ascii	"uestion of sentience... this movie haunts you.\000"
	.space	2
	.type	bookcase, %object
	.size	bookcase, 89
bookcase:
	.ascii	"Multiple copies of every Jane Austen text. Do you t"
	.ascii	"hink your aunt had a favorite author?\000"
	.space	3
	.type	TV, %object
	.size	TV, 68
TV:
	.ascii	"Some show about being buried alive... you can't bea"
	.ascii	"r to watch this.\000"
	.bss
	.align	2
	.set	.LANCHOR1,. + 0
	.type	computerScreen, %object
	.size	computerScreen, 1
computerScreen:
	.space	1
	.ident	"GCC: (devkitARM release 53) 9.1.0"
