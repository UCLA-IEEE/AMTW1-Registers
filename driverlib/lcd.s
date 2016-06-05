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
	.file	"lcd.c"
	.section	.text.LCDModeSet,"ax",%progbits
	.align	1
	.global	LCDModeSet
	.thumb
	.thumb_func
	.type	LCDModeSet, %function
LCDModeSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	movs	r4, #7
	str	r4, [r0, #108]
	subs	r4, r2, #1
	add	r4, r4, r3
	udiv	r2, r4, r2
	orr	r1, r1, r2, lsl #8
	str	r1, [r0, #4]
	cbz	r2, .L3
	udiv	r0, r3, r2
	pop	{r4, pc}
.L3:
	mov	r0, r3
	pop	{r4, pc}
	.size	LCDModeSet, .-LCDModeSet
	.section	.text.LCDClockReset,"ax",%progbits
	.align	1
	.global	LCDClockReset
	.thumb
	.thumb_func
	.type	LCDClockReset, %function
LCDClockReset:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L6
	movs	r0, #10
	str	r1, [r4]
	bl	SysCtlDelay
	movs	r3, #0
	str	r3, [r4]
	movs	r0, #10
	pop	{r4, lr}
	b	SysCtlDelay
.L7:
	.align	2
.L6:
	.word	1141178480
	.size	LCDClockReset, .-LCDClockReset
	.section	.text.LCDIDDConfigSet,"ax",%progbits
	.align	1
	.global	LCDIDDConfigSet
	.thumb
	.thumb_func
	.type	LCDIDDConfigSet, %function
LCDIDDConfigSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r1, [r0, #12]
	bx	lr
	.size	LCDIDDConfigSet, .-LCDIDDConfigSet
	.section	.text.LCDIDDTimingSet,"ax",%progbits
	.align	1
	.global	LCDIDDTimingSet
	.thumb
	.thumb_func
	.type	LCDIDDTimingSet, %function
LCDIDDTimingSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldrb	r3, [r2]	@ zero_extendqisi2
	ldrb	r4, [r2, #1]	@ zero_extendqisi2
	lsls	r3, r3, #27
	orr	r3, r3, r4, lsl #21
	ldrb	r4, [r2, #2]	@ zero_extendqisi2
	orr	r3, r3, r4, lsl #17
	ldrb	r4, [r2, #3]	@ zero_extendqisi2
	orr	r3, r3, r4, lsl #12
	ldrb	r4, [r2, #4]	@ zero_extendqisi2
	orr	r3, r3, r4, lsl #6
	ldrb	r4, [r2, #5]	@ zero_extendqisi2
	ldrb	r2, [r2, #6]	@ zero_extendqisi2
	orr	r3, r3, r4, lsl #2
	subs	r2, r2, #1
	orrs	r3, r3, r2
	cbnz	r1, .L10
	str	r3, [r0, #16]
	pop	{r4, pc}
.L10:
	str	r3, [r0, #28]
	pop	{r4, pc}
	.size	LCDIDDTimingSet, .-LCDIDDTimingSet
	.section	.text.LCDIDDDMADisable,"ax",%progbits
	.align	1
	.global	LCDIDDDMADisable
	.thumb
	.thumb_func
	.type	LCDIDDDMADisable, %function
LCDIDDDMADisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #12]
	bic	r3, r3, #256
	str	r3, [r0, #12]
	bx	lr
	.size	LCDIDDDMADisable, .-LCDIDDDMADisable
	.section	.text.LCDIDDCommandWrite,"ax",%progbits
	.align	1
	.global	LCDIDDCommandWrite
	.thumb
	.thumb_func
	.type	LCDIDDCommandWrite, %function
LCDIDDCommandWrite:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0
	ite	ne
	movne	r3, #32
	moveq	r3, #20
	str	r2, [r3, r0]
	bx	lr
	.size	LCDIDDCommandWrite, .-LCDIDDCommandWrite
	.section	.text.LCDIDDDataWrite,"ax",%progbits
	.align	1
	.global	LCDIDDDataWrite
	.thumb
	.thumb_func
	.type	LCDIDDDataWrite, %function
LCDIDDDataWrite:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0
	ite	ne
	movne	r3, #36
	moveq	r3, #24
	str	r2, [r3, r0]
	bx	lr
	.size	LCDIDDDataWrite, .-LCDIDDDataWrite
	.section	.text.LCDIDDIndexedWrite,"ax",%progbits
	.align	1
	.global	LCDIDDIndexedWrite
	.thumb
	.thumb_func
	.type	LCDIDDIndexedWrite, %function
LCDIDDIndexedWrite:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0
	ite	ne
	movne	r1, #32
	moveq	r1, #20
	str	r2, [r1, r0]
	ite	ne
	movne	r2, #36
	moveq	r2, #24
	str	r3, [r2, r0]
	bx	lr
	.size	LCDIDDIndexedWrite, .-LCDIDDIndexedWrite
	.section	.text.LCDIDDStatusRead,"ax",%progbits
	.align	1
	.global	LCDIDDStatusRead
	.thumb
	.thumb_func
	.type	LCDIDDStatusRead, %function
LCDIDDStatusRead:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0
	ite	ne
	movne	r3, #32
	moveq	r3, #20
	ldr	r0, [r3, r0]
	uxth	r0, r0
	bx	lr
	.size	LCDIDDStatusRead, .-LCDIDDStatusRead
	.section	.text.LCDIDDDataRead,"ax",%progbits
	.align	1
	.global	LCDIDDDataRead
	.thumb
	.thumb_func
	.type	LCDIDDDataRead, %function
LCDIDDDataRead:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0
	ite	ne
	movne	r3, #36
	moveq	r3, #24
	ldr	r0, [r3, r0]
	uxth	r0, r0
	bx	lr
	.size	LCDIDDDataRead, .-LCDIDDDataRead
	.section	.text.LCDIDDIndexedRead,"ax",%progbits
	.align	1
	.global	LCDIDDIndexedRead
	.thumb
	.thumb_func
	.type	LCDIDDIndexedRead, %function
LCDIDDIndexedRead:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0
	ite	ne
	movne	r3, #32
	moveq	r3, #20
	str	r2, [r3, r0]
	ite	ne
	movne	r3, #36
	moveq	r3, #24
	ldr	r0, [r3, r0]
	uxth	r0, r0
	bx	lr
	.size	LCDIDDIndexedRead, .-LCDIDDIndexedRead
	.section	.text.LCDIDDDMAWrite,"ax",%progbits
	.align	1
	.global	LCDIDDDMAWrite
	.thumb
	.thumb_func
	.type	LCDIDDDMAWrite, %function
LCDIDDDMAWrite:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, [r0, #12]
	add	r3, r2, r3, lsl #1
	subs	r3, r3, #4
	bic	r4, r4, #256
	str	r4, [r0, #12]
	str	r2, [r0, #68]
	str	r3, [r0, #72]
	ldr	r3, [r0, #12]
	cbnz	r1, .L36
	bic	r3, r3, #512
	b	.L38
.L36:
	orr	r3, r3, #512
.L38:
	str	r3, [r0, #12]
	ldr	r3, [r0, #12]
	orr	r3, r3, #256
	str	r3, [r0, #12]
	pop	{r4, pc}
	.size	LCDIDDDMAWrite, .-LCDIDDDMAWrite
	.section	.text.LCDRasterConfigSet,"ax",%progbits
	.align	1
	.global	LCDRasterConfigSet
	.thumb
	.thumb_func
	.type	LCDRasterConfigSet, %function
LCDRasterConfigSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	orr	r2, r1, r2, lsl #12
	str	r2, [r0, #40]
	bx	lr
	.size	LCDRasterConfigSet, .-LCDRasterConfigSet
	.section	.text.LCDRasterTimingSet,"ax",%progbits
	.align	1
	.global	LCDRasterTimingSet
	.thumb
	.thumb_func
	.type	LCDRasterTimingSet, %function
LCDRasterTimingSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldrh	r2, [r1, #4]
	ldrh	r3, [r1, #8]
	ldrh	ip, [r1, #12]
	push	{r4, r5, r6, r7, lr}
	ldrh	r7, [r1, #10]
	ldrh	lr, [r1, #6]
	ldrb	r5, [r1, #14]	@ zero_extendqisi2
	subs	r2, r2, #1
	subs	r7, r7, #1
	subs	r3, r3, #1
	and	r6, r2, #1008
	uxtb	r4, r3
	add	ip, ip, #-1
	orr	r6, r6, r7, lsl #24
	orr	r6, r6, r4, lsl #16
	lsl	r4, ip, #10
	uxth	r4, r4
	orrs	r6, r6, r4
	ubfx	r2, r2, #10, #1
	ldrb	r4, [r1, #16]	@ zero_extendqisi2
	orr	r6, r6, r2, lsl #3
	ldrb	r2, [r1, #15]	@ zero_extendqisi2
	add	lr, lr, #-1
	lsls	r2, r2, #24
	subs	r4, r4, #1
	orr	r2, r2, r5, lsl #16
	lsls	r4, r4, #10
	ubfx	r5, lr, #0, #10
	orrs	r5, r5, r2
	uxth	r4, r4
	ldr	r2, [r1]
	orrs	r5, r5, r4
	ldrb	r4, [r1, #17]	@ zero_extendqisi2
	str	r6, [r0, #44]
	orr	r1, r2, r4, lsl #8
	ubfx	r3, r3, #8, #2
	orr	r4, r1, r3
	ubfx	r2, ip, #6, #4
	ubfx	r3, lr, #10, #1
	orr	r1, r4, r2, lsl #27
	orr	r2, r1, r3, lsl #26
	str	r5, [r0, #48]
	ubfx	r3, r7, #8, #2
	orr	r3, r2, r3, lsl #4
	ldr	r2, [r0, #52]
	and	r2, r2, #983040
	orrs	r3, r3, r2
	str	r3, [r0, #52]
	pop	{r4, r5, r6, r7, pc}
	.size	LCDRasterTimingSet, .-LCDRasterTimingSet
	.section	.text.LCDRasterACBiasIntCountSet,"ax",%progbits
	.align	1
	.global	LCDRasterACBiasIntCountSet
	.thumb
	.thumb_func
	.type	LCDRasterACBiasIntCountSet, %function
LCDRasterACBiasIntCountSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #52]
	lsls	r1, r1, #16
	bic	r3, r3, #983040
	and	r1, r1, #983040
	orrs	r1, r1, r3
	str	r1, [r0, #52]
	bx	lr
	.size	LCDRasterACBiasIntCountSet, .-LCDRasterACBiasIntCountSet
	.section	.text.LCDRasterEnable,"ax",%progbits
	.align	1
	.global	LCDRasterEnable
	.thumb
	.thumb_func
	.type	LCDRasterEnable, %function
LCDRasterEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	movs	r1, #8
	bl	LCDClockReset
	ldr	r3, [r4, #40]
	orr	r3, r3, #1
	str	r3, [r4, #40]
	pop	{r4, pc}
	.size	LCDRasterEnable, .-LCDRasterEnable
	.section	.text.LCDRasterEnabled,"ax",%progbits
	.align	1
	.global	LCDRasterEnabled
	.thumb
	.thumb_func
	.type	LCDRasterEnabled, %function
LCDRasterEnabled:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #40]
	and	r0, r0, #1
	bx	lr
	.size	LCDRasterEnabled, .-LCDRasterEnabled
	.section	.text.LCDRasterDisable,"ax",%progbits
	.align	1
	.global	LCDRasterDisable
	.thumb
	.thumb_func
	.type	LCDRasterDisable, %function
LCDRasterDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #40]
	bic	r3, r3, #1
	str	r3, [r0, #40]
	bx	lr
	.size	LCDRasterDisable, .-LCDRasterDisable
	.section	.text.LCDRasterSubPanelConfigSet,"ax",%progbits
	.align	1
	.global	LCDRasterSubPanelConfigSet
	.thumb
	.thumb_func
	.type	LCDRasterSubPanelConfigSet, %function
LCDRasterSubPanelConfigSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldr	r4, [r0, #56]
	uxth	r5, r3
	and	r4, r4, #-2147483648
	orrs	r1, r1, r5
	orrs	r1, r1, r4
	ldr	r4, .L46
	subs	r2, r2, #1
	and	r4, r4, r2, lsl #16
	ubfx	r3, r3, #16, #8
	ubfx	r2, r2, #16, #1
	orrs	r1, r1, r4
	orr	r3, r3, r2, lsl #8
	str	r1, [r0, #56]
	str	r3, [r0, #60]
	pop	{r4, r5, pc}
.L47:
	.align	2
.L46:
	.word	67043328
	.size	LCDRasterSubPanelConfigSet, .-LCDRasterSubPanelConfigSet
	.section	.text.LCDRasterSubPanelEnable,"ax",%progbits
	.align	1
	.global	LCDRasterSubPanelEnable
	.thumb
	.thumb_func
	.type	LCDRasterSubPanelEnable, %function
LCDRasterSubPanelEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #56]
	orr	r3, r3, #-2147483648
	str	r3, [r0, #56]
	bx	lr
	.size	LCDRasterSubPanelEnable, .-LCDRasterSubPanelEnable
	.section	.text.LCDRasterSubPanelDisable,"ax",%progbits
	.align	1
	.global	LCDRasterSubPanelDisable
	.thumb
	.thumb_func
	.type	LCDRasterSubPanelDisable, %function
LCDRasterSubPanelDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #56]
	bic	r3, r3, #-2147483648
	str	r3, [r0, #56]
	bx	lr
	.size	LCDRasterSubPanelDisable, .-LCDRasterSubPanelDisable
	.section	.text.LCDDMAConfigSet,"ax",%progbits
	.align	1
	.global	LCDDMAConfigSet
	.thumb
	.thumb_func
	.type	LCDDMAConfigSet, %function
LCDDMAConfigSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r1, [r0, #64]
	bx	lr
	.size	LCDDMAConfigSet, .-LCDDMAConfigSet
	.section	.text.LCDRasterPaletteSet,"ax",%progbits
	.align	1
	.global	LCDRasterPaletteSet
	.thumb
	.thumb_func
	.type	LCDRasterPaletteSet, %function
LCDRasterPaletteSet:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldr	r0, [sp, #20]
	ldr	lr, [sp, #24]
	cmp	r1, #0
	lsl	r0, r0, #1
	blt	.L52
	add	r3, r3, r0
	movs	r4, #0
	add	r0, r0, r2
	b	.L53
.L52:
	add	r0, r0, r2
	movs	r4, #0
.L54:
	cmp	r4, lr
	beq	.L57
	ldr	r7, [r3, r4, lsl #2]
	and	r5, r7, #61440
	ubfx	r6, r7, #4, #4
	orr	r6, r6, r5, lsr #8
	and	r5, r7, #15728640
	orr	r5, r6, r5, lsr #12
	strh	r5, [r0, r4, lsl #1]	@ movhi
	adds	r4, r4, #1
	b	.L54
.L57:
	ldrh	r3, [r2]
	bic	r3, r3, #28672
	orrs	r1, r1, r3
	strh	r1, [r2]	@ movhi
	pop	{r4, r5, r6, r7, pc}
.L53:
	cmp	r4, lr
	beq	.L57
	ldrh	r5, [r3, r4, lsl #1]
	strh	r5, [r0, r4, lsl #1]	@ movhi
	adds	r4, r4, #1
	b	.L53
	.size	LCDRasterPaletteSet, .-LCDRasterPaletteSet
	.section	.text.LCDRasterFrameBufferSet,"ax",%progbits
	.align	1
	.global	LCDRasterFrameBufferSet
	.thumb
	.thumb_func
	.type	LCDRasterFrameBufferSet, %function
LCDRasterFrameBufferSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r3, r3, #4
	cbnz	r1, .L60
	add	r3, r3, r2
	str	r2, [r0, #68]
	str	r3, [r0, #72]
	bx	lr
.L60:
	add	r3, r3, r2
	str	r2, [r0, #76]
	str	r3, [r0, #80]
	bx	lr
	.size	LCDRasterFrameBufferSet, .-LCDRasterFrameBufferSet
	.section	.text.LCDIntEnable,"ax",%progbits
	.align	1
	.global	LCDIntEnable
	.thumb
	.thumb_func
	.type	LCDIntEnable, %function
LCDIntEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r1, [r0, #96]
	bx	lr
	.size	LCDIntEnable, .-LCDIntEnable
	.section	.text.LCDIntDisable,"ax",%progbits
	.align	1
	.global	LCDIntDisable
	.thumb
	.thumb_func
	.type	LCDIntDisable, %function
LCDIntDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r1, [r0, #100]
	bx	lr
	.size	LCDIntDisable, .-LCDIntDisable
	.section	.text.LCDIntStatus,"ax",%progbits
	.align	1
	.global	LCDIntStatus
	.thumb
	.thumb_func
	.type	LCDIntStatus, %function
LCDIntStatus:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r1, .L65
	ldr	r0, [r0, #92]
	bx	lr
.L65:
	ldr	r0, [r0, #88]
	bx	lr
	.size	LCDIntStatus, .-LCDIntStatus
	.section	.text.LCDIntClear,"ax",%progbits
	.align	1
	.global	LCDIntClear
	.thumb
	.thumb_func
	.type	LCDIntClear, %function
LCDIntClear:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r1, [r0, #92]
	bx	lr
	.size	LCDIntClear, .-LCDIntClear
	.section	.text.LCDIntRegister,"ax",%progbits
	.align	1
	.global	LCDIntRegister
	.thumb
	.thumb_func
	.type	LCDIntRegister, %function
LCDIntRegister:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	movs	r0, #113
	bl	IntRegister
	movs	r0, #113
	pop	{r3, lr}
	b	IntEnable
	.size	LCDIntRegister, .-LCDIntRegister
	.section	.text.LCDIntUnregister,"ax",%progbits
	.align	1
	.global	LCDIntUnregister
	.thumb
	.thumb_func
	.type	LCDIntUnregister, %function
LCDIntUnregister:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	movs	r0, #113
	bl	IntDisable
	movs	r0, #113
	pop	{r3, lr}
	b	IntUnregister
	.size	LCDIntUnregister, .-LCDIntUnregister
	.ident	"GCC: (15:4.9.3+svn227297-1) 4.9.3 20150529 (prerelease)"
