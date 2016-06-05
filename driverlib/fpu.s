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
	.file	"fpu.c"
	.section	.text.FPUEnable,"ax",%progbits
	.align	1
	.global	FPUEnable
	.thumb
	.thumb_func
	.type	FPUEnable, %function
FPUEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L2
	ldr	r3, [r2]
	orr	r3, r3, #15728640
	str	r3, [r2]
	bx	lr
.L3:
	.align	2
.L2:
	.word	-536810104
	.size	FPUEnable, .-FPUEnable
	.section	.text.FPUDisable,"ax",%progbits
	.align	1
	.global	FPUDisable
	.thumb
	.thumb_func
	.type	FPUDisable, %function
FPUDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L5
	ldr	r3, [r2]
	bic	r3, r3, #15728640
	str	r3, [r2]
	bx	lr
.L6:
	.align	2
.L5:
	.word	-536810104
	.size	FPUDisable, .-FPUDisable
	.section	.text.FPUStackingEnable,"ax",%progbits
	.align	1
	.global	FPUStackingEnable
	.thumb
	.thumb_func
	.type	FPUStackingEnable, %function
FPUStackingEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L8
	ldr	r3, [r2]
	bic	r3, r3, #-1073741824
	orr	r3, r3, #-2147483648
	str	r3, [r2]
	bx	lr
.L9:
	.align	2
.L8:
	.word	-536809676
	.size	FPUStackingEnable, .-FPUStackingEnable
	.section	.text.FPULazyStackingEnable,"ax",%progbits
	.align	1
	.global	FPULazyStackingEnable
	.thumb
	.thumb_func
	.type	FPULazyStackingEnable, %function
FPULazyStackingEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L11
	ldr	r3, [r2]
	orr	r3, r3, #-1073741824
	str	r3, [r2]
	bx	lr
.L12:
	.align	2
.L11:
	.word	-536809676
	.size	FPULazyStackingEnable, .-FPULazyStackingEnable
	.section	.text.FPUStackingDisable,"ax",%progbits
	.align	1
	.global	FPUStackingDisable
	.thumb
	.thumb_func
	.type	FPUStackingDisable, %function
FPUStackingDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L14
	ldr	r3, [r2]
	bic	r3, r3, #-1073741824
	str	r3, [r2]
	bx	lr
.L15:
	.align	2
.L14:
	.word	-536809676
	.size	FPUStackingDisable, .-FPUStackingDisable
	.section	.text.FPUHalfPrecisionModeSet,"ax",%progbits
	.align	1
	.global	FPUHalfPrecisionModeSet
	.thumb
	.thumb_func
	.type	FPUHalfPrecisionModeSet, %function
FPUHalfPrecisionModeSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L17
	ldr	r3, [r2]
	bic	r3, r3, #67108864
	orrs	r0, r0, r3
	str	r0, [r2]
	bx	lr
.L18:
	.align	2
.L17:
	.word	-536809668
	.size	FPUHalfPrecisionModeSet, .-FPUHalfPrecisionModeSet
	.section	.text.FPUNaNModeSet,"ax",%progbits
	.align	1
	.global	FPUNaNModeSet
	.thumb
	.thumb_func
	.type	FPUNaNModeSet, %function
FPUNaNModeSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L20
	ldr	r3, [r2]
	bic	r3, r3, #33554432
	orrs	r0, r0, r3
	str	r0, [r2]
	bx	lr
.L21:
	.align	2
.L20:
	.word	-536809668
	.size	FPUNaNModeSet, .-FPUNaNModeSet
	.section	.text.FPUFlushToZeroModeSet,"ax",%progbits
	.align	1
	.global	FPUFlushToZeroModeSet
	.thumb
	.thumb_func
	.type	FPUFlushToZeroModeSet, %function
FPUFlushToZeroModeSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L23
	ldr	r3, [r2]
	bic	r3, r3, #16777216
	orrs	r0, r0, r3
	str	r0, [r2]
	bx	lr
.L24:
	.align	2
.L23:
	.word	-536809668
	.size	FPUFlushToZeroModeSet, .-FPUFlushToZeroModeSet
	.section	.text.FPURoundingModeSet,"ax",%progbits
	.align	1
	.global	FPURoundingModeSet
	.thumb
	.thumb_func
	.type	FPURoundingModeSet, %function
FPURoundingModeSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L26
	ldr	r3, [r2]
	bic	r3, r3, #12582912
	orrs	r0, r0, r3
	str	r0, [r2]
	bx	lr
.L27:
	.align	2
.L26:
	.word	-536809668
	.size	FPURoundingModeSet, .-FPURoundingModeSet
	.ident	"GCC: (15:4.9.3+svn227297-1) 4.9.3 20150529 (prerelease)"
