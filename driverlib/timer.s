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
	.file	"timer.c"
	.section	.text._TimerIntNumberGet,"ax",%progbits
	.align	1
	.thumb
	.thumb_func
	.type	_TimerIntNumberGet, %function
_TimerIntNumberGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L10
	ldr	r2, [r3]
	ldr	r3, .L10+4
	ands	r3, r3, r2
	ldr	r2, .L10+8
	push	{r4, lr}
	cmp	r3, r2
	ldr	r2, .L10+12
	ldr	r3, .L10+16
	itee	ne
	movne	r2, #96
	moveq	r3, r2
	moveq	r2, #64
	add	r2, r2, r3
.L5:
	ldr	r4, [r3]
	cmp	r4, r0
	bne	.L3
	cmp	r1, #65280
	ldr	r0, [r3, #4]
	bne	.L4
	adds	r0, r0, #1
	pop	{r4, pc}
.L3:
	adds	r3, r3, #8
	cmp	r3, r2
	bne	.L5
	movs	r0, #0
.L4:
	pop	{r4, pc}
.L11:
	.align	2
.L10:
	.word	1074782208
	.word	1895759872
	.word	269090816
	.word	.LANCHOR1
	.word	.LANCHOR0
	.size	_TimerIntNumberGet, .-_TimerIntNumberGet
	.section	.text.TimerEnable,"ax",%progbits
	.align	1
	.global	TimerEnable
	.thumb
	.thumb_func
	.type	TimerEnable, %function
TimerEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bic	r1, r1, #254
	ldr	r3, [r0, #12]
	lsls	r1, r1, #23
	lsrs	r1, r1, #23
	orrs	r1, r1, r3
	str	r1, [r0, #12]
	bx	lr
	.size	TimerEnable, .-TimerEnable
	.section	.text.TimerDisable,"ax",%progbits
	.align	1
	.global	TimerDisable
	.thumb
	.thumb_func
	.type	TimerDisable, %function
TimerDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bic	r1, r1, #254
	ldr	r3, [r0, #12]
	lsls	r1, r1, #23
	lsrs	r1, r1, #23
	bic	r3, r3, r1
	str	r3, [r0, #12]
	bx	lr
	.size	TimerDisable, .-TimerDisable
	.section	.text.TimerConfigure,"ax",%progbits
	.align	1
	.global	TimerConfigure
	.thumb
	.thumb_func
	.type	TimerConfigure, %function
TimerConfigure:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #12]
	bic	r3, r3, #256
	bic	r3, r3, #1
	push	{r4, lr}
	str	r3, [r0, #12]
	lsrs	r3, r1, #24
	str	r3, [r0]
	ldr	r3, .L18
	ldr	r2, [r3]
	ldr	r3, .L18+4
	ands	r3, r3, r2
	ldr	r2, .L18+8
	cmp	r3, r2
	lsr	r3, r1, #8
	uxtb	r2, r1
	ittt	eq
	andeq	r4, r1, #983040
	uxtbeq	r3, r3
	andeq	r1, r1, #15728640
	orr	r2, r2, #512
	itet	eq
	orreq	r3, r3, r1, lsr #8
	uxtbne	r3, r3
	orreq	r2, r2, r4, lsr #4
	orr	r3, r3, #512
	ite	eq
	streq	r2, [r0, #4]
	strne	r2, [r0, #4]
	str	r3, [r0, #8]
	pop	{r4, pc}
.L19:
	.align	2
.L18:
	.word	1074782208
	.word	1895759872
	.word	269090816
	.size	TimerConfigure, .-TimerConfigure
	.section	.text.TimerControlLevel,"ax",%progbits
	.align	1
	.global	TimerControlLevel
	.thumb
	.thumb_func
	.type	TimerControlLevel, %function
TimerControlLevel:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #16448
	ands	r3, r3, r1
	add	r1, r0, #12
	cbz	r2, .L21
	ldr	r2, [r0, #12]
	orrs	r3, r3, r2
	b	.L22
.L21:
	ldr	r2, [r0, #12]
	bic	r3, r2, r3
.L22:
	str	r3, [r1]
	bx	lr
	.size	TimerControlLevel, .-TimerControlLevel
	.section	.text.TimerControlTrigger,"ax",%progbits
	.align	1
	.global	TimerControlTrigger
	.thumb
	.thumb_func
	.type	TimerControlTrigger, %function
TimerControlTrigger:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L29
	push	{r4, r5, lr}
	ldr	r4, [r3]
	ldr	r3, .L29+4
	ands	r3, r3, r4
	ldr	r4, .L29+8
	cmp	r3, r4
	bne	.L24
	movw	r3, #257
	ands	r3, r3, r1
	add	r4, r0, #112
	ldr	r5, [r0, #112]
	cbz	r2, .L25
	orrs	r3, r3, r5
	b	.L26
.L25:
	bic	r3, r5, r3
.L26:
	str	r3, [r4]
.L24:
	movw	r3, #8224
	ands	r3, r3, r1
	add	r1, r0, #12
	cbz	r2, .L27
	ldr	r2, [r0, #12]
	orrs	r3, r3, r2
	b	.L28
.L27:
	ldr	r2, [r0, #12]
	bic	r3, r2, r3
.L28:
	str	r3, [r1]
	pop	{r4, r5, pc}
.L30:
	.align	2
.L29:
	.word	1074782208
	.word	1895759872
	.word	269090816
	.size	TimerControlTrigger, .-TimerControlTrigger
	.section	.text.TimerControlEvent,"ax",%progbits
	.align	1
	.global	TimerControlEvent
	.thumb
	.thumb_func
	.type	TimerControlEvent, %function
TimerControlEvent:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bic	r1, r1, #1008
	bic	r1, r1, #3
	ldr	r3, [r0, #12]
	lsls	r1, r1, #20
	lsrs	r1, r1, #20
	bic	r3, r3, r1
	ands	r2, r2, r1
	orrs	r2, r2, r3
	str	r2, [r0, #12]
	bx	lr
	.size	TimerControlEvent, .-TimerControlEvent
	.section	.text.TimerControlStall,"ax",%progbits
	.align	1
	.global	TimerControlStall
	.thumb
	.thumb_func
	.type	TimerControlStall, %function
TimerControlStall:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #514
	ands	r3, r3, r1
	add	r1, r0, #12
	cbz	r2, .L33
	ldr	r2, [r0, #12]
	orrs	r3, r3, r2
	b	.L34
.L33:
	ldr	r2, [r0, #12]
	bic	r3, r2, r3
.L34:
	str	r3, [r1]
	bx	lr
	.size	TimerControlStall, .-TimerControlStall
	.section	.text.TimerControlWaitOnTrigger,"ax",%progbits
	.align	1
	.global	TimerControlWaitOnTrigger
	.thumb
	.thumb_func
	.type	TimerControlWaitOnTrigger, %function
TimerControlWaitOnTrigger:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	tst	r1, #255
	beq	.L36
	ldr	r3, [r0, #4]
	cbz	r2, .L37
	orr	r3, r3, #64
	b	.L46
.L37:
	bic	r3, r3, #64
.L46:
	str	r3, [r0, #4]
.L36:
	tst	r1, #65280
	beq	.L35
	ldr	r3, [r0, #8]
	cbz	r2, .L39
	orr	r3, r3, #64
	b	.L47
.L39:
	bic	r3, r3, #64
.L47:
	str	r3, [r0, #8]
.L35:
	bx	lr
	.size	TimerControlWaitOnTrigger, .-TimerControlWaitOnTrigger
	.section	.text.TimerRTCEnable,"ax",%progbits
	.align	1
	.global	TimerRTCEnable
	.thumb
	.thumb_func
	.type	TimerRTCEnable, %function
TimerRTCEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #12]
	orr	r3, r3, #16
	str	r3, [r0, #12]
	bx	lr
	.size	TimerRTCEnable, .-TimerRTCEnable
	.section	.text.TimerRTCDisable,"ax",%progbits
	.align	1
	.global	TimerRTCDisable
	.thumb
	.thumb_func
	.type	TimerRTCDisable, %function
TimerRTCDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #12]
	bic	r3, r3, #16
	str	r3, [r0, #12]
	bx	lr
	.size	TimerRTCDisable, .-TimerRTCDisable
	.section	.text.TimerClockSourceSet,"ax",%progbits
	.align	1
	.global	TimerClockSourceSet
	.thumb
	.thumb_func
	.type	TimerClockSourceSet, %function
TimerClockSourceSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r1, [r0, #4040]
	bx	lr
	.size	TimerClockSourceSet, .-TimerClockSourceSet
	.section	.text.TimerClockSourceGet,"ax",%progbits
	.align	1
	.global	TimerClockSourceGet
	.thumb
	.thumb_func
	.type	TimerClockSourceGet, %function
TimerClockSourceGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #4040]
	bx	lr
	.size	TimerClockSourceGet, .-TimerClockSourceGet
	.section	.text.TimerPrescaleSet,"ax",%progbits
	.align	1
	.global	TimerPrescaleSet
	.thumb
	.thumb_func
	.type	TimerPrescaleSet, %function
TimerPrescaleSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	tst	r1, #255
	it	ne
	strne	r2, [r0, #56]
	tst	r1, #65280
	it	ne
	strne	r2, [r0, #60]
	bx	lr
	.size	TimerPrescaleSet, .-TimerPrescaleSet
	.section	.text.TimerPrescaleGet,"ax",%progbits
	.align	1
	.global	TimerPrescaleGet
	.thumb
	.thumb_func
	.type	TimerPrescaleGet, %function
TimerPrescaleGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #255
	ite	eq
	ldreq	r0, [r0, #56]
	ldrne	r0, [r0, #60]
	bx	lr
	.size	TimerPrescaleGet, .-TimerPrescaleGet
	.section	.text.TimerPrescaleMatchSet,"ax",%progbits
	.align	1
	.global	TimerPrescaleMatchSet
	.thumb
	.thumb_func
	.type	TimerPrescaleMatchSet, %function
TimerPrescaleMatchSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	tst	r1, #255
	it	ne
	strne	r2, [r0, #64]
	tst	r1, #65280
	it	ne
	strne	r2, [r0, #68]
	bx	lr
	.size	TimerPrescaleMatchSet, .-TimerPrescaleMatchSet
	.section	.text.TimerPrescaleMatchGet,"ax",%progbits
	.align	1
	.global	TimerPrescaleMatchGet
	.thumb
	.thumb_func
	.type	TimerPrescaleMatchGet, %function
TimerPrescaleMatchGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #255
	ite	eq
	ldreq	r0, [r0, #64]
	ldrne	r0, [r0, #68]
	bx	lr
	.size	TimerPrescaleMatchGet, .-TimerPrescaleMatchGet
	.section	.text.TimerLoadSet,"ax",%progbits
	.align	1
	.global	TimerLoadSet
	.thumb
	.thumb_func
	.type	TimerLoadSet, %function
TimerLoadSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	tst	r1, #255
	it	ne
	strne	r2, [r0, #40]
	tst	r1, #65280
	it	ne
	strne	r2, [r0, #44]
	bx	lr
	.size	TimerLoadSet, .-TimerLoadSet
	.section	.text.TimerLoadGet,"ax",%progbits
	.align	1
	.global	TimerLoadGet
	.thumb
	.thumb_func
	.type	TimerLoadGet, %function
TimerLoadGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #255
	ite	eq
	ldreq	r0, [r0, #40]
	ldrne	r0, [r0, #44]
	bx	lr
	.size	TimerLoadGet, .-TimerLoadGet
	.section	.text.TimerLoadSet64,"ax",%progbits
	.align	1
	.global	TimerLoadSet64
	.thumb
	.thumb_func
	.type	TimerLoadSet64, %function
TimerLoadSet64:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r3, [r0, #44]
	str	r2, [r0, #40]
	bx	lr
	.size	TimerLoadSet64, .-TimerLoadSet64
	.section	.text.TimerLoadGet64,"ax",%progbits
	.align	1
	.global	TimerLoadGet64
	.thumb
	.thumb_func
	.type	TimerLoadGet64, %function
TimerLoadGet64:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.L90:
	ldr	r1, [r0, #44]
	ldr	r4, [r0, #40]
	ldr	r3, [r0, #44]
	cmp	r1, r3
	bne	.L90
	movs	r2, #0
	orr	r0, r2, r4
	pop	{r4, pc}
	.size	TimerLoadGet64, .-TimerLoadGet64
	.section	.text.TimerValueGet,"ax",%progbits
	.align	1
	.global	TimerValueGet
	.thumb
	.thumb_func
	.type	TimerValueGet, %function
TimerValueGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #255
	ite	eq
	ldreq	r0, [r0, #72]
	ldrne	r0, [r0, #76]
	bx	lr
	.size	TimerValueGet, .-TimerValueGet
	.section	.text.TimerValueGet64,"ax",%progbits
	.align	1
	.global	TimerValueGet64
	.thumb
	.thumb_func
	.type	TimerValueGet64, %function
TimerValueGet64:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.L96:
	ldr	r1, [r0, #76]
	ldr	r4, [r0, #72]
	ldr	r3, [r0, #76]
	cmp	r1, r3
	bne	.L96
	movs	r2, #0
	orr	r0, r2, r4
	pop	{r4, pc}
	.size	TimerValueGet64, .-TimerValueGet64
	.section	.text.TimerMatchSet,"ax",%progbits
	.align	1
	.global	TimerMatchSet
	.thumb
	.thumb_func
	.type	TimerMatchSet, %function
TimerMatchSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	tst	r1, #255
	it	ne
	strne	r2, [r0, #48]
	tst	r1, #65280
	it	ne
	strne	r2, [r0, #52]
	bx	lr
	.size	TimerMatchSet, .-TimerMatchSet
	.section	.text.TimerMatchGet,"ax",%progbits
	.align	1
	.global	TimerMatchGet
	.thumb
	.thumb_func
	.type	TimerMatchGet, %function
TimerMatchGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #255
	ite	eq
	ldreq	r0, [r0, #48]
	ldrne	r0, [r0, #52]
	bx	lr
	.size	TimerMatchGet, .-TimerMatchGet
	.section	.text.TimerMatchSet64,"ax",%progbits
	.align	1
	.global	TimerMatchSet64
	.thumb
	.thumb_func
	.type	TimerMatchSet64, %function
TimerMatchSet64:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r3, [r0, #52]
	str	r2, [r0, #48]
	bx	lr
	.size	TimerMatchSet64, .-TimerMatchSet64
	.section	.text.TimerMatchGet64,"ax",%progbits
	.align	1
	.global	TimerMatchGet64
	.thumb
	.thumb_func
	.type	TimerMatchGet64, %function
TimerMatchGet64:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.L112:
	ldr	r1, [r0, #52]
	ldr	r4, [r0, #48]
	ldr	r3, [r0, #52]
	cmp	r1, r3
	bne	.L112
	movs	r2, #0
	orr	r0, r2, r4
	pop	{r4, pc}
	.size	TimerMatchGet64, .-TimerMatchGet64
	.section	.text.TimerIntRegister,"ax",%progbits
	.align	1
	.global	TimerIntRegister
	.thumb
	.thumb_func
	.type	TimerIntRegister, %function
TimerIntRegister:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r5, r2
	bl	_TimerIntNumberGet
	mov	r1, r5
	mov	r4, r0
	bl	IntRegister
	mov	r0, r4
	pop	{r3, r4, r5, lr}
	b	IntEnable
	.size	TimerIntRegister, .-TimerIntRegister
	.section	.text.TimerIntUnregister,"ax",%progbits
	.align	1
	.global	TimerIntUnregister
	.thumb
	.thumb_func
	.type	TimerIntUnregister, %function
TimerIntUnregister:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	_TimerIntNumberGet
	mov	r4, r0
	bl	IntDisable
	mov	r0, r4
	pop	{r4, lr}
	b	IntUnregister
	.size	TimerIntUnregister, .-TimerIntUnregister
	.section	.text.TimerIntEnable,"ax",%progbits
	.align	1
	.global	TimerIntEnable
	.thumb
	.thumb_func
	.type	TimerIntEnable, %function
TimerIntEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #24]
	orrs	r1, r1, r3
	str	r1, [r0, #24]
	bx	lr
	.size	TimerIntEnable, .-TimerIntEnable
	.section	.text.TimerIntDisable,"ax",%progbits
	.align	1
	.global	TimerIntDisable
	.thumb
	.thumb_func
	.type	TimerIntDisable, %function
TimerIntDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #24]
	bic	r1, r3, r1
	str	r1, [r0, #24]
	bx	lr
	.size	TimerIntDisable, .-TimerIntDisable
	.section	.text.TimerIntStatus,"ax",%progbits
	.align	1
	.global	TimerIntStatus
	.thumb
	.thumb_func
	.type	TimerIntStatus, %function
TimerIntStatus:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r1, .L119
	ldr	r0, [r0, #32]
	bx	lr
.L119:
	ldr	r0, [r0, #28]
	bx	lr
	.size	TimerIntStatus, .-TimerIntStatus
	.section	.text.TimerIntClear,"ax",%progbits
	.align	1
	.global	TimerIntClear
	.thumb
	.thumb_func
	.type	TimerIntClear, %function
TimerIntClear:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r1, [r0, #36]
	bx	lr
	.size	TimerIntClear, .-TimerIntClear
	.section	.text.TimerSynchronize,"ax",%progbits
	.align	1
	.global	TimerSynchronize
	.thumb
	.thumb_func
	.type	TimerSynchronize, %function
TimerSynchronize:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r1, [r0, #16]
	bx	lr
	.size	TimerSynchronize, .-TimerSynchronize
	.section	.text.TimerADCEventSet,"ax",%progbits
	.align	1
	.global	TimerADCEventSet
	.thumb
	.thumb_func
	.type	TimerADCEventSet, %function
TimerADCEventSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r1, [r0, #112]
	bx	lr
	.size	TimerADCEventSet, .-TimerADCEventSet
	.section	.text.TimerADCEventGet,"ax",%progbits
	.align	1
	.global	TimerADCEventGet
	.thumb
	.thumb_func
	.type	TimerADCEventGet, %function
TimerADCEventGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #112]
	bx	lr
	.size	TimerADCEventGet, .-TimerADCEventGet
	.section	.text.TimerDMAEventSet,"ax",%progbits
	.align	1
	.global	TimerDMAEventSet
	.thumb
	.thumb_func
	.type	TimerDMAEventSet, %function
TimerDMAEventSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r1, [r0, #108]
	bx	lr
	.size	TimerDMAEventSet, .-TimerDMAEventSet
	.section	.text.TimerDMAEventGet,"ax",%progbits
	.align	1
	.global	TimerDMAEventGet
	.thumb
	.thumb_func
	.type	TimerDMAEventGet, %function
TimerDMAEventGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #108]
	bx	lr
	.size	TimerDMAEventGet, .-TimerDMAEventGet
	.section	.rodata.g_ppui32TimerIntMapSnowflake,"a",%progbits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	g_ppui32TimerIntMapSnowflake, %object
	.size	g_ppui32TimerIntMapSnowflake, 64
g_ppui32TimerIntMapSnowflake:
	.word	1073938432
	.word	35
	.word	1073942528
	.word	37
	.word	1073946624
	.word	39
	.word	1073950720
	.word	51
	.word	1073954816
	.word	79
	.word	1073958912
	.word	81
	.word	1074659328
	.word	114
	.word	1074663424
	.word	116
	.section	.rodata.g_ppui32TimerIntMap,"a",%progbits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	g_ppui32TimerIntMap, %object
	.size	g_ppui32TimerIntMap, 96
g_ppui32TimerIntMap:
	.word	1073938432
	.word	35
	.word	1073942528
	.word	37
	.word	1073946624
	.word	39
	.word	1073950720
	.word	51
	.word	1073954816
	.word	86
	.word	1073958912
	.word	108
	.word	1073963008
	.word	110
	.word	1073967104
	.word	112
	.word	1074053120
	.word	114
	.word	1074057216
	.word	116
	.word	1074061312
	.word	118
	.word	1074065408
	.word	120
	.ident	"GCC: (15:4.9.3+svn227297-1) 4.9.3 20150529 (prerelease)"
