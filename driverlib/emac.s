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
	.file	"emac.c"
	.section	.text.EMACInit,"ax",%progbits
	.align	1
	.global	EMACInit
	.thumb
	.thumb_func
	.type	EMACInit, %function
EMACInit:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldr	r4, [sp, #12]
.L2:
	ldr	r5, .L14
	ldr	r5, [r5]
	lsls	r5, r5, #31
	bmi	.L2
	ldr	r5, [sp, #16]
	cmp	r4, #32
	orr	r2, r2, r5, lsl #2
	bhi	.L3
	cmp	r3, #32
	bhi	.L3
	orr	r2, r2, #128
	b	.L4
.L3:
	orr	r2, r2, #16777216
	orr	r2, r2, #128
	lsrs	r4, r4, #3
	lsrs	r3, r3, #3
.L4:
	cmp	r3, r4
	ittet	ne
	orrne	r2, r2, #8388608
	orrne	r4, r2, r4, lsl #8
	orreq	r3, r2, r3, lsl #8
	orrne	r3, r4, r3, lsl #17
	str	r3, [r0, #3072]
	ldr	r3, .L14+4
	cmp	r1, r3
	bls	.L9
	ldr	r3, .L14+8
	cmp	r1, r3
	bls	.L10
	ldr	r3, .L14+12
	cmp	r1, r3
	bhi	.L11
	movs	r2, #2
	b	.L7
.L9:
	movs	r2, #0
	b	.L7
.L10:
	movs	r2, #1
.L7:
	ldr	r3, .L14+16
	add	r3, r3, r2, lsl #3
	ldr	r2, [r3, #4]
	b	.L8
.L11:
	movs	r2, #4
.L8:
	ldr	r3, [r0, #16]
	bic	r3, r3, #60
	orrs	r3, r3, r2
	str	r3, [r0, #16]
	mov	r3, #-1
	str	r3, [r0, #268]
	str	r3, [r0, #272]
	pop	{r4, r5, pc}
.L15:
	.align	2
.L14:
	.word	1074711552
	.word	64000000
	.word	104000000
	.word	150000000
	.word	.LANCHOR0
	.size	EMACInit, .-EMACInit
	.section	.text.EMACReset,"ax",%progbits
	.align	1
	.global	EMACReset
	.thumb
	.thumb_func
	.type	EMACReset, %function
EMACReset:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #3072]
	orr	r3, r3, #1
	add	r2, r0, #3072
	str	r3, [r0, #3072]
.L17:
	ldr	r3, [r2]
	lsls	r3, r3, #31
	bmi	.L17
	bx	lr
	.size	EMACReset, .-EMACReset
	.section	.text.EMACPHYConfigSet,"ax",%progbits
	.align	1
	.global	EMACPHYConfigSet
	.thumb
	.thumb_func
	.type	EMACPHYConfigSet, %function
EMACPHYConfigSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	ldr	r5, [r0, #4036]
	str	r1, [r0, #4036]
	ands	r4, r1, #-1073741824
	and	r5, r5, #-1073741824
	bne	.L20
	ldr	r0, .L28
	bl	SysCtlPeripheralReset
.L21:
	ldr	r0, .L28
	bl	SysCtlPeripheralReady
	cmp	r0, #0
	beq	.L21
	mov	r0, #1000
	bl	SysCtlDelay
	b	.L22
.L20:
	cmp	r4, #-1073741824
	bne	.L22
	ldr	r2, .L28+4
	ldr	r3, [r2]
	orr	r3, r3, #196608
	b	.L27
.L22:
	ldr	r2, .L28+4
	ldr	r3, [r2]
	bic	r3, r3, #196608
.L27:
	cmp	r5, r4
	str	r3, [r2]
	beq	.L19
	ldr	r0, .L28+8
	bl	EMACReset
	mov	r0, #1000
	pop	{r3, r4, r5, lr}
	b	SysCtlDelay
.L19:
	pop	{r3, r4, r5, pc}
.L29:
	.align	2
.L28:
	.word	-268423168
	.word	1074712520
	.word	1074708480
	.size	EMACPHYConfigSet, .-EMACPHYConfigSet
	.section	.text.EMACConfigSet,"ax",%progbits
	.align	1
	.global	EMACConfigSet
	.thumb
	.thumb_func
	.type	EMACConfigSet, %function
EMACConfigSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldr	r5, [r0]
	ldr	r4, .L34
	orr	r1, r1, #32768
	ands	r4, r4, r5
	orrs	r4, r4, r1
	str	r4, [r0]
	cbz	r3, .L31
	orr	r3, r3, #65536
	b	.L33
.L31:
	ldr	r3, [r0, #220]
	bic	r3, r3, #65536
.L33:
	str	r3, [r0, #220]
	str	r2, [r0, #3096]
	pop	{r4, r5, pc}
.L35:
	.align	2
.L34:
	.word	-2053078772
	.size	EMACConfigSet, .-EMACConfigSet
	.section	.text.EMACConfigGet,"ax",%progbits
	.align	1
	.global	EMACConfigGet
	.thumb
	.thumb_func
	.type	EMACConfigGet, %function
EMACConfigGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, [r0, #3096]
	str	r4, [r2]
	ldr	r4, [r0]
	ldr	r2, .L41
	ands	r2, r2, r4
	str	r2, [r1]
	ldr	r2, [r0, #220]
	lsls	r1, r2, #15
	bpl	.L37
	ubfx	r2, r2, #0, #14
	b	.L40
.L37:
	ldr	r2, [r0]
	lsls	r2, r2, #11
	ite	mi
	movmi	r2, #10240
	movpl	r2, #2048
.L40:
	str	r2, [r3]
	pop	{r4, pc}
.L42:
	.align	2
.L41:
	.word	2053078783
	.size	EMACConfigGet, .-EMACConfigGet
	.section	.text.EMACAddrSet,"ax",%progbits
	.align	1
	.global	EMACAddrSet
	.thumb
	.thumb_func
	.type	EMACAddrSet, %function
EMACAddrSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	adds	r1, r1, #8
	ldrb	r3, [r2, #4]	@ zero_extendqisi2
	ldr	r4, [r0, r1, lsl #3]
	ldrb	r6, [r2, #5]	@ zero_extendqisi2
	orr	r6, r3, r6, lsl #8
	lsrs	r3, r4, #16
	lsls	r3, r3, #16
	orrs	r3, r3, r6
	str	r3, [r0, r1, lsl #3]
	ldrb	r3, [r2, #2]	@ zero_extendqisi2
	lsls	r5, r1, #3
	ldrb	r1, [r2, #1]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orr	r3, r3, r1, lsl #8
	ldrb	r1, [r2]	@ zero_extendqisi2
	ldrb	r2, [r2, #3]	@ zero_extendqisi2
	adds	r0, r0, #68
	sub	r4, r5, #64
	orrs	r3, r3, r1
	orr	r3, r3, r2, lsl #24
	str	r3, [r0, r4]
	pop	{r4, r5, r6, pc}
	.size	EMACAddrSet, .-EMACAddrSet
	.section	.text.EMACAddrGet,"ax",%progbits
	.align	1
	.global	EMACAddrGet
	.thumb
	.thumb_func
	.type	EMACAddrGet, %function
EMACAddrGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r3, r0, #68
	push	{r4, lr}
	ldr	r3, [r3, r1, lsl #3]
	strb	r3, [r2]
	lsls	r4, r1, #3
	lsrs	r1, r3, #8
	strb	r1, [r2, #1]
	lsrs	r1, r3, #16
	lsrs	r3, r3, #24
	strb	r3, [r2, #3]
	add	r3, r4, #64
	strb	r1, [r2, #2]
	ldr	r3, [r3, r0]
	strb	r3, [r2, #4]
	lsrs	r3, r3, #8
	strb	r3, [r2, #5]
	pop	{r4, pc}
	.size	EMACAddrGet, .-EMACAddrGet
	.section	.text.EMACNumAddrGet,"ax",%progbits
	.align	1
	.global	EMACNumAddrGet
	.thumb
	.thumb_func
	.type	EMACNumAddrGet, %function
EMACNumAddrGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r0, #4
	bx	lr
	.size	EMACNumAddrGet, .-EMACNumAddrGet
	.section	.text.EMACAddrFilterSet,"ax",%progbits
	.align	1
	.global	EMACAddrFilterSet
	.thumb
	.thumb_func
	.type	EMACAddrFilterSet, %function
EMACAddrFilterSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	adds	r1, r1, #8
	push	{r4, lr}
	ldr	r3, [r0, r1, lsl #3]
	uxth	r3, r3
	orrs	r2, r2, r3
	lsls	r4, r1, #3
	str	r2, [r0, r1, lsl #3]
	sub	r3, r4, #64
	adds	r0, r0, #68
	ldr	r2, [r0, r3]
	str	r2, [r0, r3]
	pop	{r4, pc}
	.size	EMACAddrFilterSet, .-EMACAddrFilterSet
	.section	.text.EMACAddrFilterGet,"ax",%progbits
	.align	1
	.global	EMACAddrFilterGet
	.thumb
	.thumb_func
	.type	EMACAddrFilterGet, %function
EMACAddrFilterGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	adds	r1, r1, #8
	ldr	r0, [r0, r1, lsl #3]
	and	r0, r0, #-16777216
	bx	lr
	.size	EMACAddrFilterGet, .-EMACAddrFilterGet
	.section	.text.EMACFrameFilterSet,"ax",%progbits
	.align	1
	.global	EMACFrameFilterSet
	.thumb
	.thumb_func
	.type	EMACFrameFilterSet, %function
EMACFrameFilterSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #4]
	bic	r3, r3, #-2147483648
	bic	r3, r3, #67072
	bic	r3, r3, #510
	bic	r3, r3, #1
	orrs	r1, r1, r3
	str	r1, [r0, #4]
	bx	lr
	.size	EMACFrameFilterSet, .-EMACFrameFilterSet
	.section	.text.EMACFrameFilterGet,"ax",%progbits
	.align	1
	.global	EMACFrameFilterGet
	.thumb
	.thumb_func
	.type	EMACFrameFilterGet, %function
EMACFrameFilterGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #4]
	ldr	r0, .L50
	ands	r0, r0, r3
	bx	lr
.L51:
	.align	2
.L50:
	.word	-2147416065
	.size	EMACFrameFilterGet, .-EMACFrameFilterGet
	.section	.text.EMACHashFilterSet,"ax",%progbits
	.align	1
	.global	EMACHashFilterSet
	.thumb
	.thumb_func
	.type	EMACHashFilterSet, %function
EMACHashFilterSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r2, [r0, #12]
	str	r1, [r0, #8]
	bx	lr
	.size	EMACHashFilterSet, .-EMACHashFilterSet
	.section	.text.EMACHashFilterGet,"ax",%progbits
	.align	1
	.global	EMACHashFilterGet
	.thumb
	.thumb_func
	.type	EMACHashFilterGet, %function
EMACHashFilterGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #12]
	str	r3, [r2]
	ldr	r3, [r0, #8]
	str	r3, [r1]
	bx	lr
	.size	EMACHashFilterGet, .-EMACHashFilterGet
	.section	.text.EMACHashFilterBitCalculate,"ax",%progbits
	.align	1
	.global	EMACHashFilterBitCalculate
	.thumb
	.thumb_func
	.type	EMACHashFilterBitCalculate, %function
EMACHashFilterBitCalculate:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	mov	r1, r0
	movs	r2, #6
	mov	r0, #-1
	bl	Crc32
	movs	r3, #6
	mvns	r2, r0
	movs	r0, #0
.L55:
	and	r1, r2, #1
	subs	r3, r3, #1
	orr	r0, r1, r0, lsl #1
	lsr	r2, r2, #1
	bne	.L55
	pop	{r3, pc}
	.size	EMACHashFilterBitCalculate, .-EMACHashFilterBitCalculate
	.section	.text.EMACRxWatchdogTimerSet,"ax",%progbits
	.align	1
	.global	EMACRxWatchdogTimerSet
	.thumb
	.thumb_func
	.type	EMACRxWatchdogTimerSet, %function
EMACRxWatchdogTimerSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r1, [r0, #3108]
	bx	lr
	.size	EMACRxWatchdogTimerSet, .-EMACRxWatchdogTimerSet
	.section	.text.EMACStatusGet,"ax",%progbits
	.align	1
	.global	EMACStatusGet
	.thumb
	.thumb_func
	.type	EMACStatusGet, %function
EMACStatusGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #36]
	bx	lr
	.size	EMACStatusGet, .-EMACStatusGet
	.section	.text.EMACTxDMAPollDemand,"ax",%progbits
	.align	1
	.global	EMACTxDMAPollDemand
	.thumb
	.thumb_func
	.type	EMACTxDMAPollDemand, %function
EMACTxDMAPollDemand:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r3, #0
	str	r3, [r0, #3076]
	bx	lr
	.size	EMACTxDMAPollDemand, .-EMACTxDMAPollDemand
	.section	.text.EMACRxDMAPollDemand,"ax",%progbits
	.align	1
	.global	EMACRxDMAPollDemand
	.thumb
	.thumb_func
	.type	EMACRxDMAPollDemand, %function
EMACRxDMAPollDemand:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r3, #0
	str	r3, [r0, #3080]
	bx	lr
	.size	EMACRxDMAPollDemand, .-EMACRxDMAPollDemand
	.section	.text.EMACRxDMADescriptorListSet,"ax",%progbits
	.align	1
	.global	EMACRxDMADescriptorListSet
	.thumb
	.thumb_func
	.type	EMACRxDMADescriptorListSet, %function
EMACRxDMADescriptorListSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r1, [r0, #3084]
	bx	lr
	.size	EMACRxDMADescriptorListSet, .-EMACRxDMADescriptorListSet
	.section	.text.EMACRxDMADescriptorListGet,"ax",%progbits
	.align	1
	.global	EMACRxDMADescriptorListGet
	.thumb
	.thumb_func
	.type	EMACRxDMADescriptorListGet, %function
EMACRxDMADescriptorListGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #3084]
	bx	lr
	.size	EMACRxDMADescriptorListGet, .-EMACRxDMADescriptorListGet
	.section	.text.EMACRxDMACurrentDescriptorGet,"ax",%progbits
	.align	1
	.global	EMACRxDMACurrentDescriptorGet
	.thumb
	.thumb_func
	.type	EMACRxDMACurrentDescriptorGet, %function
EMACRxDMACurrentDescriptorGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #3148]
	bx	lr
	.size	EMACRxDMACurrentDescriptorGet, .-EMACRxDMACurrentDescriptorGet
	.section	.text.EMACRxDMACurrentBufferGet,"ax",%progbits
	.align	1
	.global	EMACRxDMACurrentBufferGet
	.thumb
	.thumb_func
	.type	EMACRxDMACurrentBufferGet, %function
EMACRxDMACurrentBufferGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #3156]
	bx	lr
	.size	EMACRxDMACurrentBufferGet, .-EMACRxDMACurrentBufferGet
	.section	.text.EMACTxDMADescriptorListSet,"ax",%progbits
	.align	1
	.global	EMACTxDMADescriptorListSet
	.thumb
	.thumb_func
	.type	EMACTxDMADescriptorListSet, %function
EMACTxDMADescriptorListSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r1, [r0, #3088]
	bx	lr
	.size	EMACTxDMADescriptorListSet, .-EMACTxDMADescriptorListSet
	.section	.text.EMACTxDMADescriptorListGet,"ax",%progbits
	.align	1
	.global	EMACTxDMADescriptorListGet
	.thumb
	.thumb_func
	.type	EMACTxDMADescriptorListGet, %function
EMACTxDMADescriptorListGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #3088]
	bx	lr
	.size	EMACTxDMADescriptorListGet, .-EMACTxDMADescriptorListGet
	.section	.text.EMACTxDMACurrentDescriptorGet,"ax",%progbits
	.align	1
	.global	EMACTxDMACurrentDescriptorGet
	.thumb
	.thumb_func
	.type	EMACTxDMACurrentDescriptorGet, %function
EMACTxDMACurrentDescriptorGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #3144]
	bx	lr
	.size	EMACTxDMACurrentDescriptorGet, .-EMACTxDMACurrentDescriptorGet
	.section	.text.EMACTxDMACurrentBufferGet,"ax",%progbits
	.align	1
	.global	EMACTxDMACurrentBufferGet
	.thumb
	.thumb_func
	.type	EMACTxDMACurrentBufferGet, %function
EMACTxDMACurrentBufferGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #3152]
	bx	lr
	.size	EMACTxDMACurrentBufferGet, .-EMACTxDMACurrentBufferGet
	.section	.text.EMACDMAStateGet,"ax",%progbits
	.align	1
	.global	EMACDMAStateGet
	.thumb
	.thumb_func
	.type	EMACDMAStateGet, %function
EMACDMAStateGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #3092]
	bic	r0, r0, #-67108864
	bic	r0, r0, #122368
	bic	r0, r0, #510
	bic	r0, r0, #1
	bx	lr
	.size	EMACDMAStateGet, .-EMACDMAStateGet
	.section	.text.EMACTxFlush,"ax",%progbits
	.align	1
	.global	EMACTxFlush
	.thumb
	.thumb_func
	.type	EMACTxFlush, %function
EMACTxFlush:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #36]
	lsls	r2, r3, #7
	bpl	.L70
	ldr	r3, [r0, #3096]
	orr	r3, r3, #1048576
	addw	r2, r0, #3096
	str	r3, [r0, #3096]
.L72:
	ldr	r3, [r2]
	lsls	r3, r3, #11
	bmi	.L72
.L70:
	bx	lr
	.size	EMACTxFlush, .-EMACTxFlush
	.section	.text.EMACTxEnable,"ax",%progbits
	.align	1
	.global	EMACTxEnable
	.thumb
	.thumb_func
	.type	EMACTxEnable, %function
EMACTxEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #3096]
	orr	r3, r3, #8192
	str	r3, [r0, #3096]
	ldr	r3, [r0]
	orr	r3, r3, #8
	str	r3, [r0]
	bx	lr
	.size	EMACTxEnable, .-EMACTxEnable
	.section	.text.EMACTxDisable,"ax",%progbits
	.align	1
	.global	EMACTxDisable
	.thumb
	.thumb_func
	.type	EMACTxDisable, %function
EMACTxDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0]
	bic	r3, r3, #8
	str	r3, [r0]
	ldr	r3, [r0, #3096]
	bic	r3, r3, #8192
	str	r3, [r0, #3096]
	bx	lr
	.size	EMACTxDisable, .-EMACTxDisable
	.section	.text.EMACRxEnable,"ax",%progbits
	.align	1
	.global	EMACRxEnable
	.thumb
	.thumb_func
	.type	EMACRxEnable, %function
EMACRxEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #3096]
	orr	r3, r3, #2
	str	r3, [r0, #3096]
	ldr	r3, [r0]
	orr	r3, r3, #4
	str	r3, [r0]
	bx	lr
	.size	EMACRxEnable, .-EMACRxEnable
	.section	.text.EMACRxDisable,"ax",%progbits
	.align	1
	.global	EMACRxDisable
	.thumb
	.thumb_func
	.type	EMACRxDisable, %function
EMACRxDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0]
	bic	r3, r3, #4
	str	r3, [r0]
	ldr	r3, [r0, #3096]
	bic	r3, r3, #2
	str	r3, [r0, #3096]
	bx	lr
	.size	EMACRxDisable, .-EMACRxDisable
	.section	.text.EMACIntRegister,"ax",%progbits
	.align	1
	.global	EMACIntRegister
	.thumb
	.thumb_func
	.type	EMACIntRegister, %function
EMACIntRegister:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	movs	r0, #56
	bl	IntRegister
	movs	r0, #56
	pop	{r3, lr}
	b	IntEnable
	.size	EMACIntRegister, .-EMACIntRegister
	.section	.text.EMACIntUnregister,"ax",%progbits
	.align	1
	.global	EMACIntUnregister
	.thumb
	.thumb_func
	.type	EMACIntUnregister, %function
EMACIntUnregister:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	movs	r0, #56
	bl	IntDisable
	movs	r0, #56
	pop	{r3, lr}
	b	IntUnregister
	.size	EMACIntUnregister, .-EMACIntUnregister
	.section	.text.EMACIntEnable,"ax",%progbits
	.align	1
	.global	EMACIntEnable
	.thumb
	.thumb_func
	.type	EMACIntEnable, %function
EMACIntEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #16453
	ands	r3, r3, r1
	cbz	r3, .L82
	orr	r1, r1, #65536
.L82:
	movw	r3, #10170
	ands	r3, r3, r1
	cbz	r3, .L83
	orr	r1, r1, #32768
.L83:
	bics	r2, r1, #-2147483648
	ittt	ne
	ldrne	r3, [r0, #3100]
	orrne	r3, r3, r2
	strne	r3, [r0, #3100]
	cmp	r1, #0
	ittt	lt
	ldrlt	r3, [r0, #4052]
	orrlt	r3, r3, #1
	strlt	r3, [r0, #4052]
	bx	lr
	.size	EMACIntEnable, .-EMACIntEnable
	.section	.text.EMACIntDisable,"ax",%progbits
	.align	1
	.global	EMACIntDisable
	.thumb
	.thumb_func
	.type	EMACIntDisable, %function
EMACIntDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #3100]
	bic	r2, r1, #-2147483648
	bic	r3, r3, r2
	movw	r2, #16453
	ands	r2, r2, r3
	cbnz	r2, .L96
	bic	r3, r3, #65536
.L96:
	movw	r2, #10170
	ands	r2, r2, r3
	cbnz	r2, .L97
	bic	r3, r3, #32768
.L97:
	str	r3, [r0, #3100]
	cmp	r1, #0
	ittt	lt
	ldrlt	r3, [r0, #4052]
	biclt	r3, r3, #1
	strlt	r3, [r0, #4052]
	bx	lr
	.size	EMACIntDisable, .-EMACIntDisable
	.section	.text.EMACIntStatus,"ax",%progbits
	.align	1
	.global	EMACIntStatus
	.thumb
	.thumb_func
	.type	EMACIntStatus, %function
EMACIntStatus:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #3092]
	bic	r3, r3, #66846720
	bic	r3, r3, #131072
	cbz	r1, .L100
	ldr	r2, [r0, #3100]
	orr	r2, r2, #939524096
	ands	r3, r3, r2
	ldr	r2, [r0, #4056]
.L102:
	lsls	r2, r2, #31
	bpl	.L104
	orr	r3, r3, #-2147483648
	b	.L104
.L100:
	ldr	r2, [r0, #4048]
	b	.L102
.L104:
	mov	r0, r3
	bx	lr
	.size	EMACIntStatus, .-EMACIntStatus
	.section	.text.EMACIntClear,"ax",%progbits
	.align	1
	.global	EMACIntClear
	.thumb
	.thumb_func
	.type	EMACIntClear, %function
EMACIntClear:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #16453
	ands	r3, r3, r1
	cbz	r3, .L108
	orr	r1, r1, #65536
.L108:
	movw	r3, #10170
	ands	r3, r3, r1
	cbz	r3, .L109
	orr	r1, r1, #32768
.L109:
	bics	r3, r1, #-2147483648
	it	ne
	strne	r3, [r0, #3092]
	cmp	r1, #0
	ittt	lt
	ldrlt	r3, [r0, #4056]
	orrlt	r3, r3, #1
	strlt	r3, [r0, #4056]
	bx	lr
	.size	EMACIntClear, .-EMACIntClear
	.section	.text.EMACPHYWrite,"ax",%progbits
	.align	1
	.global	EMACPHYWrite
	.thumb
	.thumb_func
	.type	EMACPHYWrite, %function
EMACPHYWrite:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
.L122:
	ldr	r5, [r0, #16]
	lsls	r5, r5, #31
	add	r4, r0, #16
	bmi	.L122
	str	r3, [r0, #20]
	ldr	r3, [r4]
	lsls	r1, r1, #11
	orr	r1, r1, #3
	orr	r2, r1, r2, lsl #6
	and	r1, r3, #60
	orrs	r2, r2, r1
	str	r2, [r4]
.L123:
	ldr	r3, [r4]
	lsls	r3, r3, #31
	bmi	.L123
	pop	{r4, r5, pc}
	.size	EMACPHYWrite, .-EMACPHYWrite
	.section	.text.EMACPHYRead,"ax",%progbits
	.align	1
	.global	EMACPHYRead
	.thumb
	.thumb_func
	.type	EMACPHYRead, %function
EMACPHYRead:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.L127:
	ldr	r3, [r0, #16]
	lsls	r3, r3, #31
	add	r4, r0, #16
	bmi	.L127
	ldr	r3, [r4]
	lsls	r1, r1, #11
	orr	r1, r1, #1
	orr	r2, r1, r2, lsl #6
	and	r1, r3, #60
	orrs	r2, r2, r1
	str	r2, [r4]
.L128:
	ldr	r3, [r4]
	lsls	r3, r3, #31
	bmi	.L128
	ldr	r0, [r0, #20]
	uxth	r0, r0
	pop	{r4, pc}
	.size	EMACPHYRead, .-EMACPHYRead
	.section	.text.EMACPHYExtendedRead,"ax",%progbits
	.align	1
	.global	EMACPHYExtendedRead
	.thumb
	.thumb_func
	.type	EMACPHYExtendedRead, %function
EMACPHYExtendedRead:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L132
	mov	r5, r1
	mov	r6, r2
	mov	r0, r4
	movs	r2, #13
	movs	r3, #31
	bl	EMACPHYWrite
	mov	r0, r4
	mov	r1, r5
	mov	r3, r6
	movs	r2, #14
	bl	EMACPHYWrite
	mov	r0, r4
	mov	r1, r5
	movs	r2, #13
	movw	r3, #16415
	bl	EMACPHYWrite
	mov	r0, r4
	mov	r1, r5
	movs	r2, #14
	pop	{r4, r5, r6, lr}
	b	EMACPHYRead
.L133:
	.align	2
.L132:
	.word	1074708480
	.size	EMACPHYExtendedRead, .-EMACPHYExtendedRead
	.section	.text.EMACPHYExtendedWrite,"ax",%progbits
	.align	1
	.global	EMACPHYExtendedWrite
	.thumb
	.thumb_func
	.type	EMACPHYExtendedWrite, %function
EMACPHYExtendedWrite:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r4, .L135
	mov	r5, r1
	mov	r7, r2
	mov	r6, r3
	mov	r0, r4
	movs	r2, #13
	movs	r3, #31
	bl	EMACPHYWrite
	mov	r0, r4
	mov	r1, r5
	mov	r3, r7
	movs	r2, #14
	bl	EMACPHYWrite
	mov	r0, r4
	mov	r1, r5
	movs	r2, #13
	movw	r3, #16415
	bl	EMACPHYWrite
	mov	r0, r4
	mov	r1, r5
	mov	r3, r6
	movs	r2, #14
	pop	{r4, r5, r6, r7, r8, lr}
	b	EMACPHYWrite
.L136:
	.align	2
.L135:
	.word	1074708480
	.size	EMACPHYExtendedWrite, .-EMACPHYExtendedWrite
	.section	.text.EMACPHYPowerOff,"ax",%progbits
	.align	1
	.global	EMACPHYPowerOff
	.thumb
	.thumb_func
	.type	EMACPHYPowerOff, %function
EMACPHYPowerOff:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r2, #0
	mov	r5, r0
	mov	r4, r1
	bl	EMACPHYRead
	bic	r0, r0, #6144
	orr	r3, r0, #2048
	mov	r1, r4
	mov	r0, r5
	uxth	r3, r3
	movs	r2, #0
	pop	{r4, r5, r6, lr}
	b	EMACPHYWrite
	.size	EMACPHYPowerOff, .-EMACPHYPowerOff
	.section	.text.EMACPHYPowerOn,"ax",%progbits
	.align	1
	.global	EMACPHYPowerOn
	.thumb
	.thumb_func
	.type	EMACPHYPowerOn, %function
EMACPHYPowerOn:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r2, #0
	mov	r5, r0
	mov	r4, r1
	bl	EMACPHYRead
	bic	r0, r0, #6144
	orr	r3, r0, #4096
	mov	r1, r4
	mov	r0, r5
	uxth	r3, r3
	movs	r2, #0
	pop	{r4, r5, r6, lr}
	b	EMACPHYWrite
	.size	EMACPHYPowerOn, .-EMACPHYPowerOn
	.section	.text.EMACTimestampConfigSet,"ax",%progbits
	.align	1
	.global	EMACTimestampConfigSet
	.thumb
	.thumb_func
	.type	EMACTimestampConfigSet, %function
EMACTimestampConfigSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #4040]
	uxtb	r2, r2
	orr	r3, r3, #262144
	str	r3, [r0, #4040]
	str	r2, [r0, #1796]
	str	r1, [r0, #1792]
	bx	lr
	.size	EMACTimestampConfigSet, .-EMACTimestampConfigSet
	.section	.text.EMACTimestampConfigGet,"ax",%progbits
	.align	1
	.global	EMACTimestampConfigGet
	.thumb
	.thumb_func
	.type	EMACTimestampConfigGet, %function
EMACTimestampConfigGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #1796]
	uxtb	r3, r3
	str	r3, [r1]
	ldr	r0, [r0, #1792]
	bx	lr
	.size	EMACTimestampConfigGet, .-EMACTimestampConfigGet
	.section	.text.EMACTimestampEnable,"ax",%progbits
	.align	1
	.global	EMACTimestampEnable
	.thumb
	.thumb_func
	.type	EMACTimestampEnable, %function
EMACTimestampEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #1792]
	orr	r3, r3, #1
	str	r3, [r0, #1792]
	ldr	r3, [r0, #1792]
	lsls	r3, r3, #29
	ittt	pl
	ldrpl	r3, [r0, #1792]
	orrpl	r3, r3, #4
	strpl	r3, [r0, #1792]
	bx	lr
	.size	EMACTimestampEnable, .-EMACTimestampEnable
	.section	.text.EMACTimestampDisable,"ax",%progbits
	.align	1
	.global	EMACTimestampDisable
	.thumb
	.thumb_func
	.type	EMACTimestampDisable, %function
EMACTimestampDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #1792]
	bic	r3, r3, #1
	str	r3, [r0, #1792]
	bx	lr
	.size	EMACTimestampDisable, .-EMACTimestampDisable
	.section	.text.EMACTimestampSysTimeSet,"ax",%progbits
	.align	1
	.global	EMACTimestampSysTimeSet
	.thumb
	.thumb_func
	.type	EMACTimestampSysTimeSet, %function
EMACTimestampSysTimeSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r1, [r0, #1808]
	str	r2, [r0, #1812]
.L145:
	ldr	r3, [r0, #1792]
	lsls	r3, r3, #29
	bmi	.L145
	ldr	r3, [r0, #1792]
	orr	r3, r3, #4
	str	r3, [r0, #1792]
	bx	lr
	.size	EMACTimestampSysTimeSet, .-EMACTimestampSysTimeSet
	.section	.text.EMACTimestampSysTimeGet,"ax",%progbits
	.align	1
	.global	EMACTimestampSysTimeGet
	.thumb
	.thumb_func
	.type	EMACTimestampSysTimeGet, %function
EMACTimestampSysTimeGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.L148:
	ldr	r3, [r0, #1800]
	str	r3, [r1]
	ldr	r3, [r0, #1804]
	str	r3, [r2]
	ldr	r4, [r0, #1804]
	cmp	r3, r4
	bhi	.L148
	pop	{r4, pc}
	.size	EMACTimestampSysTimeGet, .-EMACTimestampSysTimeGet
	.section	.text.EMACTimestampSysTimeUpdate,"ax",%progbits
	.align	1
	.global	EMACTimestampSysTimeUpdate
	.thumb
	.thumb_func
	.type	EMACTimestampSysTimeUpdate, %function
EMACTimestampSysTimeUpdate:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r3, #0
	ite	ne
	movne	r3, #0
	moveq	r3, #-2147483648
	orrs	r2, r2, r3
	str	r1, [r0, #1808]
	str	r2, [r0, #1812]
.L152:
	ldr	r3, [r0, #1792]
	lsls	r3, r3, #28
	bmi	.L152
	ldr	r3, [r0, #1792]
	orr	r3, r3, #8
	str	r3, [r0, #1792]
	bx	lr
	.size	EMACTimestampSysTimeUpdate, .-EMACTimestampSysTimeUpdate
	.section	.text.EMACTimestampAddendSet,"ax",%progbits
	.align	1
	.global	EMACTimestampAddendSet
	.thumb
	.thumb_func
	.type	EMACTimestampAddendSet, %function
EMACTimestampAddendSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r1, [r0, #1816]
.L156:
	ldr	r3, [r0, #1792]
	lsls	r3, r3, #26
	bmi	.L156
	ldr	r3, [r0, #1792]
	orr	r3, r3, #32
	str	r3, [r0, #1792]
	bx	lr
	.size	EMACTimestampAddendSet, .-EMACTimestampAddendSet
	.section	.text.EMACTimestampTargetSet,"ax",%progbits
	.align	1
	.global	EMACTimestampTargetSet
	.thumb
	.thumb_func
	.type	EMACTimestampTargetSet, %function
EMACTimestampTargetSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.L159:
	ldr	r4, [r0, #1824]
	cmp	r4, #0
	blt	.L159
	str	r1, [r0, #1820]
	str	r2, [r0, #1824]
	pop	{r4, pc}
	.size	EMACTimestampTargetSet, .-EMACTimestampTargetSet
	.section	.text.EMACTimestampTargetIntEnable,"ax",%progbits
	.align	1
	.global	EMACTimestampTargetIntEnable
	.thumb
	.thumb_func
	.type	EMACTimestampTargetIntEnable, %function
EMACTimestampTargetIntEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #1792]
	orr	r3, r3, #16
	str	r3, [r0, #1792]
	bx	lr
	.size	EMACTimestampTargetIntEnable, .-EMACTimestampTargetIntEnable
	.section	.text.EMACTimestampTargetIntDisable,"ax",%progbits
	.align	1
	.global	EMACTimestampTargetIntDisable
	.thumb
	.thumb_func
	.type	EMACTimestampTargetIntDisable, %function
EMACTimestampTargetIntDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #1792]
	bic	r3, r3, #16
	str	r3, [r0, #1792]
	bx	lr
	.size	EMACTimestampTargetIntDisable, .-EMACTimestampTargetIntDisable
	.section	.text.EMACTimestampIntStatus,"ax",%progbits
	.align	1
	.global	EMACTimestampIntStatus
	.thumb
	.thumb_func
	.type	EMACTimestampIntStatus, %function
EMACTimestampIntStatus:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #1832]
	bx	lr
	.size	EMACTimestampIntStatus, .-EMACTimestampIntStatus
	.section	.text.EMACTimestampPPSSimpleModeSet,"ax",%progbits
	.align	1
	.global	EMACTimestampPPSSimpleModeSet
	.thumb
	.thumb_func
	.type	EMACTimestampPPSSimpleModeSet, %function
EMACTimestampPPSSimpleModeSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #1792]
	cbz	r1, .L165
	lsls	r3, r3, #22
	it	pl
	addpl	r1, r1, #-1
.L165:
	str	r1, [r0, #1836]
	bx	lr
	.size	EMACTimestampPPSSimpleModeSet, .-EMACTimestampPPSSimpleModeSet
	.section	.text.EMACTimestampPPSCommandModeSet,"ax",%progbits
	.align	1
	.global	EMACTimestampPPSCommandModeSet
	.thumb
	.thumb_func
	.type	EMACTimestampPPSCommandModeSet, %function
EMACTimestampPPSCommandModeSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.L170:
	ldr	r2, [r0, #1836]
	lsls	r3, r2, #28
	bne	.L170
	orr	r1, r1, #16
	str	r1, [r0, #1836]
	bx	lr
	.size	EMACTimestampPPSCommandModeSet, .-EMACTimestampPPSCommandModeSet
	.section	.text.EMACTimestampPPSCommand,"ax",%progbits
	.align	1
	.global	EMACTimestampPPSCommand
	.thumb
	.thumb_func
	.type	EMACTimestampPPSCommand, %function
EMACTimestampPPSCommand:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.L173:
	ldr	r2, [r0, #1836]
	lsls	r3, r2, #28
	bne	.L173
	orr	r1, r1, #16
	str	r1, [r0, #1836]
	bx	lr
	.size	EMACTimestampPPSCommand, .-EMACTimestampPPSCommand
	.section	.text.EMACTimestampPPSPeriodSet,"ax",%progbits
	.align	1
	.global	EMACTimestampPPSPeriodSet
	.thumb
	.thumb_func
	.type	EMACTimestampPPSPeriodSet, %function
EMACTimestampPPSPeriodSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r1, [r0, #1888]
	str	r2, [r0, #1892]
	bx	lr
	.size	EMACTimestampPPSPeriodSet, .-EMACTimestampPPSPeriodSet
	.section	.text.EMACVLANRxConfigSet,"ax",%progbits
	.align	1
	.global	EMACVLANRxConfigSet
	.thumb
	.thumb_func
	.type	EMACVLANRxConfigSet, %function
EMACVLANRxConfigSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	orrs	r2, r2, r1
	str	r2, [r0, #28]
	bx	lr
	.size	EMACVLANRxConfigSet, .-EMACVLANRxConfigSet
	.section	.text.EMACVLANRxConfigGet,"ax",%progbits
	.align	1
	.global	EMACVLANRxConfigGet
	.thumb
	.thumb_func
	.type	EMACVLANRxConfigGet, %function
EMACVLANRxConfigGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #28]
	strh	r0, [r1]	@ movhi
	lsrs	r0, r0, #16
	lsls	r0, r0, #16
	bx	lr
	.size	EMACVLANRxConfigGet, .-EMACVLANRxConfigGet
	.section	.text.EMACVLANTxConfigSet,"ax",%progbits
	.align	1
	.global	EMACVLANTxConfigSet
	.thumb
	.thumb_func
	.type	EMACVLANTxConfigSet, %function
EMACVLANTxConfigSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	orrs	r2, r2, r1
	str	r2, [r0, #1412]
	bx	lr
	.size	EMACVLANTxConfigSet, .-EMACVLANTxConfigSet
	.section	.text.EMACVLANTxConfigGet,"ax",%progbits
	.align	1
	.global	EMACVLANTxConfigGet
	.thumb
	.thumb_func
	.type	EMACVLANTxConfigGet, %function
EMACVLANTxConfigGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #1412]
	strh	r0, [r1]	@ movhi
	lsrs	r0, r0, #16
	lsls	r0, r0, #16
	bx	lr
	.size	EMACVLANTxConfigGet, .-EMACVLANTxConfigGet
	.section	.text.EMACVLANHashFilterBitCalculate,"ax",%progbits
	.align	1
	.global	EMACVLANHashFilterBitCalculate
	.thumb
	.thumb_func
	.type	EMACVLANHashFilterBitCalculate, %function
EMACVLANHashFilterBitCalculate:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, lr}
	add	r1, sp, #8
	movs	r2, #2
	strh	r0, [r1, #-2]!	@ movhi
	mov	r0, #-1
	bl	Crc32
	movs	r3, #4
	mvns	r2, r0
	movs	r0, #0
.L181:
	and	r1, r2, #1
	subs	r3, r3, #1
	orr	r0, r1, r0, lsl #1
	lsr	r2, r2, #1
	bne	.L181
	add	sp, sp, #12
	@ sp needed
	ldr	pc, [sp], #4
	.size	EMACVLANHashFilterBitCalculate, .-EMACVLANHashFilterBitCalculate
	.section	.text.EMACVLANHashFilterSet,"ax",%progbits
	.align	1
	.global	EMACVLANHashFilterSet
	.thumb
	.thumb_func
	.type	EMACVLANHashFilterSet, %function
EMACVLANHashFilterSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r1, [r0, #1416]
	bx	lr
	.size	EMACVLANHashFilterSet, .-EMACVLANHashFilterSet
	.section	.text.EMACVLANHashFilterGet,"ax",%progbits
	.align	1
	.global	EMACVLANHashFilterGet
	.thumb
	.thumb_func
	.type	EMACVLANHashFilterGet, %function
EMACVLANHashFilterGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #1416]
	bx	lr
	.size	EMACVLANHashFilterGet, .-EMACVLANHashFilterGet
	.section	.text.EMACRemoteWakeUpFrameFilterSet,"ax",%progbits
	.align	1
	.global	EMACRemoteWakeUpFrameFilterSet
	.thumb
	.thumb_func
	.type	EMACRemoteWakeUpFrameFilterSet, %function
EMACRemoteWakeUpFrameFilterSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #44]
	orr	r3, r3, #-2147483648
	str	r3, [r0, #44]
	subs	r3, r1, #4
	adds	r1, r1, #28
.L186:
	ldr	r2, [r3, #4]!
	str	r2, [r0, #40]
	cmp	r3, r1
	bne	.L186
	bx	lr
	.size	EMACRemoteWakeUpFrameFilterSet, .-EMACRemoteWakeUpFrameFilterSet
	.section	.text.EMACRemoteWakeUpFrameFilterGet,"ax",%progbits
	.align	1
	.global	EMACRemoteWakeUpFrameFilterGet
	.thumb
	.thumb_func
	.type	EMACRemoteWakeUpFrameFilterGet, %function
EMACRemoteWakeUpFrameFilterGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #44]
	orr	r3, r3, #-2147483648
	str	r3, [r0, #44]
	subs	r3, r1, #4
	adds	r1, r1, #28
.L189:
	ldr	r2, [r0, #40]
	str	r2, [r3, #4]!
	cmp	r3, r1
	bne	.L189
	bx	lr
	.size	EMACRemoteWakeUpFrameFilterGet, .-EMACRemoteWakeUpFrameFilterGet
	.section	.text.EMACPowerManagementControlSet,"ax",%progbits
	.align	1
	.global	EMACPowerManagementControlSet
	.thumb
	.thumb_func
	.type	EMACPowerManagementControlSet, %function
EMACPowerManagementControlSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #44]
	bic	r3, r3, #516
	bic	r3, r3, #3
	orrs	r1, r1, r3
	str	r1, [r0, #44]
	bx	lr
	.size	EMACPowerManagementControlSet, .-EMACPowerManagementControlSet
	.section	.text.EMACPowerManagementControlGet,"ax",%progbits
	.align	1
	.global	EMACPowerManagementControlGet
	.thumb
	.thumb_func
	.type	EMACPowerManagementControlGet, %function
EMACPowerManagementControlGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #44]
	bic	r0, r0, #504
	lsls	r0, r0, #22
	lsrs	r0, r0, #22
	bx	lr
	.size	EMACPowerManagementControlGet, .-EMACPowerManagementControlGet
	.section	.text.EMACPowerManagementStatusGet,"ax",%progbits
	.align	1
	.global	EMACPowerManagementStatusGet
	.thumb
	.thumb_func
	.type	EMACPowerManagementStatusGet, %function
EMACPowerManagementStatusGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #44]
	and	r0, r0, #97
	bx	lr
	.size	EMACPowerManagementStatusGet, .-EMACPowerManagementStatusGet
	.section	.rodata.g_pi16MIIClockDiv,"a",%progbits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	g_pi16MIIClockDiv, %object
	.size	g_pi16MIIClockDiv, 24
g_pi16MIIClockDiv:
	.word	64000000
	.word	12
	.word	104000000
	.word	0
	.word	150000000
	.word	4
	.ident	"GCC: (15:4.9.3+svn227297-1) 4.9.3 20150529 (prerelease)"
