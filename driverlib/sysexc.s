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
	.file	"sysexc.c"
	.section	.text._SysExcIntNumberGet,"ax",%progbits
	.align	1
	.thumb
	.thumb_func
	.type	_SysExcIntNumberGet, %function
_SysExcIntNumberGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L6
	ldr	r3, .L6+4
	ldr	r1, [r2]
	ands	r3, r3, r1
	ldr	r1, .L6+8
	cmp	r3, r1
	beq	.L3
	ldr	r2, [r2]
	ldr	r3, .L6+4
	ldr	r0, .L6+12
	ands	r3, r3, r2
	cmp	r3, r0
	ite	eq
	moveq	r0, #83
	movne	r0, #0
	bx	lr
.L3:
	movs	r0, #122
	bx	lr
.L7:
	.align	2
.L6:
	.word	1074782208
	.word	1895759872
	.word	268763136
	.word	269090816
	.size	_SysExcIntNumberGet, .-_SysExcIntNumberGet
	.section	.text.SysExcIntRegister,"ax",%progbits
	.align	1
	.global	SysExcIntRegister
	.thumb
	.thumb_func
	.type	SysExcIntRegister, %function
SysExcIntRegister:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r5, r0
	bl	_SysExcIntNumberGet
	mov	r1, r5
	mov	r4, r0
	bl	IntRegister
	mov	r0, r4
	pop	{r3, r4, r5, lr}
	b	IntEnable
	.size	SysExcIntRegister, .-SysExcIntRegister
	.section	.text.SysExcIntUnregister,"ax",%progbits
	.align	1
	.global	SysExcIntUnregister
	.thumb
	.thumb_func
	.type	SysExcIntUnregister, %function
SysExcIntUnregister:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	_SysExcIntNumberGet
	mov	r4, r0
	bl	IntDisable
	mov	r0, r4
	pop	{r4, lr}
	b	IntUnregister
	.size	SysExcIntUnregister, .-SysExcIntUnregister
	.section	.text.SysExcIntEnable,"ax",%progbits
	.align	1
	.global	SysExcIntEnable
	.thumb
	.thumb_func
	.type	SysExcIntEnable, %function
SysExcIntEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L11
	ldr	r3, [r2]
	orrs	r0, r0, r3
	str	r0, [r2]
	bx	lr
.L12:
	.align	2
.L11:
	.word	1074761732
	.size	SysExcIntEnable, .-SysExcIntEnable
	.section	.text.SysExcIntDisable,"ax",%progbits
	.align	1
	.global	SysExcIntDisable
	.thumb
	.thumb_func
	.type	SysExcIntDisable, %function
SysExcIntDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L14
	ldr	r3, [r2]
	bic	r0, r3, r0
	str	r0, [r2]
	bx	lr
.L15:
	.align	2
.L14:
	.word	1074761732
	.size	SysExcIntDisable, .-SysExcIntDisable
	.section	.text.SysExcIntStatus,"ax",%progbits
	.align	1
	.global	SysExcIntStatus
	.thumb
	.thumb_func
	.type	SysExcIntStatus, %function
SysExcIntStatus:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L17
	ldr	r3, .L20
	b	.L19
.L17:
	ldr	r3, .L20+4
.L19:
	ldr	r0, [r3]
	bx	lr
.L21:
	.align	2
.L20:
	.word	1074761736
	.word	1074761728
	.size	SysExcIntStatus, .-SysExcIntStatus
	.section	.text.SysExcIntClear,"ax",%progbits
	.align	1
	.global	SysExcIntClear
	.thumb
	.thumb_func
	.type	SysExcIntClear, %function
SysExcIntClear:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L23
	str	r0, [r3]
	bx	lr
.L24:
	.align	2
.L23:
	.word	1074761740
	.size	SysExcIntClear, .-SysExcIntClear
	.ident	"GCC: (15:4.9.3+svn227297-1) 4.9.3 20150529 (prerelease)"
