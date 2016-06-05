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
	.file	"udma.c"
	.section	.text.uDMAEnable,"ax",%progbits
	.align	1
	.global	uDMAEnable
	.thumb
	.thumb_func
	.type	uDMAEnable, %function
uDMAEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L2
	movs	r2, #1
	str	r2, [r3]
	bx	lr
.L3:
	.align	2
.L2:
	.word	1074786308
	.size	uDMAEnable, .-uDMAEnable
	.section	.text.uDMADisable,"ax",%progbits
	.align	1
	.global	uDMADisable
	.thumb
	.thumb_func
	.type	uDMADisable, %function
uDMADisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L5
	movs	r2, #0
	str	r2, [r3]
	bx	lr
.L6:
	.align	2
.L5:
	.word	1074786308
	.size	uDMADisable, .-uDMADisable
	.section	.text.uDMAErrorStatusGet,"ax",%progbits
	.align	1
	.global	uDMAErrorStatusGet
	.thumb
	.thumb_func
	.type	uDMAErrorStatusGet, %function
uDMAErrorStatusGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L8
	ldr	r0, [r3]
	bx	lr
.L9:
	.align	2
.L8:
	.word	1074786380
	.size	uDMAErrorStatusGet, .-uDMAErrorStatusGet
	.section	.text.uDMAErrorStatusClear,"ax",%progbits
	.align	1
	.global	uDMAErrorStatusClear
	.thumb
	.thumb_func
	.type	uDMAErrorStatusClear, %function
uDMAErrorStatusClear:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L11
	movs	r2, #1
	str	r2, [r3]
	bx	lr
.L12:
	.align	2
.L11:
	.word	1074786380
	.size	uDMAErrorStatusClear, .-uDMAErrorStatusClear
	.section	.text.uDMAChannelEnable,"ax",%progbits
	.align	1
	.global	uDMAChannelEnable
	.thumb
	.thumb_func
	.type	uDMAChannelEnable, %function
uDMAChannelEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	and	r0, r0, #31
	movs	r3, #1
	ldr	r2, .L14
	lsls	r3, r3, r0
	str	r3, [r2]
	bx	lr
.L15:
	.align	2
.L14:
	.word	1074786344
	.size	uDMAChannelEnable, .-uDMAChannelEnable
	.section	.text.uDMAChannelDisable,"ax",%progbits
	.align	1
	.global	uDMAChannelDisable
	.thumb
	.thumb_func
	.type	uDMAChannelDisable, %function
uDMAChannelDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	and	r0, r0, #31
	movs	r3, #1
	ldr	r2, .L17
	lsls	r3, r3, r0
	str	r3, [r2]
	bx	lr
.L18:
	.align	2
.L17:
	.word	1074786348
	.size	uDMAChannelDisable, .-uDMAChannelDisable
	.section	.text.uDMAChannelIsEnabled,"ax",%progbits
	.align	1
	.global	uDMAChannelIsEnabled
	.thumb
	.thumb_func
	.type	uDMAChannelIsEnabled, %function
uDMAChannelIsEnabled:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L20
	and	r0, r0, #31
	ldr	r2, [r3]
	movs	r3, #1
	lsls	r3, r3, r0
	tst	r3, r2
	ite	ne
	movne	r0, #1
	moveq	r0, #0
	bx	lr
.L21:
	.align	2
.L20:
	.word	1074786344
	.size	uDMAChannelIsEnabled, .-uDMAChannelIsEnabled
	.section	.text.uDMAControlBaseSet,"ax",%progbits
	.align	1
	.global	uDMAControlBaseSet
	.thumb
	.thumb_func
	.type	uDMAControlBaseSet, %function
uDMAControlBaseSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L23
	str	r0, [r3]
	bx	lr
.L24:
	.align	2
.L23:
	.word	1074786312
	.size	uDMAControlBaseSet, .-uDMAControlBaseSet
	.section	.text.uDMAControlBaseGet,"ax",%progbits
	.align	1
	.global	uDMAControlBaseGet
	.thumb
	.thumb_func
	.type	uDMAControlBaseGet, %function
uDMAControlBaseGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L26
	ldr	r0, [r3]
	bx	lr
.L27:
	.align	2
.L26:
	.word	1074786312
	.size	uDMAControlBaseGet, .-uDMAControlBaseGet
	.section	.text.uDMAControlAlternateBaseGet,"ax",%progbits
	.align	1
	.global	uDMAControlAlternateBaseGet
	.thumb
	.thumb_func
	.type	uDMAControlAlternateBaseGet, %function
uDMAControlAlternateBaseGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L29
	ldr	r0, [r3]
	bx	lr
.L30:
	.align	2
.L29:
	.word	1074786316
	.size	uDMAControlAlternateBaseGet, .-uDMAControlAlternateBaseGet
	.section	.text.uDMAChannelRequest,"ax",%progbits
	.align	1
	.global	uDMAChannelRequest
	.thumb
	.thumb_func
	.type	uDMAChannelRequest, %function
uDMAChannelRequest:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	and	r0, r0, #31
	movs	r3, #1
	ldr	r2, .L32
	lsls	r3, r3, r0
	str	r3, [r2]
	bx	lr
.L33:
	.align	2
.L32:
	.word	1074786324
	.size	uDMAChannelRequest, .-uDMAChannelRequest
	.section	.text.uDMAChannelAttributeEnable,"ax",%progbits
	.align	1
	.global	uDMAChannelAttributeEnable
	.thumb
	.thumb_func
	.type	uDMAChannelAttributeEnable, %function
uDMAChannelAttributeEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	lsls	r2, r1, #31
	itt	mi
	movmi	r3, #1
	ldrmi	r2, .L51
	and	r0, r0, #31
	itt	mi
	lslmi	r3, r3, r0
	strmi	r3, [r2]
	lsls	r3, r1, #30
	itttt	mi
	movmi	r3, #1
	ldrmi	r2, .L51+4
	lslmi	r3, r3, r0
	strmi	r3, [r2]
	lsls	r2, r1, #29
	itttt	mi
	movmi	r3, #1
	ldrmi	r2, .L51+8
	lslmi	r3, r3, r0
	strmi	r3, [r2]
	lsls	r3, r1, #28
	itttt	mi
	movmi	r3, #1
	ldrmi	r2, .L51+12
	lslmi	r3, r3, r0
	strmi	r3, [r2]
	bx	lr
.L52:
	.align	2
.L51:
	.word	1074786328
	.word	1074786352
	.word	1074786360
	.word	1074786336
	.size	uDMAChannelAttributeEnable, .-uDMAChannelAttributeEnable
	.section	.text.uDMAChannelAttributeDisable,"ax",%progbits
	.align	1
	.global	uDMAChannelAttributeDisable
	.thumb
	.thumb_func
	.type	uDMAChannelAttributeDisable, %function
uDMAChannelAttributeDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	lsls	r2, r1, #31
	itt	mi
	movmi	r3, #1
	ldrmi	r2, .L70
	and	r0, r0, #31
	itt	mi
	lslmi	r3, r3, r0
	strmi	r3, [r2]
	lsls	r3, r1, #30
	itttt	mi
	movmi	r3, #1
	ldrmi	r2, .L70+4
	lslmi	r3, r3, r0
	strmi	r3, [r2]
	lsls	r2, r1, #29
	itttt	mi
	movmi	r3, #1
	ldrmi	r2, .L70+8
	lslmi	r3, r3, r0
	strmi	r3, [r2]
	lsls	r3, r1, #28
	itttt	mi
	movmi	r3, #1
	ldrmi	r2, .L70+12
	lslmi	r3, r3, r0
	strmi	r3, [r2]
	bx	lr
.L71:
	.align	2
.L70:
	.word	1074786332
	.word	1074786356
	.word	1074786364
	.word	1074786340
	.size	uDMAChannelAttributeDisable, .-uDMAChannelAttributeDisable
	.section	.text.uDMAChannelAttributeGet,"ax",%progbits
	.align	1
	.global	uDMAChannelAttributeGet
	.thumb
	.thumb_func
	.type	uDMAChannelAttributeGet, %function
uDMAChannelAttributeGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L85
	and	r0, r0, #31
	ldr	r2, [r3]
	movs	r3, #1
	lsls	r3, r3, r0
	tst	r3, r2
	ldr	r2, .L85+4
	ldr	r2, [r2]
	ite	ne
	movne	r0, #1
	moveq	r0, #0
	tst	r3, r2
	ldr	r2, .L85+8
	ldr	r2, [r2]
	it	ne
	orrne	r0, r0, #2
	tst	r3, r2
	ldr	r2, .L85+12
	ldr	r2, [r2]
	it	ne
	orrne	r0, r0, #4
	tst	r3, r2
	it	ne
	orrne	r0, r0, #8
	bx	lr
.L86:
	.align	2
.L85:
	.word	1074786328
	.word	1074786352
	.word	1074786360
	.word	1074786336
	.size	uDMAChannelAttributeGet, .-uDMAChannelAttributeGet
	.section	.text.uDMAChannelControlSet,"ax",%progbits
	.align	1
	.global	uDMAChannelControlSet
	.thumb
	.thumb_func
	.type	uDMAChannelControlSet, %function
uDMAChannelControlSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L88
	ldr	r3, [r3]
	and	r0, r0, #63
	add	r0, r3, r0, lsl #4
	ldr	r3, .L88+4
	ldr	r2, [r0, #8]
	ands	r3, r3, r2
	orrs	r1, r1, r3
	str	r1, [r0, #8]
	bx	lr
.L89:
	.align	2
.L88:
	.word	1074786312
	.word	16531447
	.size	uDMAChannelControlSet, .-uDMAChannelControlSet
	.section	.text.uDMAChannelTransferSet,"ax",%progbits
	.align	1
	.global	uDMAChannelTransferSet
	.thumb
	.thumb_func
	.type	uDMAChannelTransferSet, %function
uDMAChannelTransferSet:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldr	r4, .L105
	ldr	r5, [sp, #20]
	ldr	r6, [r4]
	and	lr, r0, #63
	lsl	ip, lr, #4
	add	r7, r6, ip
	lsls	r0, r0, #26
	ldr	r4, [r7, #8]
	bic	r4, r4, #16320
	bic	r4, r4, #55
	bpl	.L91
	bic	r0, r1, #2
	cmp	r0, #4
	it	eq
	orreq	r1, r1, #1
.L91:
	subs	r0, r5, #1
	orr	r0, r4, r0, lsl #4
	orrs	r0, r0, r1
	and	r4, r0, #201326592
	cmp	r4, #201326592
	itttt	ne
	lsrne	r4, r4, #26
	addne	r2, r2, #-1
	lslne	r4, r5, r4
	addne	r2, r2, r4
	str	r2, [r6, ip]
	and	r2, r0, #-1073741824
	cmp	r2, #-1073741824
	beq	.L93
	bic	r1, r1, #2
	cmp	r1, #4
	itete	eq
	orreq	r3, lr, #32
	lsrne	r2, r2, #30
	addeq	r3, r6, r3, lsl #4
	addne	r3, r3, #-1
	itet	ne
	lslne	r5, r5, r2
	addeq	r3, r3, #12
	addne	r3, r3, r5
.L93:
	str	r3, [r7, #4]
	str	r0, [r7, #8]
	pop	{r4, r5, r6, r7, pc}
.L106:
	.align	2
.L105:
	.word	1074786312
	.size	uDMAChannelTransferSet, .-uDMAChannelTransferSet
	.section	.text.uDMAChannelScatterGatherSet,"ax",%progbits
	.align	1
	.global	uDMAChannelScatterGatherSet
	.thumb
	.thumb_func
	.type	uDMAChannelScatterGatherSet, %function
uDMAChannelScatterGatherSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L110
	and	r0, r0, #31
	add	r2, r2, r1, lsl #4
	lsls	r1, r1, #6
	ldr	r4, [r4]
	lsls	r6, r0, #4
	subs	r1, r1, #16
	cmp	r3, #0
	sub	r2, r2, #4
	orr	r1, r1, #-1442840576
	str	r2, [r4, r6]
	it	ne
	movne	r3, #6
	orr	r2, r0, #32
	it	eq
	moveq	r3, #4
	orr	r1, r1, #32768
	adds	r5, r4, r6
	orrs	r1, r1, r3
	add	r4, r4, r2, lsl #4
	movs	r3, #1
	ldr	r2, .L110+4
	str	r1, [r5, #8]
	adds	r4, r4, #12
	lsls	r3, r3, r0
	str	r4, [r5, #4]
	str	r3, [r2]
	pop	{r4, r5, r6, pc}
.L111:
	.align	2
.L110:
	.word	1074786312
	.word	1074786356
	.size	uDMAChannelScatterGatherSet, .-uDMAChannelScatterGatherSet
	.section	.text.uDMAChannelSizeGet,"ax",%progbits
	.align	1
	.global	uDMAChannelSizeGet
	.thumb
	.thumb_func
	.type	uDMAChannelSizeGet, %function
uDMAChannelSizeGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L115
	ldr	r3, [r3]
	and	r0, r0, #63
	add	r3, r3, r0, lsl #4
	movw	r0, #16375
	ldr	r3, [r3, #8]
	ands	r0, r0, r3
	cbz	r0, .L113
	lsrs	r0, r0, #4
	adds	r0, r0, #1
.L113:
	bx	lr
.L116:
	.align	2
.L115:
	.word	1074786312
	.size	uDMAChannelSizeGet, .-uDMAChannelSizeGet
	.section	.text.uDMAChannelModeGet,"ax",%progbits
	.align	1
	.global	uDMAChannelModeGet
	.thumb
	.thumb_func
	.type	uDMAChannelModeGet, %function
uDMAChannelModeGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L125
	ldr	r3, [r3]
	and	r0, r0, #63
	add	r3, r3, r0, lsl #4
	ldr	r3, [r3, #8]
	and	r0, r3, #6
	cmp	r0, #4
	beq	.L118
	cmp	r0, #6
	it	ne
	andne	r0, r3, #7
.L118:
	bx	lr
.L126:
	.align	2
.L125:
	.word	1074786312
	.size	uDMAChannelModeGet, .-uDMAChannelModeGet
	.section	.text.uDMAChannelSelectSecondary,"ax",%progbits
	.align	1
	.global	uDMAChannelSelectSecondary
	.thumb
	.thumb_func
	.type	uDMAChannelSelectSecondary, %function
uDMAChannelSelectSecondary:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L128
	ldr	r3, [r2]
	orrs	r0, r0, r3
	str	r0, [r2]
	bx	lr
.L129:
	.align	2
.L128:
	.word	1074787584
	.size	uDMAChannelSelectSecondary, .-uDMAChannelSelectSecondary
	.section	.text.uDMAChannelSelectDefault,"ax",%progbits
	.align	1
	.global	uDMAChannelSelectDefault
	.thumb
	.thumb_func
	.type	uDMAChannelSelectDefault, %function
uDMAChannelSelectDefault:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L131
	ldr	r3, [r2]
	bic	r0, r3, r0
	str	r0, [r2]
	bx	lr
.L132:
	.align	2
.L131:
	.word	1074787584
	.size	uDMAChannelSelectDefault, .-uDMAChannelSelectDefault
	.section	.text.uDMAIntRegister,"ax",%progbits
	.align	1
	.global	uDMAIntRegister
	.thumb
	.thumb_func
	.type	uDMAIntRegister, %function
uDMAIntRegister:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	bl	IntRegister
	mov	r0, r4
	pop	{r4, lr}
	b	IntEnable
	.size	uDMAIntRegister, .-uDMAIntRegister
	.section	.text.uDMAIntUnregister,"ax",%progbits
	.align	1
	.global	uDMAIntUnregister
	.thumb
	.thumb_func
	.type	uDMAIntUnregister, %function
uDMAIntUnregister:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	bl	IntDisable
	mov	r0, r4
	pop	{r4, lr}
	b	IntUnregister
	.size	uDMAIntUnregister, .-uDMAIntUnregister
	.section	.text.uDMAIntStatus,"ax",%progbits
	.align	1
	.global	uDMAIntStatus
	.thumb
	.thumb_func
	.type	uDMAIntStatus, %function
uDMAIntStatus:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L136
	ldr	r0, [r3]
	bx	lr
.L137:
	.align	2
.L136:
	.word	1074787588
	.size	uDMAIntStatus, .-uDMAIntStatus
	.section	.text.uDMAIntClear,"ax",%progbits
	.align	1
	.global	uDMAIntClear
	.thumb
	.thumb_func
	.type	uDMAIntClear, %function
uDMAIntClear:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L139
	str	r0, [r3]
	bx	lr
.L140:
	.align	2
.L139:
	.word	1074787588
	.size	uDMAIntClear, .-uDMAIntClear
	.section	.text.uDMAChannelAssign,"ax",%progbits
	.align	1
	.global	uDMAChannelAssign
	.thumb
	.thumb_func
	.type	uDMAChannelAssign, %function
uDMAChannelAssign:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L142
	ubfx	r2, r0, #3, #5
	add	r3, r3, r2
	lsls	r3, r3, #2
	push	{r4, lr}
	and	r2, r0, #7
	ldr	r4, [r3]
	lsls	r2, r2, #2
	movs	r1, #15
	lsls	r1, r1, r2
	lsrs	r0, r0, #16
	bic	r1, r4, r1
	lsls	r0, r0, r2
	orrs	r0, r0, r1
	str	r0, [r3]
	pop	{r4, pc}
.L143:
	.align	2
.L142:
	.word	268696900
	.size	uDMAChannelAssign, .-uDMAChannelAssign
	.ident	"GCC: (15:4.9.3+svn227297-1) 4.9.3 20150529 (prerelease)"
