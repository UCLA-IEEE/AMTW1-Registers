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
	.file	"gpio.c"
	.section	.text._GPIOIntNumberGet,"ax",%progbits
	.align	1
	.thumb
	.thumb_func
	.type	_GPIOIntNumberGet, %function
_GPIOIntNumberGet:
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
	cmp	r3, #192
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
	.size	_GPIOIntNumberGet, .-_GPIOIntNumberGet
	.section	.text.GPIODirModeSet,"ax",%progbits
	.align	1
	.global	GPIODirModeSet
	.thumb
	.thumb_func
	.type	GPIODirModeSet, %function
GPIODirModeSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #1024]
	tst	r2, #1
	push	{r4, lr}
	add	r4, r0, #1024
	ite	ne
	orrne	r3, r3, r1
	biceq	r3, r3, r1
	str	r3, [r4]
	tst	r2, #2
	ldr	r2, [r0, #1056]
	add	r3, r0, #1056
	ite	ne
	orrne	r1, r1, r2
	biceq	r1, r2, r1
	str	r1, [r3]
	pop	{r4, pc}
	.size	GPIODirModeSet, .-GPIODirModeSet
	.section	.text.GPIODirModeGet,"ax",%progbits
	.align	1
	.global	GPIODirModeGet
	.thumb
	.thumb_func
	.type	GPIODirModeGet, %function
GPIODirModeGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r3, #1
	ldr	r2, [r0, #1024]
	ldr	r0, [r0, #1056]
	lsls	r3, r3, r1
	uxtb	r3, r3
	tst	r3, r2
	ite	ne
	movne	r2, #1
	moveq	r2, #0
	tst	r3, r0
	ite	ne
	movne	r0, #2
	moveq	r0, #0
	orrs	r0, r0, r2
	bx	lr
	.size	GPIODirModeGet, .-GPIODirModeGet
	.section	.text.GPIOIntTypeSet,"ax",%progbits
	.align	1
	.global	GPIOIntTypeSet
	.thumb
	.thumb_func
	.type	GPIOIntTypeSet, %function
GPIOIntTypeSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #1032]
	push	{r4, lr}
	tst	r2, #1
	add	r4, r0, #1032
	ite	ne
	orrne	r3, r3, r1
	biceq	r3, r3, r1
	str	r3, [r4]
	ldr	r3, [r0, #1028]
	tst	r2, #2
	addw	r4, r0, #1028
	ite	ne
	orrne	r3, r3, r1
	biceq	r3, r3, r1
	str	r3, [r4]
	ldr	r4, [r0, #1036]
	tst	r2, #4
	addw	r3, r0, #1036
	ite	ne
	orrne	r1, r1, r4
	biceq	r1, r4, r1
	str	r1, [r3]
	ldr	r3, [r0, #1336]
	tst	r2, #65536
	add	r2, r0, #1336
	ite	ne
	orrne	r3, r3, #1
	biceq	r3, r3, #1
	str	r3, [r2]
	pop	{r4, pc}
	.size	GPIOIntTypeSet, .-GPIOIntTypeSet
	.section	.text.GPIOIntTypeGet,"ax",%progbits
	.align	1
	.global	GPIOIntTypeGet
	.thumb
	.thumb_func
	.type	GPIOIntTypeGet, %function
GPIOIntTypeGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, #1
	push	{r4, r5, r6, lr}
	lsls	r3, r3, r1
	ldr	r6, [r0, #1032]
	ldr	r5, [r0, #1028]
	ldr	r4, [r0, #1036]
	ldr	r2, [r0, #1336]
	uxtb	r3, r3
	tst	r3, r6
	ite	ne
	movne	r1, #1
	moveq	r1, #0
	tst	r3, r5
	ite	ne
	movne	r0, #2
	moveq	r0, #0
	tst	r3, r4
	ite	ne
	movne	r3, #4
	moveq	r3, #0
	orrs	r0, r0, r1
	orrs	r0, r0, r3
	and	r3, r2, #1
	orrs	r0, r0, r3
	it	ne
	movne	r0, #65536
	pop	{r4, r5, r6, pc}
	.size	GPIOIntTypeGet, .-GPIOIntTypeGet
	.section	.text.GPIOPadConfigSet,"ax",%progbits
	.align	1
	.global	GPIOPadConfigSet
	.thumb
	.thumb_func
	.type	GPIOPadConfigSet, %function
GPIOPadConfigSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldr	r4, [r0, #1280]
	tst	r2, #1
	add	r5, r0, #1280
	ite	ne
	orrne	r4, r4, r1
	biceq	r4, r4, r1
	str	r4, [r5]
	ldr	r4, [r0, #1284]
	tst	r2, #2
	addw	r5, r0, #1284
	ite	ne
	orrne	r4, r4, r1
	biceq	r4, r4, r1
	str	r4, [r5]
	ldr	r4, [r0, #1288]
	tst	r2, #4
	add	r5, r0, #1288
	ite	ne
	orrne	r4, r4, r1
	biceq	r4, r4, r1
	str	r4, [r5]
	ldr	r4, [r0, #1304]
	tst	r2, #8
	add	r5, r0, #1304
	ite	ne
	orrne	r4, r4, r1
	biceq	r4, r4, r1
	str	r4, [r5]
	ldr	r4, [r0, #1340]
	tst	r2, #16
	addw	r5, r0, #1340
	ite	ne
	orrne	r4, r4, r1
	biceq	r4, r4, r1
	str	r4, [r5]
	ubfx	r2, r2, #5, #2
	movs	r4, #0
.L47:
	asr	r5, r1, r4
	lsls	r5, r5, #31
	bpl	.L46
	ldr	r6, [r0, #4036]
	lsls	r7, r4, #1
	movs	r5, #3
	lsls	r5, r5, r7
	bic	r5, r6, r5
	str	r5, [r0, #4036]
	ldr	r5, [r0, #4036]
	lsl	r6, r2, r7
	orrs	r5, r5, r6
	str	r5, [r0, #4036]
.L46:
	adds	r4, r4, #1
	cmp	r4, #8
	bne	.L47
	ldr	r2, [r0, #1292]
	tst	r3, #1
	addw	r4, r0, #1292
	ite	ne
	orrne	r2, r2, r1
	biceq	r2, r2, r1
	str	r2, [r4]
	ldr	r2, [r0, #1296]
	tst	r3, #2
	add	r4, r0, #1296
	ite	ne
	orrne	r2, r2, r1
	biceq	r2, r2, r1
	str	r2, [r4]
	ldr	r2, [r0, #1300]
	tst	r3, #4
	addw	r4, r0, #1300
	ite	ne
	orrne	r2, r2, r1
	biceq	r2, r2, r1
	str	r2, [r4]
	ldr	r2, [r0, #1308]
	tst	r3, #8
	addw	r4, r0, #1308
	ite	ne
	orrne	r2, r2, r1
	biceq	r2, r2, r1
	str	r2, [r4]
	ldr	r2, [r0, #1348]
	tst	r3, #512
	addw	r4, r0, #1348
	ite	ne
	orrne	r2, r2, r1
	biceq	r2, r2, r1
	str	r2, [r4]
	ldr	r2, [r0, #1344]
	tst	r3, #768
	add	r4, r0, #1344
	ite	ne
	orrne	r2, r2, r1
	biceq	r2, r2, r1
	str	r2, [r4]
	add	r2, r0, #1320
	cbnz	r3, .L60
	ldr	r3, [r0, #1320]
	orrs	r1, r1, r3
	b	.L61
.L60:
	ldr	r3, [r0, #1320]
	bic	r1, r3, r1
.L61:
	str	r1, [r2]
	pop	{r4, r5, r6, r7, pc}
	.size	GPIOPadConfigSet, .-GPIOPadConfigSet
	.section	.text.GPIOPadConfigGet,"ax",%progbits
	.align	1
	.global	GPIOPadConfigGet
	.thumb
	.thumb_func
	.type	GPIOPadConfigGet, %function
GPIOPadConfigGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	movs	r4, #1
	ldr	r5, [r0, #1280]
	lsls	r4, r4, r1
	uxtb	r1, r4
	ldr	r4, [r0, #1284]
	tst	r1, r5
	ite	ne
	movne	ip, #1
	moveq	ip, #0
	tst	r1, r4
	ldr	r4, [r0, #1288]
	ite	ne
	movne	lr, #2
	moveq	lr, #0
	tst	r1, r4
	ldr	r4, [r0, #1304]
	ite	ne
	movne	r7, #4
	moveq	r7, #0
	tst	r1, r4
	ldr	r4, [r0, #1340]
	ite	ne
	movne	r6, #8
	moveq	r6, #0
	tst	r1, r4
	ldr	r4, [r0, #4036]
	lsl	r8, r1, #1
	lsr	r4, r4, r8
	and	r4, r4, #3
	orr	r4, ip, r4, lsl #5
	orr	r4, r4, lr
	orr	r4, r4, r7
	ite	ne
	movne	r5, #16
	moveq	r5, #0
	orrs	r4, r4, r6
	orrs	r4, r4, r5
	str	r4, [r2]
	ldr	r2, [r0, #1292]
	ldr	r4, [r0, #1296]
	tst	r1, r2
	ite	ne
	movne	r2, #1
	moveq	r2, #0
	tst	r1, r4
	ite	ne
	movne	r4, #2
	moveq	r4, #0
	orrs	r2, r2, r4
	ldr	r4, [r0, #1300]
	tst	r1, r4
	ite	ne
	movne	r4, #4
	moveq	r4, #0
	orrs	r4, r4, r2
	ldr	r2, [r0, #1308]
	tst	r1, r2
	ite	ne
	movne	r2, #8
	moveq	r2, #0
	orrs	r2, r2, r4
	ldr	r4, [r0, #1344]
	tst	r1, r4
	beq	.L74
	ldr	r0, [r0, #1348]
	tst	r1, r0
	ite	ne
	movne	r1, #512
	moveq	r1, #256
	orrs	r2, r2, r1
.L74:
	str	r2, [r3]
	pop	{r4, r5, r6, r7, r8, pc}
	.size	GPIOPadConfigGet, .-GPIOPadConfigGet
	.section	.text.GPIOIntEnable,"ax",%progbits
	.align	1
	.global	GPIOIntEnable
	.thumb
	.thumb_func
	.type	GPIOIntEnable, %function
GPIOIntEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #1040]
	orrs	r1, r1, r3
	str	r1, [r0, #1040]
	bx	lr
	.size	GPIOIntEnable, .-GPIOIntEnable
	.section	.text.GPIOIntDisable,"ax",%progbits
	.align	1
	.global	GPIOIntDisable
	.thumb
	.thumb_func
	.type	GPIOIntDisable, %function
GPIOIntDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #1040]
	bic	r1, r3, r1
	str	r1, [r0, #1040]
	bx	lr
	.size	GPIOIntDisable, .-GPIOIntDisable
	.section	.text.GPIOIntStatus,"ax",%progbits
	.align	1
	.global	GPIOIntStatus
	.thumb
	.thumb_func
	.type	GPIOIntStatus, %function
GPIOIntStatus:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r1, .L90
	ldr	r0, [r0, #1048]
	bx	lr
.L90:
	ldr	r0, [r0, #1044]
	bx	lr
	.size	GPIOIntStatus, .-GPIOIntStatus
	.section	.text.GPIOIntClear,"ax",%progbits
	.align	1
	.global	GPIOIntClear
	.thumb
	.thumb_func
	.type	GPIOIntClear, %function
GPIOIntClear:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r1, [r0, #1052]
	bx	lr
	.size	GPIOIntClear, .-GPIOIntClear
	.section	.text.GPIOIntRegister,"ax",%progbits
	.align	1
	.global	GPIOIntRegister
	.thumb
	.thumb_func
	.type	GPIOIntRegister, %function
GPIOIntRegister:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r5, r1
	bl	_GPIOIntNumberGet
	mov	r1, r5
	mov	r4, r0
	bl	IntRegister
	mov	r0, r4
	pop	{r3, r4, r5, lr}
	b	IntEnable
	.size	GPIOIntRegister, .-GPIOIntRegister
	.section	.text.GPIOIntUnregister,"ax",%progbits
	.align	1
	.global	GPIOIntUnregister
	.thumb
	.thumb_func
	.type	GPIOIntUnregister, %function
GPIOIntUnregister:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	_GPIOIntNumberGet
	mov	r4, r0
	bl	IntDisable
	mov	r0, r4
	pop	{r4, lr}
	b	IntUnregister
	.size	GPIOIntUnregister, .-GPIOIntUnregister
	.section	.text.GPIOPinRead,"ax",%progbits
	.align	1
	.global	GPIOPinRead
	.thumb
	.thumb_func
	.type	GPIOPinRead, %function
GPIOPinRead:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, r1, lsl #2]
	bx	lr
	.size	GPIOPinRead, .-GPIOPinRead
	.section	.text.GPIOPinWrite,"ax",%progbits
	.align	1
	.global	GPIOPinWrite
	.thumb
	.thumb_func
	.type	GPIOPinWrite, %function
GPIOPinWrite:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r2, [r0, r1, lsl #2]
	bx	lr
	.size	GPIOPinWrite, .-GPIOPinWrite
	.section	.text.GPIOPinTypeADC,"ax",%progbits
	.align	1
	.global	GPIOPinTypeADC
	.thumb
	.thumb_func
	.type	GPIOPinTypeADC, %function
GPIOPinTypeADC:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r2, #0
	mov	r5, r0
	mov	r4, r1
	bl	GPIODirModeSet
	mov	r0, r5
	mov	r1, r4
	movs	r2, #1
	movs	r3, #0
	pop	{r4, r5, r6, lr}
	b	GPIOPadConfigSet
	.size	GPIOPinTypeADC, .-GPIOPinTypeADC
	.section	.text.GPIOPinTypeCAN,"ax",%progbits
	.align	1
	.global	GPIOPinTypeCAN
	.thumb
	.thumb_func
	.type	GPIOPinTypeCAN, %function
GPIOPinTypeCAN:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r2, #2
	mov	r5, r0
	mov	r4, r1
	bl	GPIODirModeSet
	mov	r0, r5
	mov	r1, r4
	movs	r2, #4
	movs	r3, #8
	pop	{r4, r5, r6, lr}
	b	GPIOPadConfigSet
	.size	GPIOPinTypeCAN, .-GPIOPinTypeCAN
	.section	.text.GPIOPinTypeComparator,"ax",%progbits
	.align	1
	.global	GPIOPinTypeComparator
	.thumb
	.thumb_func
	.type	GPIOPinTypeComparator, %function
GPIOPinTypeComparator:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r2, #0
	mov	r5, r0
	mov	r4, r1
	bl	GPIODirModeSet
	mov	r0, r5
	mov	r1, r4
	movs	r2, #1
	movs	r3, #0
	pop	{r4, r5, r6, lr}
	b	GPIOPadConfigSet
	.size	GPIOPinTypeComparator, .-GPIOPinTypeComparator
	.section	.text.GPIOPinTypeEPI,"ax",%progbits
	.align	1
	.global	GPIOPinTypeEPI
	.thumb
	.thumb_func
	.type	GPIOPinTypeEPI, %function
GPIOPinTypeEPI:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r2, #2
	mov	r5, r0
	mov	r4, r1
	bl	GPIODirModeSet
	mov	r0, r5
	mov	r1, r4
	movs	r2, #4
	movs	r3, #8
	pop	{r4, r5, r6, lr}
	b	GPIOPadConfigSet
	.size	GPIOPinTypeEPI, .-GPIOPinTypeEPI
	.section	.text.GPIOPinTypeEthernetLED,"ax",%progbits
	.align	1
	.global	GPIOPinTypeEthernetLED
	.thumb
	.thumb_func
	.type	GPIOPinTypeEthernetLED, %function
GPIOPinTypeEthernetLED:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r2, #2
	mov	r5, r0
	mov	r4, r1
	bl	GPIODirModeSet
	mov	r0, r5
	mov	r1, r4
	movs	r2, #4
	movs	r3, #8
	pop	{r4, r5, r6, lr}
	b	GPIOPadConfigSet
	.size	GPIOPinTypeEthernetLED, .-GPIOPinTypeEthernetLED
	.section	.text.GPIOPinTypeEthernetMII,"ax",%progbits
	.align	1
	.global	GPIOPinTypeEthernetMII
	.thumb
	.thumb_func
	.type	GPIOPinTypeEthernetMII, %function
GPIOPinTypeEthernetMII:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r2, #2
	mov	r5, r0
	mov	r4, r1
	bl	GPIODirModeSet
	mov	r0, r5
	mov	r1, r4
	movs	r2, #4
	movs	r3, #8
	pop	{r4, r5, r6, lr}
	b	GPIOPadConfigSet
	.size	GPIOPinTypeEthernetMII, .-GPIOPinTypeEthernetMII
	.section	.text.GPIOPinTypeFan,"ax",%progbits
	.align	1
	.global	GPIOPinTypeFan
	.thumb
	.thumb_func
	.type	GPIOPinTypeFan, %function
GPIOPinTypeFan:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r2, #2
	mov	r5, r0
	mov	r4, r1
	bl	GPIODirModeSet
	mov	r0, r5
	mov	r1, r4
	movs	r2, #1
	movs	r3, #8
	pop	{r4, r5, r6, lr}
	b	GPIOPadConfigSet
	.size	GPIOPinTypeFan, .-GPIOPinTypeFan
	.section	.text.GPIOPinTypeGPIOInput,"ax",%progbits
	.align	1
	.global	GPIOPinTypeGPIOInput
	.thumb
	.thumb_func
	.type	GPIOPinTypeGPIOInput, %function
GPIOPinTypeGPIOInput:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r2, #0
	mov	r5, r0
	mov	r4, r1
	bl	GPIODirModeSet
	mov	r0, r5
	mov	r1, r4
	movs	r2, #1
	movs	r3, #8
	pop	{r4, r5, r6, lr}
	b	GPIOPadConfigSet
	.size	GPIOPinTypeGPIOInput, .-GPIOPinTypeGPIOInput
	.section	.text.GPIOPinTypeGPIOOutput,"ax",%progbits
	.align	1
	.global	GPIOPinTypeGPIOOutput
	.thumb
	.thumb_func
	.type	GPIOPinTypeGPIOOutput, %function
GPIOPinTypeGPIOOutput:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	movs	r2, #1
	mov	r5, r0
	mov	r4, r1
	movs	r3, #8
	bl	GPIOPadConfigSet
	mov	r0, r5
	mov	r1, r4
	movs	r2, #1
	pop	{r3, r4, r5, lr}
	b	GPIODirModeSet
	.size	GPIOPinTypeGPIOOutput, .-GPIOPinTypeGPIOOutput
	.section	.text.GPIOPinTypeGPIOOutputOD,"ax",%progbits
	.align	1
	.global	GPIOPinTypeGPIOOutputOD
	.thumb
	.thumb_func
	.type	GPIOPinTypeGPIOOutputOD, %function
GPIOPinTypeGPIOOutputOD:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	movs	r2, #1
	mov	r5, r0
	mov	r4, r1
	movs	r3, #9
	bl	GPIOPadConfigSet
	mov	r0, r5
	mov	r1, r4
	movs	r2, #1
	pop	{r3, r4, r5, lr}
	b	GPIODirModeSet
	.size	GPIOPinTypeGPIOOutputOD, .-GPIOPinTypeGPIOOutputOD
	.section	.text.GPIOPinTypeI2C,"ax",%progbits
	.align	1
	.global	GPIOPinTypeI2C
	.thumb
	.thumb_func
	.type	GPIOPinTypeI2C, %function
GPIOPinTypeI2C:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r2, #2
	mov	r5, r0
	mov	r4, r1
	bl	GPIODirModeSet
	mov	r0, r5
	mov	r1, r4
	movs	r2, #1
	movs	r3, #9
	pop	{r4, r5, r6, lr}
	b	GPIOPadConfigSet
	.size	GPIOPinTypeI2C, .-GPIOPinTypeI2C
	.section	.text.GPIOPinTypeI2CSCL,"ax",%progbits
	.align	1
	.global	GPIOPinTypeI2CSCL
	.thumb
	.thumb_func
	.type	GPIOPinTypeI2CSCL, %function
GPIOPinTypeI2CSCL:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r2, #2
	mov	r5, r0
	mov	r4, r1
	bl	GPIODirModeSet
	mov	r0, r5
	mov	r1, r4
	movs	r2, #1
	movs	r3, #8
	pop	{r4, r5, r6, lr}
	b	GPIOPadConfigSet
	.size	GPIOPinTypeI2CSCL, .-GPIOPinTypeI2CSCL
	.section	.text.GPIOPinTypeLCD,"ax",%progbits
	.align	1
	.global	GPIOPinTypeLCD
	.thumb
	.thumb_func
	.type	GPIOPinTypeLCD, %function
GPIOPinTypeLCD:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r2, #2
	mov	r5, r0
	mov	r4, r1
	bl	GPIODirModeSet
	mov	r0, r5
	mov	r1, r4
	movs	r2, #4
	movs	r3, #8
	pop	{r4, r5, r6, lr}
	b	GPIOPadConfigSet
	.size	GPIOPinTypeLCD, .-GPIOPinTypeLCD
	.section	.text.GPIOPinTypeLPC,"ax",%progbits
	.align	1
	.global	GPIOPinTypeLPC
	.thumb
	.thumb_func
	.type	GPIOPinTypeLPC, %function
GPIOPinTypeLPC:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r2, #2
	mov	r5, r0
	mov	r4, r1
	bl	GPIODirModeSet
	mov	r0, r5
	mov	r1, r4
	movs	r2, #4
	movs	r3, #8
	pop	{r4, r5, r6, lr}
	b	GPIOPadConfigSet
	.size	GPIOPinTypeLPC, .-GPIOPinTypeLPC
	.section	.text.GPIOPinTypePECIRx,"ax",%progbits
	.align	1
	.global	GPIOPinTypePECIRx
	.thumb
	.thumb_func
	.type	GPIOPinTypePECIRx, %function
GPIOPinTypePECIRx:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r2, #0
	mov	r5, r0
	mov	r4, r1
	bl	GPIODirModeSet
	mov	r0, r5
	mov	r1, r4
	movs	r2, #1
	movs	r3, #0
	pop	{r4, r5, r6, lr}
	b	GPIOPadConfigSet
	.size	GPIOPinTypePECIRx, .-GPIOPinTypePECIRx
	.section	.text.GPIOPinTypePECITx,"ax",%progbits
	.align	1
	.global	GPIOPinTypePECITx
	.thumb
	.thumb_func
	.type	GPIOPinTypePECITx, %function
GPIOPinTypePECITx:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r2, #2
	mov	r5, r0
	mov	r4, r1
	bl	GPIODirModeSet
	mov	r0, r5
	mov	r1, r4
	movs	r2, #1
	movs	r3, #8
	pop	{r4, r5, r6, lr}
	b	GPIOPadConfigSet
	.size	GPIOPinTypePECITx, .-GPIOPinTypePECITx
	.section	.text.GPIOPinTypePWM,"ax",%progbits
	.align	1
	.global	GPIOPinTypePWM
	.thumb
	.thumb_func
	.type	GPIOPinTypePWM, %function
GPIOPinTypePWM:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r2, #2
	mov	r5, r0
	mov	r4, r1
	bl	GPIODirModeSet
	mov	r0, r5
	mov	r1, r4
	movs	r2, #1
	movs	r3, #8
	pop	{r4, r5, r6, lr}
	b	GPIOPadConfigSet
	.size	GPIOPinTypePWM, .-GPIOPinTypePWM
	.section	.text.GPIOPinTypeQEI,"ax",%progbits
	.align	1
	.global	GPIOPinTypeQEI
	.thumb
	.thumb_func
	.type	GPIOPinTypeQEI, %function
GPIOPinTypeQEI:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r2, #2
	mov	r5, r0
	mov	r4, r1
	bl	GPIODirModeSet
	mov	r0, r5
	mov	r1, r4
	movs	r2, #1
	movs	r3, #10
	pop	{r4, r5, r6, lr}
	b	GPIOPadConfigSet
	.size	GPIOPinTypeQEI, .-GPIOPinTypeQEI
	.section	.text.GPIOPinTypeSSI,"ax",%progbits
	.align	1
	.global	GPIOPinTypeSSI
	.thumb
	.thumb_func
	.type	GPIOPinTypeSSI, %function
GPIOPinTypeSSI:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r2, #2
	mov	r5, r0
	mov	r4, r1
	bl	GPIODirModeSet
	mov	r0, r5
	mov	r1, r4
	movs	r2, #1
	movs	r3, #8
	pop	{r4, r5, r6, lr}
	b	GPIOPadConfigSet
	.size	GPIOPinTypeSSI, .-GPIOPinTypeSSI
	.section	.text.GPIOPinTypeTimer,"ax",%progbits
	.align	1
	.global	GPIOPinTypeTimer
	.thumb
	.thumb_func
	.type	GPIOPinTypeTimer, %function
GPIOPinTypeTimer:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r2, #2
	mov	r5, r0
	mov	r4, r1
	bl	GPIODirModeSet
	mov	r0, r5
	mov	r1, r4
	movs	r2, #1
	movs	r3, #8
	pop	{r4, r5, r6, lr}
	b	GPIOPadConfigSet
	.size	GPIOPinTypeTimer, .-GPIOPinTypeTimer
	.section	.text.GPIOPinTypeUART,"ax",%progbits
	.align	1
	.global	GPIOPinTypeUART
	.thumb
	.thumb_func
	.type	GPIOPinTypeUART, %function
GPIOPinTypeUART:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r2, #2
	mov	r5, r0
	mov	r4, r1
	bl	GPIODirModeSet
	mov	r0, r5
	mov	r1, r4
	movs	r2, #1
	movs	r3, #8
	pop	{r4, r5, r6, lr}
	b	GPIOPadConfigSet
	.size	GPIOPinTypeUART, .-GPIOPinTypeUART
	.section	.text.GPIOPinTypeUSBAnalog,"ax",%progbits
	.align	1
	.global	GPIOPinTypeUSBAnalog
	.thumb
	.thumb_func
	.type	GPIOPinTypeUSBAnalog, %function
GPIOPinTypeUSBAnalog:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r2, #0
	mov	r5, r0
	mov	r4, r1
	bl	GPIODirModeSet
	mov	r0, r5
	mov	r1, r4
	movs	r2, #1
	movs	r3, #0
	pop	{r4, r5, r6, lr}
	b	GPIOPadConfigSet
	.size	GPIOPinTypeUSBAnalog, .-GPIOPinTypeUSBAnalog
	.section	.text.GPIOPinTypeUSBDigital,"ax",%progbits
	.align	1
	.global	GPIOPinTypeUSBDigital
	.thumb
	.thumb_func
	.type	GPIOPinTypeUSBDigital, %function
GPIOPinTypeUSBDigital:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r2, #2
	mov	r5, r0
	mov	r4, r1
	bl	GPIODirModeSet
	mov	r0, r5
	mov	r1, r4
	movs	r2, #1
	movs	r3, #8
	pop	{r4, r5, r6, lr}
	b	GPIOPadConfigSet
	.size	GPIOPinTypeUSBDigital, .-GPIOPinTypeUSBDigital
	.section	.text.GPIOPinTypeWakeHigh,"ax",%progbits
	.align	1
	.global	GPIOPinTypeWakeHigh
	.thumb
	.thumb_func
	.type	GPIOPinTypeWakeHigh, %function
GPIOPinTypeWakeHigh:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r2, #0
	mov	r5, r0
	mov	r4, r1
	bl	GPIODirModeSet
	mov	r0, r5
	mov	r1, r4
	movs	r2, #1
	mov	r3, #520
	pop	{r4, r5, r6, lr}
	b	GPIOPadConfigSet
	.size	GPIOPinTypeWakeHigh, .-GPIOPinTypeWakeHigh
	.section	.text.GPIOPinTypeWakeLow,"ax",%progbits
	.align	1
	.global	GPIOPinTypeWakeLow
	.thumb
	.thumb_func
	.type	GPIOPinTypeWakeLow, %function
GPIOPinTypeWakeLow:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r2, #0
	mov	r5, r0
	mov	r4, r1
	bl	GPIODirModeSet
	mov	r0, r5
	mov	r1, r4
	movs	r2, #1
	mov	r3, #264
	pop	{r4, r5, r6, lr}
	b	GPIOPadConfigSet
	.size	GPIOPinTypeWakeLow, .-GPIOPinTypeWakeLow
	.section	.text.GPIOPinTypeKBRow,"ax",%progbits
	.align	1
	.global	GPIOPinTypeKBRow
	.thumb
	.thumb_func
	.type	GPIOPinTypeKBRow, %function
GPIOPinTypeKBRow:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r2, #2
	mov	r5, r0
	mov	r4, r1
	bl	GPIODirModeSet
	mov	r0, r5
	mov	r1, r4
	movs	r2, #1
	movs	r3, #8
	pop	{r4, r5, r6, lr}
	b	GPIOPadConfigSet
	.size	GPIOPinTypeKBRow, .-GPIOPinTypeKBRow
	.section	.text.GPIOPinTypeKBColumn,"ax",%progbits
	.align	1
	.global	GPIOPinTypeKBColumn
	.thumb
	.thumb_func
	.type	GPIOPinTypeKBColumn, %function
GPIOPinTypeKBColumn:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r2, #2
	mov	r5, r0
	mov	r4, r1
	bl	GPIODirModeSet
	mov	r0, r5
	mov	r1, r4
	movs	r2, #1
	movs	r3, #10
	pop	{r4, r5, r6, lr}
	b	GPIOPadConfigSet
	.size	GPIOPinTypeKBColumn, .-GPIOPinTypeKBColumn
	.section	.text.GPIOPinTypeLEDSeq,"ax",%progbits
	.align	1
	.global	GPIOPinTypeLEDSeq
	.thumb
	.thumb_func
	.type	GPIOPinTypeLEDSeq, %function
GPIOPinTypeLEDSeq:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r2, #2
	mov	r5, r0
	mov	r4, r1
	bl	GPIODirModeSet
	mov	r0, r5
	mov	r1, r4
	movs	r2, #4
	movs	r3, #8
	pop	{r4, r5, r6, lr}
	b	GPIOPadConfigSet
	.size	GPIOPinTypeLEDSeq, .-GPIOPinTypeLEDSeq
	.section	.text.GPIOPinTypeCIR,"ax",%progbits
	.align	1
	.global	GPIOPinTypeCIR
	.thumb
	.thumb_func
	.type	GPIOPinTypeCIR, %function
GPIOPinTypeCIR:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r2, #2
	mov	r5, r0
	mov	r4, r1
	bl	GPIODirModeSet
	mov	r0, r5
	mov	r1, r4
	movs	r2, #1
	movs	r3, #8
	pop	{r4, r5, r6, lr}
	b	GPIOPadConfigSet
	.size	GPIOPinTypeCIR, .-GPIOPinTypeCIR
	.section	.text.GPIOPinWakeStatus,"ax",%progbits
	.align	1
	.global	GPIOPinWakeStatus
	.thumb
	.thumb_func
	.type	GPIOPinWakeStatus, %function
GPIOPinWakeStatus:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, #1352
	bx	lr
	.size	GPIOPinWakeStatus, .-GPIOPinWakeStatus
	.section	.text.GPIOPinConfigure,"ax",%progbits
	.align	1
	.global	GPIOPinConfigure
	.thumb
	.thumb_func
	.type	GPIOPinConfigure, %function
GPIOPinConfigure:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L130
	ubfx	r3, r0, #16, #8
	ldr	r1, [r2]
	movs	r2, #1
	lsls	r2, r2, r3
	tst	r2, r1
	lsl	r3, r3, #1
	ldr	r2, .L130+4
	it	ne
	addne	r3, r3, #1
	push	{r4, lr}
	ldr	r3, [r2, r3, lsl #2]
	ubfx	r4, r0, #8, #8
	ldr	r1, [r3, #1324]
	movs	r2, #15
	lsls	r2, r2, r4
	and	r0, r0, #15
	bic	r2, r1, r2
	lsls	r0, r0, r4
	orrs	r0, r0, r2
	str	r0, [r3, #1324]
	pop	{r4, pc}
.L131:
	.align	2
.L130:
	.word	1074782316
	.word	.LANCHOR2
	.size	GPIOPinConfigure, .-GPIOPinConfigure
	.section	.text.GPIODMATriggerEnable,"ax",%progbits
	.align	1
	.global	GPIODMATriggerEnable
	.thumb
	.thumb_func
	.type	GPIODMATriggerEnable, %function
GPIODMATriggerEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #1332]
	orrs	r1, r1, r3
	str	r1, [r0, #1332]
	bx	lr
	.size	GPIODMATriggerEnable, .-GPIODMATriggerEnable
	.section	.text.GPIODMATriggerDisable,"ax",%progbits
	.align	1
	.global	GPIODMATriggerDisable
	.thumb
	.thumb_func
	.type	GPIODMATriggerDisable, %function
GPIODMATriggerDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #1332]
	bic	r1, r3, r1
	str	r1, [r0, #1332]
	bx	lr
	.size	GPIODMATriggerDisable, .-GPIODMATriggerDisable
	.section	.text.GPIOADCTriggerEnable,"ax",%progbits
	.align	1
	.global	GPIOADCTriggerEnable
	.thumb
	.thumb_func
	.type	GPIOADCTriggerEnable, %function
GPIOADCTriggerEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #1328]
	orrs	r1, r1, r3
	str	r1, [r0, #1328]
	bx	lr
	.size	GPIOADCTriggerEnable, .-GPIOADCTriggerEnable
	.section	.text.GPIOADCTriggerDisable,"ax",%progbits
	.align	1
	.global	GPIOADCTriggerDisable
	.thumb
	.thumb_func
	.type	GPIOADCTriggerDisable, %function
GPIOADCTriggerDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #1328]
	bic	r1, r3, r1
	str	r1, [r0, #1328]
	bx	lr
	.size	GPIOADCTriggerDisable, .-GPIOADCTriggerDisable
	.section	.rodata.g_ppui32GPIOIntMapSnowflake,"a",%progbits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	g_ppui32GPIOIntMapSnowflake, %object
	.size	g_ppui32GPIOIntMapSnowflake, 192
g_ppui32GPIOIntMapSnowflake:
	.word	1073758208
	.word	16
	.word	1074102272
	.word	16
	.word	1073762304
	.word	17
	.word	1074106368
	.word	17
	.word	1073766400
	.word	18
	.word	1074110464
	.word	18
	.word	1073770496
	.word	19
	.word	1074114560
	.word	19
	.word	1073889280
	.word	20
	.word	1074118656
	.word	20
	.word	1073893376
	.word	46
	.word	1074122752
	.word	46
	.word	1073897472
	.word	47
	.word	1074126848
	.word	47
	.word	1073901568
	.word	48
	.word	1074130944
	.word	48
	.word	1073991680
	.word	67
	.word	1074135040
	.word	67
	.word	1074139136
	.word	68
	.word	1074143232
	.word	69
	.word	1074147328
	.word	88
	.word	1074151424
	.word	89
	.word	1074155520
	.word	92
	.word	1074159616
	.word	100
	.section	.rodata.g_pui32GPIOBaseAddrs,"a",%progbits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	g_pui32GPIOBaseAddrs, %object
	.size	g_pui32GPIOBaseAddrs, 144
g_pui32GPIOBaseAddrs:
	.word	1073758208
	.word	1074102272
	.word	1073762304
	.word	1074106368
	.word	1073766400
	.word	1074110464
	.word	1073770496
	.word	1074114560
	.word	1073889280
	.word	1074118656
	.word	1073893376
	.word	1074122752
	.word	1073897472
	.word	1074126848
	.word	1073901568
	.word	1074130944
	.word	1073991680
	.word	1074135040
	.word	1074139136
	.word	1074139136
	.word	1074143232
	.word	1074143232
	.word	1074147328
	.word	1074147328
	.word	1074151424
	.word	1074151424
	.word	1074155520
	.word	1074155520
	.word	1074159616
	.word	1074159616
	.word	1074163712
	.word	1074163712
	.word	1074167808
	.word	1074167808
	.word	1074171904
	.word	1074171904
	.section	.rodata.g_ppui32GPIOIntMapBlizzard,"a",%progbits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	g_ppui32GPIOIntMapBlizzard, %object
	.size	g_ppui32GPIOIntMapBlizzard, 192
g_ppui32GPIOIntMapBlizzard:
	.word	1073758208
	.word	16
	.word	1074102272
	.word	16
	.word	1073762304
	.word	17
	.word	1074106368
	.word	17
	.word	1073766400
	.word	18
	.word	1074110464
	.word	18
	.word	1073770496
	.word	19
	.word	1074114560
	.word	19
	.word	1073889280
	.word	20
	.word	1074118656
	.word	20
	.word	1073893376
	.word	46
	.word	1074122752
	.word	46
	.word	1073897472
	.word	47
	.word	1074126848
	.word	47
	.word	1073901568
	.word	48
	.word	1074130944
	.word	48
	.word	1073991680
	.word	70
	.word	1074135040
	.word	70
	.word	1074139136
	.word	71
	.word	1074143232
	.word	72
	.word	1074147328
	.word	127
	.word	1074151424
	.word	128
	.word	1074155520
	.word	132
	.word	1074159616
	.word	140
	.ident	"GCC: (15:4.9.3+svn227297-1) 4.9.3 20150529 (prerelease)"
