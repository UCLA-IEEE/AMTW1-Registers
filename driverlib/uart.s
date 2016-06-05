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
	.file	"uart.c"
	.section	.text._UARTIntNumberGet,"ax",%progbits
	.align	1
	.thumb
	.thumb_func
	.type	_UARTIntNumberGet, %function
_UARTIntNumberGet:
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
	cmp	r3, #64
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
	.size	_UARTIntNumberGet, .-_UARTIntNumberGet
	.section	.text.UARTParityModeSet,"ax",%progbits
	.align	1
	.global	UARTParityModeSet
	.thumb
	.thumb_func
	.type	UARTParityModeSet, %function
UARTParityModeSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #44]
	bic	r3, r3, #134
	orrs	r1, r1, r3
	str	r1, [r0, #44]
	bx	lr
	.size	UARTParityModeSet, .-UARTParityModeSet
	.section	.text.UARTParityModeGet,"ax",%progbits
	.align	1
	.global	UARTParityModeGet
	.thumb
	.thumb_func
	.type	UARTParityModeGet, %function
UARTParityModeGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #44]
	and	r0, r0, #134
	bx	lr
	.size	UARTParityModeGet, .-UARTParityModeGet
	.section	.text.UARTFIFOLevelSet,"ax",%progbits
	.align	1
	.global	UARTFIFOLevelSet
	.thumb
	.thumb_func
	.type	UARTFIFOLevelSet, %function
UARTFIFOLevelSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	orrs	r2, r2, r1
	str	r2, [r0, #52]
	bx	lr
	.size	UARTFIFOLevelSet, .-UARTFIFOLevelSet
	.section	.text.UARTFIFOLevelGet,"ax",%progbits
	.align	1
	.global	UARTFIFOLevelGet
	.thumb
	.thumb_func
	.type	UARTFIFOLevelGet, %function
UARTFIFOLevelGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #52]
	and	r0, r3, #7
	and	r3, r3, #56
	str	r0, [r1]
	str	r3, [r2]
	bx	lr
	.size	UARTFIFOLevelGet, .-UARTFIFOLevelGet
	.section	.text.UARTConfigGetExpClk,"ax",%progbits
	.align	1
	.global	UARTConfigGetExpClk
	.thumb
	.thumb_func
	.type	UARTConfigGetExpClk, %function
UARTConfigGetExpClk:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldr	r5, [r0, #36]
	ldr	r4, [r0, #40]
	lsls	r1, r1, #2
	add	r4, r4, r5, lsl #6
	udiv	r1, r1, r4
	str	r1, [r2]
	ldr	r4, [r0, #48]
	lsls	r4, r4, #26
	itt	mi
	lslmi	r1, r1, #1
	strmi	r1, [r2]
	ldr	r2, [r0, #44]
	and	r2, r2, #238
	str	r2, [r3]
	pop	{r4, r5, pc}
	.size	UARTConfigGetExpClk, .-UARTConfigGetExpClk
	.section	.text.UARTEnable,"ax",%progbits
	.align	1
	.global	UARTEnable
	.thumb
	.thumb_func
	.type	UARTEnable, %function
UARTEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #44]
	orr	r3, r3, #16
	str	r3, [r0, #44]
	ldr	r3, [r0, #48]
	orr	r3, r3, #768
	orr	r3, r3, #1
	str	r3, [r0, #48]
	bx	lr
	.size	UARTEnable, .-UARTEnable
	.section	.text.UARTDisable,"ax",%progbits
	.align	1
	.global	UARTDisable
	.thumb
	.thumb_func
	.type	UARTDisable, %function
UARTDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.L22:
	ldr	r3, [r0, #24]
	lsls	r3, r3, #28
	bmi	.L22
	ldr	r3, [r0, #44]
	bic	r3, r3, #16
	str	r3, [r0, #44]
	ldr	r3, [r0, #48]
	bic	r3, r3, #768
	bic	r3, r3, #1
	str	r3, [r0, #48]
	bx	lr
	.size	UARTDisable, .-UARTDisable
	.section	.text.UARTConfigSetExpClk,"ax",%progbits
	.align	1
	.global	UARTConfigSetExpClk
	.thumb
	.thumb_func
	.type	UARTConfigSetExpClk, %function
UARTConfigSetExpClk:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r5, r0
	mov	r6, r2
	mov	r7, r3
	mov	r4, r1
	bl	UARTDisable
	ldr	r2, [r5, #48]
	cmp	r4, r6, lsl #4
	itete	cc
	orrcc	r2, r2, #32
	biccs	r2, r2, #32
	strcc	r2, [r5, #48]
	strcs	r2, [r5, #48]
	it	cc
	lsrcc	r6, r6, #1
	lsls	r4, r4, #3
	udiv	r2, r4, r6
	adds	r2, r2, #1
	lsrs	r3, r2, #7
	str	r3, [r5, #36]
	ubfx	r2, r2, #1, #6
	movs	r3, #0
	str	r2, [r5, #40]
	mov	r0, r5
	str	r7, [r5, #44]
	str	r3, [r5, #24]
	pop	{r3, r4, r5, r6, r7, lr}
	b	UARTEnable
	.size	UARTConfigSetExpClk, .-UARTConfigSetExpClk
	.section	.text.UARTFIFOEnable,"ax",%progbits
	.align	1
	.global	UARTFIFOEnable
	.thumb
	.thumb_func
	.type	UARTFIFOEnable, %function
UARTFIFOEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #44]
	orr	r3, r3, #16
	str	r3, [r0, #44]
	bx	lr
	.size	UARTFIFOEnable, .-UARTFIFOEnable
	.section	.text.UARTFIFODisable,"ax",%progbits
	.align	1
	.global	UARTFIFODisable
	.thumb
	.thumb_func
	.type	UARTFIFODisable, %function
UARTFIFODisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #44]
	bic	r3, r3, #16
	str	r3, [r0, #44]
	bx	lr
	.size	UARTFIFODisable, .-UARTFIFODisable
	.section	.text.UARTEnableSIR,"ax",%progbits
	.align	1
	.global	UARTEnableSIR
	.thumb
	.thumb_func
	.type	UARTEnableSIR, %function
UARTEnableSIR:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #48]
	cbz	r1, .L30
	orr	r3, r3, #6
	b	.L32
.L30:
	orr	r3, r3, #2
.L32:
	str	r3, [r0, #48]
	bx	lr
	.size	UARTEnableSIR, .-UARTEnableSIR
	.section	.text.UARTDisableSIR,"ax",%progbits
	.align	1
	.global	UARTDisableSIR
	.thumb
	.thumb_func
	.type	UARTDisableSIR, %function
UARTDisableSIR:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #48]
	bic	r3, r3, #6
	str	r3, [r0, #48]
	bx	lr
	.size	UARTDisableSIR, .-UARTDisableSIR
	.section	.text.UARTSmartCardEnable,"ax",%progbits
	.align	1
	.global	UARTSmartCardEnable
	.thumb
	.thumb_func
	.type	UARTSmartCardEnable, %function
UARTSmartCardEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #44]
	bic	r3, r3, #230
	orr	r3, r3, #110
	str	r3, [r0, #44]
	ldr	r3, [r0, #48]
	orr	r3, r3, #8
	str	r3, [r0, #48]
	bx	lr
	.size	UARTSmartCardEnable, .-UARTSmartCardEnable
	.section	.text.UARTSmartCardDisable,"ax",%progbits
	.align	1
	.global	UARTSmartCardDisable
	.thumb
	.thumb_func
	.type	UARTSmartCardDisable, %function
UARTSmartCardDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #48]
	bic	r3, r3, #8
	str	r3, [r0, #48]
	bx	lr
	.size	UARTSmartCardDisable, .-UARTSmartCardDisable
	.section	.text.UARTModemControlSet,"ax",%progbits
	.align	1
	.global	UARTModemControlSet
	.thumb
	.thumb_func
	.type	UARTModemControlSet, %function
UARTModemControlSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #48]
	and	r1, r1, #3072
	orrs	r1, r1, r3
	str	r1, [r0, #48]
	bx	lr
	.size	UARTModemControlSet, .-UARTModemControlSet
	.section	.text.UARTModemControlClear,"ax",%progbits
	.align	1
	.global	UARTModemControlClear
	.thumb
	.thumb_func
	.type	UARTModemControlClear, %function
UARTModemControlClear:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #48]
	and	r1, r1, #3072
	bic	r3, r3, r1
	str	r3, [r0, #48]
	bx	lr
	.size	UARTModemControlClear, .-UARTModemControlClear
	.section	.text.UARTModemControlGet,"ax",%progbits
	.align	1
	.global	UARTModemControlGet
	.thumb
	.thumb_func
	.type	UARTModemControlGet, %function
UARTModemControlGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #48]
	and	r0, r0, #3072
	bx	lr
	.size	UARTModemControlGet, .-UARTModemControlGet
	.section	.text.UARTModemStatusGet,"ax",%progbits
	.align	1
	.global	UARTModemStatusGet
	.thumb
	.thumb_func
	.type	UARTModemStatusGet, %function
UARTModemStatusGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #24]
	bic	r0, r0, #248
	lsls	r0, r0, #23
	lsrs	r0, r0, #23
	bx	lr
	.size	UARTModemStatusGet, .-UARTModemStatusGet
	.section	.text.UARTFlowControlSet,"ax",%progbits
	.align	1
	.global	UARTFlowControlSet
	.thumb
	.thumb_func
	.type	UARTFlowControlSet, %function
UARTFlowControlSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #48]
	bic	r3, r3, #49152
	orrs	r1, r1, r3
	str	r1, [r0, #48]
	bx	lr
	.size	UARTFlowControlSet, .-UARTFlowControlSet
	.section	.text.UARTFlowControlGet,"ax",%progbits
	.align	1
	.global	UARTFlowControlGet
	.thumb
	.thumb_func
	.type	UARTFlowControlGet, %function
UARTFlowControlGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #48]
	and	r0, r0, #49152
	bx	lr
	.size	UARTFlowControlGet, .-UARTFlowControlGet
	.section	.text.UARTTxIntModeSet,"ax",%progbits
	.align	1
	.global	UARTTxIntModeSet
	.thumb
	.thumb_func
	.type	UARTTxIntModeSet, %function
UARTTxIntModeSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #48]
	bic	r3, r3, #16
	orrs	r1, r1, r3
	str	r1, [r0, #48]
	bx	lr
	.size	UARTTxIntModeSet, .-UARTTxIntModeSet
	.section	.text.UARTTxIntModeGet,"ax",%progbits
	.align	1
	.global	UARTTxIntModeGet
	.thumb
	.thumb_func
	.type	UARTTxIntModeGet, %function
UARTTxIntModeGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #48]
	and	r0, r0, #16
	bx	lr
	.size	UARTTxIntModeGet, .-UARTTxIntModeGet
	.section	.text.UARTCharsAvail,"ax",%progbits
	.align	1
	.global	UARTCharsAvail
	.thumb
	.thumb_func
	.type	UARTCharsAvail, %function
UARTCharsAvail:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #24]
	eor	r0, r0, #16
	ubfx	r0, r0, #4, #1
	bx	lr
	.size	UARTCharsAvail, .-UARTCharsAvail
	.section	.text.UARTSpaceAvail,"ax",%progbits
	.align	1
	.global	UARTSpaceAvail
	.thumb
	.thumb_func
	.type	UARTSpaceAvail, %function
UARTSpaceAvail:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #24]
	eor	r0, r0, #32
	ubfx	r0, r0, #5, #1
	bx	lr
	.size	UARTSpaceAvail, .-UARTSpaceAvail
	.section	.text.UARTCharGetNonBlocking,"ax",%progbits
	.align	1
	.global	UARTCharGetNonBlocking
	.thumb
	.thumb_func
	.type	UARTCharGetNonBlocking, %function
UARTCharGetNonBlocking:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #24]
	lsls	r3, r3, #27
	ite	pl
	ldrpl	r0, [r0]
	movmi	r0, #-1
	bx	lr
	.size	UARTCharGetNonBlocking, .-UARTCharGetNonBlocking
	.section	.text.UARTCharGet,"ax",%progbits
	.align	1
	.global	UARTCharGet
	.thumb
	.thumb_func
	.type	UARTCharGet, %function
UARTCharGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.L50:
	ldr	r3, [r0, #24]
	lsls	r3, r3, #27
	bmi	.L50
	ldr	r0, [r0]
	bx	lr
	.size	UARTCharGet, .-UARTCharGet
	.section	.text.UARTCharPutNonBlocking,"ax",%progbits
	.align	1
	.global	UARTCharPutNonBlocking
	.thumb
	.thumb_func
	.type	UARTCharPutNonBlocking, %function
UARTCharPutNonBlocking:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #24]
	lsls	r3, r3, #26
	itte	pl
	strpl	r1, [r0]
	movpl	r0, #1
	movmi	r0, #0
	bx	lr
	.size	UARTCharPutNonBlocking, .-UARTCharPutNonBlocking
	.section	.text.UARTCharPut,"ax",%progbits
	.align	1
	.global	UARTCharPut
	.thumb
	.thumb_func
	.type	UARTCharPut, %function
UARTCharPut:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.L56:
	ldr	r3, [r0, #24]
	lsls	r3, r3, #26
	bmi	.L56
	str	r1, [r0]
	bx	lr
	.size	UARTCharPut, .-UARTCharPut
	.section	.text.UARTBreakCtl,"ax",%progbits
	.align	1
	.global	UARTBreakCtl
	.thumb
	.thumb_func
	.type	UARTBreakCtl, %function
UARTBreakCtl:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r2, r0, #44
	ldr	r3, [r0, #44]
	cbz	r1, .L59
	orr	r3, r3, #1
	b	.L60
.L59:
	bic	r3, r3, #1
.L60:
	str	r3, [r2]
	bx	lr
	.size	UARTBreakCtl, .-UARTBreakCtl
	.section	.text.UARTBusy,"ax",%progbits
	.align	1
	.global	UARTBusy
	.thumb
	.thumb_func
	.type	UARTBusy, %function
UARTBusy:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #24]
	ubfx	r0, r0, #3, #1
	bx	lr
	.size	UARTBusy, .-UARTBusy
	.section	.text.UARTIntRegister,"ax",%progbits
	.align	1
	.global	UARTIntRegister
	.thumb
	.thumb_func
	.type	UARTIntRegister, %function
UARTIntRegister:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r5, r1
	bl	_UARTIntNumberGet
	mov	r1, r5
	mov	r4, r0
	bl	IntRegister
	mov	r0, r4
	pop	{r3, r4, r5, lr}
	b	IntEnable
	.size	UARTIntRegister, .-UARTIntRegister
	.section	.text.UARTIntUnregister,"ax",%progbits
	.align	1
	.global	UARTIntUnregister
	.thumb
	.thumb_func
	.type	UARTIntUnregister, %function
UARTIntUnregister:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	_UARTIntNumberGet
	mov	r4, r0
	bl	IntDisable
	mov	r0, r4
	pop	{r4, lr}
	b	IntUnregister
	.size	UARTIntUnregister, .-UARTIntUnregister
	.section	.text.UARTIntEnable,"ax",%progbits
	.align	1
	.global	UARTIntEnable
	.thumb
	.thumb_func
	.type	UARTIntEnable, %function
UARTIntEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #56]
	orrs	r1, r1, r3
	str	r1, [r0, #56]
	bx	lr
	.size	UARTIntEnable, .-UARTIntEnable
	.section	.text.UARTIntDisable,"ax",%progbits
	.align	1
	.global	UARTIntDisable
	.thumb
	.thumb_func
	.type	UARTIntDisable, %function
UARTIntDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #56]
	bic	r1, r3, r1
	str	r1, [r0, #56]
	bx	lr
	.size	UARTIntDisable, .-UARTIntDisable
	.section	.text.UARTIntStatus,"ax",%progbits
	.align	1
	.global	UARTIntStatus
	.thumb
	.thumb_func
	.type	UARTIntStatus, %function
UARTIntStatus:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r1, .L67
	ldr	r0, [r0, #64]
	bx	lr
.L67:
	ldr	r0, [r0, #60]
	bx	lr
	.size	UARTIntStatus, .-UARTIntStatus
	.section	.text.UARTIntClear,"ax",%progbits
	.align	1
	.global	UARTIntClear
	.thumb
	.thumb_func
	.type	UARTIntClear, %function
UARTIntClear:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r1, [r0, #68]
	bx	lr
	.size	UARTIntClear, .-UARTIntClear
	.section	.text.UARTDMAEnable,"ax",%progbits
	.align	1
	.global	UARTDMAEnable
	.thumb
	.thumb_func
	.type	UARTDMAEnable, %function
UARTDMAEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #72]
	orrs	r1, r1, r3
	str	r1, [r0, #72]
	bx	lr
	.size	UARTDMAEnable, .-UARTDMAEnable
	.section	.text.UARTDMADisable,"ax",%progbits
	.align	1
	.global	UARTDMADisable
	.thumb
	.thumb_func
	.type	UARTDMADisable, %function
UARTDMADisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #72]
	bic	r1, r3, r1
	str	r1, [r0, #72]
	bx	lr
	.size	UARTDMADisable, .-UARTDMADisable
	.section	.text.UARTRxErrorGet,"ax",%progbits
	.align	1
	.global	UARTRxErrorGet
	.thumb
	.thumb_func
	.type	UARTRxErrorGet, %function
UARTRxErrorGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #4]
	and	r0, r0, #15
	bx	lr
	.size	UARTRxErrorGet, .-UARTRxErrorGet
	.section	.text.UARTRxErrorClear,"ax",%progbits
	.align	1
	.global	UARTRxErrorClear
	.thumb
	.thumb_func
	.type	UARTRxErrorClear, %function
UARTRxErrorClear:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r3, #0
	str	r3, [r0, #4]
	bx	lr
	.size	UARTRxErrorClear, .-UARTRxErrorClear
	.section	.text.UARTClockSourceSet,"ax",%progbits
	.align	1
	.global	UARTClockSourceSet
	.thumb
	.thumb_func
	.type	UARTClockSourceSet, %function
UARTClockSourceSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r1, [r0, #4040]
	bx	lr
	.size	UARTClockSourceSet, .-UARTClockSourceSet
	.section	.text.UARTClockSourceGet,"ax",%progbits
	.align	1
	.global	UARTClockSourceGet
	.thumb
	.thumb_func
	.type	UARTClockSourceGet, %function
UARTClockSourceGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #4040]
	bx	lr
	.size	UARTClockSourceGet, .-UARTClockSourceGet
	.section	.text.UART9BitEnable,"ax",%progbits
	.align	1
	.global	UART9BitEnable
	.thumb
	.thumb_func
	.type	UART9BitEnable, %function
UART9BitEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #164]
	orr	r3, r3, #32768
	str	r3, [r0, #164]
	bx	lr
	.size	UART9BitEnable, .-UART9BitEnable
	.section	.text.UART9BitDisable,"ax",%progbits
	.align	1
	.global	UART9BitDisable
	.thumb
	.thumb_func
	.type	UART9BitDisable, %function
UART9BitDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #164]
	bic	r3, r3, #32768
	str	r3, [r0, #164]
	bx	lr
	.size	UART9BitDisable, .-UART9BitDisable
	.section	.text.UART9BitAddrSet,"ax",%progbits
	.align	1
	.global	UART9BitAddrSet
	.thumb
	.thumb_func
	.type	UART9BitAddrSet, %function
UART9BitAddrSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r1, [r0, #164]
	str	r2, [r0, #168]
	bx	lr
	.size	UART9BitAddrSet, .-UART9BitAddrSet
	.section	.text.UART9BitAddrSend,"ax",%progbits
	.align	1
	.global	UART9BitAddrSend
	.thumb
	.thumb_func
	.type	UART9BitAddrSend, %function
UART9BitAddrSend:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.L80:
	ldr	r3, [r0, #24]
	and	r3, r3, #136
	cmp	r3, #128
	add	r4, r0, #24
	bne	.L80
	ldr	r2, [r0, #44]
	bic	r3, r2, #134
	orr	r3, r3, #130
	str	r3, [r0, #44]
	str	r1, [r0]
.L81:
	ldr	r3, [r4]
	and	r3, r3, #136
	cmp	r3, #128
	bne	.L81
	str	r2, [r0, #44]
	pop	{r4, pc}
	.size	UART9BitAddrSend, .-UART9BitAddrSend
	.section	.rodata.g_ppui32UARTIntMap,"a",%progbits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	g_ppui32UARTIntMap, %object
	.size	g_ppui32UARTIntMap, 64
g_ppui32UARTIntMap:
	.word	1073790976
	.word	21
	.word	1073795072
	.word	22
	.word	1073799168
	.word	49
	.word	1073803264
	.word	75
	.word	1073807360
	.word	76
	.word	1073811456
	.word	77
	.word	1073815552
	.word	78
	.word	1073819648
	.word	79
	.section	.rodata.g_ppui32UARTIntMapSnowflake,"a",%progbits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	g_ppui32UARTIntMapSnowflake, %object
	.size	g_ppui32UARTIntMapSnowflake, 64
g_ppui32UARTIntMapSnowflake:
	.word	1073790976
	.word	21
	.word	1073795072
	.word	22
	.word	1073799168
	.word	49
	.word	1073803264
	.word	72
	.word	1073807360
	.word	73
	.word	1073811456
	.word	74
	.word	1073815552
	.word	75
	.word	1073819648
	.word	76
	.ident	"GCC: (15:4.9.3+svn227297-1) 4.9.3 20150529 (prerelease)"
