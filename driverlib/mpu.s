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
	.file	"mpu.c"
	.section	.text.MPUEnable,"ax",%progbits
	.align	1
	.global	MPUEnable
	.thumb
	.thumb_func
	.type	MPUEnable, %function
MPUEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L2
	orr	r0, r0, #1
	str	r0, [r3]
	bx	lr
.L3:
	.align	2
.L2:
	.word	-536810092
	.size	MPUEnable, .-MPUEnable
	.section	.text.MPUDisable,"ax",%progbits
	.align	1
	.global	MPUDisable
	.thumb
	.thumb_func
	.type	MPUDisable, %function
MPUDisable:
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
	.word	-536810092
	.size	MPUDisable, .-MPUDisable
	.section	.text.MPURegionCountGet,"ax",%progbits
	.align	1
	.global	MPURegionCountGet
	.thumb
	.thumb_func
	.type	MPURegionCountGet, %function
MPURegionCountGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L8
	ldr	r0, [r3]
	ubfx	r0, r0, #8, #8
	bx	lr
.L9:
	.align	2
.L8:
	.word	-536810096
	.size	MPURegionCountGet, .-MPURegionCountGet
	.section	.text.MPURegionEnable,"ax",%progbits
	.align	1
	.global	MPURegionEnable
	.thumb
	.thumb_func
	.type	MPURegionEnable, %function
MPURegionEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L11
	ldr	r2, .L11+4
	str	r0, [r3]
	ldr	r3, [r2]
	orr	r3, r3, #1
	str	r3, [r2]
	bx	lr
.L12:
	.align	2
.L11:
	.word	-536810088
	.word	-536810080
	.size	MPURegionEnable, .-MPURegionEnable
	.section	.text.MPURegionDisable,"ax",%progbits
	.align	1
	.global	MPURegionDisable
	.thumb
	.thumb_func
	.type	MPURegionDisable, %function
MPURegionDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L14
	ldr	r2, .L14+4
	str	r0, [r3]
	ldr	r3, [r2]
	bic	r3, r3, #1
	str	r3, [r2]
	bx	lr
.L15:
	.align	2
.L14:
	.word	-536810088
	.word	-536810080
	.size	MPURegionDisable, .-MPURegionDisable
	.section	.text.MPURegionSet,"ax",%progbits
	.align	1
	.global	MPURegionSet
	.thumb
	.thumb_func
	.type	MPURegionSet, %function
MPURegionSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L17
	orr	r0, r0, #16
	bic	r2, r2, #4128768
	orrs	r1, r1, r0
	orr	r2, r2, #327680
	str	r1, [r3]
	str	r2, [r3, #4]
	bx	lr
.L18:
	.align	2
.L17:
	.word	-536810084
	.size	MPURegionSet, .-MPURegionSet
	.section	.text.MPURegionGet,"ax",%progbits
	.align	1
	.global	MPURegionGet
	.thumb
	.thumb_func
	.type	MPURegionGet, %function
MPURegionGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L20
	str	r0, [r3]
	adds	r3, r3, #4
	ldr	r3, [r3]
	bic	r3, r3, #31
	str	r3, [r1]
	ldr	r3, .L20+4
	ldr	r3, [r3]
	str	r3, [r2]
	bx	lr
.L21:
	.align	2
.L20:
	.word	-536810088
	.word	-536810080
	.size	MPURegionGet, .-MPURegionGet
	.section	.text.MPUIntRegister,"ax",%progbits
	.align	1
	.global	MPUIntRegister
	.thumb
	.thumb_func
	.type	MPUIntRegister, %function
MPUIntRegister:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	mov	r1, r0
	movs	r0, #4
	bl	IntRegister
	movs	r0, #4
	pop	{r3, lr}
	b	IntEnable
	.size	MPUIntRegister, .-MPUIntRegister
	.section	.text.MPUIntUnregister,"ax",%progbits
	.align	1
	.global	MPUIntUnregister
	.thumb
	.thumb_func
	.type	MPUIntUnregister, %function
MPUIntUnregister:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	movs	r0, #4
	bl	IntDisable
	movs	r0, #4
	pop	{r3, lr}
	b	IntUnregister
	.size	MPUIntUnregister, .-MPUIntUnregister
	.ident	"GCC: (15:4.9.3+svn227297-1) 4.9.3 20150529 (prerelease)"
