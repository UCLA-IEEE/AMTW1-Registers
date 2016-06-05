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
	.file	"qei.c"
	.section	.text._QEIIntNumberGet,"ax",%progbits
	.align	1
	.thumb
	.thumb_func
	.type	_QEIIntNumberGet, %function
_QEIIntNumberGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L8
	ldr	r3, .L8+4
	ldr	r1, [r2]
	ands	r3, r3, r1
	ldr	r1, .L8+8
	cmp	r3, r1
	bne	.L2
	ldr	r3, .L8+12
	cmp	r0, r3
	ite	eq
	moveq	r0, #29
	movne	r0, #54
	bx	lr
.L2:
	ldr	r2, [r2]
	ldr	r3, .L8+4
	ands	r3, r3, r2
	ldr	r2, .L8+16
	cmp	r3, r2
	bne	.L5
	ldr	r3, .L8+12
	cmp	r0, r3
	ite	eq
	moveq	r0, #29
	movne	r0, #0
	bx	lr
.L5:
	movs	r0, #0
	bx	lr
.L9:
	.align	2
.L8:
	.word	1074782208
	.word	1895759872
	.word	268763136
	.word	1073922048
	.word	269090816
	.size	_QEIIntNumberGet, .-_QEIIntNumberGet
	.section	.text.QEIEnable,"ax",%progbits
	.align	1
	.global	QEIEnable
	.thumb
	.thumb_func
	.type	QEIEnable, %function
QEIEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0]
	orr	r3, r3, #1
	str	r3, [r0]
	bx	lr
	.size	QEIEnable, .-QEIEnable
	.section	.text.QEIDisable,"ax",%progbits
	.align	1
	.global	QEIDisable
	.thumb
	.thumb_func
	.type	QEIDisable, %function
QEIDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0]
	bic	r3, r3, #1
	str	r3, [r0]
	bx	lr
	.size	QEIDisable, .-QEIDisable
	.section	.text.QEIConfigure,"ax",%progbits
	.align	1
	.global	QEIConfigure
	.thumb
	.thumb_func
	.type	QEIConfigure, %function
QEIConfigure:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0]
	bic	r3, r3, #30
	orrs	r1, r1, r3
	str	r1, [r0]
	str	r2, [r0, #12]
	bx	lr
	.size	QEIConfigure, .-QEIConfigure
	.section	.text.QEIPositionGet,"ax",%progbits
	.align	1
	.global	QEIPositionGet
	.thumb
	.thumb_func
	.type	QEIPositionGet, %function
QEIPositionGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #8]
	bx	lr
	.size	QEIPositionGet, .-QEIPositionGet
	.section	.text.QEIPositionSet,"ax",%progbits
	.align	1
	.global	QEIPositionSet
	.thumb
	.thumb_func
	.type	QEIPositionSet, %function
QEIPositionSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r1, [r0, #8]
	bx	lr
	.size	QEIPositionSet, .-QEIPositionSet
	.section	.text.QEIDirectionGet,"ax",%progbits
	.align	1
	.global	QEIDirectionGet
	.thumb
	.thumb_func
	.type	QEIDirectionGet, %function
QEIDirectionGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #4]
	tst	r3, #2
	ite	ne
	movne	r0, #-1
	moveq	r0, #1
	bx	lr
	.size	QEIDirectionGet, .-QEIDirectionGet
	.section	.text.QEIErrorGet,"ax",%progbits
	.align	1
	.global	QEIErrorGet
	.thumb
	.thumb_func
	.type	QEIErrorGet, %function
QEIErrorGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #4]
	and	r0, r0, #1
	bx	lr
	.size	QEIErrorGet, .-QEIErrorGet
	.section	.text.QEIVelocityEnable,"ax",%progbits
	.align	1
	.global	QEIVelocityEnable
	.thumb
	.thumb_func
	.type	QEIVelocityEnable, %function
QEIVelocityEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0]
	orr	r3, r3, #32
	str	r3, [r0]
	bx	lr
	.size	QEIVelocityEnable, .-QEIVelocityEnable
	.section	.text.QEIVelocityDisable,"ax",%progbits
	.align	1
	.global	QEIVelocityDisable
	.thumb
	.thumb_func
	.type	QEIVelocityDisable, %function
QEIVelocityDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0]
	bic	r3, r3, #32
	str	r3, [r0]
	bx	lr
	.size	QEIVelocityDisable, .-QEIVelocityDisable
	.section	.text.QEIVelocityConfigure,"ax",%progbits
	.align	1
	.global	QEIVelocityConfigure
	.thumb
	.thumb_func
	.type	QEIVelocityConfigure, %function
QEIVelocityConfigure:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0]
	bic	r3, r3, #448
	orrs	r1, r1, r3
	subs	r2, r2, #1
	str	r1, [r0]
	str	r2, [r0, #16]
	bx	lr
	.size	QEIVelocityConfigure, .-QEIVelocityConfigure
	.section	.text.QEIVelocityGet,"ax",%progbits
	.align	1
	.global	QEIVelocityGet
	.thumb
	.thumb_func
	.type	QEIVelocityGet, %function
QEIVelocityGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #28]
	bx	lr
	.size	QEIVelocityGet, .-QEIVelocityGet
	.section	.text.QEIIntRegister,"ax",%progbits
	.align	1
	.global	QEIIntRegister
	.thumb
	.thumb_func
	.type	QEIIntRegister, %function
QEIIntRegister:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r5, r1
	bl	_QEIIntNumberGet
	mov	r1, r5
	mov	r4, r0
	bl	IntRegister
	mov	r0, r4
	pop	{r3, r4, r5, lr}
	b	IntEnable
	.size	QEIIntRegister, .-QEIIntRegister
	.section	.text.QEIIntUnregister,"ax",%progbits
	.align	1
	.global	QEIIntUnregister
	.thumb
	.thumb_func
	.type	QEIIntUnregister, %function
QEIIntUnregister:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	_QEIIntNumberGet
	mov	r4, r0
	bl	IntDisable
	mov	r0, r4
	pop	{r4, lr}
	b	IntUnregister
	.size	QEIIntUnregister, .-QEIIntUnregister
	.section	.text.QEIIntEnable,"ax",%progbits
	.align	1
	.global	QEIIntEnable
	.thumb
	.thumb_func
	.type	QEIIntEnable, %function
QEIIntEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #32]
	orrs	r1, r1, r3
	str	r1, [r0, #32]
	bx	lr
	.size	QEIIntEnable, .-QEIIntEnable
	.section	.text.QEIIntDisable,"ax",%progbits
	.align	1
	.global	QEIIntDisable
	.thumb
	.thumb_func
	.type	QEIIntDisable, %function
QEIIntDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #32]
	bic	r1, r3, r1
	str	r1, [r0, #32]
	bx	lr
	.size	QEIIntDisable, .-QEIIntDisable
	.section	.text.QEIIntStatus,"ax",%progbits
	.align	1
	.global	QEIIntStatus
	.thumb
	.thumb_func
	.type	QEIIntStatus, %function
QEIIntStatus:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r1, .L28
	ldr	r0, [r0, #40]
	bx	lr
.L28:
	ldr	r0, [r0, #36]
	bx	lr
	.size	QEIIntStatus, .-QEIIntStatus
	.section	.text.QEIIntClear,"ax",%progbits
	.align	1
	.global	QEIIntClear
	.thumb
	.thumb_func
	.type	QEIIntClear, %function
QEIIntClear:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r1, [r0, #40]
	bx	lr
	.size	QEIIntClear, .-QEIIntClear
	.ident	"GCC: (15:4.9.3+svn227297-1) 4.9.3 20150529 (prerelease)"
