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
	.file	"adc.c"
	.section	.text._ADCIntNumberGet,"ax",%progbits
	.align	1
	.thumb
	.thumb_func
	.type	_ADCIntNumberGet, %function
_ADCIntNumberGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L7
	ldr	r3, .L7+4
	push	{r4, lr}
	ldr	r4, [r2]
	ands	r3, r3, r4
	ldr	r4, .L7+8
	cmp	r3, r4
	bne	.L2
.L4:
	add	r0, r1, #30
	pop	{r4, pc}
.L2:
	ldr	r2, [r2]
	ldr	r3, .L7+4
	ands	r3, r3, r2
	ldr	r2, .L7+12
	cmp	r3, r2
	bne	.L5
	ldr	r3, .L7+16
	cmp	r0, r3
	beq	.L4
	add	r0, r1, #62
	pop	{r4, pc}
.L5:
	movs	r0, #0
	pop	{r4, pc}
.L8:
	.align	2
.L7:
	.word	1074782208
	.word	1895759872
	.word	268763136
	.word	269090816
	.word	1073971200
	.size	_ADCIntNumberGet, .-_ADCIntNumberGet
	.section	.text.ADCIntRegister,"ax",%progbits
	.align	1
	.global	ADCIntRegister
	.thumb
	.thumb_func
	.type	ADCIntRegister, %function
ADCIntRegister:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r5, r2
	bl	_ADCIntNumberGet
	mov	r1, r5
	mov	r4, r0
	bl	IntRegister
	mov	r0, r4
	pop	{r3, r4, r5, lr}
	b	IntEnable
	.size	ADCIntRegister, .-ADCIntRegister
	.section	.text.ADCIntUnregister,"ax",%progbits
	.align	1
	.global	ADCIntUnregister
	.thumb
	.thumb_func
	.type	ADCIntUnregister, %function
ADCIntUnregister:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	_ADCIntNumberGet
	mov	r4, r0
	bl	IntDisable
	mov	r0, r4
	pop	{r4, lr}
	b	IntUnregister
	.size	ADCIntUnregister, .-ADCIntUnregister
	.section	.text.ADCIntDisable,"ax",%progbits
	.align	1
	.global	ADCIntDisable
	.thumb
	.thumb_func
	.type	ADCIntDisable, %function
ADCIntDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #8]
	movs	r2, #1
	lsls	r2, r2, r1
	bic	r3, r3, r2
	str	r3, [r0, #8]
	bx	lr
	.size	ADCIntDisable, .-ADCIntDisable
	.section	.text.ADCIntEnable,"ax",%progbits
	.align	1
	.global	ADCIntEnable
	.thumb
	.thumb_func
	.type	ADCIntEnable, %function
ADCIntEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r3, #1
	lsls	r3, r3, r1
	str	r3, [r0, #12]
	ldr	r2, [r0, #8]
	orrs	r3, r3, r2
	str	r3, [r0, #8]
	bx	lr
	.size	ADCIntEnable, .-ADCIntEnable
	.section	.text.ADCIntStatus,"ax",%progbits
	.align	1
	.global	ADCIntStatus
	.thumb
	.thumb_func
	.type	ADCIntStatus, %function
ADCIntStatus:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r2, .L14
	ldr	r3, [r0, #12]
	mov	r0, #65537
	lsls	r0, r0, r1
	ands	r0, r0, r3
	bx	lr
.L14:
	ldr	r3, [r0, #4]
	movs	r0, #1
	lsls	r0, r0, r1
	orr	r0, r0, #65536
	ands	r0, r0, r3
	lsls	r3, r0, #15
	itttt	mi
	orrmi	r3, r0, #983040
	movmi	r0, #65536
	lslmi	r0, r0, r1
	bicmi	r0, r3, r0
	bx	lr
	.size	ADCIntStatus, .-ADCIntStatus
	.section	.text.ADCIntClear,"ax",%progbits
	.align	1
	.global	ADCIntClear
	.thumb
	.thumb_func
	.type	ADCIntClear, %function
ADCIntClear:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r3, #1
	lsls	r3, r3, r1
	str	r3, [r0, #12]
	bx	lr
	.size	ADCIntClear, .-ADCIntClear
	.section	.text.ADCSequenceEnable,"ax",%progbits
	.align	1
	.global	ADCSequenceEnable
	.thumb
	.thumb_func
	.type	ADCSequenceEnable, %function
ADCSequenceEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0]
	movs	r3, #1
	lsls	r3, r3, r1
	orrs	r3, r3, r2
	str	r3, [r0]
	bx	lr
	.size	ADCSequenceEnable, .-ADCSequenceEnable
	.section	.text.ADCSequenceDisable,"ax",%progbits
	.align	1
	.global	ADCSequenceDisable
	.thumb
	.thumb_func
	.type	ADCSequenceDisable, %function
ADCSequenceDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0]
	movs	r2, #1
	lsls	r2, r2, r1
	bic	r3, r3, r2
	str	r3, [r0]
	bx	lr
	.size	ADCSequenceDisable, .-ADCSequenceDisable
	.section	.text.ADCSequenceConfigure,"ax",%progbits
	.align	1
	.global	ADCSequenceConfigure
	.thumb
	.thumb_func
	.type	ADCSequenceConfigure, %function
ADCSequenceConfigure:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	lsls	r1, r1, #2
	movs	r4, #15
	ldr	r5, [r0, #20]
	lsls	r4, r4, r1
	mvns	r4, r4
	and	r2, r2, #15
	ands	r5, r5, r4
	lsls	r2, r2, r1
	orrs	r2, r2, r5
	str	r2, [r0, #20]
	ldr	r2, [r0, #32]
	and	r3, r3, #3
	ands	r4, r4, r2
	lsls	r3, r3, r1
	orrs	r4, r4, r3
	str	r4, [r0, #32]
	pop	{r4, r5, pc}
	.size	ADCSequenceConfigure, .-ADCSequenceConfigure
	.section	.text.ADCSequenceStepConfigure,"ax",%progbits
	.align	1
	.global	ADCSequenceStepConfigure
	.thumb
	.thumb_func
	.type	ADCSequenceStepConfigure, %function
ADCSequenceStepConfigure:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	adds	r1, r1, #2
	lsls	r1, r1, #5
	push	{r4, r5, r6, r7, lr}
	lsls	r2, r2, #2
	movs	r5, #15
	ldr	r6, [r1, r0]
	lsls	r5, r5, r2
	mvns	r5, r5
	and	r7, r6, r5
	and	r6, r3, #15
	lsls	r6, r6, r2
	orrs	r6, r6, r7
	adds	r4, r1, r0
	str	r6, [r1, r0]
	ldr	r1, [r4, #24]
	and	r0, r1, r5
	ubfx	r1, r3, #8, #4
	lsls	r1, r1, r2
	orrs	r1, r1, r0
	str	r1, [r4, #24]
	ldr	r1, [r4, #4]
	and	r0, r1, r5
	ubfx	r1, r3, #4, #4
	lsls	r1, r1, r2
	orrs	r1, r1, r0
	tst	r3, #983040
	str	r1, [r4, #4]
	beq	.L24
	ldr	r1, [r4, #20]
	ubfx	r3, r3, #16, #3
	ands	r5, r5, r1
	lsls	r3, r3, r2
	orrs	r3, r3, r5
	str	r3, [r4, #20]
	ldr	r1, [r4, #16]
	movs	r3, #1
	lsls	r3, r3, r2
	orrs	r3, r3, r1
	b	.L26
.L24:
	ldr	r1, [r4, #16]
	movs	r3, #1
	lsls	r3, r3, r2
	bic	r3, r1, r3
.L26:
	str	r3, [r4, #16]
	pop	{r4, r5, r6, r7, pc}
	.size	ADCSequenceStepConfigure, .-ADCSequenceStepConfigure
	.section	.text.ADCSequenceOverflow,"ax",%progbits
	.align	1
	.global	ADCSequenceOverflow
	.thumb
	.thumb_func
	.type	ADCSequenceOverflow, %function
ADCSequenceOverflow:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #16]
	movs	r0, #1
	lsls	r0, r0, r1
	ands	r0, r0, r3
	bx	lr
	.size	ADCSequenceOverflow, .-ADCSequenceOverflow
	.section	.text.ADCSequenceOverflowClear,"ax",%progbits
	.align	1
	.global	ADCSequenceOverflowClear
	.thumb
	.thumb_func
	.type	ADCSequenceOverflowClear, %function
ADCSequenceOverflowClear:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r3, #1
	lsls	r3, r3, r1
	str	r3, [r0, #16]
	bx	lr
	.size	ADCSequenceOverflowClear, .-ADCSequenceOverflowClear
	.section	.text.ADCSequenceUnderflow,"ax",%progbits
	.align	1
	.global	ADCSequenceUnderflow
	.thumb
	.thumb_func
	.type	ADCSequenceUnderflow, %function
ADCSequenceUnderflow:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #24]
	movs	r0, #1
	lsls	r0, r0, r1
	ands	r0, r0, r3
	bx	lr
	.size	ADCSequenceUnderflow, .-ADCSequenceUnderflow
	.section	.text.ADCSequenceUnderflowClear,"ax",%progbits
	.align	1
	.global	ADCSequenceUnderflowClear
	.thumb
	.thumb_func
	.type	ADCSequenceUnderflowClear, %function
ADCSequenceUnderflowClear:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r3, #1
	lsls	r3, r3, r1
	str	r3, [r0, #24]
	bx	lr
	.size	ADCSequenceUnderflowClear, .-ADCSequenceUnderflowClear
	.section	.text.ADCSequenceDataGet,"ax",%progbits
	.align	1
	.global	ADCSequenceDataGet
	.thumb
	.thumb_func
	.type	ADCSequenceDataGet, %function
ADCSequenceDataGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	adds	r1, r1, #2
	add	r1, r0, r1, lsl #5
	movs	r0, #0
.L32:
	ldr	r3, [r1, #12]
	lsls	r3, r3, #23
	bmi	.L33
	cmp	r0, #8
	beq	.L33
	ldr	r3, [r1, #8]
	str	r3, [r2, r0, lsl #2]
	adds	r0, r0, #1
	b	.L32
.L33:
	bx	lr
	.size	ADCSequenceDataGet, .-ADCSequenceDataGet
	.section	.text.ADCProcessorTrigger,"ax",%progbits
	.align	1
	.global	ADCProcessorTrigger
	.thumb
	.thumb_func
	.type	ADCProcessorTrigger, %function
ADCProcessorTrigger:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	movs	r2, #1
	and	r4, r1, #15
	lsrs	r1, r1, #16
	ldr	r3, [r0, #40]
	lsls	r2, r2, r4
	lsls	r1, r1, #16
	orrs	r1, r1, r2
	orrs	r1, r1, r3
	str	r1, [r0, #40]
	pop	{r4, pc}
	.size	ADCProcessorTrigger, .-ADCProcessorTrigger
	.section	.text.ADCSoftwareOversampleConfigure,"ax",%progbits
	.align	1
	.global	ADCSoftwareOversampleConfigure
	.thumb
	.thumb_func
	.type	ADCSoftwareOversampleConfigure, %function
ADCSoftwareOversampleConfigure:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	lsrs	r2, r2, #1
	movs	r3, #0
.L37:
	cbz	r2, .L39
	adds	r3, r3, #1
	lsrs	r2, r2, #1
	b	.L37
.L39:
	ldr	r2, .L40
	strb	r3, [r2, r1]
	bx	lr
.L41:
	.align	2
.L40:
	.word	.LANCHOR0
	.size	ADCSoftwareOversampleConfigure, .-ADCSoftwareOversampleConfigure
	.section	.text.ADCSoftwareOversampleStepConfigure,"ax",%progbits
	.align	1
	.global	ADCSoftwareOversampleStepConfigure
	.thumb
	.thumb_func
	.type	ADCSoftwareOversampleStepConfigure, %function
ADCSoftwareOversampleStepConfigure:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	adds	r4, r1, #2
	add	r0, r0, r4, lsl #5
	ldr	r4, .L50
	ldrb	r5, [r4, r1]	@ zero_extendqisi2
	movs	r1, #4
	lsls	r1, r1, r5
	movs	r4, #1
	muls	r2, r1, r2
	lsls	r4, r4, r5
	ubfx	r6, r3, #8, #4
	ubfx	r7, r3, #4, #4
.L43:
	cbz	r4, .L49
	movs	r1, #15
	ldr	r5, [r0]
	lsls	r1, r1, r2
	mvns	r1, r1
	and	lr, r1, r5
	and	r5, r3, #15
	lsls	r5, r5, r2
	orr	r5, lr, r5
	str	r5, [r0]
	ldr	r5, [r0, #24]
	and	lr, r1, r5
	lsl	r5, r6, r2
	orr	r5, lr, r5
	str	r5, [r0, #24]
	ldr	r5, [r0, #4]
	ands	r1, r1, r5
	lsl	r5, r7, r2
	orrs	r1, r1, r5
	cmp	r4, #1
	str	r1, [r0, #4]
	itttt	ne
	ldrne	r5, [r0, #4]
	movne	r1, #6
	lslne	r1, r1, r2
	bicne	r1, r5, r1
	it	ne
	strne	r1, [r0, #4]
	adds	r2, r2, #4
	subs	r4, r4, #1
	b	.L43
.L49:
	pop	{r4, r5, r6, r7, pc}
.L51:
	.align	2
.L50:
	.word	.LANCHOR0
	.size	ADCSoftwareOversampleStepConfigure, .-ADCSoftwareOversampleStepConfigure
	.section	.text.ADCSoftwareOversampleDataGet,"ax",%progbits
	.align	1
	.global	ADCSoftwareOversampleDataGet
	.thumb
	.thumb_func
	.type	ADCSoftwareOversampleDataGet, %function
ADCSoftwareOversampleDataGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	adds	r4, r1, #2
	add	r0, r0, r4, lsl #5
.L53:
	adds	r3, r3, #-1
	bcc	.L57
	ldr	r4, .L59
	ldrb	r6, [r4, r1]	@ zero_extendqisi2
	movs	r5, #1
	lsls	r5, r5, r6
	movs	r4, #0
.L54:
	cbz	r5, .L58
	ldr	r7, [r0, #8]
	subs	r5, r5, #1
	add	r4, r4, r7
	b	.L54
.L58:
	lsrs	r4, r4, r6
	str	r4, [r2], #4
	b	.L53
.L57:
	pop	{r4, r5, r6, r7, pc}
.L60:
	.align	2
.L59:
	.word	.LANCHOR0
	.size	ADCSoftwareOversampleDataGet, .-ADCSoftwareOversampleDataGet
	.section	.text.ADCHardwareOversampleConfigure,"ax",%progbits
	.align	1
	.global	ADCHardwareOversampleConfigure
	.thumb
	.thumb_func
	.type	ADCHardwareOversampleConfigure, %function
ADCHardwareOversampleConfigure:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	lsrs	r1, r1, #1
	movs	r3, #0
.L62:
	cbz	r1, .L64
	adds	r3, r3, #1
	lsrs	r1, r1, #1
	b	.L62
.L64:
	str	r3, [r0, #48]
	bx	lr
	.size	ADCHardwareOversampleConfigure, .-ADCHardwareOversampleConfigure
	.section	.text.ADCComparatorConfigure,"ax",%progbits
	.align	1
	.global	ADCComparatorConfigure
	.thumb
	.thumb_func
	.type	ADCComparatorConfigure, %function
ADCComparatorConfigure:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, #3584
	str	r2, [r0, r1, lsl #2]
	bx	lr
	.size	ADCComparatorConfigure, .-ADCComparatorConfigure
	.section	.text.ADCComparatorRegionSet,"ax",%progbits
	.align	1
	.global	ADCComparatorRegionSet
	.thumb
	.thumb_func
	.type	ADCComparatorRegionSet, %function
ADCComparatorRegionSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, #3648
	orr	r3, r2, r3, lsl #16
	str	r3, [r0, r1, lsl #2]
	bx	lr
	.size	ADCComparatorRegionSet, .-ADCComparatorRegionSet
	.section	.text.ADCComparatorReset,"ax",%progbits
	.align	1
	.global	ADCComparatorReset
	.thumb
	.thumb_func
	.type	ADCComparatorReset, %function
ADCComparatorReset:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	cbz	r2, .L68
	add	r4, r1, #16
	movs	r2, #1
	lsls	r2, r2, r4
.L68:
	cbz	r3, .L69
	movs	r3, #1
	lsls	r3, r3, r1
	orrs	r2, r2, r3
.L69:
	str	r2, [r0, #3328]
	pop	{r4, pc}
	.size	ADCComparatorReset, .-ADCComparatorReset
	.section	.text.ADCComparatorIntDisable,"ax",%progbits
	.align	1
	.global	ADCComparatorIntDisable
	.thumb
	.thumb_func
	.type	ADCComparatorIntDisable, %function
ADCComparatorIntDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #8]
	mov	r2, #65536
	lsls	r2, r2, r1
	bic	r3, r3, r2
	str	r3, [r0, #8]
	bx	lr
	.size	ADCComparatorIntDisable, .-ADCComparatorIntDisable
	.section	.text.ADCComparatorIntEnable,"ax",%progbits
	.align	1
	.global	ADCComparatorIntEnable
	.thumb
	.thumb_func
	.type	ADCComparatorIntEnable, %function
ADCComparatorIntEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0, #8]
	mov	r3, #65536
	lsls	r3, r3, r1
	orrs	r3, r3, r2
	str	r3, [r0, #8]
	bx	lr
	.size	ADCComparatorIntEnable, .-ADCComparatorIntEnable
	.section	.text.ADCComparatorIntStatus,"ax",%progbits
	.align	1
	.global	ADCComparatorIntStatus
	.thumb
	.thumb_func
	.type	ADCComparatorIntStatus, %function
ADCComparatorIntStatus:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #52]
	bx	lr
	.size	ADCComparatorIntStatus, .-ADCComparatorIntStatus
	.section	.text.ADCComparatorIntClear,"ax",%progbits
	.align	1
	.global	ADCComparatorIntClear
	.thumb
	.thumb_func
	.type	ADCComparatorIntClear, %function
ADCComparatorIntClear:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r1, [r0, #52]
	bx	lr
	.size	ADCComparatorIntClear, .-ADCComparatorIntClear
	.section	.text.ADCIntDisableEx,"ax",%progbits
	.align	1
	.global	ADCIntDisableEx
	.thumb
	.thumb_func
	.type	ADCIntDisableEx, %function
ADCIntDisableEx:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #8]
	bic	r1, r3, r1
	str	r1, [r0, #8]
	bx	lr
	.size	ADCIntDisableEx, .-ADCIntDisableEx
	.section	.text.ADCIntEnableEx,"ax",%progbits
	.align	1
	.global	ADCIntEnableEx
	.thumb
	.thumb_func
	.type	ADCIntEnableEx, %function
ADCIntEnableEx:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #8]
	orrs	r1, r1, r3
	str	r1, [r0, #8]
	bx	lr
	.size	ADCIntEnableEx, .-ADCIntEnableEx
	.section	.text.ADCIntStatusEx,"ax",%progbits
	.align	1
	.global	ADCIntStatusEx
	.thumb
	.thumb_func
	.type	ADCIntStatusEx, %function
ADCIntStatusEx:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r1, .L81
	ldr	r0, [r0, #12]
	bx	lr
.L81:
	ldr	r0, [r0, #4]
	lsls	r3, r0, #15
	it	mi
	orrmi	r0, r0, #983040
	bx	lr
	.size	ADCIntStatusEx, .-ADCIntStatusEx
	.section	.text.ADCIntClearEx,"ax",%progbits
	.align	1
	.global	ADCIntClearEx
	.thumb
	.thumb_func
	.type	ADCIntClearEx, %function
ADCIntClearEx:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #12]
	orrs	r1, r1, r3
	str	r1, [r0, #12]
	bx	lr
	.size	ADCIntClearEx, .-ADCIntClearEx
	.section	.text.ADCReferenceSet,"ax",%progbits
	.align	1
	.global	ADCReferenceSet
	.thumb
	.thumb_func
	.type	ADCReferenceSet, %function
ADCReferenceSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #56]
	bic	r3, r3, #3
	orrs	r1, r1, r3
	str	r1, [r0, #56]
	bx	lr
	.size	ADCReferenceSet, .-ADCReferenceSet
	.section	.text.ADCReferenceGet,"ax",%progbits
	.align	1
	.global	ADCReferenceGet
	.thumb
	.thumb_func
	.type	ADCReferenceGet, %function
ADCReferenceGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #56]
	and	r0, r0, #3
	bx	lr
	.size	ADCReferenceGet, .-ADCReferenceGet
	.section	.text.ADCPhaseDelaySet,"ax",%progbits
	.align	1
	.global	ADCPhaseDelaySet
	.thumb
	.thumb_func
	.type	ADCPhaseDelaySet, %function
ADCPhaseDelaySet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r1, [r0, #36]
	bx	lr
	.size	ADCPhaseDelaySet, .-ADCPhaseDelaySet
	.section	.text.ADCPhaseDelayGet,"ax",%progbits
	.align	1
	.global	ADCPhaseDelayGet
	.thumb
	.thumb_func
	.type	ADCPhaseDelayGet, %function
ADCPhaseDelayGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #36]
	bx	lr
	.size	ADCPhaseDelayGet, .-ADCPhaseDelayGet
	.section	.text.ADCSequenceDMAEnable,"ax",%progbits
	.align	1
	.global	ADCSequenceDMAEnable
	.thumb
	.thumb_func
	.type	ADCSequenceDMAEnable, %function
ADCSequenceDMAEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0]
	mov	r3, #256
	lsls	r3, r3, r1
	orrs	r3, r3, r2
	str	r3, [r0]
	bx	lr
	.size	ADCSequenceDMAEnable, .-ADCSequenceDMAEnable
	.section	.text.ADCSequenceDMADisable,"ax",%progbits
	.align	1
	.global	ADCSequenceDMADisable
	.thumb
	.thumb_func
	.type	ADCSequenceDMADisable, %function
ADCSequenceDMADisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0]
	mov	r2, #256
	lsls	r2, r2, r1
	bic	r3, r3, r2
	str	r3, [r0]
	bx	lr
	.size	ADCSequenceDMADisable, .-ADCSequenceDMADisable
	.section	.text.ADCBusy,"ax",%progbits
	.align	1
	.global	ADCBusy
	.thumb
	.thumb_func
	.type	ADCBusy, %function
ADCBusy:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0]
	ubfx	r0, r0, #16, #1
	bx	lr
	.size	ADCBusy, .-ADCBusy
	.section	.bss.g_pui8OversampleFactor,"aw",%nobits
	.set	.LANCHOR0,. + 0
	.type	g_pui8OversampleFactor, %object
	.size	g_pui8OversampleFactor, 3
g_pui8OversampleFactor:
	.space	3
	.ident	"GCC: (15:4.9.3+svn227297-1) 4.9.3 20150529 (prerelease)"
