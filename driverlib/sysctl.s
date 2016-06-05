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
	.file	"sysctl.c"
	.section	.text._SysCtlMemTimingGet,"ax",%progbits
	.align	1
	.thumb
	.thumb_func
	.type	_SysCtlMemTimingGet, %function
_SysCtlMemTimingGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	movs	r3, #0
.L4:
	ldr	r1, .L7
	ldr	r4, [r1, r3, lsl #3]
	cmp	r0, r4
	lsl	r2, r3, #3
	bhi	.L2
	adds	r3, r1, r2
	ldr	r0, [r3, #4]
	pop	{r4, pc}
.L2:
	adds	r3, r3, #1
	cmp	r3, #7
	bne	.L4
	movs	r0, #0
	pop	{r4, pc}
.L8:
	.align	2
.L7:
	.word	.LANCHOR0
	.size	_SysCtlMemTimingGet, .-_SysCtlMemTimingGet
	.section	.text.SysCtlSRAMSizeGet,"ax",%progbits
	.align	1
	.global	SysCtlSRAMSizeGet
	.thumb
	.thumb_func
	.type	SysCtlSRAMSizeGet, %function
SysCtlSRAMSizeGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L10
	ldr	r0, [r3]
	adds	r0, r0, #1
	lsls	r0, r0, #8
	bx	lr
.L11:
	.align	2
.L10:
	.word	1074782148
	.size	SysCtlSRAMSizeGet, .-SysCtlSRAMSizeGet
	.section	.text.SysCtlFlashSizeGet,"ax",%progbits
	.align	1
	.global	SysCtlFlashSizeGet
	.thumb
	.thumb_func
	.type	SysCtlFlashSizeGet, %function
SysCtlFlashSizeGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L15
	ldr	r2, [r3]
	ldr	r3, .L15+4
	ands	r3, r3, r2
	ldr	r2, .L15+8
	cmp	r3, r2
	itett	eq
	ldreq	r3, .L15+12
	ldrne	r3, .L15+16
	ldreq	r0, [r3]
	uxtheq	r0, r0
	ittee	eq
	lsleq	r0, r0, #11
	addeq	r0, r0, #2048
	ldrne	r0, [r3]
	uxthne	r0, r0
	itt	ne
	addne	r0, r0, #1
	lslne	r0, r0, #11
	bx	lr
.L16:
	.align	2
.L15:
	.word	1074782208
	.word	1895759872
	.word	268763136
	.word	1074782216
	.word	1074782144
	.size	SysCtlFlashSizeGet, .-SysCtlFlashSizeGet
	.section	.text.SysCtlFlashSectorSizeGet,"ax",%progbits
	.align	1
	.global	SysCtlFlashSectorSizeGet
	.thumb
	.thumb_func
	.type	SysCtlFlashSectorSizeGet, %function
SysCtlFlashSectorSizeGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L20
	ldr	r2, [r3]
	ldr	r3, .L20+4
	ands	r3, r3, r2
	ldr	r2, .L20+8
	cmp	r3, r2
	itttt	eq
	ldreq	r3, .L20+12
	ldreq	r3, [r3]
	ubfxeq	r3, r3, #16, #3
	moveq	r0, #1
	itte	eq
	addeq	r3, r3, #10
	lsleq	r0, r0, r3
	movne	r0, #1024
	bx	lr
.L21:
	.align	2
.L20:
	.word	1074782208
	.word	1895759872
	.word	269090816
	.word	1074782144
	.size	SysCtlFlashSectorSizeGet, .-SysCtlFlashSectorSizeGet
	.section	.text.SysCtlPeripheralPresent,"ax",%progbits
	.align	1
	.global	SysCtlPeripheralPresent
	.thumb
	.thumb_func
	.type	SysCtlPeripheralPresent, %function
SysCtlPeripheralPresent:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	uxtb	r3, r0
	lsls	r3, r3, #2
	orr	r2, r3, #1107296256
	ldr	r3, .L23
	ubfx	r0, r0, #8, #8
	add	r3, r3, r0
	ubfx	r3, r3, #0, #20
	orr	r3, r2, r3, lsl #5
	ldr	r0, [r3]
	adds	r0, r0, #0
	it	ne
	movne	r0, #1
	bx	lr
.L24:
	.align	2
.L23:
	.word	1074782976
	.size	SysCtlPeripheralPresent, .-SysCtlPeripheralPresent
	.section	.text.SysCtlPeripheralReady,"ax",%progbits
	.align	1
	.global	SysCtlPeripheralReady
	.thumb
	.thumb_func
	.type	SysCtlPeripheralReady, %function
SysCtlPeripheralReady:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	uxtb	r3, r0
	lsls	r3, r3, #2
	orr	r2, r3, #1107296256
	ldr	r3, .L26
	ubfx	r0, r0, #8, #8
	add	r3, r3, r0
	ubfx	r3, r3, #0, #20
	orr	r3, r2, r3, lsl #5
	ldr	r0, [r3]
	adds	r0, r0, #0
	it	ne
	movne	r0, #1
	bx	lr
.L27:
	.align	2
.L26:
	.word	1074784768
	.size	SysCtlPeripheralReady, .-SysCtlPeripheralReady
	.section	.text.SysCtlPeripheralPowerOn,"ax",%progbits
	.align	1
	.global	SysCtlPeripheralPowerOn
	.thumb
	.thumb_func
	.type	SysCtlPeripheralPowerOn, %function
SysCtlPeripheralPowerOn:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	uxtb	r3, r0
	lsls	r3, r3, #2
	orr	r2, r3, #1107296256
	ldr	r3, .L29
	ubfx	r0, r0, #8, #8
	add	r3, r3, r0
	ubfx	r3, r3, #0, #20
	orr	r3, r2, r3, lsl #5
	movs	r2, #1
	str	r2, [r3]
	bx	lr
.L30:
	.align	2
.L29:
	.word	1074784512
	.size	SysCtlPeripheralPowerOn, .-SysCtlPeripheralPowerOn
	.section	.text.SysCtlPeripheralPowerOff,"ax",%progbits
	.align	1
	.global	SysCtlPeripheralPowerOff
	.thumb
	.thumb_func
	.type	SysCtlPeripheralPowerOff, %function
SysCtlPeripheralPowerOff:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	uxtb	r3, r0
	lsls	r3, r3, #2
	orr	r2, r3, #1107296256
	ldr	r3, .L32
	ubfx	r0, r0, #8, #8
	add	r3, r3, r0
	ubfx	r3, r3, #0, #20
	orr	r3, r2, r3, lsl #5
	movs	r2, #0
	str	r2, [r3]
	bx	lr
.L33:
	.align	2
.L32:
	.word	1074784512
	.size	SysCtlPeripheralPowerOff, .-SysCtlPeripheralPowerOff
	.section	.text.SysCtlPeripheralReset,"ax",%progbits
	.align	1
	.global	SysCtlPeripheralReset
	.thumb
	.thumb_func
	.type	SysCtlPeripheralReset, %function
SysCtlPeripheralReset:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	uxtb	r3, r0
	lsls	r3, r3, #2
	orr	r2, r3, #1107296256
	ldr	r3, .L39
	ubfx	r0, r0, #8, #8
	add	r3, r3, r0
	ubfx	r3, r3, #0, #20
	orr	r3, r2, r3, lsl #5
	movs	r2, #1
	str	r2, [r3]
	sub	sp, sp, #8
	movs	r2, #0
.L37:
	str	r2, [sp, #4]
	ldr	r2, [sp, #4]
	cmp	r2, #15
	bhi	.L38
	ldr	r2, [sp, #4]
	adds	r2, r2, #1
	b	.L37
.L38:
	movs	r2, #0
	str	r2, [r3]
	add	sp, sp, #8
	@ sp needed
	bx	lr
.L40:
	.align	2
.L39:
	.word	1074783488
	.size	SysCtlPeripheralReset, .-SysCtlPeripheralReset
	.section	.text.SysCtlPeripheralEnable,"ax",%progbits
	.align	1
	.global	SysCtlPeripheralEnable
	.thumb
	.thumb_func
	.type	SysCtlPeripheralEnable, %function
SysCtlPeripheralEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	uxtb	r3, r0
	lsls	r3, r3, #2
	orr	r2, r3, #1107296256
	ldr	r3, .L42
	ubfx	r0, r0, #8, #8
	add	r3, r3, r0
	ubfx	r3, r3, #0, #20
	orr	r3, r2, r3, lsl #5
	movs	r2, #1
	str	r2, [r3]
	bx	lr
.L43:
	.align	2
.L42:
	.word	1074783744
	.size	SysCtlPeripheralEnable, .-SysCtlPeripheralEnable
	.section	.text.SysCtlPeripheralDisable,"ax",%progbits
	.align	1
	.global	SysCtlPeripheralDisable
	.thumb
	.thumb_func
	.type	SysCtlPeripheralDisable, %function
SysCtlPeripheralDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	uxtb	r3, r0
	lsls	r3, r3, #2
	orr	r2, r3, #1107296256
	ldr	r3, .L45
	ubfx	r0, r0, #8, #8
	add	r3, r3, r0
	ubfx	r3, r3, #0, #20
	orr	r3, r2, r3, lsl #5
	movs	r2, #0
	str	r2, [r3]
	bx	lr
.L46:
	.align	2
.L45:
	.word	1074783744
	.size	SysCtlPeripheralDisable, .-SysCtlPeripheralDisable
	.section	.text.SysCtlPeripheralSleepEnable,"ax",%progbits
	.align	1
	.global	SysCtlPeripheralSleepEnable
	.thumb
	.thumb_func
	.type	SysCtlPeripheralSleepEnable, %function
SysCtlPeripheralSleepEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	uxtb	r3, r0
	lsls	r3, r3, #2
	orr	r2, r3, #1107296256
	ldr	r3, .L48
	ubfx	r0, r0, #8, #8
	add	r3, r3, r0
	ubfx	r3, r3, #0, #20
	orr	r3, r2, r3, lsl #5
	movs	r2, #1
	str	r2, [r3]
	bx	lr
.L49:
	.align	2
.L48:
	.word	1074784000
	.size	SysCtlPeripheralSleepEnable, .-SysCtlPeripheralSleepEnable
	.section	.text.SysCtlPeripheralSleepDisable,"ax",%progbits
	.align	1
	.global	SysCtlPeripheralSleepDisable
	.thumb
	.thumb_func
	.type	SysCtlPeripheralSleepDisable, %function
SysCtlPeripheralSleepDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	uxtb	r3, r0
	lsls	r3, r3, #2
	orr	r2, r3, #1107296256
	ldr	r3, .L51
	ubfx	r0, r0, #8, #8
	add	r3, r3, r0
	ubfx	r3, r3, #0, #20
	orr	r3, r2, r3, lsl #5
	movs	r2, #0
	str	r2, [r3]
	bx	lr
.L52:
	.align	2
.L51:
	.word	1074784000
	.size	SysCtlPeripheralSleepDisable, .-SysCtlPeripheralSleepDisable
	.section	.text.SysCtlPeripheralDeepSleepEnable,"ax",%progbits
	.align	1
	.global	SysCtlPeripheralDeepSleepEnable
	.thumb
	.thumb_func
	.type	SysCtlPeripheralDeepSleepEnable, %function
SysCtlPeripheralDeepSleepEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	uxtb	r3, r0
	lsls	r3, r3, #2
	orr	r2, r3, #1107296256
	ldr	r3, .L54
	ubfx	r0, r0, #8, #8
	add	r3, r3, r0
	ubfx	r3, r3, #0, #20
	orr	r3, r2, r3, lsl #5
	movs	r2, #1
	str	r2, [r3]
	bx	lr
.L55:
	.align	2
.L54:
	.word	1074784256
	.size	SysCtlPeripheralDeepSleepEnable, .-SysCtlPeripheralDeepSleepEnable
	.section	.text.SysCtlPeripheralDeepSleepDisable,"ax",%progbits
	.align	1
	.global	SysCtlPeripheralDeepSleepDisable
	.thumb
	.thumb_func
	.type	SysCtlPeripheralDeepSleepDisable, %function
SysCtlPeripheralDeepSleepDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	uxtb	r3, r0
	lsls	r3, r3, #2
	orr	r2, r3, #1107296256
	ldr	r3, .L57
	ubfx	r0, r0, #8, #8
	add	r3, r3, r0
	ubfx	r3, r3, #0, #20
	orr	r3, r2, r3, lsl #5
	movs	r2, #0
	str	r2, [r3]
	bx	lr
.L58:
	.align	2
.L57:
	.word	1074784256
	.size	SysCtlPeripheralDeepSleepDisable, .-SysCtlPeripheralDeepSleepDisable
	.section	.text.SysCtlPeripheralClockGating,"ax",%progbits
	.align	1
	.global	SysCtlPeripheralClockGating
	.thumb
	.thumb_func
	.type	SysCtlPeripheralClockGating, %function
SysCtlPeripheralClockGating:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L65
	ldr	r2, [r3]
	ldr	r3, .L65+4
	ands	r3, r3, r2
	ldr	r2, .L65+8
	cmp	r3, r2
	bne	.L60
	ldr	r3, .L65+12
	ldr	r2, [r3]
	cbz	r0, .L61
	orr	r2, r2, #134217728
	b	.L64
.L61:
	bic	r2, r2, #134217728
	b	.L64
.L60:
	ldr	r3, .L65+16
	ldr	r2, [r3]
	cbz	r0, .L63
	orr	r2, r2, #536870912
	b	.L64
.L63:
	bic	r2, r2, #536870912
.L64:
	str	r2, [r3]
	bx	lr
.L66:
	.align	2
.L65:
	.word	1074782208
	.word	1895759872
	.word	268763136
	.word	1074782304
	.word	1074782384
	.size	SysCtlPeripheralClockGating, .-SysCtlPeripheralClockGating
	.section	.text.SysCtlIntRegister,"ax",%progbits
	.align	1
	.global	SysCtlIntRegister
	.thumb
	.thumb_func
	.type	SysCtlIntRegister, %function
SysCtlIntRegister:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	mov	r1, r0
	movs	r0, #44
	bl	IntRegister
	movs	r0, #44
	pop	{r3, lr}
	b	IntEnable
	.size	SysCtlIntRegister, .-SysCtlIntRegister
	.section	.text.SysCtlIntUnregister,"ax",%progbits
	.align	1
	.global	SysCtlIntUnregister
	.thumb
	.thumb_func
	.type	SysCtlIntUnregister, %function
SysCtlIntUnregister:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	movs	r0, #44
	bl	IntDisable
	movs	r0, #44
	pop	{r3, lr}
	b	IntUnregister
	.size	SysCtlIntUnregister, .-SysCtlIntUnregister
	.section	.text.SysCtlIntEnable,"ax",%progbits
	.align	1
	.global	SysCtlIntEnable
	.thumb
	.thumb_func
	.type	SysCtlIntEnable, %function
SysCtlIntEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L70
	ldr	r3, [r2]
	orrs	r0, r0, r3
	str	r0, [r2]
	bx	lr
.L71:
	.align	2
.L70:
	.word	1074782292
	.size	SysCtlIntEnable, .-SysCtlIntEnable
	.section	.text.SysCtlIntDisable,"ax",%progbits
	.align	1
	.global	SysCtlIntDisable
	.thumb
	.thumb_func
	.type	SysCtlIntDisable, %function
SysCtlIntDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L73
	ldr	r3, [r2]
	bic	r0, r3, r0
	str	r0, [r2]
	bx	lr
.L74:
	.align	2
.L73:
	.word	1074782292
	.size	SysCtlIntDisable, .-SysCtlIntDisable
	.section	.text.SysCtlIntClear,"ax",%progbits
	.align	1
	.global	SysCtlIntClear
	.thumb
	.thumb_func
	.type	SysCtlIntClear, %function
SysCtlIntClear:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L76
	str	r0, [r3]
	bx	lr
.L77:
	.align	2
.L76:
	.word	1074782296
	.size	SysCtlIntClear, .-SysCtlIntClear
	.section	.text.SysCtlIntStatus,"ax",%progbits
	.align	1
	.global	SysCtlIntStatus
	.thumb
	.thumb_func
	.type	SysCtlIntStatus, %function
SysCtlIntStatus:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L79
	ldr	r3, .L82
	b	.L81
.L79:
	ldr	r3, .L82+4
.L81:
	ldr	r0, [r3]
	bx	lr
.L83:
	.align	2
.L82:
	.word	1074782296
	.word	1074782288
	.size	SysCtlIntStatus, .-SysCtlIntStatus
	.section	.text.SysCtlLDOSleepSet,"ax",%progbits
	.align	1
	.global	SysCtlLDOSleepSet
	.thumb
	.thumb_func
	.type	SysCtlLDOSleepSet, %function
SysCtlLDOSleepSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L85
	str	r0, [r3]
	bx	lr
.L86:
	.align	2
.L85:
	.word	1074782644
	.size	SysCtlLDOSleepSet, .-SysCtlLDOSleepSet
	.section	.text.SysCtlLDOSleepGet,"ax",%progbits
	.align	1
	.global	SysCtlLDOSleepGet
	.thumb
	.thumb_func
	.type	SysCtlLDOSleepGet, %function
SysCtlLDOSleepGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L88
	ldr	r0, [r3]
	bx	lr
.L89:
	.align	2
.L88:
	.word	1074782644
	.size	SysCtlLDOSleepGet, .-SysCtlLDOSleepGet
	.section	.text.SysCtlLDODeepSleepSet,"ax",%progbits
	.align	1
	.global	SysCtlLDODeepSleepSet
	.thumb
	.thumb_func
	.type	SysCtlLDODeepSleepSet, %function
SysCtlLDODeepSleepSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L91
	str	r0, [r3]
	bx	lr
.L92:
	.align	2
.L91:
	.word	1074782652
	.size	SysCtlLDODeepSleepSet, .-SysCtlLDODeepSleepSet
	.section	.text.SysCtlLDODeepSleepGet,"ax",%progbits
	.align	1
	.global	SysCtlLDODeepSleepGet
	.thumb
	.thumb_func
	.type	SysCtlLDODeepSleepGet, %function
SysCtlLDODeepSleepGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L94
	ldr	r0, [r3]
	bx	lr
.L95:
	.align	2
.L94:
	.word	1074782652
	.size	SysCtlLDODeepSleepGet, .-SysCtlLDODeepSleepGet
	.section	.text.SysCtlSleepPowerSet,"ax",%progbits
	.align	1
	.global	SysCtlSleepPowerSet
	.thumb
	.thumb_func
	.type	SysCtlSleepPowerSet, %function
SysCtlSleepPowerSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L97
	str	r0, [r3]
	bx	lr
.L98:
	.align	2
.L97:
	.word	1074782600
	.size	SysCtlSleepPowerSet, .-SysCtlSleepPowerSet
	.section	.text.SysCtlDeepSleepPowerSet,"ax",%progbits
	.align	1
	.global	SysCtlDeepSleepPowerSet
	.thumb
	.thumb_func
	.type	SysCtlDeepSleepPowerSet, %function
SysCtlDeepSleepPowerSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L100
	str	r0, [r3]
	bx	lr
.L101:
	.align	2
.L100:
	.word	1074782604
	.size	SysCtlDeepSleepPowerSet, .-SysCtlDeepSleepPowerSet
	.section	.text.SysCtlReset,"ax",%progbits
	.align	1
	.global	SysCtlReset
	.thumb
	.thumb_func
	.type	SysCtlReset, %function
SysCtlReset:
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L104
	ldr	r2, .L104+4
	str	r2, [r3]
.L103:
	b	.L103
.L105:
	.align	2
.L104:
	.word	-536810228
	.word	100270084
	.size	SysCtlReset, .-SysCtlReset
	.section	.text.SysCtlSleep,"ax",%progbits
	.align	1
	.global	SysCtlSleep
	.thumb
	.thumb_func
	.type	SysCtlSleep, %function
SysCtlSleep:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	CPUwfi
	.size	SysCtlSleep, .-SysCtlSleep
	.section	.text.SysCtlDeepSleep,"ax",%progbits
	.align	1
	.global	SysCtlDeepSleep
	.thumb
	.thumb_func
	.type	SysCtlDeepSleep, %function
SysCtlDeepSleep:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L108
	ldr	r3, [r4]
	orr	r3, r3, #4
	str	r3, [r4]
	bl	CPUwfi
	ldr	r3, [r4]
	bic	r3, r3, #4
	str	r3, [r4]
	pop	{r4, pc}
.L109:
	.align	2
.L108:
	.word	-536810224
	.size	SysCtlDeepSleep, .-SysCtlDeepSleep
	.section	.text.SysCtlResetCauseGet,"ax",%progbits
	.align	1
	.global	SysCtlResetCauseGet
	.thumb
	.thumb_func
	.type	SysCtlResetCauseGet, %function
SysCtlResetCauseGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L111
	ldr	r0, [r3]
	bx	lr
.L112:
	.align	2
.L111:
	.word	1074782300
	.size	SysCtlResetCauseGet, .-SysCtlResetCauseGet
	.section	.text.SysCtlResetCauseClear,"ax",%progbits
	.align	1
	.global	SysCtlResetCauseClear
	.thumb
	.thumb_func
	.type	SysCtlResetCauseClear, %function
SysCtlResetCauseClear:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L114
	ldr	r3, [r2]
	bic	r0, r3, r0
	str	r0, [r2]
	bx	lr
.L115:
	.align	2
.L114:
	.word	1074782300
	.size	SysCtlResetCauseClear, .-SysCtlResetCauseClear
	.section	.text.SysCtlDelay,"ax",%progbits
	.align	1
	.global	SysCtlDelay
	.thumb
	.thumb_func
	.type	SysCtlDelay, %function
SysCtlDelay:
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ 1831 "driverlib/sysctl.c" 1
	    subs    r0, #1
    bne     SysCtlDelay
    bx      lr
@ 0 "" 2
	.thumb
	.size	SysCtlDelay, .-SysCtlDelay
	.section	.text.SysCtlMOSCConfigSet,"ax",%progbits
	.align	1
	.global	SysCtlMOSCConfigSet
	.thumb
	.thumb_func
	.type	SysCtlMOSCConfigSet, %function
SysCtlMOSCConfigSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L118
	str	r0, [r3]
	bx	lr
.L119:
	.align	2
.L118:
	.word	1074782332
	.size	SysCtlMOSCConfigSet, .-SysCtlMOSCConfigSet
	.section	.text.SysCtlPIOSCCalibrate,"ax",%progbits
	.align	1
	.global	SysCtlPIOSCCalibrate
	.thumb
	.thumb_func
	.type	SysCtlPIOSCCalibrate, %function
SysCtlPIOSCCalibrate:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L131
	ldr	r3, .L131+4
	ands	r2, r2, r0
	cbz	r2, .L121
	and	r2, r0, #-2147483648
	str	r2, [r3]
	ldr	r2, .L131+8
	ands	r2, r2, r0
	str	r2, [r3]
.L121:
	lsls	r2, r0, #22
	str	r0, [r3]
	bpl	.L124
.L128:
	ldr	r3, .L131+12
	ldr	r2, [r3]
	tst	r2, #768
	beq	.L128
	ldr	r0, [r3]
	and	r0, r0, #768
	sub	r3, r0, #256
	rsbs	r0, r3, #0
	adcs	r0, r0, r3
	bx	lr
.L124:
	movs	r0, #1
	bx	lr
.L132:
	.align	2
.L131:
	.word	-2147483392
	.word	1074782544
	.word	-2147483521
	.word	1074782548
	.size	SysCtlPIOSCCalibrate, .-SysCtlPIOSCCalibrate
	.section	.text.SysCtlResetBehaviorSet,"ax",%progbits
	.align	1
	.global	SysCtlResetBehaviorSet
	.thumb
	.thumb_func
	.type	SysCtlResetBehaviorSet, %function
SysCtlResetBehaviorSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L134
	str	r0, [r3]
	bx	lr
.L135:
	.align	2
.L134:
	.word	1074782680
	.size	SysCtlResetBehaviorSet, .-SysCtlResetBehaviorSet
	.section	.text.SysCtlResetBehaviorGet,"ax",%progbits
	.align	1
	.global	SysCtlResetBehaviorGet
	.thumb
	.thumb_func
	.type	SysCtlResetBehaviorGet, %function
SysCtlResetBehaviorGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L137
	ldr	r0, [r3]
	bx	lr
.L138:
	.align	2
.L137:
	.word	1074782680
	.size	SysCtlResetBehaviorGet, .-SysCtlResetBehaviorGet
	.section	.text.SysCtlClockFreqSet,"ax",%progbits
	.align	1
	.global	SysCtlClockFreqSet
	.thumb
	.thumb_func
	.type	SysCtlClockFreqSet, %function
SysCtlClockFreqSet:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L167
	push	{r0, r1, r2, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r2, [r3]
	ldr	r3, .L167+4
	ands	r3, r3, r2
	ldr	r2, .L167+8
	cmp	r3, r2
	mov	r4, r1
	bne	.L140
.L143:
	movs	r0, #0
	b	.L165
.L140:
	and	r3, r0, #56
	cmp	r3, #16
	beq	.L153
	cmp	r3, #48
	ubfx	r5, r0, #6, #5
	beq	.L154
	cmp	r3, #56
	beq	.L155
	cbnz	r3, .L156
	sub	r3, r5, #9
	cmp	r3, #17
	bhi	.L143
	ldr	r3, .L167+12
	ldr	r1, .L167+16
	ldr	r2, [r3, r5, lsl #2]
	ldr	r3, [r1]
	bic	r3, r3, #28
	orr	r3, r3, #16
	str	r3, [r1]
	mov	r7, #53477376
	b	.L142
.L153:
	movs	r7, #0
	ldr	r2, .L167+20
	movs	r5, #21
	b	.L142
.L154:
	mov	r7, #2097152
	movw	r2, #30000
	b	.L142
.L155:
	mov	r7, #4194304
	mov	r2, #32768
	b	.L142
.L156:
	movs	r7, #0
	mov	r2, r7
.L142:
	tst	r0, #14336
	bne	.L144
	ands	r10, r0, #40
	bne	.L143
	ubfx	r8, r0, #24, #3
	ldr	r0, .L167+24
	str	r2, [sp, #4]
	bl	_SysCtlMemTimingGet
	ldr	fp, .L167+56
	ldr	r6, .L167+28
	str	r0, [fp]
	ldr	r1, [r6]
	ldr	r3, .L167+32
	ldr	ip, .L167+64
	ldr	r9, .L167+48
	ldr	r2, [sp, #4]
	ands	r3, r3, r1
	orr	r3, r3, #-2147483648
	str	r3, [r6]
	subs	r5, r5, #9
	movs	r3, #18
	mla	r3, r3, r8, r5
	ldr	r1, .L167+36
	add	r0, ip, r3, lsl #3
	ldr	lr, [r1]
	ldr	r0, [r0, #4]
	cmp	lr, r0
	mov	lr, r1
	mov	r0, ip
	bne	.L145
	ldr	r3, [ip, r3, lsl #3]
	ldr	r1, [r9]
	orr	r3, r3, #8388608
	cmp	r1, r3
	bne	.L145
.L152:
	ldr	r3, .L167+40
	ldr	r5, .L167+44
	ldr	r3, [r3, r8, lsl #2]
	subs	r1, r4, #1
	add	r8, r1, r3
	ldr	r3, [r9]
	udiv	r8, r8, r4
	ands	r5, r5, r3
	ldr	r4, [r9]
	ldr	r0, [lr]
	ldr	r3, [lr]
	ldr	r1, .L167+48
	str	r1, [sp, #4]
	and	r3, r3, #31
	adds	r3, r3, #1
	udiv	r3, r2, r3
	lsrs	r2, r5, #15
	mul	lr, r2, r3
	lsls	r2, r2, #5
	rsb	r5, r2, r5, lsr #10
	muls	r5, r3, r5
	lsrs	r5, r5, #10
	ubfx	r4, r4, #0, #10
	add	r2, r5, lr, lsr #5
	mla	r3, r4, r3, r2
	ubfx	r4, r0, #8, #5
	adds	r4, r4, #1
	udiv	r4, r3, r4
	udiv	r4, r4, r8
	mov	r0, r4
	bl	_SysCtlMemTimingGet
	str	r0, [fp]
	ldr	r3, [r9]
	ldr	r1, [sp, #4]
	tst	r3, #8388608
	beq	.L146
	cmp	r10, #0
	beq	.L147
	ldr	r3, [r6]
	orr	r3, r3, #1073741824
	str	r3, [r6]
	b	.L147
.L146:
	ldr	r3, [r1]
	orr	r3, r3, #8388608
	str	r3, [r1]
.L147:
	mov	r3, #32768
.L149:
	ldr	r2, .L167+52
	ldr	r2, [r2]
	lsls	r2, r2, #31
	bmi	.L148
	subs	r3, r3, #1
	bne	.L149
	b	.L143
.L144:
	ldr	r0, .L167+20
	str	r2, [sp, #4]
	bl	_SysCtlMemTimingGet
	ldr	r5, .L167+56
	ldr	r1, .L167+48
	str	r0, [r5]
	ldr	r3, [r1]
	ldr	r2, [sp, #4]
	bic	r3, r3, #8388608
	str	r3, [r1]
	ldr	r3, .L167+28
	ldr	r1, .L167+60
	ldr	r0, [r3]
	ands	r1, r1, r0
	orr	r1, r1, #-2147483648
	mov	r8, r5
	str	r1, [r3]
	mov	r5, r3
	cbz	r4, .L157
	udiv	r6, r2, r4
	cbz	r6, .L151
	subs	r6, r6, #1
.L151:
	adds	r4, r6, #1
	udiv	r4, r2, r4
	b	.L150
.L157:
	mov	r6, r4
.L150:
	mov	r0, r4
	bl	_SysCtlMemTimingGet
	str	r0, [r8]
	ldr	r3, [r5]
	orr	r3, r3, #-2147483648
	orrs	r7, r7, r3
	orr	r7, r7, r6, lsl #10
	str	r7, [r5]
	b	.L166
.L145:
	ldr	r3, [r6]
	orrs	r3, r3, r7
	str	r3, [r6]
	movs	r3, #18
	mla	r5, r3, r8, r5
	add	r3, r0, r5, lsl #3
	mov	r10, #1
	ldr	r3, [r3, #4]
	str	r3, [lr]
	ldr	r3, [r9]
	and	r1, r3, #8388608
	ldr	r3, [r0, r5, lsl #3]
	orrs	r3, r3, r1
	str	r3, [r9]
	b	.L152
.L148:
	ldr	r1, [r6]
	add	r8, r8, #-1
	orr	r1, r1, #-1879048192
	orr	r8, r1, r8
	orr	r7, r8, r7
	str	r7, [r6]
.L166:
	mov	r0, r4
.L165:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L168:
	.align	2
.L167:
	.word	1074782208
	.word	1895759872
	.word	268763136
	.word	.LANCHOR1
	.word	1074782332
	.word	16000000
	.word	25000000
	.word	1074782384
	.word	-535823360
	.word	1074782564
	.word	.LANCHOR3
	.word	1047552
	.word	1074782560
	.word	1074782568
	.word	1074782400
	.word	-285211649
	.word	.LANCHOR2
	.size	SysCtlClockFreqSet, .-SysCtlClockFreqSet
	.section	.text.SysCtlClockSet,"ax",%progbits
	.align	1
	.global	SysCtlClockSet
	.thumb
	.thumb_func
	.type	SysCtlClockSet, %function
SysCtlClockSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r5, .L191
	ldr	r6, .L191+4
	ldr	r2, [r5]
	ldr	r8, [r6]
	bic	r4, r2, #4194304
	orr	r4, r4, #2048
	orr	r3, r8, #2048
	lsls	r2, r2, #31
	str	r4, [r5]
	mov	r7, r0
	str	r3, [r6]
	bpl	.L170
	lsls	r0, r7, #31
	bmi	.L170
	orn	r2, r7, #1
	cmp	r3, #0
	and	r4, r4, r2
	ite	lt
	andlt	r3, r8, #48
	andge	r3, r4, #48
	cmp	r3, #48
	str	r4, [r5]
	ite	eq
	moveq	r0, #4096
	movne	r0, #524288
	bl	SysCtlDelay
.L170:
	and	r3, r7, #2032
	bic	r4, r4, #2032
	orrs	r4, r4, r3
	bic	r8, r8, #-2147483648
	ldr	r3, .L191+8
	str	r4, [r5]
	bic	r8, r8, #112
	orr	r8, r8, #2048
	ands	r3, r3, r7
	orr	r3, r8, r3
	and	r8, r7, #8
	orr	r8, r3, r8, lsl #3
	str	r8, [r6]
	movs	r0, #16
	bl	SysCtlDelay
	ldr	r1, .L191+12
	ldr	r10, .L191
	ldr	r9, .L191+4
	bic	r3, r4, #8192
	and	r2, r7, #8192
	bic	r8, r8, #8192
	movs	r0, #64
	str	r0, [r1]
	orrs	r3, r3, r2
	ldr	r1, .L191+16
	orrs	r2, r8, r2
	itet	mi
	strmi	r2, [r9]
	strpl	r3, [r10]
	strmi	r3, [r10]
	bic	r3, r3, #130023424
	and	r1, r1, r7
	bic	r3, r3, #1
	orr	r3, r3, r1
	it	pl
	strpl	r2, [r9]
	lsls	r1, r7, #1
	it	mi
	ldrmi	r1, .L191+20
	bic	r8, r2, #528482304
	and	r2, r7, #528482304
	orr	r2, r8, r2
	itttt	mi
	bicmi	r2, r2, #4194304
	andmi	r1, r1, r7
	orrmi	r3, r3, #4194304
	orrmi	r2, r2, r1
	it	pl
	bicpl	r2, r2, #1073741824
	lsls	r4, r7, #20
	bmi	.L178
	mov	r1, #32768
.L180:
	ldr	r0, .L191+24
	ldr	r0, [r0]
	lsls	r0, r0, #25
	bmi	.L179
	subs	r1, r1, #1
	bne	.L180
.L179:
	bic	r3, r3, #2048
	bic	r2, r2, #2048
.L178:
	str	r3, [r5]
	movs	r0, #16
	str	r2, [r6]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	SysCtlDelay
.L192:
	.align	2
.L191:
	.word	1074782304
	.word	1074782320
	.word	-2147483600
	.word	1074782296
	.word	130023425
	.word	1077936128
	.word	1074782288
	.size	SysCtlClockSet, .-SysCtlClockSet
	.section	.text.SysCtlClockGet,"ax",%progbits
	.align	1
	.global	SysCtlClockGet
	.thumb
	.thumb_func
	.type	SysCtlClockGet, %function
SysCtlClockGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L231
	ldr	r2, [r3]
	adds	r3, r3, #16
	push	{r4, r5, lr}
	ldr	r3, [r3]
	cmp	r3, #0
	bge	.L194
	and	r1, r3, #112
	cmp	r1, #32
	beq	.L196
	bhi	.L197
	cbz	r1, .L198
	cmp	r1, #16
	bne	.L213
	ldr	r0, .L231+4
	b	.L199
.L197:
	cmp	r1, #48
	beq	.L212
	cmp	r1, #112
	bne	.L213
	mov	r0, #32768
	b	.L199
.L194:
	and	r1, r2, #48
	cmp	r1, #16
	beq	.L214
	bhi	.L203
	cbz	r1, .L198
	b	.L213
.L203:
	cmp	r1, #32
	beq	.L204
	cmp	r1, #48
	beq	.L205
	b	.L213
.L198:
	ubfx	r0, r2, #6, #5
	ldr	r1, .L231+8
	cmp	r3, #0
	ldr	r0, [r1, r0, lsl #2]
	bge	.L202
	b	.L199
.L212:
	movw	r0, #30000
.L199:
	tst	r3, #2048
	b	.L229
.L214:
	ldr	r0, .L231+4
.L202:
	tst	r2, #2048
.L229:
	bne	.L207
	ldr	r1, .L231+12
	ldr	r4, [r1]
	ldr	r5, [r1, #4]
	and	r1, r5, #31
	adds	r1, r1, #1
	lsls	r1, r1, #1
	ubfx	r5, r5, #8, #5
	mla	r1, r5, r1, r1
	udiv	r1, r0, r1
	ubfx	r0, r4, #0, #10
	ubfx	r4, r4, #10, #10
	muls	r4, r1, r4
	lsrs	r4, r4, #10
	mla	r0, r0, r1, r4
	orr	r2, r2, #4194304
.L207:
	lsls	r4, r2, #9
	bpl	.L228
	cmp	r3, #0
	bge	.L208
	lsls	r1, r3, #1
	bpl	.L209
	lsls	r2, r3, #20
	bmi	.L209
	lsls	r0, r0, #1
	ubfx	r3, r3, #22, #7
	b	.L230
.L209:
	ubfx	r3, r3, #23, #6
.L230:
	adds	r3, r3, #1
	udiv	r0, r0, r3
	pop	{r4, r5, pc}
.L208:
	ubfx	r2, r2, #23, #4
	adds	r2, r2, #1
	udiv	r0, r0, r2
	pop	{r4, r5, pc}
.L213:
	movs	r0, #0
	pop	{r4, r5, pc}
.L205:
	movw	r0, #30000
	b	.L202
.L196:
	ldr	r0, .L231+16
	b	.L199
.L204:
	ldr	r0, .L231+16
	b	.L202
.L228:
	pop	{r4, r5, pc}
.L232:
	.align	2
.L231:
	.word	1074782304
	.word	16000000
	.word	.LANCHOR1
	.word	1074782560
	.word	4000000
	.size	SysCtlClockGet, .-SysCtlClockGet
	.section	.text.SysCtlDeepSleepClockSet,"ax",%progbits
	.align	1
	.global	SysCtlDeepSleepClockSet
	.thumb
	.thumb_func
	.type	SysCtlDeepSleepClockSet, %function
SysCtlDeepSleepClockSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L234
	str	r0, [r3]
	bx	lr
.L235:
	.align	2
.L234:
	.word	1074782532
	.size	SysCtlDeepSleepClockSet, .-SysCtlDeepSleepClockSet
	.section	.text.SysCtlDeepSleepClockConfigSet,"ax",%progbits
	.align	1
	.global	SysCtlDeepSleepClockConfigSet
	.thumb
	.thumb_func
	.type	SysCtlDeepSleepClockConfigSet, %function
SysCtlDeepSleepClockConfigSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L253
	ldr	r2, [r3]
	ldr	r3, .L253+4
	ands	r3, r3, r2
	ldr	r2, .L253+8
	cmp	r3, r2
	push	{r4, lr}
	add	r0, r0, #-1
	ldr	r4, .L253+12
	bne	.L237
	bic	r1, r1, #528482304
	orr	r3, r1, r0, lsl #23
	str	r3, [r4]
	pop	{r4, pc}
.L237:
	and	r2, r1, #112
	cmp	r2, #48
	mov	r3, r0
	beq	.L240
	cmp	r2, #112
	beq	.L241
	cbnz	r2, .L252
	orr	r3, r0, #3145728
	ldr	r0, .L253+16
	b	.L239
.L240:
	orr	r3, r0, #2097152
	movw	r0, #30000
	b	.L239
.L241:
	orr	r3, r0, #4194304
	mov	r0, #32768
	b	.L239
.L252:
	ldr	r0, .L253+20
.L239:
	lsls	r2, r1, #30
	it	mi
	orrmi	r3, r3, #-2147483648
	lsls	r2, r1, #1
	it	mi
	orrmi	r3, r3, #1073741824
	str	r3, [r4]
	bl	_SysCtlMemTimingGet
	ldr	r3, .L253+24
	str	r0, [r3]
	pop	{r4, pc}
.L254:
	.align	2
.L253:
	.word	1074782208
	.word	1895759872
	.word	268763136
	.word	1074782532
	.word	25000000
	.word	16000000
	.word	1074782408
	.size	SysCtlDeepSleepClockConfigSet, .-SysCtlDeepSleepClockConfigSet
	.section	.text.SysCtlPWMClockSet,"ax",%progbits
	.align	1
	.global	SysCtlPWMClockSet
	.thumb
	.thumb_func
	.type	SysCtlPWMClockSet, %function
SysCtlPWMClockSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L256
	ldr	r3, [r2]
	bic	r3, r3, #1966080
	orrs	r0, r0, r3
	str	r0, [r2]
	bx	lr
.L257:
	.align	2
.L256:
	.word	1074782304
	.size	SysCtlPWMClockSet, .-SysCtlPWMClockSet
	.section	.text.SysCtlPWMClockGet,"ax",%progbits
	.align	1
	.global	SysCtlPWMClockGet
	.thumb
	.thumb_func
	.type	SysCtlPWMClockGet, %function
SysCtlPWMClockGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L263
	ldr	r0, [r3]
	ands	r0, r0, #1048576
	itt	ne
	ldrne	r0, [r3]
	andne	r0, r0, #1966080
	bx	lr
.L264:
	.align	2
.L263:
	.word	1074782304
	.size	SysCtlPWMClockGet, .-SysCtlPWMClockGet
	.section	.text.SysCtlADCSpeedSet,"ax",%progbits
	.align	1
	.global	SysCtlADCSpeedSet
	.thumb
	.thumb_func
	.type	SysCtlADCSpeedSet, %function
SysCtlADCSpeedSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L266
	ldr	r3, [r2]
	bic	r3, r3, #3840
	orrs	r3, r3, r0
	str	r3, [r2]
	ldr	r3, [r2, #16]
	bic	r3, r3, #3840
	orrs	r0, r0, r3
	str	r0, [r2, #16]
	bx	lr
.L267:
	.align	2
.L266:
	.word	1074782464
	.size	SysCtlADCSpeedSet, .-SysCtlADCSpeedSet
	.section	.text.SysCtlADCSpeedGet,"ax",%progbits
	.align	1
	.global	SysCtlADCSpeedGet
	.thumb
	.thumb_func
	.type	SysCtlADCSpeedGet, %function
SysCtlADCSpeedGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L269
	ldr	r0, [r3]
	and	r0, r0, #3840
	bx	lr
.L270:
	.align	2
.L269:
	.word	1074782464
	.size	SysCtlADCSpeedGet, .-SysCtlADCSpeedGet
	.section	.text.SysCtlGPIOAHBEnable,"ax",%progbits
	.align	1
	.global	SysCtlGPIOAHBEnable
	.thumb
	.thumb_func
	.type	SysCtlGPIOAHBEnable, %function
SysCtlGPIOAHBEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L272
	and	r0, r0, #15
	ldr	r3, [r1]
	movs	r2, #1
	lsls	r2, r2, r0
	orrs	r3, r3, r2
	str	r3, [r1]
	bx	lr
.L273:
	.align	2
.L272:
	.word	1074782316
	.size	SysCtlGPIOAHBEnable, .-SysCtlGPIOAHBEnable
	.section	.text.SysCtlGPIOAHBDisable,"ax",%progbits
	.align	1
	.global	SysCtlGPIOAHBDisable
	.thumb
	.thumb_func
	.type	SysCtlGPIOAHBDisable, %function
SysCtlGPIOAHBDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L275
	and	r0, r0, #15
	ldr	r3, [r1]
	movs	r2, #1
	lsls	r2, r2, r0
	bic	r3, r3, r2
	str	r3, [r1]
	bx	lr
.L276:
	.align	2
.L275:
	.word	1074782316
	.size	SysCtlGPIOAHBDisable, .-SysCtlGPIOAHBDisable
	.section	.text.SysCtlUSBPLLEnable,"ax",%progbits
	.align	1
	.global	SysCtlUSBPLLEnable
	.thumb
	.thumb_func
	.type	SysCtlUSBPLLEnable, %function
SysCtlUSBPLLEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L278
	ldr	r3, [r2]
	bic	r3, r3, #16384
	str	r3, [r2]
	bx	lr
.L279:
	.align	2
.L278:
	.word	1074782320
	.size	SysCtlUSBPLLEnable, .-SysCtlUSBPLLEnable
	.section	.text.SysCtlUSBPLLDisable,"ax",%progbits
	.align	1
	.global	SysCtlUSBPLLDisable
	.thumb
	.thumb_func
	.type	SysCtlUSBPLLDisable, %function
SysCtlUSBPLLDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L281
	ldr	r3, [r2]
	orr	r3, r3, #16384
	str	r3, [r2]
	bx	lr
.L282:
	.align	2
.L281:
	.word	1074782320
	.size	SysCtlUSBPLLDisable, .-SysCtlUSBPLLDisable
	.section	.text.SysCtlVoltageEventConfig,"ax",%progbits
	.align	1
	.global	SysCtlVoltageEventConfig
	.thumb
	.thumb_func
	.type	SysCtlVoltageEventConfig, %function
SysCtlVoltageEventConfig:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L284
	str	r0, [r3]
	bx	lr
.L285:
	.align	2
.L284:
	.word	1074782264
	.size	SysCtlVoltageEventConfig, .-SysCtlVoltageEventConfig
	.section	.text.SysCtlVoltageEventStatus,"ax",%progbits
	.align	1
	.global	SysCtlVoltageEventStatus
	.thumb
	.thumb_func
	.type	SysCtlVoltageEventStatus, %function
SysCtlVoltageEventStatus:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L287
	ldr	r0, [r3]
	bx	lr
.L288:
	.align	2
.L287:
	.word	1074782304
	.size	SysCtlVoltageEventStatus, .-SysCtlVoltageEventStatus
	.section	.text.SysCtlVoltageEventClear,"ax",%progbits
	.align	1
	.global	SysCtlVoltageEventClear
	.thumb
	.thumb_func
	.type	SysCtlVoltageEventClear, %function
SysCtlVoltageEventClear:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L290
	ldr	r3, [r2]
	orrs	r0, r0, r3
	str	r0, [r2]
	bx	lr
.L291:
	.align	2
.L290:
	.word	1074782304
	.size	SysCtlVoltageEventClear, .-SysCtlVoltageEventClear
	.section	.text.SysCtlNMIStatus,"ax",%progbits
	.align	1
	.global	SysCtlNMIStatus
	.thumb
	.thumb_func
	.type	SysCtlNMIStatus, %function
SysCtlNMIStatus:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L293
	ldr	r0, [r3]
	bx	lr
.L294:
	.align	2
.L293:
	.word	1074782308
	.size	SysCtlNMIStatus, .-SysCtlNMIStatus
	.section	.text.SysCtlNMIClear,"ax",%progbits
	.align	1
	.global	SysCtlNMIClear
	.thumb
	.thumb_func
	.type	SysCtlNMIClear, %function
SysCtlNMIClear:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L296
	ldr	r3, [r2]
	bic	r0, r3, r0
	str	r0, [r2]
	bx	lr
.L297:
	.align	2
.L296:
	.word	1074782308
	.size	SysCtlNMIClear, .-SysCtlNMIClear
	.section	.text.SysCtlClockOutConfig,"ax",%progbits
	.align	1
	.global	SysCtlClockOutConfig
	.thumb
	.thumb_func
	.type	SysCtlClockOutConfig, %function
SysCtlClockOutConfig:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r1, r1, #1
	uxtb	r1, r1
	ldr	r3, .L299
	orrs	r0, r0, r1
	str	r0, [r3]
	bx	lr
.L300:
	.align	2
.L299:
	.word	1074782536
	.size	SysCtlClockOutConfig, .-SysCtlClockOutConfig
	.section	.text.SysCtlAltClkConfig,"ax",%progbits
	.align	1
	.global	SysCtlAltClkConfig
	.thumb
	.thumb_func
	.type	SysCtlAltClkConfig, %function
SysCtlAltClkConfig:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L302
	str	r0, [r3]
	bx	lr
.L303:
	.align	2
.L302:
	.word	1074782520
	.size	SysCtlAltClkConfig, .-SysCtlAltClkConfig
	.section	.rodata.g_pppui32XTALtoVCO,"a",%progbits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	g_pppui32XTALtoVCO, %object
	.size	g_pppui32XTALtoVCO, 288
g_pppui32XTALtoVCO:
	.word	64
	.word	0
	.word	524350
	.word	0
	.word	160
	.word	2
	.word	87092
	.word	0
	.word	421931
	.word	0
	.word	40
	.word	0
	.word	65575
	.word	0
	.word	32
	.word	0
	.word	80
	.word	2
	.word	44058
	.word	0
	.word	627735
	.word	0
	.word	366614
	.word	0
	.word	20
	.word	0
	.word	557075
	.word	0
	.word	160
	.word	8
	.word	16
	.word	0
	.word	40
	.word	2
	.word	64
	.word	4
	.word	96
	.word	0
	.word	786525
	.word	0
	.word	80
	.word	0
	.word	131150
	.word	0
	.word	109633
	.word	0
	.word	60
	.word	0
	.word	622650
	.word	0
	.word	48
	.word	0
	.word	40
	.word	0
	.word	65575
	.word	0
	.word	417827
	.word	0
	.word	548897
	.word	0
	.word	30
	.word	0
	.word	311325
	.word	0
	.word	80
	.word	2
	.word	24
	.word	0
	.word	20
	.word	0
	.word	96
	.word	4
	.section	.rodata.g_pui32VCOFrequencies,"a",%progbits
	.align	2
	.set	.LANCHOR3,. + 0
	.type	g_pui32VCOFrequencies, %object
	.size	g_pui32VCOFrequencies, 8
g_pui32VCOFrequencies:
	.word	320000000
	.word	480000000
	.section	.rodata.g_sXTALtoMEMTIM,"a",%progbits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	g_sXTALtoMEMTIM, %object
	.size	g_sXTALtoMEMTIM, 56
g_sXTALtoMEMTIM:
	.word	16000000
	.word	3145776
	.word	30000000
	.word	7405681
	.word	50000000
	.word	11665586
	.word	60000000
	.word	13828307
	.word	80000000
	.word	18088212
	.word	100000000
	.word	22348117
	.word	120000000
	.word	26608022
	.section	.rodata.g_pui32Xtals,"a",%progbits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	g_pui32Xtals, %object
	.size	g_pui32Xtals, 108
g_pui32Xtals:
	.word	1000000
	.word	1843200
	.word	2000000
	.word	2457600
	.word	3579545
	.word	3686400
	.word	4000000
	.word	4096000
	.word	4915200
	.word	5000000
	.word	5120000
	.word	6000000
	.word	6144000
	.word	7372800
	.word	8000000
	.word	8192000
	.word	10000000
	.word	12000000
	.word	12288000
	.word	13560000
	.word	14318180
	.word	16000000
	.word	16384000
	.word	18000000
	.word	20000000
	.word	24000000
	.word	25000000
	.ident	"GCC: (15:4.9.3+svn227297-1) 4.9.3 20150529 (prerelease)"
