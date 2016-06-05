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
	.file	"i2c.c"
	.section	.text._I2CIntNumberGet,"ax",%progbits
	.align	1
	.thumb
	.thumb_func
	.type	_I2CIntNumberGet, %function
_I2CIntNumberGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L9
	ldr	r2, [r3]
	ldr	r3, .L9+4
	ands	r3, r3, r2
	ldr	r2, .L9+8
	cmp	r3, r2
	ldr	r2, .L9+12
	ldr	r3, .L9+16
	itee	ne
	movne	r2, #48
	moveq	r3, r2
	moveq	r2, #80
	add	r2, r2, r3
.L5:
	ldr	r1, [r3]
	cmp	r1, r0
	bne	.L3
	ldr	r0, [r3, #4]
	bx	lr
.L3:
	adds	r3, r3, #8
	cmp	r3, r2
	bne	.L5
	movs	r0, #0
	bx	lr
.L10:
	.align	2
.L9:
	.word	1074782208
	.word	1895759872
	.word	269090816
	.word	.LANCHOR1
	.word	.LANCHOR0
	.size	_I2CIntNumberGet, .-_I2CIntNumberGet
	.section	.text.I2CSlaveAddressSet,"ax",%progbits
	.align	1
	.global	I2CSlaveAddressSet
	.thumb
	.thumb_func
	.type	I2CSlaveAddressSet, %function
I2CSlaveAddressSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r1, .L13
	cmp	r1, #1
	beq	.L14
	bx	lr
.L13:
	str	r2, [r0, #2048]
	bx	lr
.L14:
	orr	r2, r2, #128
	str	r2, [r0, #2076]
	bx	lr
	.size	I2CSlaveAddressSet, .-I2CSlaveAddressSet
	.section	.text.I2CMasterEnable,"ax",%progbits
	.align	1
	.global	I2CMasterEnable
	.thumb
	.thumb_func
	.type	I2CMasterEnable, %function
I2CMasterEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #32]
	orr	r3, r3, #16
	str	r3, [r0, #32]
	bx	lr
	.size	I2CMasterEnable, .-I2CMasterEnable
	.section	.text.I2CMasterInitExpClk,"ax",%progbits
	.align	1
	.global	I2CMasterInitExpClk
	.thumb
	.thumb_func
	.type	I2CMasterInitExpClk, %function
I2CMasterInitExpClk:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, r0
	mov	r5, r1
	mov	r6, r2
	bl	I2CMasterEnable
	ldr	r0, .L23
	ldr	r3, .L23+4
	cmp	r6, #0
	it	ne
	movne	r3, r0
	movs	r0, #20
	muls	r3, r0, r3
	subs	r0, r5, #1
	add	r0, r0, r3
	udiv	r3, r0, r3
	subs	r3, r3, #1
	str	r3, [r4, #12]
	ldr	r3, [r4, #4032]
	lsls	r3, r3, #31
	bpl	.L16
	ldr	r3, .L23+8
	ldr	r2, .L23+12
	add	r3, r3, r5
	udiv	r3, r3, r2
	subs	r3, r3, #1
	orr	r3, r3, #128
	str	r3, [r4, #12]
.L16:
	pop	{r4, r5, r6, pc}
.L24:
	.align	2
.L23:
	.word	400000
	.word	100000
	.word	20399999
	.word	20400000
	.size	I2CMasterInitExpClk, .-I2CMasterInitExpClk
	.section	.text.I2CSlaveEnable,"ax",%progbits
	.align	1
	.global	I2CSlaveEnable
	.thumb
	.thumb_func
	.type	I2CSlaveEnable, %function
I2CSlaveEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #32]
	orr	r3, r3, #32
	str	r3, [r0, #32]
	movs	r3, #1
	str	r3, [r0, #2052]
	bx	lr
	.size	I2CSlaveEnable, .-I2CSlaveEnable
	.section	.text.I2CSlaveInit,"ax",%progbits
	.align	1
	.global	I2CSlaveInit
	.thumb
	.thumb_func
	.type	I2CSlaveInit, %function
I2CSlaveInit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r4, r0
	mov	r5, r1
	bl	I2CSlaveEnable
	str	r5, [r4, #2048]
	pop	{r3, r4, r5, pc}
	.size	I2CSlaveInit, .-I2CSlaveInit
	.section	.text.I2CMasterDisable,"ax",%progbits
	.align	1
	.global	I2CMasterDisable
	.thumb
	.thumb_func
	.type	I2CMasterDisable, %function
I2CMasterDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #32]
	bic	r3, r3, #16
	str	r3, [r0, #32]
	bx	lr
	.size	I2CMasterDisable, .-I2CMasterDisable
	.section	.text.I2CSlaveDisable,"ax",%progbits
	.align	1
	.global	I2CSlaveDisable
	.thumb
	.thumb_func
	.type	I2CSlaveDisable, %function
I2CSlaveDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r3, #0
	str	r3, [r0, #2052]
	ldr	r3, [r0, #32]
	bic	r3, r3, #32
	str	r3, [r0, #32]
	bx	lr
	.size	I2CSlaveDisable, .-I2CSlaveDisable
	.section	.text.I2CIntRegister,"ax",%progbits
	.align	1
	.global	I2CIntRegister
	.thumb
	.thumb_func
	.type	I2CIntRegister, %function
I2CIntRegister:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r5, r1
	bl	_I2CIntNumberGet
	mov	r1, r5
	mov	r4, r0
	bl	IntRegister
	mov	r0, r4
	pop	{r3, r4, r5, lr}
	b	IntEnable
	.size	I2CIntRegister, .-I2CIntRegister
	.section	.text.I2CIntUnregister,"ax",%progbits
	.align	1
	.global	I2CIntUnregister
	.thumb
	.thumb_func
	.type	I2CIntUnregister, %function
I2CIntUnregister:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	_I2CIntNumberGet
	mov	r4, r0
	bl	IntDisable
	mov	r0, r4
	pop	{r4, lr}
	b	IntUnregister
	.size	I2CIntUnregister, .-I2CIntUnregister
	.section	.text.I2CMasterIntEnable,"ax",%progbits
	.align	1
	.global	I2CMasterIntEnable
	.thumb
	.thumb_func
	.type	I2CMasterIntEnable, %function
I2CMasterIntEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r3, #1
	str	r3, [r0, #16]
	bx	lr
	.size	I2CMasterIntEnable, .-I2CMasterIntEnable
	.section	.text.I2CMasterIntEnableEx,"ax",%progbits
	.align	1
	.global	I2CMasterIntEnableEx
	.thumb
	.thumb_func
	.type	I2CMasterIntEnableEx, %function
I2CMasterIntEnableEx:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #16]
	orrs	r1, r1, r3
	str	r1, [r0, #16]
	bx	lr
	.size	I2CMasterIntEnableEx, .-I2CMasterIntEnableEx
	.section	.text.I2CSlaveIntEnable,"ax",%progbits
	.align	1
	.global	I2CSlaveIntEnable
	.thumb
	.thumb_func
	.type	I2CSlaveIntEnable, %function
I2CSlaveIntEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #2060]
	orr	r3, r3, #1
	str	r3, [r0, #2060]
	bx	lr
	.size	I2CSlaveIntEnable, .-I2CSlaveIntEnable
	.section	.text.I2CSlaveIntEnableEx,"ax",%progbits
	.align	1
	.global	I2CSlaveIntEnableEx
	.thumb
	.thumb_func
	.type	I2CSlaveIntEnableEx, %function
I2CSlaveIntEnableEx:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #2060]
	orrs	r1, r1, r3
	str	r1, [r0, #2060]
	bx	lr
	.size	I2CSlaveIntEnableEx, .-I2CSlaveIntEnableEx
	.section	.text.I2CMasterIntDisable,"ax",%progbits
	.align	1
	.global	I2CMasterIntDisable
	.thumb
	.thumb_func
	.type	I2CMasterIntDisable, %function
I2CMasterIntDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r3, #0
	str	r3, [r0, #16]
	bx	lr
	.size	I2CMasterIntDisable, .-I2CMasterIntDisable
	.section	.text.I2CMasterIntDisableEx,"ax",%progbits
	.align	1
	.global	I2CMasterIntDisableEx
	.thumb
	.thumb_func
	.type	I2CMasterIntDisableEx, %function
I2CMasterIntDisableEx:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #16]
	bic	r1, r3, r1
	str	r1, [r0, #16]
	bx	lr
	.size	I2CMasterIntDisableEx, .-I2CMasterIntDisableEx
	.section	.text.I2CSlaveIntDisable,"ax",%progbits
	.align	1
	.global	I2CSlaveIntDisable
	.thumb
	.thumb_func
	.type	I2CSlaveIntDisable, %function
I2CSlaveIntDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #2060]
	bic	r3, r3, #1
	str	r3, [r0, #2060]
	bx	lr
	.size	I2CSlaveIntDisable, .-I2CSlaveIntDisable
	.section	.text.I2CSlaveIntDisableEx,"ax",%progbits
	.align	1
	.global	I2CSlaveIntDisableEx
	.thumb
	.thumb_func
	.type	I2CSlaveIntDisableEx, %function
I2CSlaveIntDisableEx:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #2060]
	bic	r1, r3, r1
	str	r1, [r0, #2060]
	bx	lr
	.size	I2CSlaveIntDisableEx, .-I2CSlaveIntDisableEx
	.section	.text.I2CMasterIntStatus,"ax",%progbits
	.align	1
	.global	I2CMasterIntStatus
	.thumb
	.thumb_func
	.type	I2CMasterIntStatus, %function
I2CMasterIntStatus:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r1, .L40
	ldr	r0, [r0, #24]
	b	.L42
.L40:
	ldr	r0, [r0, #20]
.L42:
	adds	r0, r0, #0
	it	ne
	movne	r0, #1
	bx	lr
	.size	I2CMasterIntStatus, .-I2CMasterIntStatus
	.section	.text.I2CMasterIntStatusEx,"ax",%progbits
	.align	1
	.global	I2CMasterIntStatusEx
	.thumb
	.thumb_func
	.type	I2CMasterIntStatusEx, %function
I2CMasterIntStatusEx:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r1, .L44
	ldr	r0, [r0, #24]
	bx	lr
.L44:
	ldr	r0, [r0, #20]
	bx	lr
	.size	I2CMasterIntStatusEx, .-I2CMasterIntStatusEx
	.section	.text.I2CSlaveIntStatus,"ax",%progbits
	.align	1
	.global	I2CSlaveIntStatus
	.thumb
	.thumb_func
	.type	I2CSlaveIntStatus, %function
I2CSlaveIntStatus:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r1, .L47
	ldr	r0, [r0, #2068]
	b	.L49
.L47:
	ldr	r0, [r0, #2064]
.L49:
	adds	r0, r0, #0
	it	ne
	movne	r0, #1
	bx	lr
	.size	I2CSlaveIntStatus, .-I2CSlaveIntStatus
	.section	.text.I2CSlaveIntStatusEx,"ax",%progbits
	.align	1
	.global	I2CSlaveIntStatusEx
	.thumb
	.thumb_func
	.type	I2CSlaveIntStatusEx, %function
I2CSlaveIntStatusEx:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r1, .L51
	ldr	r0, [r0, #2068]
	bx	lr
.L51:
	ldr	r0, [r0, #2064]
	bx	lr
	.size	I2CSlaveIntStatusEx, .-I2CSlaveIntStatusEx
	.section	.text.I2CMasterIntClear,"ax",%progbits
	.align	1
	.global	I2CMasterIntClear
	.thumb
	.thumb_func
	.type	I2CMasterIntClear, %function
I2CMasterIntClear:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r3, #1
	str	r3, [r0, #28]
	str	r3, [r0, #24]
	bx	lr
	.size	I2CMasterIntClear, .-I2CMasterIntClear
	.section	.text.I2CMasterIntClearEx,"ax",%progbits
	.align	1
	.global	I2CMasterIntClearEx
	.thumb
	.thumb_func
	.type	I2CMasterIntClearEx, %function
I2CMasterIntClearEx:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r1, [r0, #28]
	bx	lr
	.size	I2CMasterIntClearEx, .-I2CMasterIntClearEx
	.section	.text.I2CSlaveIntClear,"ax",%progbits
	.align	1
	.global	I2CSlaveIntClear
	.thumb
	.thumb_func
	.type	I2CSlaveIntClear, %function
I2CSlaveIntClear:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r3, #1
	str	r3, [r0, #2072]
	bx	lr
	.size	I2CSlaveIntClear, .-I2CSlaveIntClear
	.section	.text.I2CSlaveIntClearEx,"ax",%progbits
	.align	1
	.global	I2CSlaveIntClearEx
	.thumb
	.thumb_func
	.type	I2CSlaveIntClearEx, %function
I2CSlaveIntClearEx:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r1, [r0, #2072]
	bx	lr
	.size	I2CSlaveIntClearEx, .-I2CSlaveIntClearEx
	.section	.text.I2CMasterSlaveAddrSet,"ax",%progbits
	.align	1
	.global	I2CMasterSlaveAddrSet
	.thumb
	.thumb_func
	.type	I2CMasterSlaveAddrSet, %function
I2CMasterSlaveAddrSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	orr	r2, r2, r1, lsl #1
	str	r2, [r0]
	bx	lr
	.size	I2CMasterSlaveAddrSet, .-I2CMasterSlaveAddrSet
	.section	.text.I2CMasterLineStateGet,"ax",%progbits
	.align	1
	.global	I2CMasterLineStateGet
	.thumb
	.thumb_func
	.type	I2CMasterLineStateGet, %function
I2CMasterLineStateGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #44]
	bx	lr
	.size	I2CMasterLineStateGet, .-I2CMasterLineStateGet
	.section	.text.I2CMasterBusy,"ax",%progbits
	.align	1
	.global	I2CMasterBusy
	.thumb
	.thumb_func
	.type	I2CMasterBusy, %function
I2CMasterBusy:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #4]
	and	r0, r0, #1
	bx	lr
	.size	I2CMasterBusy, .-I2CMasterBusy
	.section	.text.I2CMasterBusBusy,"ax",%progbits
	.align	1
	.global	I2CMasterBusBusy
	.thumb
	.thumb_func
	.type	I2CMasterBusBusy, %function
I2CMasterBusBusy:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #4]
	ubfx	r0, r0, #6, #1
	bx	lr
	.size	I2CMasterBusBusy, .-I2CMasterBusBusy
	.section	.text.I2CMasterControl,"ax",%progbits
	.align	1
	.global	I2CMasterControl
	.thumb
	.thumb_func
	.type	I2CMasterControl, %function
I2CMasterControl:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r1, [r0, #4]
	bx	lr
	.size	I2CMasterControl, .-I2CMasterControl
	.section	.text.I2CMasterErr,"ax",%progbits
	.align	1
	.global	I2CMasterErr
	.thumb
	.thumb_func
	.type	I2CMasterErr, %function
I2CMasterErr:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #4]
	lsls	r2, r3, #31
	bmi	.L64
	ands	r0, r3, #18
	beq	.L63
	and	r0, r3, #28
	bx	lr
.L64:
	movs	r0, #0
.L63:
	bx	lr
	.size	I2CMasterErr, .-I2CMasterErr
	.section	.text.I2CMasterDataPut,"ax",%progbits
	.align	1
	.global	I2CMasterDataPut
	.thumb
	.thumb_func
	.type	I2CMasterDataPut, %function
I2CMasterDataPut:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r1, [r0, #8]
	bx	lr
	.size	I2CMasterDataPut, .-I2CMasterDataPut
	.section	.text.I2CMasterDataGet,"ax",%progbits
	.align	1
	.global	I2CMasterDataGet
	.thumb
	.thumb_func
	.type	I2CMasterDataGet, %function
I2CMasterDataGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #8]
	bx	lr
	.size	I2CMasterDataGet, .-I2CMasterDataGet
	.section	.text.I2CMasterTimeoutSet,"ax",%progbits
	.align	1
	.global	I2CMasterTimeoutSet
	.thumb
	.thumb_func
	.type	I2CMasterTimeoutSet, %function
I2CMasterTimeoutSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r1, [r0, #36]
	bx	lr
	.size	I2CMasterTimeoutSet, .-I2CMasterTimeoutSet
	.section	.text.I2CSlaveACKOverride,"ax",%progbits
	.align	1
	.global	I2CSlaveACKOverride
	.thumb
	.thumb_func
	.type	I2CSlaveACKOverride, %function
I2CSlaveACKOverride:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #2080]
	cbz	r1, .L72
	orr	r3, r3, #1
	b	.L74
.L72:
	bic	r3, r3, #1
.L74:
	str	r3, [r0, #2080]
	bx	lr
	.size	I2CSlaveACKOverride, .-I2CSlaveACKOverride
	.section	.text.I2CSlaveACKValueSet,"ax",%progbits
	.align	1
	.global	I2CSlaveACKValueSet
	.thumb
	.thumb_func
	.type	I2CSlaveACKValueSet, %function
I2CSlaveACKValueSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #2080]
	cbz	r1, .L76
	bic	r3, r3, #2
	b	.L78
.L76:
	orr	r3, r3, #2
.L78:
	str	r3, [r0, #2080]
	bx	lr
	.size	I2CSlaveACKValueSet, .-I2CSlaveACKValueSet
	.section	.text.I2CSlaveStatus,"ax",%progbits
	.align	1
	.global	I2CSlaveStatus
	.thumb
	.thumb_func
	.type	I2CSlaveStatus, %function
I2CSlaveStatus:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #2052]
	bx	lr
	.size	I2CSlaveStatus, .-I2CSlaveStatus
	.section	.text.I2CSlaveDataPut,"ax",%progbits
	.align	1
	.global	I2CSlaveDataPut
	.thumb
	.thumb_func
	.type	I2CSlaveDataPut, %function
I2CSlaveDataPut:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r1, [r0, #2056]
	bx	lr
	.size	I2CSlaveDataPut, .-I2CSlaveDataPut
	.section	.text.I2CSlaveDataGet,"ax",%progbits
	.align	1
	.global	I2CSlaveDataGet
	.thumb
	.thumb_func
	.type	I2CSlaveDataGet, %function
I2CSlaveDataGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #2056]
	bx	lr
	.size	I2CSlaveDataGet, .-I2CSlaveDataGet
	.section	.text.I2CTxFIFOConfigSet,"ax",%progbits
	.align	1
	.global	I2CTxFIFOConfigSet
	.thumb
	.thumb_func
	.type	I2CTxFIFOConfigSet, %function
I2CTxFIFOConfigSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #3844]
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	str	r3, [r0, #3844]
	ldr	r3, [r0, #3844]
	orrs	r1, r1, r3
	str	r1, [r0, #3844]
	bx	lr
	.size	I2CTxFIFOConfigSet, .-I2CTxFIFOConfigSet
	.section	.text.I2CTxFIFOFlush,"ax",%progbits
	.align	1
	.global	I2CTxFIFOFlush
	.thumb
	.thumb_func
	.type	I2CTxFIFOFlush, %function
I2CTxFIFOFlush:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #3844]
	orr	r3, r3, #16384
	str	r3, [r0, #3844]
	bx	lr
	.size	I2CTxFIFOFlush, .-I2CTxFIFOFlush
	.section	.text.I2CRxFIFOConfigSet,"ax",%progbits
	.align	1
	.global	I2CRxFIFOConfigSet
	.thumb
	.thumb_func
	.type	I2CRxFIFOConfigSet, %function
I2CRxFIFOConfigSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #3844]
	uxth	r3, r3
	str	r3, [r0, #3844]
	ldr	r3, [r0, #3844]
	orrs	r1, r1, r3
	str	r1, [r0, #3844]
	bx	lr
	.size	I2CRxFIFOConfigSet, .-I2CRxFIFOConfigSet
	.section	.text.I2CRxFIFOFlush,"ax",%progbits
	.align	1
	.global	I2CRxFIFOFlush
	.thumb
	.thumb_func
	.type	I2CRxFIFOFlush, %function
I2CRxFIFOFlush:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #3844]
	orr	r3, r3, #1073741824
	str	r3, [r0, #3844]
	bx	lr
	.size	I2CRxFIFOFlush, .-I2CRxFIFOFlush
	.section	.text.I2CFIFOStatus,"ax",%progbits
	.align	1
	.global	I2CFIFOStatus
	.thumb
	.thumb_func
	.type	I2CFIFOStatus, %function
I2CFIFOStatus:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #3848]
	bx	lr
	.size	I2CFIFOStatus, .-I2CFIFOStatus
	.section	.text.I2CFIFODataPut,"ax",%progbits
	.align	1
	.global	I2CFIFODataPut
	.thumb
	.thumb_func
	.type	I2CFIFODataPut, %function
I2CFIFODataPut:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.L88:
	ldr	r3, [r0, #3848]
	lsls	r3, r3, #30
	bmi	.L88
	str	r1, [r0, #3840]
	bx	lr
	.size	I2CFIFODataPut, .-I2CFIFODataPut
	.section	.text.I2CFIFODataPutNonBlocking,"ax",%progbits
	.align	1
	.global	I2CFIFODataPutNonBlocking
	.thumb
	.thumb_func
	.type	I2CFIFODataPutNonBlocking, %function
I2CFIFODataPutNonBlocking:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #3848]
	lsls	r3, r3, #30
	itte	pl
	strpl	r1, [r0, #3840]
	movpl	r0, #1
	movmi	r0, #0
	bx	lr
	.size	I2CFIFODataPutNonBlocking, .-I2CFIFODataPutNonBlocking
	.section	.text.I2CFIFODataGet,"ax",%progbits
	.align	1
	.global	I2CFIFODataGet
	.thumb
	.thumb_func
	.type	I2CFIFODataGet, %function
I2CFIFODataGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.L94:
	ldr	r3, [r0, #3848]
	lsls	r3, r3, #15
	bmi	.L94
	ldr	r0, [r0, #3840]
	bx	lr
	.size	I2CFIFODataGet, .-I2CFIFODataGet
	.section	.text.I2CFIFODataGetNonBlocking,"ax",%progbits
	.align	1
	.global	I2CFIFODataGetNonBlocking
	.thumb
	.thumb_func
	.type	I2CFIFODataGetNonBlocking, %function
I2CFIFODataGetNonBlocking:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #3848]
	lsls	r3, r3, #15
	ittte	pl
	ldrpl	r3, [r0, #3840]
	strbpl	r3, [r1]
	movpl	r0, #1
	movmi	r0, #0
	bx	lr
	.size	I2CFIFODataGetNonBlocking, .-I2CFIFODataGetNonBlocking
	.section	.text.I2CMasterBurstLengthSet,"ax",%progbits
	.align	1
	.global	I2CMasterBurstLengthSet
	.thumb
	.thumb_func
	.type	I2CMasterBurstLengthSet, %function
I2CMasterBurstLengthSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r1, [r0, #48]
	bx	lr
	.size	I2CMasterBurstLengthSet, .-I2CMasterBurstLengthSet
	.section	.text.I2CMasterBurstCountGet,"ax",%progbits
	.align	1
	.global	I2CMasterBurstCountGet
	.thumb
	.thumb_func
	.type	I2CMasterBurstCountGet, %function
I2CMasterBurstCountGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #52]
	bx	lr
	.size	I2CMasterBurstCountGet, .-I2CMasterBurstCountGet
	.section	.text.I2CMasterGlitchFilterConfigSet,"ax",%progbits
	.align	1
	.global	I2CMasterGlitchFilterConfigSet
	.thumb
	.thumb_func
	.type	I2CMasterGlitchFilterConfigSet, %function
I2CMasterGlitchFilterConfigSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #12]
	orrs	r1, r1, r3
	str	r1, [r0, #12]
	bx	lr
	.size	I2CMasterGlitchFilterConfigSet, .-I2CMasterGlitchFilterConfigSet
	.section	.text.I2CSlaveFIFOEnable,"ax",%progbits
	.align	1
	.global	I2CSlaveFIFOEnable
	.thumb
	.thumb_func
	.type	I2CSlaveFIFOEnable, %function
I2CSlaveFIFOEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	orr	r1, r1, #1
	str	r1, [r0, #2052]
	bx	lr
	.size	I2CSlaveFIFOEnable, .-I2CSlaveFIFOEnable
	.section	.text.I2CSlaveFIFODisable,"ax",%progbits
	.align	1
	.global	I2CSlaveFIFODisable
	.thumb
	.thumb_func
	.type	I2CSlaveFIFODisable, %function
I2CSlaveFIFODisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r3, #1
	str	r3, [r0, #2052]
	bx	lr
	.size	I2CSlaveFIFODisable, .-I2CSlaveFIFODisable
	.section	.rodata.g_ppui32I2CIntMap,"a",%progbits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	g_ppui32I2CIntMap, %object
	.size	g_ppui32I2CIntMap, 48
g_ppui32I2CIntMap:
	.word	1073872896
	.word	24
	.word	1073876992
	.word	53
	.word	1073881088
	.word	84
	.word	1073885184
	.word	85
	.word	1074528256
	.word	125
	.word	1074532352
	.word	126
	.section	.rodata.g_ppui32I2CIntMapSnowflake,"a",%progbits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	g_ppui32I2CIntMapSnowflake, %object
	.size	g_ppui32I2CIntMapSnowflake, 80
g_ppui32I2CIntMapSnowflake:
	.word	1073872896
	.word	24
	.word	1073876992
	.word	53
	.word	1073881088
	.word	77
	.word	1073885184
	.word	78
	.word	1074528256
	.word	86
	.word	1074532352
	.word	87
	.word	1074536448
	.word	118
	.word	1074540544
	.word	119
	.word	1074495488
	.word	125
	.word	1074499584
	.word	126
	.ident	"GCC: (15:4.9.3+svn227297-1) 4.9.3 20150529 (prerelease)"
