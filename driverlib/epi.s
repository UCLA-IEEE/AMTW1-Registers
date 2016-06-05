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
	.file	"epi.c"
	.section	.text.EPIModeSet,"ax",%progbits
	.align	1
	.global	EPIModeSet
	.thumb
	.thumb_func
	.type	EPIModeSet, %function
EPIModeSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r1, [r0]
	bx	lr
	.size	EPIModeSet, .-EPIModeSet
	.section	.text.EPIDividerSet,"ax",%progbits
	.align	1
	.global	EPIDividerSet
	.thumb
	.thumb_func
	.type	EPIDividerSet, %function
EPIDividerSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r1, [r0, #4]
	bx	lr
	.size	EPIDividerSet, .-EPIDividerSet
	.section	.text.EPIDividerCSSet,"ax",%progbits
	.align	1
	.global	EPIDividerCSSet
	.thumb
	.thumb_func
	.type	EPIDividerCSSet, %function
EPIDividerCSSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #1
	push	{r4, lr}
	uxth	r2, r2
	bhi	.L4
	ldr	r4, [r0, #4]
	lsls	r1, r1, #4
	movw	r3, #65535
	lsls	r3, r3, r1
	bic	r3, r4, r3
	lsls	r2, r2, r1
	orrs	r2, r2, r3
	str	r2, [r0, #4]
	pop	{r4, pc}
.L4:
	add	r1, r1, #268435456
	subs	r1, r1, #2
	ldr	r4, [r0, #8]
	lsls	r1, r1, #4
	movw	r3, #65535
	lsls	r3, r3, r1
	bic	r3, r4, r3
	lsls	r2, r2, r1
	orrs	r2, r2, r3
	str	r2, [r0, #8]
	pop	{r4, pc}
	.size	EPIDividerCSSet, .-EPIDividerCSSet
	.section	.text.EPIDMATxCount,"ax",%progbits
	.align	1
	.global	EPIDMATxCount
	.thumb
	.thumb_func
	.type	EPIDMATxCount, %function
EPIDMATxCount:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	uxtb	r1, r1
	str	r1, [r0, #520]
	bx	lr
	.size	EPIDMATxCount, .-EPIDMATxCount
	.section	.text.EPIConfigSDRAMSet,"ax",%progbits
	.align	1
	.global	EPIConfigSDRAMSet
	.thumb
	.thumb_func
	.type	EPIConfigSDRAMSet, %function
EPIConfigSDRAMSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bic	r1, r1, #133693440
	bic	r1, r1, #458752
	orr	r2, r1, r2, lsl #16
	str	r2, [r0, #16]
	bx	lr
	.size	EPIConfigSDRAMSet, .-EPIConfigSDRAMSet
	.section	.text.EPIConfigHB8Set,"ax",%progbits
	.align	1
	.global	EPIConfigHB8Set
	.thumb
	.thumb_func
	.type	EPIConfigHB8Set, %function
EPIConfigHB8Set:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ands	r3, r1, #2048
	and	r4, r1, #5632
	it	ne
	movne	r3, #67108864
	bic	r1, r1, #65280
	orr	r3, r3, r4, lsl #15
	orr	r2, r1, r2, lsl #8
	str	r3, [r0, #20]
	str	r2, [r0, #16]
	pop	{r4, pc}
	.size	EPIConfigHB8Set, .-EPIConfigHB8Set
	.section	.text.EPIConfigHB16Set,"ax",%progbits
	.align	1
	.global	EPIConfigHB16Set
	.thumb
	.thumb_func
	.type	EPIConfigHB16Set, %function
EPIConfigHB16Set:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ands	r3, r1, #2048
	and	r4, r1, #5632
	it	ne
	movne	r3, #67108864
	bic	r1, r1, #65280
	orr	r3, r3, r4, lsl #15
	orr	r2, r1, r2, lsl #8
	str	r3, [r0, #20]
	str	r2, [r0, #16]
	pop	{r4, pc}
	.size	EPIConfigHB16Set, .-EPIConfigHB16Set
	.section	.text.EPIConfigHB8CSSet,"ax",%progbits
	.align	1
	.global	EPIConfigHB8CSSet
	.thumb
	.thumb_func
	.type	EPIConfigHB8CSSet, %function
EPIConfigHB8CSSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #1
	lsl	r1, r1, #2
	ite	ls
	addls	r1, r1, #16
	addhi	r1, r1, #768
	ldr	r3, [r1, r0]
	bic	r3, r3, #3670016
	bic	r3, r3, #243
	orrs	r3, r3, r2
	str	r3, [r1, r0]
	bx	lr
	.size	EPIConfigHB8CSSet, .-EPIConfigHB8CSSet
	.section	.text.EPIConfigHB16CSSet,"ax",%progbits
	.align	1
	.global	EPIConfigHB16CSSet
	.thumb
	.thumb_func
	.type	EPIConfigHB16CSSet, %function
EPIConfigHB16CSSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #1
	lsl	r1, r1, #2
	ite	ls
	addls	r1, r1, #16
	addhi	r1, r1, #768
	ldr	r3, [r1, r0]
	bic	r3, r3, #3735552
	bic	r3, r3, #243
	orrs	r3, r3, r2
	str	r3, [r1, r0]
	bx	lr
	.size	EPIConfigHB16CSSet, .-EPIConfigHB16CSSet
	.section	.text.EPIConfigHB8TimingSet,"ax",%progbits
	.align	1
	.global	EPIConfigHB8TimingSet
	.thumb
	.thumb_func
	.type	EPIConfigHB8TimingSet, %function
EPIConfigHB8TimingSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, #784
	str	r2, [r0, r1, lsl #2]
	bx	lr
	.size	EPIConfigHB8TimingSet, .-EPIConfigHB8TimingSet
	.section	.text.EPIConfigHB16TimingSet,"ax",%progbits
	.align	1
	.global	EPIConfigHB16TimingSet
	.thumb
	.thumb_func
	.type	EPIConfigHB16TimingSet, %function
EPIConfigHB16TimingSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, #784
	str	r2, [r0, r1, lsl #2]
	bx	lr
	.size	EPIConfigHB16TimingSet, .-EPIConfigHB16TimingSet
	.section	.text.EPIPSRAMConfigRegSet,"ax",%progbits
	.align	1
	.global	EPIPSRAMConfigRegSet
	.thumb
	.thumb_func
	.type	EPIPSRAMConfigRegSet, %function
EPIPSRAMConfigRegSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #1
	lsl	r1, r1, #2
	ite	ls
	addls	r1, r1, #16
	addhi	r1, r1, #768
	ubfx	r2, r2, #0, #21
	str	r2, [r0, #864]
	ldr	r3, [r1, r0]
	orr	r3, r3, #262144
	str	r3, [r1, r0]
	bx	lr
	.size	EPIPSRAMConfigRegSet, .-EPIPSRAMConfigRegSet
	.section	.text.EPIPSRAMConfigRegRead,"ax",%progbits
	.align	1
	.global	EPIPSRAMConfigRegRead
	.thumb
	.thumb_func
	.type	EPIPSRAMConfigRegRead, %function
EPIPSRAMConfigRegRead:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #1
	lsl	r1, r1, #2
	ite	ls
	addls	r1, r1, #16
	addhi	r1, r1, #768
	ldr	r3, [r1, r0]
	orr	r3, r3, #131072
	str	r3, [r1, r0]
	bx	lr
	.size	EPIPSRAMConfigRegRead, .-EPIPSRAMConfigRegRead
	.section	.text.EPIPSRAMConfigRegGetNonBlocking,"ax",%progbits
	.align	1
	.global	EPIPSRAMConfigRegGetNonBlocking
	.thumb
	.thumb_func
	.type	EPIPSRAMConfigRegGetNonBlocking, %function
EPIPSRAMConfigRegGetNonBlocking:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #1
	lsl	r1, r1, #2
	ite	ls
	addls	r1, r1, #16
	addhi	r1, r1, #768
	ldr	r3, [r1, r0]
	lsls	r3, r3, #14
	itttt	pl
	ldrpl	r3, [r0, #864]
	uxthpl	r3, r3
	movpl	r0, #1
	strpl	r3, [r2]
	it	mi
	movmi	r0, #0
	bx	lr
	.size	EPIPSRAMConfigRegGetNonBlocking, .-EPIPSRAMConfigRegGetNonBlocking
	.section	.text.EPIPSRAMConfigRegGet,"ax",%progbits
	.align	1
	.global	EPIPSRAMConfigRegGet
	.thumb
	.thumb_func
	.type	EPIPSRAMConfigRegGet, %function
EPIPSRAMConfigRegGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #1
	lsl	r1, r1, #2
	ite	ls
	addls	r1, r1, #16
	addhi	r1, r1, #768
.L37:
	ldr	r3, [r1, r0]
	lsls	r3, r3, #14
	bmi	.L37
	ldr	r0, [r0, #864]
	uxth	r0, r0
	bx	lr
	.size	EPIPSRAMConfigRegGet, .-EPIPSRAMConfigRegGet
	.section	.text.EPIConfigGPModeSet,"ax",%progbits
	.align	1
	.global	EPIConfigGPModeSet
	.thumb
	.thumb_func
	.type	EPIConfigGPModeSet, %function
EPIConfigGPModeSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bic	r1, r1, #62914560
	orr	r2, r1, r2, lsl #22
	bic	r2, r2, #65280
	orr	r3, r2, r3, lsl #8
	str	r3, [r0, #16]
	bx	lr
	.size	EPIConfigGPModeSet, .-EPIConfigGPModeSet
	.section	.text.EPIAddressMapSet,"ax",%progbits
	.align	1
	.global	EPIAddressMapSet
	.thumb
	.thumb_func
	.type	EPIAddressMapSet, %function
EPIAddressMapSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r1, [r0, #28]
	bx	lr
	.size	EPIAddressMapSet, .-EPIAddressMapSet
	.section	.text.EPINonBlockingReadConfigure,"ax",%progbits
	.align	1
	.global	EPINonBlockingReadConfigure
	.thumb
	.thumb_func
	.type	EPINonBlockingReadConfigure, %function
EPINonBlockingReadConfigure:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r1, r0, r1, lsl #4
	str	r2, [r1, #32]
	str	r3, [r1, #36]
	bx	lr
	.size	EPINonBlockingReadConfigure, .-EPINonBlockingReadConfigure
	.section	.text.EPINonBlockingReadStart,"ax",%progbits
	.align	1
	.global	EPINonBlockingReadStart
	.thumb
	.thumb_func
	.type	EPINonBlockingReadStart, %function
EPINonBlockingReadStart:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	adds	r0, r0, #40
	lsls	r1, r1, #4
	str	r2, [r0, r1]
	bx	lr
	.size	EPINonBlockingReadStart, .-EPINonBlockingReadStart
	.section	.text.EPINonBlockingReadStop,"ax",%progbits
	.align	1
	.global	EPINonBlockingReadStop
	.thumb
	.thumb_func
	.type	EPINonBlockingReadStop, %function
EPINonBlockingReadStop:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	adds	r0, r0, #40
	lsls	r1, r1, #4
	movs	r3, #0
	str	r3, [r0, r1]
	bx	lr
	.size	EPINonBlockingReadStop, .-EPINonBlockingReadStop
	.section	.text.EPINonBlockingReadCount,"ax",%progbits
	.align	1
	.global	EPINonBlockingReadCount
	.thumb
	.thumb_func
	.type	EPINonBlockingReadCount, %function
EPINonBlockingReadCount:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	lsls	r1, r1, #4
	adds	r0, r0, #40
	ldr	r0, [r0, r1]
	bx	lr
	.size	EPINonBlockingReadCount, .-EPINonBlockingReadCount
	.section	.text.EPINonBlockingReadAvail,"ax",%progbits
	.align	1
	.global	EPINonBlockingReadAvail
	.thumb
	.thumb_func
	.type	EPINonBlockingReadAvail, %function
EPINonBlockingReadAvail:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #108]
	bx	lr
	.size	EPINonBlockingReadAvail, .-EPINonBlockingReadAvail
	.section	.text.EPINonBlockingReadGet32,"ax",%progbits
	.align	1
	.global	EPINonBlockingReadGet32
	.thumb
	.thumb_func
	.type	EPINonBlockingReadGet32, %function
EPINonBlockingReadGet32:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	movs	r3, #0
.L47:
	ldr	r4, [r0, #108]
	cbnz	r4, .L48
	mov	r1, r3
	b	.L51
.L48:
	cmp	r3, r1
	beq	.L51
	ldr	r4, [r0, #112]
	str	r4, [r2, r3, lsl #2]
	adds	r3, r3, #1
	b	.L47
.L51:
	mov	r0, r1
	pop	{r4, pc}
	.size	EPINonBlockingReadGet32, .-EPINonBlockingReadGet32
	.section	.text.EPINonBlockingReadGet16,"ax",%progbits
	.align	1
	.global	EPINonBlockingReadGet16
	.thumb
	.thumb_func
	.type	EPINonBlockingReadGet16, %function
EPINonBlockingReadGet16:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	movs	r3, #0
.L53:
	ldr	r4, [r0, #108]
	cbnz	r4, .L54
	mov	r1, r3
	b	.L57
.L54:
	cmp	r3, r1
	beq	.L57
	ldr	r4, [r0, #112]
	strh	r4, [r2, r3, lsl #1]	@ movhi
	adds	r3, r3, #1
	b	.L53
.L57:
	mov	r0, r1
	pop	{r4, pc}
	.size	EPINonBlockingReadGet16, .-EPINonBlockingReadGet16
	.section	.text.EPINonBlockingReadGet8,"ax",%progbits
	.align	1
	.global	EPINonBlockingReadGet8
	.thumb
	.thumb_func
	.type	EPINonBlockingReadGet8, %function
EPINonBlockingReadGet8:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	add	r1, r1, r2
	mov	r3, r2
.L59:
	ldr	r5, [r0, #108]
	subs	r4, r3, r2
	cbz	r5, .L63
	cmp	r3, r1
	beq	.L63
	ldr	r4, [r0, #112]
	strb	r4, [r3], #1
	b	.L59
.L63:
	mov	r0, r4
	pop	{r4, r5, pc}
	.size	EPINonBlockingReadGet8, .-EPINonBlockingReadGet8
	.section	.text.EPIFIFOConfig,"ax",%progbits
	.align	1
	.global	EPIFIFOConfig
	.thumb
	.thumb_func
	.type	EPIFIFOConfig, %function
EPIFIFOConfig:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r1, [r0, #512]
	bx	lr
	.size	EPIFIFOConfig, .-EPIFIFOConfig
	.section	.text.EPIWriteFIFOCountGet,"ax",%progbits
	.align	1
	.global	EPIWriteFIFOCountGet
	.thumb
	.thumb_func
	.type	EPIWriteFIFOCountGet, %function
EPIWriteFIFOCountGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #516]
	bx	lr
	.size	EPIWriteFIFOCountGet, .-EPIWriteFIFOCountGet
	.section	.text.EPIIntEnable,"ax",%progbits
	.align	1
	.global	EPIIntEnable
	.thumb
	.thumb_func
	.type	EPIIntEnable, %function
EPIIntEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #528]
	orrs	r1, r1, r3
	str	r1, [r0, #528]
	bx	lr
	.size	EPIIntEnable, .-EPIIntEnable
	.section	.text.EPIIntDisable,"ax",%progbits
	.align	1
	.global	EPIIntDisable
	.thumb
	.thumb_func
	.type	EPIIntDisable, %function
EPIIntDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #528]
	bic	r1, r3, r1
	str	r1, [r0, #528]
	bx	lr
	.size	EPIIntDisable, .-EPIIntDisable
	.section	.text.EPIIntStatus,"ax",%progbits
	.align	1
	.global	EPIIntStatus
	.thumb
	.thumb_func
	.type	EPIIntStatus, %function
EPIIntStatus:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r1, .L69
	ldr	r0, [r0, #536]
	bx	lr
.L69:
	ldr	r0, [r0, #532]
	bx	lr
	.size	EPIIntStatus, .-EPIIntStatus
	.section	.text.EPIIntErrorStatus,"ax",%progbits
	.align	1
	.global	EPIIntErrorStatus
	.thumb
	.thumb_func
	.type	EPIIntErrorStatus, %function
EPIIntErrorStatus:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #540]
	bx	lr
	.size	EPIIntErrorStatus, .-EPIIntErrorStatus
	.section	.text.EPIIntErrorClear,"ax",%progbits
	.align	1
	.global	EPIIntErrorClear
	.thumb
	.thumb_func
	.type	EPIIntErrorClear, %function
EPIIntErrorClear:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r1, [r0, #540]
	bx	lr
	.size	EPIIntErrorClear, .-EPIIntErrorClear
	.section	.text.EPIIntRegister,"ax",%progbits
	.align	1
	.global	EPIIntRegister
	.thumb
	.thumb_func
	.type	EPIIntRegister, %function
EPIIntRegister:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L76
	push	{r4, lr}
	ldr	r2, [r3]
	ldr	r3, .L76+4
	ldr	r4, .L76+8
	ands	r3, r3, r2
	cmp	r3, r4
	ite	eq
	moveq	r4, #66
	movne	r4, #0
	mov	r0, r4
	bl	IntRegister
	mov	r0, r4
	pop	{r4, lr}
	b	IntEnable
.L77:
	.align	2
.L76:
	.word	1074782208
	.word	1895759872
	.word	269090816
	.size	EPIIntRegister, .-EPIIntRegister
	.section	.text.EPIIntUnregister,"ax",%progbits
	.align	1
	.global	EPIIntUnregister
	.thumb
	.thumb_func
	.type	EPIIntUnregister, %function
EPIIntUnregister:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L81
	push	{r4, lr}
	ldr	r2, [r3]
	ldr	r3, .L81+4
	ldr	r4, .L81+8
	ands	r3, r3, r2
	cmp	r3, r4
	ite	eq
	moveq	r4, #66
	movne	r4, #0
	mov	r0, r4
	bl	IntDisable
	mov	r0, r4
	pop	{r4, lr}
	b	IntUnregister
.L82:
	.align	2
.L81:
	.word	1074782208
	.word	1895759872
	.word	269090816
	.size	EPIIntUnregister, .-EPIIntUnregister
	.ident	"GCC: (15:4.9.3+svn227297-1) 4.9.3 20150529 (prerelease)"
