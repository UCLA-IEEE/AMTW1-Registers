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
	.file	"ssi.c"
	.section	.text._SSIIntNumberGet,"ax",%progbits
	.align	1
	.thumb
	.thumb_func
	.type	_SSIIntNumberGet, %function
_SSIIntNumberGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L9
	ldr	r1, .L9+4
	ldr	r3, [r3]
	ldr	r2, .L9+8
	ands	r1, r1, r3
	push	{r4, lr}
	ldr	r3, .L9+12
	ldr	r4, .L9+16
	cmp	r1, r4
	it	ne
	movne	r2, r3
	movs	r3, #0
.L5:
	ldr	r4, [r2, r3]
	cmp	r4, r0
	add	r1, r2, r3
	bne	.L3
	ldr	r0, [r1, #4]
	pop	{r4, pc}
.L3:
	adds	r3, r3, #8
	cmp	r3, #32
	bne	.L5
	movs	r0, #0
	pop	{r4, pc}
.L10:
	.align	2
.L9:
	.word	1074782208
	.word	1895759872
	.word	.LANCHOR1
	.word	.LANCHOR0
	.word	269090816
	.size	_SSIIntNumberGet, .-_SSIIntNumberGet
	.section	.text.SSIConfigSetExpClk,"ax",%progbits
	.align	1
	.global	SSIConfigSetExpClk
	.thumb
	.thumb_func
	.type	SSIConfigSetExpClk, %function
SSIConfigSetExpClk:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r3, #2
	push	{r4, lr}
	beq	.L14
	cbz	r3, .L15
	movs	r3, #0
	b	.L17
.L14:
	movs	r3, #8
.L17:
	movs	r4, #4
	b	.L12
.L15:
	mov	r4, r3
.L12:
	orrs	r3, r3, r4
	str	r3, [r0, #4]
	ldr	r3, [sp, #8]
	udiv	r1, r1, r3
	movs	r3, #0
.L13:
	adds	r3, r3, #2
	udiv	r4, r1, r3
	subs	r4, r4, #1
	cmp	r4, #255
	bhi	.L13
	str	r3, [r0, #16]
	ldr	r3, [sp, #12]
	and	r1, r2, #48
	subs	r3, r3, #1
	orrs	r1, r1, r3
	lsls	r3, r2, #6
	uxtb	r3, r3
	orr	r2, r1, r3
	orr	r2, r2, r4, lsl #8
	str	r2, [r0]
	pop	{r4, pc}
	.size	SSIConfigSetExpClk, .-SSIConfigSetExpClk
	.section	.text.SSIEnable,"ax",%progbits
	.align	1
	.global	SSIEnable
	.thumb
	.thumb_func
	.type	SSIEnable, %function
SSIEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #4]
	orr	r3, r3, #2
	str	r3, [r0, #4]
	bx	lr
	.size	SSIEnable, .-SSIEnable
	.section	.text.SSIDisable,"ax",%progbits
	.align	1
	.global	SSIDisable
	.thumb
	.thumb_func
	.type	SSIDisable, %function
SSIDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #4]
	bic	r3, r3, #2
	str	r3, [r0, #4]
	bx	lr
	.size	SSIDisable, .-SSIDisable
	.section	.text.SSIIntRegister,"ax",%progbits
	.align	1
	.global	SSIIntRegister
	.thumb
	.thumb_func
	.type	SSIIntRegister, %function
SSIIntRegister:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r5, r1
	bl	_SSIIntNumberGet
	mov	r1, r5
	mov	r4, r0
	bl	IntRegister
	mov	r0, r4
	pop	{r3, r4, r5, lr}
	b	IntEnable
	.size	SSIIntRegister, .-SSIIntRegister
	.section	.text.SSIIntUnregister,"ax",%progbits
	.align	1
	.global	SSIIntUnregister
	.thumb
	.thumb_func
	.type	SSIIntUnregister, %function
SSIIntUnregister:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	_SSIIntNumberGet
	mov	r4, r0
	bl	IntDisable
	mov	r0, r4
	pop	{r4, lr}
	b	IntUnregister
	.size	SSIIntUnregister, .-SSIIntUnregister
	.section	.text.SSIIntEnable,"ax",%progbits
	.align	1
	.global	SSIIntEnable
	.thumb
	.thumb_func
	.type	SSIIntEnable, %function
SSIIntEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #20]
	orrs	r1, r1, r3
	str	r1, [r0, #20]
	bx	lr
	.size	SSIIntEnable, .-SSIIntEnable
	.section	.text.SSIIntDisable,"ax",%progbits
	.align	1
	.global	SSIIntDisable
	.thumb
	.thumb_func
	.type	SSIIntDisable, %function
SSIIntDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #20]
	bic	r1, r3, r1
	str	r1, [r0, #20]
	bx	lr
	.size	SSIIntDisable, .-SSIIntDisable
	.section	.text.SSIIntStatus,"ax",%progbits
	.align	1
	.global	SSIIntStatus
	.thumb
	.thumb_func
	.type	SSIIntStatus, %function
SSIIntStatus:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r1, .L25
	ldr	r0, [r0, #28]
	bx	lr
.L25:
	ldr	r0, [r0, #24]
	bx	lr
	.size	SSIIntStatus, .-SSIIntStatus
	.section	.text.SSIIntClear,"ax",%progbits
	.align	1
	.global	SSIIntClear
	.thumb
	.thumb_func
	.type	SSIIntClear, %function
SSIIntClear:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r1, [r0, #32]
	bx	lr
	.size	SSIIntClear, .-SSIIntClear
	.section	.text.SSIDataPut,"ax",%progbits
	.align	1
	.global	SSIDataPut
	.thumb
	.thumb_func
	.type	SSIDataPut, %function
SSIDataPut:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.L29:
	ldr	r3, [r0, #12]
	lsls	r3, r3, #30
	bpl	.L29
	str	r1, [r0, #8]
	bx	lr
	.size	SSIDataPut, .-SSIDataPut
	.section	.text.SSIDataPutNonBlocking,"ax",%progbits
	.align	1
	.global	SSIDataPutNonBlocking
	.thumb
	.thumb_func
	.type	SSIDataPutNonBlocking, %function
SSIDataPutNonBlocking:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #12]
	ands	r3, r3, #2
	itte	ne
	strne	r1, [r0, #8]
	movne	r0, #1
	moveq	r0, r3
	bx	lr
	.size	SSIDataPutNonBlocking, .-SSIDataPutNonBlocking
	.section	.text.SSIDataGet,"ax",%progbits
	.align	1
	.global	SSIDataGet
	.thumb
	.thumb_func
	.type	SSIDataGet, %function
SSIDataGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.L36:
	ldr	r3, [r0, #12]
	lsls	r3, r3, #29
	bpl	.L36
	ldr	r3, [r0, #8]
	str	r3, [r1]
	bx	lr
	.size	SSIDataGet, .-SSIDataGet
	.section	.text.SSIDataGetNonBlocking,"ax",%progbits
	.align	1
	.global	SSIDataGetNonBlocking
	.thumb
	.thumb_func
	.type	SSIDataGetNonBlocking, %function
SSIDataGetNonBlocking:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #12]
	ands	r3, r3, #4
	ittte	ne
	ldrne	r3, [r0, #8]
	strne	r3, [r1]
	movne	r0, #1
	moveq	r0, r3
	bx	lr
	.size	SSIDataGetNonBlocking, .-SSIDataGetNonBlocking
	.section	.text.SSIDMAEnable,"ax",%progbits
	.align	1
	.global	SSIDMAEnable
	.thumb
	.thumb_func
	.type	SSIDMAEnable, %function
SSIDMAEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #36]
	orrs	r1, r1, r3
	str	r1, [r0, #36]
	bx	lr
	.size	SSIDMAEnable, .-SSIDMAEnable
	.section	.text.SSIDMADisable,"ax",%progbits
	.align	1
	.global	SSIDMADisable
	.thumb
	.thumb_func
	.type	SSIDMADisable, %function
SSIDMADisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #36]
	bic	r1, r3, r1
	str	r1, [r0, #36]
	bx	lr
	.size	SSIDMADisable, .-SSIDMADisable
	.section	.text.SSIBusy,"ax",%progbits
	.align	1
	.global	SSIBusy
	.thumb
	.thumb_func
	.type	SSIBusy, %function
SSIBusy:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #12]
	ubfx	r0, r0, #4, #1
	bx	lr
	.size	SSIBusy, .-SSIBusy
	.section	.text.SSIClockSourceSet,"ax",%progbits
	.align	1
	.global	SSIClockSourceSet
	.thumb
	.thumb_func
	.type	SSIClockSourceSet, %function
SSIClockSourceSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r1, [r0, #4040]
	bx	lr
	.size	SSIClockSourceSet, .-SSIClockSourceSet
	.section	.text.SSIClockSourceGet,"ax",%progbits
	.align	1
	.global	SSIClockSourceGet
	.thumb
	.thumb_func
	.type	SSIClockSourceGet, %function
SSIClockSourceGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #4040]
	bx	lr
	.size	SSIClockSourceGet, .-SSIClockSourceGet
	.section	.text.SSIAdvModeSet,"ax",%progbits
	.align	1
	.global	SSIAdvModeSet
	.thumb
	.thumb_func
	.type	SSIAdvModeSet, %function
SSIAdvModeSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #4]
	bic	r3, r3, #448
	orrs	r1, r1, r3
	str	r1, [r0, #4]
	bx	lr
	.size	SSIAdvModeSet, .-SSIAdvModeSet
	.section	.text.SSIAdvDataPutFrameEnd,"ax",%progbits
	.align	1
	.global	SSIAdvDataPutFrameEnd
	.thumb
	.thumb_func
	.type	SSIAdvDataPutFrameEnd, %function
SSIAdvDataPutFrameEnd:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.L49:
	ldr	r3, [r0, #12]
	lsls	r3, r3, #30
	bpl	.L49
	ldr	r3, [r0, #4]
	orr	r3, r3, #2048
	str	r3, [r0, #4]
	str	r1, [r0, #8]
	bx	lr
	.size	SSIAdvDataPutFrameEnd, .-SSIAdvDataPutFrameEnd
	.section	.text.SSIAdvDataPutFrameEndNonBlocking,"ax",%progbits
	.align	1
	.global	SSIAdvDataPutFrameEndNonBlocking
	.thumb
	.thumb_func
	.type	SSIAdvDataPutFrameEndNonBlocking, %function
SSIAdvDataPutFrameEndNonBlocking:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #12]
	ands	r3, r3, #2
	itttt	ne
	ldrne	r3, [r0, #4]
	orrne	r3, r3, #2048
	strne	r3, [r0, #4]
	strne	r1, [r0, #8]
	ite	ne
	movne	r0, #1
	moveq	r0, r3
	bx	lr
	.size	SSIAdvDataPutFrameEndNonBlocking, .-SSIAdvDataPutFrameEndNonBlocking
	.section	.text.SSIAdvFrameHoldEnable,"ax",%progbits
	.align	1
	.global	SSIAdvFrameHoldEnable
	.thumb
	.thumb_func
	.type	SSIAdvFrameHoldEnable, %function
SSIAdvFrameHoldEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #4]
	orr	r3, r3, #1024
	str	r3, [r0, #4]
	bx	lr
	.size	SSIAdvFrameHoldEnable, .-SSIAdvFrameHoldEnable
	.section	.text.SSIAdvFrameHoldDisable,"ax",%progbits
	.align	1
	.global	SSIAdvFrameHoldDisable
	.thumb
	.thumb_func
	.type	SSIAdvFrameHoldDisable, %function
SSIAdvFrameHoldDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #4]
	bic	r3, r3, #1024
	str	r3, [r0, #4]
	bx	lr
	.size	SSIAdvFrameHoldDisable, .-SSIAdvFrameHoldDisable
	.section	.rodata.g_ppui32SSIIntMap,"a",%progbits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	g_ppui32SSIIntMap, %object
	.size	g_ppui32SSIIntMap, 32
g_ppui32SSIIntMap:
	.word	1073774592
	.word	23
	.word	1073778688
	.word	50
	.word	1073782784
	.word	73
	.word	1073786880
	.word	74
	.section	.rodata.g_ppui32SSIIntMapSnowflake,"a",%progbits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	g_ppui32SSIIntMapSnowflake, %object
	.size	g_ppui32SSIIntMapSnowflake, 32
g_ppui32SSIIntMapSnowflake:
	.word	1073774592
	.word	23
	.word	1073778688
	.word	50
	.word	1073782784
	.word	70
	.word	1073786880
	.word	71
	.ident	"GCC: (15:4.9.3+svn227297-1) 4.9.3 20150529 (prerelease)"
