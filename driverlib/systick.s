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
	.file	"systick.c"
	.section	.text.SysTickEnable,"ax",%progbits
	.align	1
	.global	SysTickEnable
	.thumb
	.thumb_func
	.type	SysTickEnable, %function
SysTickEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L2
	ldr	r3, [r2]
	orr	r3, r3, #5
	str	r3, [r2]
	bx	lr
.L3:
	.align	2
.L2:
	.word	-536813552
	.size	SysTickEnable, .-SysTickEnable
	.section	.text.SysTickDisable,"ax",%progbits
	.align	1
	.global	SysTickDisable
	.thumb
	.thumb_func
	.type	SysTickDisable, %function
SysTickDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L5
	ldr	r3, [r2]
	bic	r3, r3, #1
	str	r3, [r2]
	bx	lr
.L6:
	.align	2
.L5:
	.word	-536813552
	.size	SysTickDisable, .-SysTickDisable
	.section	.text.SysTickIntRegister,"ax",%progbits
	.align	1
	.global	SysTickIntRegister
	.thumb
	.thumb_func
	.type	SysTickIntRegister, %function
SysTickIntRegister:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	mov	r1, r0
	movs	r0, #15
	bl	IntRegister
	ldr	r2, .L8
	ldr	r3, [r2]
	orr	r3, r3, #2
	str	r3, [r2]
	pop	{r3, pc}
.L9:
	.align	2
.L8:
	.word	-536813552
	.size	SysTickIntRegister, .-SysTickIntRegister
	.section	.text.SysTickIntUnregister,"ax",%progbits
	.align	1
	.global	SysTickIntUnregister
	.thumb
	.thumb_func
	.type	SysTickIntUnregister, %function
SysTickIntUnregister:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L11
	ldr	r3, [r2]
	bic	r3, r3, #2
	str	r3, [r2]
	movs	r0, #15
	b	IntUnregister
.L12:
	.align	2
.L11:
	.word	-536813552
	.size	SysTickIntUnregister, .-SysTickIntUnregister
	.section	.text.SysTickIntEnable,"ax",%progbits
	.align	1
	.global	SysTickIntEnable
	.thumb
	.thumb_func
	.type	SysTickIntEnable, %function
SysTickIntEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L14
	ldr	r3, [r2]
	orr	r3, r3, #2
	str	r3, [r2]
	bx	lr
.L15:
	.align	2
.L14:
	.word	-536813552
	.size	SysTickIntEnable, .-SysTickIntEnable
	.section	.text.SysTickIntDisable,"ax",%progbits
	.align	1
	.global	SysTickIntDisable
	.thumb
	.thumb_func
	.type	SysTickIntDisable, %function
SysTickIntDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L17
	ldr	r3, [r2]
	bic	r3, r3, #2
	str	r3, [r2]
	bx	lr
.L18:
	.align	2
.L17:
	.word	-536813552
	.size	SysTickIntDisable, .-SysTickIntDisable
	.section	.text.SysTickPeriodSet,"ax",%progbits
	.align	1
	.global	SysTickPeriodSet
	.thumb
	.thumb_func
	.type	SysTickPeriodSet, %function
SysTickPeriodSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L20
	subs	r0, r0, #1
	str	r0, [r3]
	bx	lr
.L21:
	.align	2
.L20:
	.word	-536813548
	.size	SysTickPeriodSet, .-SysTickPeriodSet
	.section	.text.SysTickPeriodGet,"ax",%progbits
	.align	1
	.global	SysTickPeriodGet
	.thumb
	.thumb_func
	.type	SysTickPeriodGet, %function
SysTickPeriodGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L23
	ldr	r0, [r3]
	adds	r0, r0, #1
	bx	lr
.L24:
	.align	2
.L23:
	.word	-536813548
	.size	SysTickPeriodGet, .-SysTickPeriodGet
	.section	.text.SysTickValueGet,"ax",%progbits
	.align	1
	.global	SysTickValueGet
	.thumb
	.thumb_func
	.type	SysTickValueGet, %function
SysTickValueGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L26
	ldr	r0, [r3]
	bx	lr
.L27:
	.align	2
.L26:
	.word	-536813544
	.size	SysTickValueGet, .-SysTickValueGet
	.ident	"GCC: (15:4.9.3+svn227297-1) 4.9.3 20150529 (prerelease)"
