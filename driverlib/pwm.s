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
	.file	"pwm.c"
	.section	.text._PWMGenIntNumberGet,"ax",%progbits
	.align	1
	.thumb
	.thumb_func
	.type	_PWMGenIntNumberGet, %function
_PWMGenIntNumberGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L25
	add	r1, r1, r0
	cmp	r1, r3
	beq	.L3
	bhi	.L4
	subs	r3, r3, #128
	cmp	r1, r3
	beq	.L5
	adds	r3, r3, #64
	cmp	r1, r3
	beq	.L6
	subs	r3, r3, #128
	cmp	r1, r3
	bne	.L13
	b	.L24
.L4:
	ldr	r3, .L25+4
	cmp	r1, r3
	beq	.L8
	bhi	.L9
	subs	r3, r3, #64
	cmp	r1, r3
	bne	.L13
	ldr	r3, .L25+8
	ldr	r0, .L25+12
	ldr	r2, [r3]
	ldr	r3, .L25+16
	ands	r3, r3, r2
	cmp	r3, r0
	ite	eq
	moveq	r0, #150
	movne	r0, #0
	bx	lr
.L9:
	ldr	r3, .L25+20
	cmp	r1, r3
	beq	.L11
	adds	r3, r3, #64
	cmp	r1, r3
	bne	.L13
	ldr	r3, .L25+8
	ldr	r0, .L25+12
	ldr	r2, [r3]
	ldr	r3, .L25+16
	ands	r3, r3, r2
	cmp	r3, r0
	ite	eq
	moveq	r0, #153
	movne	r0, #0
	bx	lr
.L24:
	ldr	r2, .L25+8
	ldr	r3, .L25+16
	ldr	r1, [r2]
	ands	r3, r3, r1
	ldr	r1, .L25+12
	cmp	r3, r1
	beq	.L14
	ldr	r2, [r2]
	ldr	r3, .L25+16
	ldr	r0, .L25+24
	ands	r3, r3, r2
	cmp	r3, r0
	ite	eq
	moveq	r0, #26
	movne	r0, #0
	bx	lr
.L5:
	ldr	r3, .L25+8
	ldr	r0, .L25+24
	ldr	r2, [r3]
	ldr	r3, .L25+16
	ands	r3, r3, r2
	cmp	r3, r0
	ite	eq
	moveq	r0, #27
	movne	r0, #0
	bx	lr
.L6:
	ldr	r3, .L25+8
	ldr	r0, .L25+24
	ldr	r2, [r3]
	ldr	r3, .L25+16
	ands	r3, r3, r2
	cmp	r3, r0
	ite	eq
	moveq	r0, #28
	movne	r0, #0
	bx	lr
.L3:
	ldr	r3, .L25+8
	ldr	r0, .L25+24
	ldr	r2, [r3]
	ldr	r3, .L25+16
	ands	r3, r3, r2
	cmp	r3, r0
	ite	eq
	moveq	r0, #59
	movne	r0, #0
	bx	lr
.L8:
	ldr	r3, .L25+8
	ldr	r0, .L25+12
	ldr	r2, [r3]
	ldr	r3, .L25+16
	ands	r3, r3, r2
	cmp	r3, r0
	ite	eq
	moveq	r0, #151
	movne	r0, #0
	bx	lr
.L11:
	ldr	r3, .L25+8
	ldr	r0, .L25+12
	ldr	r2, [r3]
	ldr	r3, .L25+16
	ands	r3, r3, r2
	cmp	r3, r0
	ite	eq
	moveq	r0, #152
	movne	r0, #0
	bx	lr
.L13:
	movs	r0, #0
	bx	lr
.L14:
	movs	r0, #26
	bx	lr
.L26:
	.align	2
.L25:
	.word	1073905920
	.word	1073909888
	.word	1074782208
	.word	268763136
	.word	1895759872
	.word	1073909952
	.word	269090816
	.size	_PWMGenIntNumberGet, .-_PWMGenIntNumberGet
	.section	.text._PWMFaultIntNumberGet,"ax",%progbits
	.align	1
	.thumb
	.thumb_func
	.type	_PWMFaultIntNumberGet, %function
_PWMFaultIntNumberGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L33
	ldr	r3, .L33+4
	ldr	r1, [r2]
	ands	r3, r3, r1
	ldr	r1, .L33+8
	cmp	r3, r1
	bne	.L28
	ldr	r3, .L33+12
	cmp	r0, r3
	ite	eq
	moveq	r0, #25
	movne	r0, #154
	bx	lr
.L28:
	ldr	r2, [r2]
	ldr	r3, .L33+4
	ands	r3, r3, r2
	ldr	r2, .L33+16
	cmp	r3, r2
	bne	.L31
	ldr	r3, .L33+12
	cmp	r0, r3
	ite	eq
	moveq	r0, #25
	movne	r0, #0
	bx	lr
.L31:
	movs	r0, #0
	bx	lr
.L34:
	.align	2
.L33:
	.word	1074782208
	.word	1895759872
	.word	268763136
	.word	1073905664
	.word	269090816
	.size	_PWMFaultIntNumberGet, .-_PWMFaultIntNumberGet
	.section	.text.PWMGenConfigure,"ax",%progbits
	.align	1
	.global	PWMGenConfigure
	.thumb
	.thumb_func
	.type	PWMGenConfigure, %function
PWMGenConfigure:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldr	r3, .L39
	ldr	r5, [r0, r1]
	ands	r3, r3, r5
	orrs	r3, r3, r2
	str	r3, [r0, r1]
	adds	r4, r0, r1
	lsls	r3, r2, #30
	itete	mi
	movmi	r3, #176
	movpl	r3, #140
	strmi	r3, [r4, #32]
	strpl	r3, [r4, #32]
	ite	mi
	movmi	r3, #2816
	movwpl	r3, #2060
	str	r3, [r4, #36]
	pop	{r4, r5, pc}
.L40:
	.align	2
.L39:
	.word	-524287
	.size	PWMGenConfigure, .-PWMGenConfigure
	.section	.text.PWMGenPeriodSet,"ax",%progbits
	.align	1
	.global	PWMGenPeriodSet
	.thumb
	.thumb_func
	.type	PWMGenPeriodSet, %function
PWMGenPeriodSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	adds	r3, r0, r1
	ldr	r1, [r0, r1]
	lsls	r1, r1, #30
	ite	mi
	lsrmi	r2, r2, #1
	addpl	r2, r2, #-1
	str	r2, [r3, #16]
	bx	lr
	.size	PWMGenPeriodSet, .-PWMGenPeriodSet
	.section	.text.PWMGenPeriodGet,"ax",%progbits
	.align	1
	.global	PWMGenPeriodGet
	.thumb
	.thumb_func
	.type	PWMGenPeriodGet, %function
PWMGenPeriodGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	adds	r3, r0, r1
	ldr	r2, [r0, r1]
	ldr	r0, [r3, #16]
	lsls	r3, r2, #30
	ite	mi
	lslmi	r0, r0, #1
	addpl	r0, r0, #1
	bx	lr
	.size	PWMGenPeriodGet, .-PWMGenPeriodGet
	.section	.text.PWMGenEnable,"ax",%progbits
	.align	1
	.global	PWMGenEnable
	.thumb
	.thumb_func
	.type	PWMGenEnable, %function
PWMGenEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, r1]
	orr	r3, r3, #1
	str	r3, [r0, r1]
	bx	lr
	.size	PWMGenEnable, .-PWMGenEnable
	.section	.text.PWMGenDisable,"ax",%progbits
	.align	1
	.global	PWMGenDisable
	.thumb
	.thumb_func
	.type	PWMGenDisable, %function
PWMGenDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, r1]
	bic	r3, r3, #1
	str	r3, [r0, r1]
	bx	lr
	.size	PWMGenDisable, .-PWMGenDisable
	.section	.text.PWMPulseWidthSet,"ax",%progbits
	.align	1
	.global	PWMPulseWidthSet
	.thumb
	.thumb_func
	.type	PWMPulseWidthSet, %function
PWMPulseWidthSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	bic	r3, r1, #63
	push	{r4, lr}
	adds	r4, r3, r0
	ldr	r3, [r3, r0]
	lsls	r0, r3, #30
	ldr	r3, [r4, #16]
	it	mi
	lsrmi	r2, r2, #1
	subs	r2, r3, r2
	lsls	r3, r1, #31
	ite	mi
	strmi	r2, [r4, #28]
	strpl	r2, [r4, #24]
	pop	{r4, pc}
	.size	PWMPulseWidthSet, .-PWMPulseWidthSet
	.section	.text.PWMPulseWidthGet,"ax",%progbits
	.align	1
	.global	PWMPulseWidthGet
	.thumb
	.thumb_func
	.type	PWMPulseWidthGet, %function
PWMPulseWidthGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bic	r4, r1, #63
	adds	r2, r4, r0
	lsls	r1, r1, #31
	ldr	r3, [r2, #16]
	ite	mi
	ldrmi	r2, [r2, #28]
	ldrpl	r2, [r2, #24]
	subs	r3, r3, r2
	ldr	r2, [r4, r0]
	lsls	r2, r2, #30
	it	mi
	lslmi	r3, r3, #1
	mov	r0, r3
	pop	{r4, pc}
	.size	PWMPulseWidthGet, .-PWMPulseWidthGet
	.section	.text.PWMDeadBandEnable,"ax",%progbits
	.align	1
	.global	PWMDeadBandEnable
	.thumb
	.thumb_func
	.type	PWMDeadBandEnable, %function
PWMDeadBandEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r1, r1, r0
	str	r2, [r1, #44]
	str	r3, [r1, #48]
	ldr	r3, [r1, #40]
	orr	r3, r3, #1
	str	r3, [r1, #40]
	bx	lr
	.size	PWMDeadBandEnable, .-PWMDeadBandEnable
	.section	.text.PWMDeadBandDisable,"ax",%progbits
	.align	1
	.global	PWMDeadBandDisable
	.thumb
	.thumb_func
	.type	PWMDeadBandDisable, %function
PWMDeadBandDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	adds	r1, r1, #40
	ldr	r3, [r1, r0]
	bic	r3, r3, #1
	str	r3, [r1, r0]
	bx	lr
	.size	PWMDeadBandDisable, .-PWMDeadBandDisable
	.section	.text.PWMSyncUpdate,"ax",%progbits
	.align	1
	.global	PWMSyncUpdate
	.thumb
	.thumb_func
	.type	PWMSyncUpdate, %function
PWMSyncUpdate:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r1, [r0]
	bx	lr
	.size	PWMSyncUpdate, .-PWMSyncUpdate
	.section	.text.PWMSyncTimeBase,"ax",%progbits
	.align	1
	.global	PWMSyncTimeBase
	.thumb
	.thumb_func
	.type	PWMSyncTimeBase, %function
PWMSyncTimeBase:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r1, [r0, #4]
	bx	lr
	.size	PWMSyncTimeBase, .-PWMSyncTimeBase
	.section	.text.PWMOutputState,"ax",%progbits
	.align	1
	.global	PWMOutputState
	.thumb
	.thumb_func
	.type	PWMOutputState, %function
PWMOutputState:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #8]
	cbz	r2, .L69
	orrs	r1, r1, r3
	b	.L71
.L69:
	bic	r1, r3, r1
.L71:
	str	r1, [r0, #8]
	bx	lr
	.size	PWMOutputState, .-PWMOutputState
	.section	.text.PWMOutputInvert,"ax",%progbits
	.align	1
	.global	PWMOutputInvert
	.thumb
	.thumb_func
	.type	PWMOutputInvert, %function
PWMOutputInvert:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #12]
	cbz	r2, .L73
	orrs	r1, r1, r3
	b	.L75
.L73:
	bic	r1, r3, r1
.L75:
	str	r1, [r0, #12]
	bx	lr
	.size	PWMOutputInvert, .-PWMOutputInvert
	.section	.text.PWMOutputFaultLevel,"ax",%progbits
	.align	1
	.global	PWMOutputFaultLevel
	.thumb
	.thumb_func
	.type	PWMOutputFaultLevel, %function
PWMOutputFaultLevel:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #36]
	cbz	r2, .L77
	orrs	r1, r1, r3
	b	.L79
.L77:
	bic	r1, r3, r1
.L79:
	str	r1, [r0, #36]
	bx	lr
	.size	PWMOutputFaultLevel, .-PWMOutputFaultLevel
	.section	.text.PWMOutputFault,"ax",%progbits
	.align	1
	.global	PWMOutputFault
	.thumb
	.thumb_func
	.type	PWMOutputFault, %function
PWMOutputFault:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #16]
	cbz	r2, .L81
	orrs	r1, r1, r3
	b	.L83
.L81:
	bic	r1, r3, r1
.L83:
	str	r1, [r0, #16]
	bx	lr
	.size	PWMOutputFault, .-PWMOutputFault
	.section	.text.PWMGenIntRegister,"ax",%progbits
	.align	1
	.global	PWMGenIntRegister
	.thumb
	.thumb_func
	.type	PWMGenIntRegister, %function
PWMGenIntRegister:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r5, r2
	bl	_PWMGenIntNumberGet
	mov	r1, r5
	mov	r4, r0
	bl	IntRegister
	mov	r0, r4
	pop	{r3, r4, r5, lr}
	b	IntEnable
	.size	PWMGenIntRegister, .-PWMGenIntRegister
	.section	.text.PWMGenIntUnregister,"ax",%progbits
	.align	1
	.global	PWMGenIntUnregister
	.thumb
	.thumb_func
	.type	PWMGenIntUnregister, %function
PWMGenIntUnregister:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	_PWMGenIntNumberGet
	mov	r4, r0
	bl	IntDisable
	mov	r0, r4
	pop	{r4, lr}
	b	IntUnregister
	.size	PWMGenIntUnregister, .-PWMGenIntUnregister
	.section	.text.PWMFaultIntRegister,"ax",%progbits
	.align	1
	.global	PWMFaultIntRegister
	.thumb
	.thumb_func
	.type	PWMFaultIntRegister, %function
PWMFaultIntRegister:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r5, r1
	bl	_PWMFaultIntNumberGet
	mov	r1, r5
	mov	r4, r0
	bl	IntRegister
	mov	r0, r4
	pop	{r3, r4, r5, lr}
	b	IntEnable
	.size	PWMFaultIntRegister, .-PWMFaultIntRegister
	.section	.text.PWMFaultIntUnregister,"ax",%progbits
	.align	1
	.global	PWMFaultIntUnregister
	.thumb
	.thumb_func
	.type	PWMFaultIntUnregister, %function
PWMFaultIntUnregister:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	_PWMFaultIntNumberGet
	mov	r4, r0
	bl	IntDisable
	mov	r0, r4
	pop	{r4, lr}
	b	IntUnregister
	.size	PWMFaultIntUnregister, .-PWMFaultIntUnregister
	.section	.text.PWMGenIntTrigEnable,"ax",%progbits
	.align	1
	.global	PWMGenIntTrigEnable
	.thumb
	.thumb_func
	.type	PWMGenIntTrigEnable, %function
PWMGenIntTrigEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	adds	r1, r1, #4
	ldr	r3, [r1, r0]
	orrs	r2, r2, r3
	str	r2, [r1, r0]
	bx	lr
	.size	PWMGenIntTrigEnable, .-PWMGenIntTrigEnable
	.section	.text.PWMGenIntTrigDisable,"ax",%progbits
	.align	1
	.global	PWMGenIntTrigDisable
	.thumb
	.thumb_func
	.type	PWMGenIntTrigDisable, %function
PWMGenIntTrigDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	adds	r1, r1, #4
	ldr	r3, [r1, r0]
	bic	r2, r3, r2
	str	r2, [r1, r0]
	bx	lr
	.size	PWMGenIntTrigDisable, .-PWMGenIntTrigDisable
	.section	.text.PWMGenIntStatus,"ax",%progbits
	.align	1
	.global	PWMGenIntStatus
	.thumb
	.thumb_func
	.type	PWMGenIntStatus, %function
PWMGenIntStatus:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r1, r1, r0
	cbz	r2, .L91
	ldr	r0, [r1, #12]
	bx	lr
.L91:
	ldr	r0, [r1, #8]
	bx	lr
	.size	PWMGenIntStatus, .-PWMGenIntStatus
	.section	.text.PWMGenIntClear,"ax",%progbits
	.align	1
	.global	PWMGenIntClear
	.thumb
	.thumb_func
	.type	PWMGenIntClear, %function
PWMGenIntClear:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	adds	r1, r1, #12
	str	r2, [r1, r0]
	bx	lr
	.size	PWMGenIntClear, .-PWMGenIntClear
	.section	.text.PWMIntEnable,"ax",%progbits
	.align	1
	.global	PWMIntEnable
	.thumb
	.thumb_func
	.type	PWMIntEnable, %function
PWMIntEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #20]
	orrs	r1, r1, r3
	str	r1, [r0, #20]
	bx	lr
	.size	PWMIntEnable, .-PWMIntEnable
	.section	.text.PWMIntDisable,"ax",%progbits
	.align	1
	.global	PWMIntDisable
	.thumb
	.thumb_func
	.type	PWMIntDisable, %function
PWMIntDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #20]
	bic	r1, r3, r1
	str	r1, [r0, #20]
	bx	lr
	.size	PWMIntDisable, .-PWMIntDisable
	.section	.text.PWMFaultIntClear,"ax",%progbits
	.align	1
	.global	PWMFaultIntClear
	.thumb
	.thumb_func
	.type	PWMFaultIntClear, %function
PWMFaultIntClear:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #65536
	str	r3, [r0, #28]
	bx	lr
	.size	PWMFaultIntClear, .-PWMFaultIntClear
	.section	.text.PWMIntStatus,"ax",%progbits
	.align	1
	.global	PWMIntStatus
	.thumb
	.thumb_func
	.type	PWMIntStatus, %function
PWMIntStatus:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r1, .L98
	ldr	r0, [r0, #28]
	bx	lr
.L98:
	ldr	r0, [r0, #24]
	bx	lr
	.size	PWMIntStatus, .-PWMIntStatus
	.section	.text.PWMFaultIntClearExt,"ax",%progbits
	.align	1
	.global	PWMFaultIntClearExt
	.thumb
	.thumb_func
	.type	PWMFaultIntClearExt, %function
PWMFaultIntClearExt:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r1, [r0, #28]
	bx	lr
	.size	PWMFaultIntClearExt, .-PWMFaultIntClearExt
	.section	.text.PWMGenFaultConfigure,"ax",%progbits
	.align	1
	.global	PWMGenFaultConfigure
	.thumb
	.thumb_func
	.type	PWMGenFaultConfigure, %function
PWMGenFaultConfigure:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	add	r4, r1, #60
	add	r1, r1, #-2147483648
	str	r2, [r4, r0]
	subs	r1, r1, #64
	add	r0, r0, #2048
	str	r3, [r0, r1, lsl #1]
	pop	{r4, pc}
	.size	PWMGenFaultConfigure, .-PWMGenFaultConfigure
	.section	.text.PWMGenFaultTriggerSet,"ax",%progbits
	.align	1
	.global	PWMGenFaultTriggerSet
	.thumb
	.thumb_func
	.type	PWMGenFaultTriggerSet, %function
PWMGenFaultTriggerSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbnz	r2, .L103
	adds	r1, r1, #52
	b	.L105
.L103:
	adds	r1, r1, #56
.L105:
	str	r3, [r1, r0]
	bx	lr
	.size	PWMGenFaultTriggerSet, .-PWMGenFaultTriggerSet
	.section	.text.PWMGenFaultTriggerGet,"ax",%progbits
	.align	1
	.global	PWMGenFaultTriggerGet
	.thumb
	.thumb_func
	.type	PWMGenFaultTriggerGet, %function
PWMGenFaultTriggerGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbnz	r2, .L107
	adds	r1, r1, #52
	b	.L109
.L107:
	adds	r1, r1, #56
.L109:
	ldr	r0, [r1, r0]
	bx	lr
	.size	PWMGenFaultTriggerGet, .-PWMGenFaultTriggerGet
	.section	.text.PWMGenFaultStatus,"ax",%progbits
	.align	1
	.global	PWMGenFaultStatus
	.thumb
	.thumb_func
	.type	PWMGenFaultStatus, %function
PWMGenFaultStatus:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r1, r1, #-2147483648
	cbnz	r2, .L111
	addw	r0, r0, #2052
	b	.L113
.L111:
	addw	r0, r0, #2056
.L113:
	subs	r1, r1, #64
	ldr	r0, [r0, r1, lsl #1]
	bx	lr
	.size	PWMGenFaultStatus, .-PWMGenFaultStatus
	.section	.text.PWMGenFaultClear,"ax",%progbits
	.align	1
	.global	PWMGenFaultClear
	.thumb
	.thumb_func
	.type	PWMGenFaultClear, %function
PWMGenFaultClear:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r1, r1, #-2147483648
	cbnz	r2, .L115
	addw	r0, r0, #2052
	b	.L117
.L115:
	addw	r0, r0, #2056
.L117:
	subs	r1, r1, #64
	str	r3, [r0, r1, lsl #1]
	bx	lr
	.size	PWMGenFaultClear, .-PWMGenFaultClear
	.section	.text.PWMClockSet,"ax",%progbits
	.align	1
	.global	PWMClockSet
	.thumb
	.thumb_func
	.type	PWMClockSet, %function
PWMClockSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #4040]
	bic	r3, r3, #262
	bic	r3, r3, #1
	orrs	r1, r1, r3
	str	r1, [r0, #4040]
	bx	lr
	.size	PWMClockSet, .-PWMClockSet
	.section	.text.PWMClockGet,"ax",%progbits
	.align	1
	.global	PWMClockGet
	.thumb
	.thumb_func
	.type	PWMClockGet, %function
PWMClockGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #4040]
	ands	r3, r3, #256
	ittt	ne
	ldrne	r2, [r0, #4040]
	movwne	r3, #263
	andne	r3, r3, r2
	mov	r0, r3
	bx	lr
	.size	PWMClockGet, .-PWMClockGet
	.section	.text.PWMOutputUpdateMode,"ax",%progbits
	.align	1
	.global	PWMOutputUpdateMode
	.thumb
	.thumb_func
	.type	PWMOutputUpdateMode, %function
PWMOutputUpdateMode:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, #0
	push	{r4, r5, r6, r7, lr}
	mov	r4, r3
	mov	r5, r3
	movs	r6, #1
.L126:
	tst	r6, r1
	itttt	ne
	lslne	r7, r2, r3
	orrne	r4, r4, r7
	movne	r7, #3
	lslne	r7, r7, r3
	add	r3, r3, #2
	it	ne
	orrne	r5, r5, r7
	cmp	r3, #16
	lsl	r6, r6, #1
	bne	.L126
	ldr	r3, [r0, #40]
	bic	r3, r3, r5
	orrs	r4, r4, r3
	str	r4, [r0, #40]
	pop	{r4, r5, r6, r7, pc}
	.size	PWMOutputUpdateMode, .-PWMOutputUpdateMode
	.ident	"GCC: (15:4.9.3+svn227297-1) 4.9.3 20150529 (prerelease)"
