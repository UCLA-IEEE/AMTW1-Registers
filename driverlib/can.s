	.syntax unified
	.cpu cortex-m4
	.eabi_attribute 27, 1
	.eabi_attribute 28, 1
	.fpu fpv4-sp-d16
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 4
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.thumb
	.file	"can.c"
	.section	.text._CANIntNumberGet,"ax",%progbits
	.align	1
	.thumb
	.thumb_func
	.type	_CANIntNumberGet, %function
_CANIntNumberGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L10
	ldr	r3, .L10+4
	ldr	r1, [r2]
	ands	r3, r3, r1
	ldr	r1, .L10+8
	cmp	r3, r1
	bne	.L2
	ldr	r3, .L10+12
	cmp	r0, r3
	beq	.L4
	add	r3, r3, #4096
	cmp	r0, r3
	ite	eq
	moveq	r0, #56
	movne	r0, #0
	bx	lr
.L2:
	ldr	r2, [r2]
	ldr	r3, .L10+4
	ands	r3, r3, r2
	ldr	r2, .L10+16
	cmp	r3, r2
	bne	.L6
	ldr	r3, .L10+12
	cmp	r0, r3
	beq	.L7
	add	r3, r3, #4096
	cmp	r0, r3
	ite	eq
	moveq	r0, #55
	movne	r0, #0
	bx	lr
.L4:
	movs	r0, #55
	bx	lr
.L6:
	movs	r0, #0
	bx	lr
.L7:
	movs	r0, #54
	bx	lr
.L11:
	.align	2
.L10:
	.word	1074782208
	.word	1895759872
	.word	268763136
	.word	1074003968
	.word	269090816
	.size	_CANIntNumberGet, .-_CANIntNumberGet
	.section	.text.CANInit,"ax",%progbits
	.align	1
	.global	CANInit
	.thumb
	.thumb_func
	.type	CANInit, %function
CANInit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r3, #1
	str	r3, [r0]
.L13:
	ldr	r3, [r0, #32]
	ands	r3, r3, #32768
	add	r2, r0, #32
	bne	.L13
	movs	r1, #176
	str	r1, [r0, #36]
	str	r3, [r0, #52]
	str	r3, [r0, #56]
	movs	r3, #1
.L14:
	ldr	r1, [r2]
	lsls	r1, r1, #16
	bmi	.L14
	str	r3, [r2]
	adds	r3, r3, #1
	cmp	r3, #33
	bne	.L14
	movs	r3, #12
	str	r3, [r0, #36]
	movs	r3, #1
.L16:
	ldr	r1, [r2]
	lsls	r1, r1, #16
	bmi	.L16
	str	r3, [r2]
	adds	r3, r3, #1
	cmp	r3, #33
	bne	.L16
	ldr	r3, [r0, #4]
	bx	lr
	.size	CANInit, .-CANInit
	.section	.text.CANEnable,"ax",%progbits
	.align	1
	.global	CANEnable
	.thumb
	.thumb_func
	.type	CANEnable, %function
CANEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0]
	bic	r3, r3, #1
	str	r3, [r0]
	bx	lr
	.size	CANEnable, .-CANEnable
	.section	.text.CANDisable,"ax",%progbits
	.align	1
	.global	CANDisable
	.thumb
	.thumb_func
	.type	CANDisable, %function
CANDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0]
	orr	r3, r3, #1
	str	r3, [r0]
	bx	lr
	.size	CANDisable, .-CANDisable
	.section	.text.CANBitTimingGet,"ax",%progbits
	.align	1
	.global	CANBitTimingGet
	.thumb
	.thumb_func
	.type	CANBitTimingGet, %function
CANBitTimingGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #12]
	ubfx	r2, r3, #12, #3
	adds	r2, r2, #1
	str	r2, [r1, #4]
	ubfx	r2, r3, #8, #4
	adds	r2, r2, #1
	str	r2, [r1]
	ubfx	r2, r3, #6, #2
	adds	r2, r2, #1
	str	r2, [r1, #8]
	ldr	r2, [r0, #24]
	and	r3, r3, #63
	and	r2, r2, #15
	orr	r3, r3, r2, lsl #6
	adds	r3, r3, #1
	str	r3, [r1, #12]
	bx	lr
	.size	CANBitTimingGet, .-CANBitTimingGet
	.section	.text.CANBitRateSet,"ax",%progbits
	.align	1
	.global	CANBitRateSet
	.thumb
	.thumb_func
	.type	CANBitRateSet, %function
CANBitRateSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	udiv	r3, r1, r2
	udiv	r4, r1, r3
	cmp	r4, r2
	bls	.L28
.L34:
	adds	r3, r3, #1
.L28:
	cmp	r3, #19456
	bhi	.L35
	movs	r2, #19
.L31:
	udiv	r4, r3, r2
	mul	r5, r2, r4
	cmp	r5, r3
	bne	.L29
	subs	r2, r2, #4
	ldr	r5, .L36
	ldrh	r6, [r5, r2, lsl #1]
	ldr	r5, [r0]
	orr	r2, r5, #65
	uxth	r2, r2
	str	r2, [r0]
	subs	r2, r4, #1
	and	r4, r2, #63
	orrs	r4, r4, r6
	ubfx	r2, r2, #6, #4
	uxth	r5, r5
	str	r4, [r0, #12]
	str	r2, [r0, #24]
	str	r5, [r0]
	udiv	r0, r1, r3
	pop	{r4, r5, r6, pc}
.L29:
	subs	r2, r2, #1
	cmp	r2, #3
	bne	.L31
	b	.L34
.L35:
	movs	r0, #0
	pop	{r4, r5, r6, pc}
.L37:
	.align	2
.L36:
	.word	.LANCHOR0
	.size	CANBitRateSet, .-CANBitRateSet
	.section	.text.CANBitTimingSet,"ax",%progbits
	.align	1
	.global	CANBitTimingSet
	.thumb
	.thumb_func
	.type	CANBitTimingSet, %function
CANBitTimingSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, [r0]
	orr	r3, r4, #65
	str	r3, [r0]
	ldr	r2, [r1, #4]
	subs	r2, r2, #1
	lsls	r2, r2, #12
	and	r3, r2, #28672
	ldr	r2, [r1]
	subs	r2, r2, #1
	lsls	r2, r2, #8
	and	r2, r2, #3840
	orrs	r2, r2, r3
	ldr	r3, [r1, #12]
	subs	r3, r3, #1
	and	r3, r3, #63
	orrs	r2, r2, r3
	ldr	r3, [r1, #8]
	subs	r3, r3, #1
	lsls	r3, r3, #6
	uxtb	r3, r3
	orrs	r3, r3, r2
	str	r3, [r0, #12]
	ldr	r3, [r1, #12]
	subs	r3, r3, #1
	ubfx	r3, r3, #6, #4
	str	r3, [r0, #24]
	lsls	r3, r4, #31
	ite	pl
	bicpl	r4, r4, #64
	bicmi	r4, r4, #65
	str	r4, [r0]
	pop	{r4, pc}
	.size	CANBitTimingSet, .-CANBitTimingSet
	.section	.text.CANIntRegister,"ax",%progbits
	.align	1
	.global	CANIntRegister
	.thumb
	.thumb_func
	.type	CANIntRegister, %function
CANIntRegister:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r5, r1
	bl	_CANIntNumberGet
	mov	r1, r5
	mov	r4, r0
	bl	IntRegister
	mov	r0, r4
	pop	{r3, r4, r5, lr}
	b	IntEnable
	.size	CANIntRegister, .-CANIntRegister
	.section	.text.CANIntUnregister,"ax",%progbits
	.align	1
	.global	CANIntUnregister
	.thumb
	.thumb_func
	.type	CANIntUnregister, %function
CANIntUnregister:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	_CANIntNumberGet
	mov	r4, r0
	bl	IntDisable
	mov	r0, r4
	pop	{r4, lr}
	b	IntUnregister
	.size	CANIntUnregister, .-CANIntUnregister
	.section	.text.CANIntEnable,"ax",%progbits
	.align	1
	.global	CANIntEnable
	.thumb
	.thumb_func
	.type	CANIntEnable, %function
CANIntEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0]
	orrs	r1, r1, r3
	str	r1, [r0]
	bx	lr
	.size	CANIntEnable, .-CANIntEnable
	.section	.text.CANIntDisable,"ax",%progbits
	.align	1
	.global	CANIntDisable
	.thumb
	.thumb_func
	.type	CANIntDisable, %function
CANIntDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0]
	bic	r1, r3, r1
	str	r1, [r0]
	bx	lr
	.size	CANIntDisable, .-CANIntDisable
	.section	.text.CANIntStatus,"ax",%progbits
	.align	1
	.global	CANIntStatus
	.thumb
	.thumb_func
	.type	CANIntStatus, %function
CANIntStatus:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r1, .L47
	cmp	r1, #1
	bne	.L51
	ldr	r3, [r0, #320]
	ldr	r0, [r0, #324]
	uxth	r3, r3
	orr	r0, r3, r0, lsl #16
	bx	lr
.L47:
	ldr	r0, [r0, #16]
	bx	lr
.L51:
	movs	r0, #0
	bx	lr
	.size	CANIntStatus, .-CANIntStatus
	.section	.text.CANIntClear,"ax",%progbits
	.align	1
	.global	CANIntClear
	.thumb
	.thumb_func
	.type	CANIntClear, %function
CANIntClear:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #32768
	bne	.L56
	ldr	r3, [r0, #4]
	bx	lr
.L56:
	ldr	r2, [r0, #32]
	lsls	r2, r2, #16
	add	r3, r0, #32
	bmi	.L56
	movs	r2, #8
	and	r1, r1, #63
	str	r2, [r0, #36]
	str	r1, [r3]
.L55:
	ldr	r2, [r3]
	lsls	r2, r2, #16
	bmi	.L55
	bx	lr
	.size	CANIntClear, .-CANIntClear
	.section	.text.CANRetrySet,"ax",%progbits
	.align	1
	.global	CANRetrySet
	.thumb
	.thumb_func
	.type	CANRetrySet, %function
CANRetrySet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0]
	cbz	r1, .L60
	bic	r3, r3, #32
	b	.L61
.L60:
	orr	r3, r3, #32
.L61:
	str	r3, [r0]
	bx	lr
	.size	CANRetrySet, .-CANRetrySet
	.section	.text.CANRetryGet,"ax",%progbits
	.align	1
	.global	CANRetryGet
	.thumb
	.thumb_func
	.type	CANRetryGet, %function
CANRetryGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0]
	eor	r0, r0, #32
	ubfx	r0, r0, #5, #1
	bx	lr
	.size	CANRetryGet, .-CANRetryGet
	.section	.text.CANStatusGet,"ax",%progbits
	.align	1
	.global	CANStatusGet
	.thumb
	.thumb_func
	.type	CANStatusGet, %function
CANStatusGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #3
	bhi	.L70
	tbb	[pc, r1]
.L66:
	.byte	(.L65-.L66)/2
	.byte	(.L67-.L66)/2
	.byte	(.L68-.L66)/2
	.byte	(.L69-.L66)/2
	.p2align 1
.L65:
	mvn	r2, #31
	ldr	r3, [r0, #4]
	str	r2, [r0, #4]
	b	.L64
.L67:
	ldr	r3, [r0, #256]
	ldr	r0, [r0, #260]
	b	.L71
.L68:
	ldr	r3, [r0, #288]
	ldr	r0, [r0, #292]
	b	.L71
.L69:
	ldr	r3, [r0, #352]
	ldr	r0, [r0, #356]
.L71:
	orr	r3, r3, r0, lsl #16
	b	.L64
.L70:
	movs	r3, #0
.L64:
	mov	r0, r3
	bx	lr
	.size	CANStatusGet, .-CANStatusGet
	.section	.text.CANErrCntrGet,"ax",%progbits
	.align	1
	.global	CANErrCntrGet
	.thumb
	.thumb_func
	.type	CANErrCntrGet, %function
CANErrCntrGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #8]
	ubfx	r3, r0, #8, #7
	str	r3, [r1]
	uxtb	r3, r0
	str	r3, [r2]
	ubfx	r0, r0, #15, #1
	bx	lr
	.size	CANErrCntrGet, .-CANErrCntrGet
	.section	.text.CANMessageSet,"ax",%progbits
	.align	1
	.global	CANMessageSet
	.thumb
	.thumb_func
	.type	CANMessageSet, %function
CANMessageSet:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, r6, r7, r8, r9, r10, fp, lr}
.L74:
	add	r4, r0, #32
	str	r4, [sp, #4]
	ldr	r4, [r0, #32]
	lsls	r4, r4, #16
	bmi	.L74
	ldr	r4, [r2]
	cmp	r4, #2048
	itet	cc
	ldrcc	r6, [r2, #8]
	movcs	r6, #1
	ubfxcc	r6, r6, #2, #1
	cmp	r3, #4
	bhi	.L73
	tbb	[pc, r3]
.L78:
	.byte	(.L99-.L78)/2
	.byte	(.L79-.L78)/2
	.byte	(.L80-.L78)/2
	.byte	(.L81-.L78)/2
	.byte	(.L82-.L78)/2
	.p2align 1
.L79:
	mov	ip, #0
	mov	r5, #256
	b	.L115
.L80:
	mov	ip, #0
	mov	r5, ip
.L115:
	mov	r8, ip
	mov	r3, ip
	mov	lr, ip
	b	.L113
.L81:
	mov	ip, #0
	mov	r5, #4096
	mov	r8, #8192
	movw	r3, #8191
	movw	lr, #65535
	movs	r7, #211
	b	.L77
.L82:
	mov	ip, #1
	mov	r5, #4608
	b	.L114
.L99:
	mov	ip, #1
	mov	r5, #256
.L114:
	movs	r3, #0
	mov	r8, #8192
	mov	lr, r3
.L113:
	movs	r7, #147
.L77:
	ldr	r9, [r2, #8]
	tst	r9, #8
	beq	.L83
	ldr	r3, [r2, #4]
	cbz	r6, .L84
	uxth	lr, r3
	ubfx	r3, r3, #16, #13
	b	.L83
.L84:
	lsls	r3, r3, #2
	ubfx	r3, r3, #0, #13
	uxth	r3, r3
	mov	lr, r6
.L83:
	and	r10, r9, #40
	cmp	r10, #40
	and	r10, r9, #24
	it	eq
	orreq	r3, r3, #32768
	cmp	r10, #24
	it	eq
	orreq	r3, r3, #16384
	tst	r9, #56
	itt	ne
	movne	r7, #211
	orrne	r5, r5, #4096
	orr	r7, r7, #32
	cbz	r6, .L88
	uxth	r6, r4
	ubfx	r4, r4, #16, #13
	orr	r4, r4, r8
	orr	r4, r4, #49152
	b	.L89
.L88:
	lsls	r4, r4, #2
	ubfx	r4, r4, #0, #13
	orr	r4, r4, r8
	orr	r4, r4, #32768
.L89:
	ldr	r8, [r2, #12]
	and	r10, r8, #15
	orr	r5, r5, r10
	tst	r9, #512
	itt	eq
	orreq	r5, r5, #128
	uxtheq	r5, r5
	tst	r9, #1
	it	ne
	orrne	r5, r5, #2048
	tst	r9, #2
	it	ne
	orrne	r5, r5, #1024
	cmp	ip, #0
	bne	.L93
.L97:
	str	r7, [r0, #36]
	str	lr, [r0, #40]
	str	r3, [r0, #44]
	ldr	r3, [sp, #4]
	str	r6, [r0, #48]
	and	r1, r1, #63
	str	r4, [r0, #52]
	str	r5, [r0, #56]
	str	r1, [r3]
	b	.L73
.L93:
	ldr	fp, [r2, #16]
	add	r9, r0, #60
	movs	r2, #0
.L94:
	cmp	r2, r8
	bcs	.L97
	add	ip, r2, #1
	cmp	ip, r8
	it	cc
	ldrbcc	ip, [fp, ip]	@ zero_extendqisi2
	ldrb	r10, [fp, r2]	@ zero_extendqisi2
	itt	cc
	orrcc	r10, r10, ip, lsl #8
	addcc	ip, r2, #2
	str	r10, [r9]
	mov	r2, ip
	add	r9, r9, #4
	b	.L94
.L73:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	CANMessageSet, .-CANMessageSet
	.section	.text.CANMessageGet,"ax",%progbits
	.align	1
	.global	CANMessageGet
	.thumb
	.thumb_func
	.type	CANMessageGet, %function
CANMessageGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r3, #0
	ite	eq
	moveq	r3, #115
	movne	r3, #123
	and	r1, r1, #63
	push	{r4, r5, r6, r7, r8, r9, lr}
	str	r3, [r0, #132]
	add	r7, r0, #128
	str	r1, [r0, #128]
.L118:
	ldr	r3, [r7]
	lsls	r3, r3, #16
	bmi	.L118
	ldr	r5, [r0, #136]
	ldr	lr, [r0, #140]
	ldr	r8, [r0, #144]
	ldr	r3, [r0, #148]
	ldr	r4, [r0, #152]
	uxth	r6, r4
	tst	r6, #256
	uxth	r3, r3
	bne	.L119
	tst	r3, #8192
	bne	.L120
.L122:
	mov	ip, #0
	b	.L163
.L119:
	tst	r3, #8192
	bne	.L122
.L120:
	mov	ip, #64
.L163:
	str	ip, [r2, #8]
	ands	ip, r3, #16384
	it	ne
	uxthne	r8, r8
	ubfx	r3, r3, #0, #13
	ittte	ne
	orrne	r3, r8, r3, lsl #16
	strne	r3, [r2]
	ldrne	r3, [r2, #8]
	asreq	r3, r3, #2
	itte	ne
	orrne	r3, r3, #4
	strne	r3, [r2, #8]
	streq	r3, [r2]
	lsls	r3, r6, #17
	ittt	mi
	ldrmi	r3, [r2, #8]
	orrmi	r3, r3, #256
	strmi	r3, [r2, #8]
	lsls	r3, r6, #19
	bpl	.L127
	ldr	r3, [r2, #8]
	uxth	r8, lr
	cmp	ip, #0
	beq	.L128
	uxth	ip, r5
	ubfx	r9, r8, #0, #13
	orr	r5, ip, r9, lsl #16
	str	r5, [r2, #4]
	mvn	ip, #-536870912
	b	.L166
.L128:
	ubfx	r5, r8, #2, #11
	str	r5, [r2, #4]
	movw	ip, #2047
.L166:
	cmp	r5, ip
	bne	.L131
	lsls	r5, r3, #25
	bmi	.L130
.L131:
	orr	r3, r3, #8
	str	r3, [r2, #8]
.L130:
	tst	lr, #32768
	ittt	ne
	ldrne	r3, [r2, #8]
	orrne	r3, r3, #40
	strne	r3, [r2, #8]
	tst	r8, #16384
	ittt	ne
	ldrne	r3, [r2, #8]
	orrne	r3, r3, #24
	strne	r3, [r2, #8]
.L127:
	lsls	r3, r6, #20
	ittt	mi
	ldrmi	r3, [r2, #8]
	orrmi	r3, r3, #1
	strmi	r3, [r2, #8]
	lsls	r6, r6, #21
	ittt	mi
	ldrmi	r3, [r2, #8]
	orrmi	r3, r3, #2
	strmi	r3, [r2, #8]
	lsls	r5, r4, #16
	bpl	.L137
	ldr	r3, [r2, #8]
	and	r4, r4, #15
	ands	r3, r3, #64
	str	r4, [r2, #12]
	beq	.L138
.L143:
	movs	r3, #4
	str	r3, [r0, #132]
	str	r1, [r0, #128]
	b	.L139
.L138:
	ldr	lr, [r2, #16]
	add	r5, r0, #156
.L140:
	cmp	r3, r4
	bcs	.L143
	ldr	r6, [r5]
	strb	r6, [lr, r3]
	add	ip, r5, #4
	adds	r5, r3, #1
	cmp	r5, r4
	ittt	cc
	lsrcc	r6, r6, #8
	strbcc	r6, [lr, r5]
	addcc	r5, r3, #2
	mov	r3, r5
	mov	r5, ip
	b	.L140
.L139:
	ldr	r3, [r7]
	lsls	r3, r3, #16
	bmi	.L139
	ldr	r3, [r2, #8]
	orr	r3, r3, #128
	str	r3, [r2, #8]
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L137:
	movs	r3, #0
	str	r3, [r2, #12]
	pop	{r4, r5, r6, r7, r8, r9, pc}
	.size	CANMessageGet, .-CANMessageGet
	.section	.text.CANMessageClear,"ax",%progbits
	.align	1
	.global	CANMessageClear
	.thumb
	.thumb_func
	.type	CANMessageClear, %function
CANMessageClear:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.L168:
	ldr	r3, [r0, #32]
	ands	r3, r3, #32768
	bne	.L168
	movs	r4, #160
	and	r1, r1, #63
	str	r4, [r0, #36]
	str	r3, [r0, #48]
	str	r3, [r0, #52]
	str	r1, [r0, #32]
	pop	{r4, pc}
	.size	CANMessageClear, .-CANMessageClear
	.section	.rodata.g_ui16CANBitValues,"a",%progbits
	.align	1
	.set	.LANCHOR0,. + 0
	.type	g_ui16CANBitValues, %object
	.size	g_ui16CANBitValues, 32
g_ui16CANBitValues:
	.short	256
	.short	512
	.short	4672
	.short	4928
	.short	9088
	.short	9344
	.short	13504
	.short	13760
	.short	17856
	.short	18112
	.short	22208
	.short	22464
	.short	26560
	.short	26816
	.short	30912
	.short	31168
	.ident	"GCC: (15:4.9.3+svn227297-1) 4.9.3 20150529 (prerelease)"
