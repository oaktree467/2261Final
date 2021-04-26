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
	.file	"livingroomoutro.c"
	.text
	.align	2
	.global	initMarsOutro
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initMarsOutro, %function
initMarsOutro:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #0
	mov	r6, #20
	mov	r5, #31
	mov	r4, #4
	mov	lr, #3
	mov	ip, #1
	mov	r0, #200
	mvn	r1, #99
	ldr	r3, .L4
	str	r6, [r3, #16]
	str	r5, [r3, #20]
	str	r4, [r3, #36]
	str	lr, [r3, #40]
	str	ip, [r3, #44]
	str	r0, [r3, #12]
	str	r1, [r3, #8]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	str	r2, [r3, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	mars
	.size	initMarsOutro, .-initMarsOutro
	.align	2
	.global	initProtagonistOutro
	.syntax unified
	.arm
	.fpu softvfp
	.type	initProtagonistOutro, %function
initProtagonistOutro:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #0
	mov	r1, #3
	ldr	r3, .L7
	str	r2, [r3, #44]
	str	r2, [r3, #28]
	str	r1, [r3, #36]
	bx	lr
.L8:
	.align	2
.L7:
	.word	protag
	.size	initProtagonistOutro, .-initProtagonistOutro
	.align	2
	.global	drawOutroSprites
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawOutroSprites, %function
drawOutroSprites:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L11
	ldr	ip, .L11+4
	ldr	r3, [r1, #36]
	ldr	r2, [r1, #28]
	push	{r4, r5, lr}
	add	r2, r2, r3, lsl #4
	ldr	lr, [ip, #36]
	ldr	r3, [ip, #28]
	add	r4, r1, #8
	ldr	r0, [r1, #44]
	add	r3, r3, lr, lsl #4
	ldm	r4, {r4, lr}
	ldr	r1, .L11+8
	lsl	r2, r2, #3
	ldr	r5, [ip, #44]
	orr	lr, lr, r0, lsl #12
	orr	r2, r2, #2048
	ldr	r0, [ip, #12]
	ldr	ip, [ip, #8]
	strh	r2, [r1, #4]	@ movhi
	ldr	r2, .L11+12
	orr	r0, r0, r5, lsl #12
	lsl	r3, r3, #3
	orr	lr, lr, r2
	orr	r4, r4, #8192
	orr	ip, ip, #8192
	orr	r3, r3, #2048
	orr	r2, r0, r2
	strh	r4, [r1]	@ movhi
	strh	lr, [r1, #2]	@ movhi
	strh	r2, [r1, #10]	@ movhi
	strh	ip, [r1, #8]	@ movhi
	strh	r3, [r1, #12]	@ movhi
	pop	{r4, r5, lr}
	bx	lr
.L12:
	.align	2
.L11:
	.word	protag
	.word	mars
	.word	shadowOAM
	.word	-32768
	.size	drawOutroSprites, .-drawOutroSprites
	.align	2
	.global	waitForKeyPress
	.syntax unified
	.arm
	.fpu softvfp
	.type	waitForKeyPress, %function
waitForKeyPress:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L23
	ldrh	r3, [r3]
	tst	r3, #1
	bxeq	lr
	ldr	r3, .L23+4
	ldrh	r3, [r3]
	push	{r4, r5, r6, r7, r8, lr}
	ands	r4, r3, #1
	beq	.L22
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L22:
	mov	r5, #67108864
	mov	r6, #3
	mov	r7, #1
	ldrh	r1, [r5]
	ldr	r3, .L23+8
	ldr	r2, .L23+12
	and	r3, r3, r1
	strh	r3, [r5]	@ movhi
	mov	r1, #1024
	ldr	r0, .L23+16
	ldr	r3, .L23+20
	str	r7, [r2, #28]
	str	r6, [r2, #36]
	ldr	r8, .L23+24
	mov	lr, pc
	bx	r3
	bl	drawOutroSprites
	mov	r0, r6
	mov	r3, #48
	ldr	r2, .L23+28
	ldr	r1, .L23+32
	mov	lr, pc
	bx	r8
	mov	r0, r6
	mov	r3, #4096
	ldr	r2, .L23+36
	ldr	r1, .L23+40
	mov	lr, pc
	bx	r8
	ldrh	r3, [r5, #10]
	ldr	r0, .L23+44
	strh	r3, [r5, #10]	@ movhi
	ldr	r1, .L23+48
	ldr	r2, .L23+52
	strb	r7, [r0]
	strh	r4, [r1]	@ movhi
	strh	r4, [r2]	@ movhi
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L24:
	.align	2
.L23:
	.word	oldButtons
	.word	buttons
	.word	65279
	.word	protag
	.word	20000
	.word	timerWait
	.word	DMANow
	.word	100679680
	.word	blackbgTiles
	.word	100720640
	.word	blackbgMap
	.word	outroSequenceStage
	.word	vOff
	.word	hOff
	.size	waitForKeyPress, .-waitForKeyPress
	.align	2
	.global	printOutroText
	.syntax unified
	.arm
	.fpu softvfp
	.type	printOutroText, %function
printOutroText:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #1
	mov	r1, #0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, r0
	ldr	r3, .L33
	ldr	r0, .L33+4
	ldrh	r2, [r3, #10]
	strh	r2, [r3, #10]	@ movhi
	strh	ip, [r3, #10]	@ movhi
	strh	r0, [r3, #8]	@ movhi
	ldrh	r2, [r3, #10]
	orr	r2, r2, #192
	strh	r2, [r3, #10]	@ movhi
	ldr	r7, .L33+8
	ldr	r6, .L33+12
	ldr	r3, .L33+16
	str	r1, [r7]
	str	r3, [r6]
	ldrb	r2, [r5]	@ zero_extendqisi2
	cmp	r2, r1
	beq	.L29
	ldr	r4, .L33+20
	mov	fp, r4
	ldr	r10, .L33+24
	ldr	r9, .L33+28
	ldr	r8, .L33+32
.L26:
	sub	r2, r2, #32
	ldr	r2, [r10, r2, lsl #2]
	lsl	r2, r2, #1
	ldrh	ip, [r4, r2]
	lsl	lr, r3, #1
	mov	r2, r8
	mov	r1, fp
	mov	r3, #4096
	mov	r0, #3
	strh	ip, [r4, lr]	@ movhi
	mov	lr, pc
	bx	r9
	ldr	r1, [r7]
	ldrb	r2, [r5, r1]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L29
	ldr	r3, [r6]
	sub	r0, r3, #444
	tst	r0, #31
	addeq	r3, r3, #6
	streq	r3, [r6]
	ldrbeq	r2, [r5, r1]	@ zero_extendqisi2
	b	.L26
.L29:
	ldr	r2, .L33
	ldrh	r3, [r2, #10]
	strh	r3, [r2, #10]	@ movhi
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L34:
	.align	2
.L33:
	.word	67109120
	.word	-11000
	.word	timerI
	.word	timerJ
	.word	418
	.word	messagescreenMap
	.word	letterMap
	.word	DMANow
	.word	100712448
	.size	printOutroText, .-printOutroText
	.align	2
	.global	initMessageOutro
	.syntax unified
	.arm
	.fpu softvfp
	.type	initMessageOutro, %function
initMessageOutro:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L37
	mov	lr, pc
	bx	r3
	mov	r1, #0
	mov	r2, #67108864
	ldr	r3, .L37+4
	strb	r1, [r3]
	ldrh	r3, [r2]
	orr	r3, r3, #256
	strh	r3, [r2]	@ movhi
	ldr	r0, .L37+8
	pop	{r4, lr}
	b	printOutroText
.L38:
	.align	2
.L37:
	.word	clearMessage
	.word	outroSequenceStage
	.word	.LANCHOR0
	.size	initMessageOutro, .-initMessageOutro
	.align	2
	.global	initLivingRoomOutro
	.syntax unified
	.arm
	.fpu softvfp
	.type	initLivingRoomOutro, %function
initLivingRoomOutro:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #1
	push	{r4, r5, r6, lr}
	mov	r6, #20
	mov	r5, #31
	mov	r4, #4
	mov	lr, #200
	mov	r2, #0
	mov	r0, #3
	mvn	ip, #99
	ldr	r3, .L41
	str	r1, [r3, #44]
	ldr	r1, .L41+4
	str	r6, [r3, #16]
	str	r5, [r3, #20]
	str	r4, [r3, #36]
	str	lr, [r3, #12]
	pop	{r4, r5, r6, lr}
	str	ip, [r3, #8]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	str	r2, [r3, #32]
	str	r0, [r3, #40]
	str	r0, [r1, #36]
	str	r2, [r1, #44]
	str	r2, [r1, #28]
	b	initMessageOutro
.L42:
	.align	2
.L41:
	.word	mars
	.word	protag
	.size	initLivingRoomOutro, .-initLivingRoomOutro
	.align	2
	.global	updateOutro
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateOutro, %function
updateOutro:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L75
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L71
	cmp	r3, #1
	beq	.L72
	cmp	r3, #2
	beq	.L73
	cmp	r3, #3
	beq	.L74
	cmp	r3, #4
	bne	.L43
	ldr	r3, .L75+4
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L43
	ldr	r3, .L75+8
	ldrh	r3, [r3]
	tst	r3, #1
	moveq	r2, #1
	ldreq	r3, .L75+12
	streq	r2, [r3]
	b	.L43
.L72:
	ldr	r5, .L75+16
	ldr	r3, [r5]
	tst	r3, #1
	bne	.L52
	ldr	r2, .L75+20
	ldr	r1, [r2, #8]
	cmp	r1, #40
	subgt	r1, r1, #1
	strgt	r1, [r2, #8]
	bgt	.L52
	ldr	r0, [r2, #20]
	ldr	r1, [r2, #12]
	rsb	r0, r0, #120
	cmp	r1, r0
	ble	.L48
.L59:
	sub	r1, r1, #1
	str	r1, [r2, #12]
.L52:
	ldr	r2, .L75+24
	add	r3, r3, #1
	smull	r0, r1, r2, r3
	asr	r2, r3, #31
	rsb	r2, r2, r1, asr #4
	add	r1, r2, r2, lsl #2
	add	r1, r1, r1, lsl #2
	add	r2, r2, r1, lsl #2
	sub	r3, r3, r2
	str	r3, [r5]
.L43:
	pop	{r4, r5, r6, lr}
	bx	lr
.L71:
	pop	{r4, r5, r6, lr}
	b	waitForKeyPress
.L74:
	ldr	r5, .L75+16
	ldr	r3, [r5]
	tst	r3, #1
	bne	.L52
	tst	r3, #15
	ldr	r2, .L75+28
	bne	.L54
	ldr	r1, [r2, #36]
	cmp	r1, #6
	add	r1, r1, #1
	moveq	r1, #4
	str	r1, [r2, #36]
.L54:
	ldr	r1, [r2, #8]
	cmp	r1, #39
	addle	r1, r1, #1
	strle	r1, [r2, #8]
	ble	.L52
	ldr	r1, [r2, #12]
	cmp	r1, #120
	ble	.L58
	ldr	r0, [r2, #28]
	cmp	r0, #1
	movne	r0, #1
	strne	r0, [r2, #28]
	strne	r0, [r2, #44]
	b	.L59
.L73:
	ldr	r3, .L75+4
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L43
	ldr	r3, .L75+8
	ldrh	r2, [r3]
	ands	r5, r2, #1
	bne	.L43
	ldr	r3, .L75+32
	mov	lr, pc
	bx	r3
	ldr	r0, .L75+36
	bl	printOutroText
	ldr	r3, .L75+40
	mov	r2, r5
	ldr	r1, [r3]
	ldr	r0, .L75+44
	ldr	r3, .L75+48
	mov	lr, pc
	bx	r3
	ldr	r3, .L75+52
	mov	r1, #1024
	mov	r0, r5
	mov	lr, pc
	bx	r3
	mov	r2, #3
	ldr	r3, .L75+16
	strb	r2, [r4]
	str	r5, [r3]
	b	.L43
.L48:
	mov	r2, #2
	mov	r1, #1024
	ldr	r0, .L75+56
	ldr	r3, .L75+52
	strb	r2, [r4]
	mov	lr, pc
	bx	r3
	ldr	r3, .L75+32
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	ldrh	r3, [r2]
	orr	r3, r3, #256
	strh	r3, [r2]	@ movhi
	ldr	r0, .L75+60
	bl	printOutroText
	ldr	r3, [r5]
	b	.L52
.L58:
	mov	r1, #4
	strb	r1, [r4]
	str	r1, [r2, #36]
	b	.L52
.L76:
	.align	2
.L75:
	.word	outroSequenceStage
	.word	oldButtons
	.word	buttons
	.word	nextRoomBool
	.word	.LANCHOR1
	.word	protag
	.word	680390859
	.word	mars
	.word	clearMessage
	.word	.LANCHOR0+216
	.word	frontdoor_length
	.word	frontdoor_data
	.word	playSoundB
	.word	timerWait
	.word	20000
	.word	.LANCHOR0+124
	.size	updateOutro, .-updateOutro
	.global	frame
	.comm	liftProtagonistBool,1,1
	.global	ot_3
	.global	ot_2
	.global	ot_1
	.comm	timerJ,4,4
	.comm	timerI,4,4
	.comm	outroSequenceStage,1,1
	.comm	mars,48,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.comm	currSong,4,4
	.comm	state,4,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	ot_1, %object
	.size	ot_1, 122
ot_1:
	.ascii	"Something shifts in your  gut. A warning.An oncomin"
	.ascii	"gepisode.                  You don't...            "
	.ascii	"    feel so good...\000"
	.space	2
	.type	ot_2, %object
	.size	ot_2, 92
ot_2:
	.ascii	"That's all you remember.  ...                      "
	.ascii	" ...                       ... But wait.\000"
	.type	ot_3, %object
	.size	ot_3, 22
ot_3:
	.ascii	"Didn't someone knock?\000"
	.bss
	.align	2
	.set	.LANCHOR1,. + 0
	.type	frame, %object
	.size	frame, 4
frame:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
