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
	.file	"comp.c"
	.section	.text.ComparatorConfigure,"ax",%progbits
	.align	1
	.global	ComparatorConfigure
	.thumb
	.thumb_func
	.type	ComparatorConfigure, %function
ComparatorConfigure:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	adds	r0, r0, #36
	lsls	r1, r1, #5
	str	r2, [r0, r1]
	bx	lr
	.size	ComparatorConfigure, .-ComparatorConfigure
	.section	.text.ComparatorRefSet,"ax",%progbits
	.align	1
	.global	ComparatorRefSet
	.thumb
	.thumb_func
	.type	ComparatorRefSet, %function
ComparatorRefSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r1, [r0, #16]
	bx	lr
	.size	ComparatorRefSet, .-ComparatorRefSet
	.section	.text.ComparatorValueGet,"ax",%progbits
	.align	1
	.global	ComparatorValueGet
	.thumb
	.thumb_func
	.type	ComparatorValueGet, %function
ComparatorValueGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	lsls	r1, r1, #5
	adds	r0, r0, #32
	ldr	r0, [r0, r1]
	ubfx	r0, r0, #1, #1
	bx	lr
	.size	ComparatorValueGet, .-ComparatorValueGet
	.section	.text.ComparatorIntRegister,"ax",%progbits
	.align	1
	.global	ComparatorIntRegister
	.thumb
	.thumb_func
	.type	ComparatorIntRegister, %function
ComparatorIntRegister:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	add	r6, r1, #41
	mov	r4, r0
	mov	r5, r1
	mov	r0, r6
	mov	r1, r2
	bl	IntRegister
	mov	r0, r6
	bl	IntEnable
	ldr	r2, [r4, #8]
	movs	r3, #1
	lsls	r3, r3, r5
	orrs	r3, r3, r2
	str	r3, [r4, #8]
	pop	{r4, r5, r6, pc}
	.size	ComparatorIntRegister, .-ComparatorIntRegister
	.section	.text.ComparatorIntUnregister,"ax",%progbits
	.align	1
	.global	ComparatorIntUnregister
	.thumb
	.thumb_func
	.type	ComparatorIntUnregister, %function
ComparatorIntUnregister:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r2, [r0, #8]
	movs	r3, #1
	lsls	r3, r3, r1
	add	r4, r1, #41
	bic	r3, r2, r3
	str	r3, [r0, #8]
	mov	r0, r4
	bl	IntDisable
	mov	r0, r4
	pop	{r4, lr}
	b	IntUnregister
	.size	ComparatorIntUnregister, .-ComparatorIntUnregister
	.section	.text.ComparatorIntEnable,"ax",%progbits
	.align	1
	.global	ComparatorIntEnable
	.thumb
	.thumb_func
	.type	ComparatorIntEnable, %function
ComparatorIntEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0, #8]
	movs	r3, #1
	lsls	r3, r3, r1
	orrs	r3, r3, r2
	str	r3, [r0, #8]
	bx	lr
	.size	ComparatorIntEnable, .-ComparatorIntEnable
	.section	.text.ComparatorIntDisable,"ax",%progbits
	.align	1
	.global	ComparatorIntDisable
	.thumb
	.thumb_func
	.type	ComparatorIntDisable, %function
ComparatorIntDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #8]
	movs	r2, #1
	lsls	r2, r2, r1
	bic	r3, r3, r2
	str	r3, [r0, #8]
	bx	lr
	.size	ComparatorIntDisable, .-ComparatorIntDisable
	.section	.text.ComparatorIntStatus,"ax",%progbits
	.align	1
	.global	ComparatorIntStatus
	.thumb
	.thumb_func
	.type	ComparatorIntStatus, %function
ComparatorIntStatus:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r2, .L9
	ldr	r0, [r0]
	b	.L11
.L9:
	ldr	r0, [r0, #4]
.L11:
	lsrs	r0, r0, r1
	and	r0, r0, #1
	bx	lr
	.size	ComparatorIntStatus, .-ComparatorIntStatus
	.section	.text.ComparatorIntClear,"ax",%progbits
	.align	1
	.global	ComparatorIntClear
	.thumb
	.thumb_func
	.type	ComparatorIntClear, %function
ComparatorIntClear:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r3, #1
	lsls	r3, r3, r1
	str	r3, [r0]
	bx	lr
	.size	ComparatorIntClear, .-ComparatorIntClear
	.ident	"GCC: (15:4.9.3+svn227297-1) 4.9.3 20150529 (prerelease)"
