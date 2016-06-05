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
	.file	"watchdog.c"
	.section	.text.WatchdogRunning,"ax",%progbits
	.align	1
	.global	WatchdogRunning
	.thumb
	.thumb_func
	.type	WatchdogRunning, %function
WatchdogRunning:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #8]
	and	r0, r0, #1
	bx	lr
	.size	WatchdogRunning, .-WatchdogRunning
	.section	.text.WatchdogEnable,"ax",%progbits
	.align	1
	.global	WatchdogEnable
	.thumb
	.thumb_func
	.type	WatchdogEnable, %function
WatchdogEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #8]
	orr	r3, r3, #1
	str	r3, [r0, #8]
	bx	lr
	.size	WatchdogEnable, .-WatchdogEnable
	.section	.text.WatchdogResetEnable,"ax",%progbits
	.align	1
	.global	WatchdogResetEnable
	.thumb
	.thumb_func
	.type	WatchdogResetEnable, %function
WatchdogResetEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #8]
	orr	r3, r3, #2
	str	r3, [r0, #8]
	bx	lr
	.size	WatchdogResetEnable, .-WatchdogResetEnable
	.section	.text.WatchdogResetDisable,"ax",%progbits
	.align	1
	.global	WatchdogResetDisable
	.thumb
	.thumb_func
	.type	WatchdogResetDisable, %function
WatchdogResetDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #8]
	bic	r3, r3, #2
	str	r3, [r0, #8]
	bx	lr
	.size	WatchdogResetDisable, .-WatchdogResetDisable
	.section	.text.WatchdogLock,"ax",%progbits
	.align	1
	.global	WatchdogLock
	.thumb
	.thumb_func
	.type	WatchdogLock, %function
WatchdogLock:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r3, #1
	str	r3, [r0, #3072]
	bx	lr
	.size	WatchdogLock, .-WatchdogLock
	.section	.text.WatchdogUnlock,"ax",%progbits
	.align	1
	.global	WatchdogUnlock
	.thumb
	.thumb_func
	.type	WatchdogUnlock, %function
WatchdogUnlock:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L7
	str	r3, [r0, #3072]
	bx	lr
.L8:
	.align	2
.L7:
	.word	449635665
	.size	WatchdogUnlock, .-WatchdogUnlock
	.section	.text.WatchdogLockState,"ax",%progbits
	.align	1
	.global	WatchdogLockState
	.thumb
	.thumb_func
	.type	WatchdogLockState, %function
WatchdogLockState:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #3072]
	subs	r3, r0, #1
	rsbs	r0, r3, #0
	adcs	r0, r0, r3
	bx	lr
	.size	WatchdogLockState, .-WatchdogLockState
	.section	.text.WatchdogReloadSet,"ax",%progbits
	.align	1
	.global	WatchdogReloadSet
	.thumb
	.thumb_func
	.type	WatchdogReloadSet, %function
WatchdogReloadSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r1, [r0]
	bx	lr
	.size	WatchdogReloadSet, .-WatchdogReloadSet
	.section	.text.WatchdogReloadGet,"ax",%progbits
	.align	1
	.global	WatchdogReloadGet
	.thumb
	.thumb_func
	.type	WatchdogReloadGet, %function
WatchdogReloadGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0]
	bx	lr
	.size	WatchdogReloadGet, .-WatchdogReloadGet
	.section	.text.WatchdogValueGet,"ax",%progbits
	.align	1
	.global	WatchdogValueGet
	.thumb
	.thumb_func
	.type	WatchdogValueGet, %function
WatchdogValueGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #4]
	bx	lr
	.size	WatchdogValueGet, .-WatchdogValueGet
	.section	.text.WatchdogIntRegister,"ax",%progbits
	.align	1
	.global	WatchdogIntRegister
	.thumb
	.thumb_func
	.type	WatchdogIntRegister, %function
WatchdogIntRegister:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	movs	r0, #34
	bl	IntRegister
	movs	r0, #34
	pop	{r3, lr}
	b	IntEnable
	.size	WatchdogIntRegister, .-WatchdogIntRegister
	.section	.text.WatchdogIntUnregister,"ax",%progbits
	.align	1
	.global	WatchdogIntUnregister
	.thumb
	.thumb_func
	.type	WatchdogIntUnregister, %function
WatchdogIntUnregister:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	movs	r0, #34
	bl	IntDisable
	movs	r0, #34
	pop	{r3, lr}
	b	IntUnregister
	.size	WatchdogIntUnregister, .-WatchdogIntUnregister
	.section	.text.WatchdogIntEnable,"ax",%progbits
	.align	1
	.global	WatchdogIntEnable
	.thumb
	.thumb_func
	.type	WatchdogIntEnable, %function
WatchdogIntEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #8]
	orr	r3, r3, #1
	str	r3, [r0, #8]
	bx	lr
	.size	WatchdogIntEnable, .-WatchdogIntEnable
	.section	.text.WatchdogIntStatus,"ax",%progbits
	.align	1
	.global	WatchdogIntStatus
	.thumb
	.thumb_func
	.type	WatchdogIntStatus, %function
WatchdogIntStatus:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r1, .L17
	ldr	r0, [r0, #20]
	bx	lr
.L17:
	ldr	r0, [r0, #16]
	bx	lr
	.size	WatchdogIntStatus, .-WatchdogIntStatus
	.section	.text.WatchdogIntClear,"ax",%progbits
	.align	1
	.global	WatchdogIntClear
	.thumb
	.thumb_func
	.type	WatchdogIntClear, %function
WatchdogIntClear:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r3, #1
	str	r3, [r0, #12]
	bx	lr
	.size	WatchdogIntClear, .-WatchdogIntClear
	.section	.text.WatchdogIntTypeSet,"ax",%progbits
	.align	1
	.global	WatchdogIntTypeSet
	.thumb
	.thumb_func
	.type	WatchdogIntTypeSet, %function
WatchdogIntTypeSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #8]
	bic	r3, r3, #4
	orrs	r1, r1, r3
	str	r1, [r0, #8]
	bx	lr
	.size	WatchdogIntTypeSet, .-WatchdogIntTypeSet
	.section	.text.WatchdogStallEnable,"ax",%progbits
	.align	1
	.global	WatchdogStallEnable
	.thumb
	.thumb_func
	.type	WatchdogStallEnable, %function
WatchdogStallEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #1048]
	orr	r3, r3, #256
	str	r3, [r0, #1048]
	bx	lr
	.size	WatchdogStallEnable, .-WatchdogStallEnable
	.section	.text.WatchdogStallDisable,"ax",%progbits
	.align	1
	.global	WatchdogStallDisable
	.thumb
	.thumb_func
	.type	WatchdogStallDisable, %function
WatchdogStallDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #1048]
	bic	r3, r3, #256
	str	r3, [r0, #1048]
	bx	lr
	.size	WatchdogStallDisable, .-WatchdogStallDisable
	.ident	"GCC: (15:4.9.3+svn227297-1) 4.9.3 20150529 (prerelease)"
