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
	.file	"hibernate.c"
	.section	.text._HibernateWriteComplete,"ax",%progbits
	.align	1
	.thumb
	.thumb_func
	.type	_HibernateWriteComplete, %function
_HibernateWriteComplete:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.L2:
	ldr	r3, .L5
	ldr	r3, [r3]
	cmp	r3, #0
	bge	.L2
	bx	lr
.L6:
	.align	2
.L5:
	.word	1074774032
	.size	_HibernateWriteComplete, .-_HibernateWriteComplete
	.section	.text.HibernateEnableExpClk,"ax",%progbits
	.align	1
	.global	HibernateEnableExpClk
	.thumb
	.thumb_func
	.type	HibernateEnableExpClk, %function
HibernateEnableExpClk:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L8
	ldr	r3, [r2]
	orr	r3, r3, #64
	str	r3, [r2]
	b	_HibernateWriteComplete
.L9:
	.align	2
.L8:
	.word	1074774032
	.size	HibernateEnableExpClk, .-HibernateEnableExpClk
	.section	.text.HibernateDisable,"ax",%progbits
	.align	1
	.global	HibernateDisable
	.thumb
	.thumb_func
	.type	HibernateDisable, %function
HibernateDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L11
	ldr	r3, [r2]
	bic	r3, r3, #64
	str	r3, [r2]
	b	_HibernateWriteComplete
.L12:
	.align	2
.L11:
	.word	1074774032
	.size	HibernateDisable, .-HibernateDisable
	.section	.text.HibernateClockConfig,"ax",%progbits
	.align	1
	.global	HibernateClockConfig
	.thumb
	.thumb_func
	.type	HibernateClockConfig, %function
HibernateClockConfig:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L19
	ldr	r3, [r2]
	and	r1, r0, #720896
	bic	r3, r3, #720896
	orrs	r3, r3, r1
	lsls	r1, r0, #12
	it	mi
	orrmi	r3, r3, #64
	push	{r4, lr}
	str	r3, [r2]
	mov	r4, r0
	bl	_HibernateWriteComplete
	ldr	r3, .L19+4
	ldr	r2, [r3]
	ldr	r3, .L19+8
	ands	r3, r3, r2
	ldr	r2, .L19+12
	cmp	r3, r2
	ittt	eq
	ldreq	r3, .L19+16
	andeq	r4, r4, #3
	streq	r4, [r3]
	pop	{r4, pc}
.L20:
	.align	2
.L19:
	.word	1074774032
	.word	1074782208
	.word	1895759872
	.word	269090816
	.word	1074778056
	.size	HibernateClockConfig, .-HibernateClockConfig
	.section	.text.HibernateRTCEnable,"ax",%progbits
	.align	1
	.global	HibernateRTCEnable
	.thumb
	.thumb_func
	.type	HibernateRTCEnable, %function
HibernateRTCEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L22
	ldr	r3, [r2]
	orr	r3, r3, #1
	str	r3, [r2]
	b	_HibernateWriteComplete
.L23:
	.align	2
.L22:
	.word	1074774032
	.size	HibernateRTCEnable, .-HibernateRTCEnable
	.section	.text.HibernateRTCDisable,"ax",%progbits
	.align	1
	.global	HibernateRTCDisable
	.thumb
	.thumb_func
	.type	HibernateRTCDisable, %function
HibernateRTCDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L25
	ldr	r3, [r2]
	bic	r3, r3, #1
	str	r3, [r2]
	b	_HibernateWriteComplete
.L26:
	.align	2
.L25:
	.word	1074774032
	.size	HibernateRTCDisable, .-HibernateRTCDisable
	.section	.text.HibernateBatCheckStart,"ax",%progbits
	.align	1
	.global	HibernateBatCheckStart
	.thumb
	.thumb_func
	.type	HibernateBatCheckStart, %function
HibernateBatCheckStart:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L28
	ldr	r3, [r2]
	orr	r3, r3, #1024
	str	r3, [r2]
	b	_HibernateWriteComplete
.L29:
	.align	2
.L28:
	.word	1074774032
	.size	HibernateBatCheckStart, .-HibernateBatCheckStart
	.section	.text.HibernateBatCheckDone,"ax",%progbits
	.align	1
	.global	HibernateBatCheckDone
	.thumb
	.thumb_func
	.type	HibernateBatCheckDone, %function
HibernateBatCheckDone:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L31
	ldr	r0, [r3]
	and	r0, r0, #1024
	bx	lr
.L32:
	.align	2
.L31:
	.word	1074774032
	.size	HibernateBatCheckDone, .-HibernateBatCheckDone
	.section	.text.HibernateWakeSet,"ax",%progbits
	.align	1
	.global	HibernateWakeSet
	.thumb
	.thumb_func
	.type	HibernateWakeSet, %function
HibernateWakeSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	ldr	r5, .L41
	ldr	r3, [r5]
	bic	r3, r3, #536
	orrs	r3, r3, r0
	str	r3, [r5]
	mov	r4, r0
	bl	_HibernateWriteComplete
	ldr	r3, .L41+4
	ldr	r2, [r3]
	ldr	r3, .L41+8
	ands	r3, r3, r2
	ldr	r2, .L41+12
	cmp	r3, r2
	bne	.L33
	tst	r4, #1048592
	beq	.L35
	ldr	r3, [r5]
	lsls	r3, r3, #23
	bmi	.L35
	ldr	r3, [r5]
	orr	r3, r3, #256
	str	r3, [r5]
	bl	_HibernateWriteComplete
.L35:
	lsrs	r4, r4, #16
	ldr	r3, .L41+16
	orr	r4, r4, #1
	str	r4, [r3]
.L36:
	ldr	r1, [r3]
	ldr	r2, .L41+16
	cmp	r1, #0
	bge	.L36
	ldr	r3, [r2]
	bic	r3, r3, #1
	str	r3, [r2]
.L33:
	pop	{r3, r4, r5, pc}
.L42:
	.align	2
.L41:
	.word	1074774032
	.word	1074782208
	.word	1895759872
	.word	269090816
	.word	1074774060
	.size	HibernateWakeSet, .-HibernateWakeSet
	.section	.text.HibernateWakeGet,"ax",%progbits
	.align	1
	.global	HibernateWakeGet
	.thumb
	.thumb_func
	.type	HibernateWakeGet, %function
HibernateWakeGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L46
	ldr	r2, [r3]
	ldr	r3, .L46+4
	ands	r3, r3, r2
	ldr	r2, .L46+8
	cmp	r3, r2
	it	eq
	ldreq	r2, .L46+12
	ldr	r3, .L46+16
	itttt	eq
	ldreq	r3, [r3]
	ldreq	r0, [r2]
	lsleq	r0, r0, #16
	andeq	r0, r0, #1048592
	ittee	eq
	andeq	r3, r3, #536
	orreq	r0, r0, r3
	ldrne	r0, [r3]
	andne	r0, r0, #536
	bx	lr
.L47:
	.align	2
.L46:
	.word	1074782208
	.word	1895759872
	.word	269090816
	.word	1074774060
	.word	1074774032
	.size	HibernateWakeGet, .-HibernateWakeGet
	.section	.text.HibernateLowBatSet,"ax",%progbits
	.align	1
	.global	HibernateLowBatSet
	.thumb
	.thumb_func
	.type	HibernateLowBatSet, %function
HibernateLowBatSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L49
	ldr	r3, [r2]
	bic	r3, r3, #24704
	bic	r3, r3, #32
	orrs	r0, r0, r3
	str	r0, [r2]
	b	_HibernateWriteComplete
.L50:
	.align	2
.L49:
	.word	1074774032
	.size	HibernateLowBatSet, .-HibernateLowBatSet
	.section	.text.HibernateLowBatGet,"ax",%progbits
	.align	1
	.global	HibernateLowBatGet
	.thumb
	.thumb_func
	.type	HibernateLowBatGet, %function
HibernateLowBatGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L52
	ldr	r0, [r3]
	bic	r0, r0, #8000
	bic	r0, r0, #31
	lsls	r0, r0, #17
	lsrs	r0, r0, #17
	bx	lr
.L53:
	.align	2
.L52:
	.word	1074774032
	.size	HibernateLowBatGet, .-HibernateLowBatGet
	.section	.text.HibernateRTCSet,"ax",%progbits
	.align	1
	.global	HibernateRTCSet
	.thumb
	.thumb_func
	.type	HibernateRTCSet, %function
HibernateRTCSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	ldr	r4, .L55
	ldr	r3, .L55+4
	str	r3, [r4]
	mov	r5, r0
	bl	_HibernateWriteComplete
	ldr	r3, .L55+8
	str	r5, [r3]
	bl	_HibernateWriteComplete
	movs	r3, #0
	str	r3, [r4]
	pop	{r3, r4, r5, lr}
	b	_HibernateWriteComplete
.L56:
	.align	2
.L55:
	.word	1074774880
	.word	-1556769452
	.word	1074774028
	.size	HibernateRTCSet, .-HibernateRTCSet
	.section	.text.HibernateRTCGet,"ax",%progbits
	.align	1
	.global	HibernateRTCGet
	.thumb
	.thumb_func
	.type	HibernateRTCGet, %function
HibernateRTCGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L58
	ldr	r0, [r3]
	bx	lr
.L59:
	.align	2
.L58:
	.word	1074774016
	.size	HibernateRTCGet, .-HibernateRTCGet
	.section	.text.HibernateRTCMatchSet,"ax",%progbits
	.align	1
	.global	HibernateRTCMatchSet
	.thumb
	.thumb_func
	.type	HibernateRTCMatchSet, %function
HibernateRTCMatchSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L61
	str	r1, [r3]
	b	_HibernateWriteComplete
.L62:
	.align	2
.L61:
	.word	1074774020
	.size	HibernateRTCMatchSet, .-HibernateRTCMatchSet
	.section	.text.HibernateRTCMatchGet,"ax",%progbits
	.align	1
	.global	HibernateRTCMatchGet
	.thumb
	.thumb_func
	.type	HibernateRTCMatchGet, %function
HibernateRTCMatchGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L64
	ldr	r0, [r3]
	bx	lr
.L65:
	.align	2
.L64:
	.word	1074774020
	.size	HibernateRTCMatchGet, .-HibernateRTCMatchGet
	.section	.text.HibernateRTCSSMatchSet,"ax",%progbits
	.align	1
	.global	HibernateRTCSSMatchSet
	.thumb
	.thumb_func
	.type	HibernateRTCSSMatchSet, %function
HibernateRTCSSMatchSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L67
	lsls	r1, r1, #16
	str	r1, [r3]
	b	_HibernateWriteComplete
.L68:
	.align	2
.L67:
	.word	1074774056
	.size	HibernateRTCSSMatchSet, .-HibernateRTCSSMatchSet
	.section	.text.HibernateRTCSSMatchGet,"ax",%progbits
	.align	1
	.global	HibernateRTCSSMatchGet
	.thumb
	.thumb_func
	.type	HibernateRTCSSMatchGet, %function
HibernateRTCSSMatchGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L70
	ldr	r0, [r3]
	lsrs	r0, r0, #16
	bx	lr
.L71:
	.align	2
.L70:
	.word	1074774056
	.size	HibernateRTCSSMatchGet, .-HibernateRTCSSMatchGet
	.section	.text.HibernateRTCSSGet,"ax",%progbits
	.align	1
	.global	HibernateRTCSSGet
	.thumb
	.thumb_func
	.type	HibernateRTCSSGet, %function
HibernateRTCSSGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L73
	ldr	r0, [r3]
	ubfx	r0, r0, #0, #15
	bx	lr
.L74:
	.align	2
.L73:
	.word	1074774056
	.size	HibernateRTCSSGet, .-HibernateRTCSSGet
	.section	.text.HibernateRTCTrimSet,"ax",%progbits
	.align	1
	.global	HibernateRTCTrimSet
	.thumb
	.thumb_func
	.type	HibernateRTCTrimSet, %function
HibernateRTCTrimSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L76
	str	r0, [r3]
	b	_HibernateWriteComplete
.L77:
	.align	2
.L76:
	.word	1074774052
	.size	HibernateRTCTrimSet, .-HibernateRTCTrimSet
	.section	.text.HibernateRTCTrimGet,"ax",%progbits
	.align	1
	.global	HibernateRTCTrimGet
	.thumb
	.thumb_func
	.type	HibernateRTCTrimGet, %function
HibernateRTCTrimGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L79
	ldr	r0, [r3]
	bx	lr
.L80:
	.align	2
.L79:
	.word	1074774052
	.size	HibernateRTCTrimGet, .-HibernateRTCTrimGet
	.section	.text.HibernateDataSet,"ax",%progbits
	.align	1
	.global	HibernateDataSet
	.thumb
	.thumb_func
	.type	HibernateDataSet, %function
HibernateDataSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r6, r0
	mov	r5, r1
	movs	r4, #0
.L82:
	cmp	r4, r5
	beq	.L84
	ldr	r3, .L85
	ldr	r2, [r6, r4, lsl #2]
	add	r3, r3, r4
	lsls	r3, r3, #2
	adds	r4, r4, #1
	str	r2, [r3]
	bl	_HibernateWriteComplete
	b	.L82
.L84:
	pop	{r4, r5, r6, pc}
.L86:
	.align	2
.L85:
	.word	268693516
	.size	HibernateDataSet, .-HibernateDataSet
	.section	.text.HibernateDataGet,"ax",%progbits
	.align	1
	.global	HibernateDataGet
	.thumb
	.thumb_func
	.type	HibernateDataGet, %function
HibernateDataGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r1, r0, r1, lsl #2
	mov	r3, r0
.L88:
	cmp	r3, r1
	beq	.L90
	ldr	r2, .L91
	subs	r2, r2, r0
	ldr	r2, [r2, r3]
	str	r2, [r3], #4
	b	.L88
.L90:
	bx	lr
.L92:
	.align	2
.L91:
	.word	1074774064
	.size	HibernateDataGet, .-HibernateDataGet
	.section	.text.HibernateRequest,"ax",%progbits
	.align	1
	.global	HibernateRequest
	.thumb
	.thumb_func
	.type	HibernateRequest, %function
HibernateRequest:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L94
	ldr	r3, [r2]
	orr	r3, r3, #2
	str	r3, [r2]
	b	_HibernateWriteComplete
.L95:
	.align	2
.L94:
	.word	1074774032
	.size	HibernateRequest, .-HibernateRequest
	.section	.text.HibernateIntEnable,"ax",%progbits
	.align	1
	.global	HibernateIntEnable
	.thumb
	.thumb_func
	.type	HibernateIntEnable, %function
HibernateIntEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L97
	ldr	r3, [r2]
	orrs	r0, r0, r3
	str	r0, [r2]
	b	_HibernateWriteComplete
.L98:
	.align	2
.L97:
	.word	1074774036
	.size	HibernateIntEnable, .-HibernateIntEnable
	.section	.text.HibernateIntDisable,"ax",%progbits
	.align	1
	.global	HibernateIntDisable
	.thumb
	.thumb_func
	.type	HibernateIntDisable, %function
HibernateIntDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L100
	ldr	r3, [r2]
	bic	r0, r3, r0
	str	r0, [r2]
	b	_HibernateWriteComplete
.L101:
	.align	2
.L100:
	.word	1074774036
	.size	HibernateIntDisable, .-HibernateIntDisable
	.section	.text.HibernateIntRegister,"ax",%progbits
	.align	1
	.global	HibernateIntRegister
	.thumb
	.thumb_func
	.type	HibernateIntRegister, %function
HibernateIntRegister:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L105
	push	{r4, lr}
	ldr	r2, [r3]
	ldr	r3, .L105+4
	ldr	r4, .L105+8
	ands	r3, r3, r2
	cmp	r3, r4
	ite	eq
	moveq	r4, #57
	movne	r4, #59
	mov	r1, r0
	mov	r0, r4
	bl	IntRegister
	mov	r0, r4
	pop	{r4, lr}
	b	IntEnable
.L106:
	.align	2
.L105:
	.word	1074782208
	.word	1895759872
	.word	269090816
	.size	HibernateIntRegister, .-HibernateIntRegister
	.section	.text.HibernateIntUnregister,"ax",%progbits
	.align	1
	.global	HibernateIntUnregister
	.thumb
	.thumb_func
	.type	HibernateIntUnregister, %function
HibernateIntUnregister:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L110
	push	{r4, lr}
	ldr	r2, [r3]
	ldr	r3, .L110+4
	ldr	r4, .L110+8
	ands	r3, r3, r2
	cmp	r3, r4
	ite	eq
	moveq	r4, #57
	movne	r4, #59
	mov	r0, r4
	bl	IntDisable
	mov	r0, r4
	pop	{r4, lr}
	b	IntUnregister
.L111:
	.align	2
.L110:
	.word	1074782208
	.word	1895759872
	.word	269090816
	.size	HibernateIntUnregister, .-HibernateIntUnregister
	.section	.text.HibernateIntStatus,"ax",%progbits
	.align	1
	.global	HibernateIntStatus
	.thumb
	.thumb_func
	.type	HibernateIntStatus, %function
HibernateIntStatus:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L113
	ldr	r3, .L116
	b	.L115
.L113:
	ldr	r3, .L116+4
.L115:
	ldr	r0, [r3]
	bx	lr
.L117:
	.align	2
.L116:
	.word	1074774044
	.word	1074774040
	.size	HibernateIntStatus, .-HibernateIntStatus
	.section	.text.HibernateIntClear,"ax",%progbits
	.align	1
	.global	HibernateIntClear
	.thumb
	.thumb_func
	.type	HibernateIntClear, %function
HibernateIntClear:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L119
	ldr	r3, [r2]
	orrs	r0, r0, r3
	str	r0, [r2]
	b	_HibernateWriteComplete
.L120:
	.align	2
.L119:
	.word	1074774048
	.size	HibernateIntClear, .-HibernateIntClear
	.section	.text.HibernateIsActive,"ax",%progbits
	.align	1
	.global	HibernateIsActive
	.thumb
	.thumb_func
	.type	HibernateIsActive, %function
HibernateIsActive:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L122
	ldr	r0, [r3]
	ubfx	r0, r0, #6, #1
	bx	lr
.L123:
	.align	2
.L122:
	.word	1074774032
	.size	HibernateIsActive, .-HibernateIsActive
	.section	.text.HibernateGPIORetentionEnable,"ax",%progbits
	.align	1
	.global	HibernateGPIORetentionEnable
	.thumb
	.thumb_func
	.type	HibernateGPIORetentionEnable, %function
HibernateGPIORetentionEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L125
	ldr	r3, [r2]
	orr	r3, r3, #1073741824
	orr	r3, r3, #256
	str	r3, [r2]
	b	_HibernateWriteComplete
.L126:
	.align	2
.L125:
	.word	1074774032
	.size	HibernateGPIORetentionEnable, .-HibernateGPIORetentionEnable
	.section	.text.HibernateGPIORetentionDisable,"ax",%progbits
	.align	1
	.global	HibernateGPIORetentionDisable
	.thumb
	.thumb_func
	.type	HibernateGPIORetentionDisable, %function
HibernateGPIORetentionDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L128
	ldr	r3, [r2]
	bic	r3, r3, #1073741824
	bic	r3, r3, #256
	str	r3, [r2]
	b	_HibernateWriteComplete
.L129:
	.align	2
.L128:
	.word	1074774032
	.size	HibernateGPIORetentionDisable, .-HibernateGPIORetentionDisable
	.section	.text.HibernateGPIORetentionGet,"ax",%progbits
	.align	1
	.global	HibernateGPIORetentionGet
	.thumb
	.thumb_func
	.type	HibernateGPIORetentionGet, %function
HibernateGPIORetentionGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L131
	ldr	r0, .L131+4
	ldr	r3, [r3]
	ands	r3, r3, r0
	subs	r3, r3, r0
	rsbs	r0, r3, #0
	adcs	r0, r0, r3
	bx	lr
.L132:
	.align	2
.L131:
	.word	1074774032
	.word	1073742080
	.size	HibernateGPIORetentionGet, .-HibernateGPIORetentionGet
	.section	.text.HibernateCounterMode,"ax",%progbits
	.align	1
	.global	HibernateCounterMode
	.thumb
	.thumb_func
	.type	HibernateCounterMode, %function
HibernateCounterMode:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L134
	str	r0, [r3]
	b	_HibernateWriteComplete
.L135:
	.align	2
.L134:
	.word	1074774784
	.size	HibernateCounterMode, .-HibernateCounterMode
	.section	.text.HibernateCalendarSet,"ax",%progbits
	.align	1
	.global	HibernateCalendarSet
	.thumb
	.thumb_func
	.type	HibernateCalendarSet, %function
HibernateCalendarSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, [r0, #4]
	ldr	r3, [r0]
	lsls	r4, r4, #8
	and	r3, r3, #63
	and	r4, r4, #16128
	orrs	r4, r4, r3
	ldr	r3, .L141
	ldr	r3, [r3]
	tst	r3, #4
	ldr	r3, [r0, #8]
	bne	.L140
	cmp	r3, #255
	bne	.L139
	orr	r4, r4, #2031616
	b	.L138
.L139:
	cmp	r3, #11
	ble	.L140
	subs	r3, r3, #12
	orr	r4, r4, r3, lsl #16
	orr	r4, r4, #4194304
	b	.L138
.L140:
	orr	r4, r4, r3, lsl #16
.L138:
	ldr	r5, [r0, #24]
	ldr	r3, [r0, #12]
	ldr	r6, .L141+4
	orr	r3, r3, r5, lsl #24
	ldr	r5, [r0, #16]
	adds	r5, r5, #1
	orr	r3, r3, r5, lsl #8
	ldr	r5, [r0, #20]
	subs	r5, r5, #100
	orr	r5, r3, r5, lsl #16
	ldr	r3, .L141+8
	str	r3, [r6]
	bl	_HibernateWriteComplete
	ldr	r3, .L141+12
	str	r4, [r3]
	bl	_HibernateWriteComplete
	ldr	r3, .L141+16
	str	r5, [r3]
	bl	_HibernateWriteComplete
	movs	r3, #0
	str	r3, [r6]
	pop	{r4, r5, r6, lr}
	b	_HibernateWriteComplete
.L142:
	.align	2
.L141:
	.word	1074774784
	.word	1074774880
	.word	-1556769452
	.word	1074774816
	.word	1074774820
	.size	HibernateCalendarSet, .-HibernateCalendarSet
	.section	.text.HibernateCalendarGet,"ax",%progbits
	.align	1
	.global	HibernateCalendarGet
	.thumb
	.thumb_func
	.type	HibernateCalendarGet, %function
HibernateCalendarGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.L144:
	ldr	r3, .L152
	ldr	r2, [r3]
	cmp	r2, #0
	mov	r1, r3
	bge	.L144
.L145:
	ldr	r3, .L152+4
	ldr	r3, [r3]
	cmp	r3, #0
	bge	.L145
	ldr	r1, [r1]
	cmp	r2, r1
	bne	.L147
	ubfx	r1, r3, #8, #6
	str	r1, [r0, #4]
	and	r1, r3, #63
	str	r1, [r0]
	ubfx	r1, r2, #8, #4
	subs	r1, r1, #1
	str	r1, [r0, #16]
	and	r1, r2, #31
	str	r1, [r0, #12]
	ubfx	r1, r2, #24, #3
	ubfx	r2, r2, #16, #7
	adds	r2, r2, #100
	str	r2, [r0, #20]
	ldr	r2, .L152+8
	str	r1, [r0, #24]
	ldr	r2, [r2]
	ubfx	r1, r3, #16, #5
	ands	r2, r2, #4
	str	r1, [r0, #8]
	bne	.L148
	ands	r3, r3, #4194304
	beq	.L148
	adds	r1, r1, #12
	str	r1, [r0, #8]
	b	.L148
.L147:
	mov	r0, #-1
	bx	lr
.L148:
	movs	r0, #0
	bx	lr
.L153:
	.align	2
.L152:
	.word	1074774804
	.word	1074774800
	.word	1074774784
	.size	HibernateCalendarGet, .-HibernateCalendarGet
	.section	.text.HibernateCalendarMatchSet,"ax",%progbits
	.align	1
	.global	HibernateCalendarMatchSet
	.thumb
	.thumb_func
	.type	HibernateCalendarMatchSet, %function
HibernateCalendarMatchSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r1, #4]
	ldr	r2, [r1]
	lsls	r3, r3, #8
	and	r2, r2, #63
	and	r3, r3, #16128
	orrs	r3, r3, r2
	ldr	r2, .L161
	ldr	r2, [r2]
	tst	r2, #4
	push	{r4, lr}
	ldr	r2, [r1, #8]
	beq	.L155
	cmp	r2, #255
	orr	r3, r3, r2, lsl #16
	bne	.L156
	bic	r3, r3, #4194304
	b	.L156
.L155:
	cmp	r2, #255
	bne	.L157
	orr	r3, r3, #2031616
	b	.L156
.L157:
	cmp	r2, #11
	ittte	gt
	subgt	r2, r2, #12
	orrgt	r3, r3, r2, lsl #16
	orrgt	r3, r3, #4194304
	orrle	r3, r3, r2, lsl #16
.L156:
	ldr	r2, [r1, #12]
	cmp	r2, #255
	it	ne
	movne	r4, r2
	ldr	r2, .L161+4
	str	r3, [r2]
	it	eq
	moveq	r4, #0
	bl	_HibernateWriteComplete
	ldr	r3, .L161+8
	str	r4, [r3]
	pop	{r4, lr}
	b	_HibernateWriteComplete
.L162:
	.align	2
.L161:
	.word	1074774784
	.word	1074774832
	.word	1074774836
	.size	HibernateCalendarMatchSet, .-HibernateCalendarMatchSet
	.section	.text.HibernateCalendarMatchGet,"ax",%progbits
	.align	1
	.global	HibernateCalendarMatchGet
	.thumb
	.thumb_func
	.type	HibernateCalendarMatchGet, %function
HibernateCalendarMatchGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L178
	ldr	r2, [r3]
	subs	r3, r3, #4
	ldr	r3, [r3]
	and	r0, r3, #16128
	cmp	r0, #16128
	ite	eq
	moveq	r0, #255
	lsrne	r0, r0, #8
	str	r0, [r1, #4]
	and	r0, r3, #63
	cmp	r0, #63
	it	eq
	moveq	r0, #255
	str	r0, [r1]
	and	r0, r3, #2031616
	cmp	r0, #2031616
	ite	eq
	moveq	r0, #255
	lsrne	r0, r0, #16
	ands	r2, r2, #31
	it	eq
	moveq	r2, #255
	str	r2, [r1, #12]
	ldr	r2, .L178+4
	str	r0, [r1, #8]
	ldr	r2, [r2]
	lsls	r2, r2, #29
	bmi	.L163
	lsls	r3, r3, #9
	ittt	mi
	ldrmi	r3, [r1, #8]
	addmi	r3, r3, #12
	strmi	r3, [r1, #8]
.L163:
	bx	lr
.L179:
	.align	2
.L178:
	.word	1074774836
	.word	1074774784
	.size	HibernateCalendarMatchGet, .-HibernateCalendarMatchGet
	.section	.text.HibernateTamperEventsConfig,"ax",%progbits
	.align	1
	.global	HibernateTamperEventsConfig
	.thumb
	.thumb_func
	.type	HibernateTamperEventsConfig, %function
HibernateTamperEventsConfig:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	ldr	r6, .L181
	ldr	r5, .L181+4
	ldr	r4, [r6]
	ldr	r3, .L181+8
	str	r3, [r5]
	mov	r7, r0
	bic	r4, r4, #768
	bl	_HibernateWriteComplete
	orr	r0, r7, r4
	str	r0, [r6]
	bl	_HibernateWriteComplete
	movs	r3, #0
	str	r3, [r5]
	pop	{r3, r4, r5, r6, r7, lr}
	b	_HibernateWriteComplete
.L182:
	.align	2
.L181:
	.word	1074775040
	.word	1074774880
	.word	-1556769452
	.size	HibernateTamperEventsConfig, .-HibernateTamperEventsConfig
	.section	.text.HibernateTamperEnable,"ax",%progbits
	.align	1
	.global	HibernateTamperEnable
	.thumb
	.thumb_func
	.type	HibernateTamperEnable, %function
HibernateTamperEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L184
	ldr	r3, .L184+4
	str	r3, [r4]
	bl	_HibernateWriteComplete
	ldr	r2, .L184+8
	ldr	r3, [r2]
	orr	r3, r3, #1
	str	r3, [r2]
	bl	_HibernateWriteComplete
	movs	r3, #0
	str	r3, [r4]
	pop	{r4, lr}
	b	_HibernateWriteComplete
.L185:
	.align	2
.L184:
	.word	1074774880
	.word	-1556769452
	.word	1074775040
	.size	HibernateTamperEnable, .-HibernateTamperEnable
	.section	.text.HibernateTamperDisable,"ax",%progbits
	.align	1
	.global	HibernateTamperDisable
	.thumb
	.thumb_func
	.type	HibernateTamperDisable, %function
HibernateTamperDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L187
	ldr	r3, .L187+4
	str	r3, [r4]
	bl	_HibernateWriteComplete
	ldr	r2, .L187+8
	ldr	r3, [r2]
	bic	r3, r3, #1
	str	r3, [r2]
	bl	_HibernateWriteComplete
	movs	r3, #0
	str	r3, [r4]
	pop	{r4, lr}
	b	_HibernateWriteComplete
.L188:
	.align	2
.L187:
	.word	1074774880
	.word	-1556769452
	.word	1074775040
	.size	HibernateTamperDisable, .-HibernateTamperDisable
	.section	.text.HibernateTamperIOEnable,"ax",%progbits
	.align	1
	.global	HibernateTamperIOEnable
	.thumb
	.thumb_func
	.type	HibernateTamperIOEnable, %function
HibernateTamperIOEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r6, .L190
	ldr	r5, .L190+4
	ldr	r4, [r6]
	ldr	r3, .L190+8
	str	r3, [r5]
	lsls	r0, r0, #3
	orr	r1, r1, #1
	lsls	r1, r1, r0
	orrs	r4, r4, r1
	bl	_HibernateWriteComplete
	str	r4, [r6]
	bl	_HibernateWriteComplete
	movs	r3, #0
	str	r3, [r5]
	pop	{r4, r5, r6, lr}
	b	_HibernateWriteComplete
.L191:
	.align	2
.L190:
	.word	1074775056
	.word	1074774880
	.word	-1556769452
	.size	HibernateTamperIOEnable, .-HibernateTamperIOEnable
	.section	.text.HibernateTamperIODisable,"ax",%progbits
	.align	1
	.global	HibernateTamperIODisable
	.thumb
	.thumb_func
	.type	HibernateTamperIODisable, %function
HibernateTamperIODisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	ldr	r5, .L193
	ldr	r3, .L193+4
	str	r3, [r5]
	mov	r4, r0
	bl	_HibernateWriteComplete
	ldr	r1, .L193+8
	lsls	r4, r4, #3
	ldr	r2, [r1]
	mvn	r3, #1
	lsls	r3, r3, r4
	ands	r3, r3, r2
	str	r3, [r1]
	bl	_HibernateWriteComplete
	movs	r3, #0
	str	r3, [r5]
	pop	{r3, r4, r5, lr}
	b	_HibernateWriteComplete
.L194:
	.align	2
.L193:
	.word	1074774880
	.word	-1556769452
	.word	1074775056
	.size	HibernateTamperIODisable, .-HibernateTamperIODisable
	.section	.text.HibernateTamperEventsClear,"ax",%progbits
	.align	1
	.global	HibernateTamperEventsClear
	.thumb
	.thumb_func
	.type	HibernateTamperEventsClear, %function
HibernateTamperEventsClear:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L196
	ldr	r3, .L196+4
	str	r3, [r4]
	bl	_HibernateWriteComplete
	ldr	r2, .L196+8
	ldr	r3, [r2]
	orr	r3, r3, #16
	str	r3, [r2]
	bl	_HibernateWriteComplete
	movs	r3, #0
	str	r3, [r4]
	pop	{r4, lr}
	b	_HibernateWriteComplete
.L197:
	.align	2
.L196:
	.word	1074774880
	.word	-1556769452
	.word	1074775040
	.size	HibernateTamperEventsClear, .-HibernateTamperEventsClear
	.section	.text.HibernateTamperEventsClearNoLock,"ax",%progbits
	.align	1
	.global	HibernateTamperEventsClearNoLock
	.thumb
	.thumb_func
	.type	HibernateTamperEventsClearNoLock, %function
HibernateTamperEventsClearNoLock:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	bl	_HibernateWriteComplete
	ldr	r2, .L199
	ldr	r3, [r2]
	orr	r3, r3, #16
	str	r3, [r2]
	pop	{r3, pc}
.L200:
	.align	2
.L199:
	.word	1074775040
	.size	HibernateTamperEventsClearNoLock, .-HibernateTamperEventsClearNoLock
	.section	.text.HibernateTamperUnLock,"ax",%progbits
	.align	1
	.global	HibernateTamperUnLock
	.thumb
	.thumb_func
	.type	HibernateTamperUnLock, %function
HibernateTamperUnLock:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L202
	ldr	r2, .L202+4
	str	r2, [r3]
	b	_HibernateWriteComplete
.L203:
	.align	2
.L202:
	.word	1074774880
	.word	-1556769452
	.size	HibernateTamperUnLock, .-HibernateTamperUnLock
	.section	.text.HibernateTamperLock,"ax",%progbits
	.align	1
	.global	HibernateTamperLock
	.thumb
	.thumb_func
	.type	HibernateTamperLock, %function
HibernateTamperLock:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	bl	_HibernateWriteComplete
	ldr	r3, .L205
	movs	r2, #0
	str	r2, [r3]
	pop	{r3, lr}
	b	_HibernateWriteComplete
.L206:
	.align	2
.L205:
	.word	1074774880
	.size	HibernateTamperLock, .-HibernateTamperLock
	.section	.text.HibernateTamperStatusGet,"ax",%progbits
	.align	1
	.global	HibernateTamperStatusGet
	.thumb
	.thumb_func
	.type	HibernateTamperStatusGet, %function
HibernateTamperStatusGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L213
	ldr	r3, [r3]
	tst	r3, #2
	and	r0, r3, #3
	ite	ne
	movne	r1, #0
	moveq	r1, #8
	tst	r3, #1
	and	r3, r3, #12
	orr	r0, r0, r3, lsl #3
	ite	ne
	movne	r2, #0
	moveq	r2, #4
	orrs	r0, r0, r1
	orrs	r0, r0, r2
	cbnz	r3, .L210
	orr	r0, r0, #16
.L210:
	bx	lr
.L214:
	.align	2
.L213:
	.word	1074775044
	.size	HibernateTamperStatusGet, .-HibernateTamperStatusGet
	.section	.text.HibernateTamperEventsGet,"ax",%progbits
	.align	1
	.global	HibernateTamperEventsGet
	.thumb
	.thumb_func
	.type	HibernateTamperEventsGet, %function
HibernateTamperEventsGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L220
	ldr	r3, [r3, r0, lsl #3]
	cbz	r3, .L217
	str	r3, [r2]
	ldr	r3, .L220+4
	ldr	r2, .L220+8
	ldr	r3, [r3, r0, lsl #3]
	str	r3, [r1]
	ldr	r2, [r2]
	and	r2, r2, #5
	cmp	r2, #5
	bne	.L219
	ldr	r2, .L220+12
	ldr	r2, [r2]
	lsls	r2, r2, #9
	bpl	.L219
	and	r2, r3, #126976
	add	r2, r2, #49152
	and	r2, r2, #126976
	bic	r3, r3, #126976
	orrs	r3, r3, r2
	str	r3, [r1]
	b	.L219
.L217:
	mov	r0, r3
	bx	lr
.L219:
	movs	r0, #1
	bx	lr
.L221:
	.align	2
.L220:
	.word	1074775268
	.word	1074775264
	.word	1074774784
	.word	1074774800
	.size	HibernateTamperEventsGet, .-HibernateTamperEventsGet
	.section	.text.HibernateTamperExtOscRecover,"ax",%progbits
	.align	1
	.global	HibernateTamperExtOscRecover
	.thumb
	.thumb_func
	.type	HibernateTamperExtOscRecover, %function
HibernateTamperExtOscRecover:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L223
	ldr	r3, .L223+4
	str	r3, [r4]
	bl	_HibernateWriteComplete
	ldr	r2, .L223+8
	ldr	r3, [r2]
	orr	r3, r3, #1
	str	r3, [r2]
	bl	_HibernateWriteComplete
	movs	r3, #0
	str	r3, [r4]
	pop	{r4, lr}
	b	_HibernateWriteComplete
.L224:
	.align	2
.L223:
	.word	1074774880
	.word	-1556769452
	.word	1074775044
	.size	HibernateTamperExtOscRecover, .-HibernateTamperExtOscRecover
	.section	.text.HibernateTamperExtOscValid,"ax",%progbits
	.align	1
	.global	HibernateTamperExtOscValid
	.thumb
	.thumb_func
	.type	HibernateTamperExtOscValid, %function
HibernateTamperExtOscValid:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	bl	HibernateTamperStatusGet
	tst	r0, #12
	ite	ne
	movne	r0, #1
	moveq	r0, #0
	pop	{r3, pc}
	.size	HibernateTamperExtOscValid, .-HibernateTamperExtOscValid
	.ident	"GCC: (15:4.9.3+svn227297-1) 4.9.3 20150529 (prerelease)"
