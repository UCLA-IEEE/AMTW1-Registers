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
	.file	"interrupt.c"
	.section	.text._IntDefaultHandler,"ax",%progbits
	.align	1
	.thumb
	.thumb_func
	.type	_IntDefaultHandler, %function
_IntDefaultHandler:
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.L2:
	b	.L2
	.size	_IntDefaultHandler, .-_IntDefaultHandler
	.section	.text.IntMasterEnable,"ax",%progbits
	.align	1
	.global	IntMasterEnable
	.thumb
	.thumb_func
	.type	IntMasterEnable, %function
IntMasterEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	bl	CPUcpsie
	adds	r0, r0, #0
	it	ne
	movne	r0, #1
	pop	{r3, pc}
	.size	IntMasterEnable, .-IntMasterEnable
	.section	.text.IntMasterDisable,"ax",%progbits
	.align	1
	.global	IntMasterDisable
	.thumb
	.thumb_func
	.type	IntMasterDisable, %function
IntMasterDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	bl	CPUcpsid
	adds	r0, r0, #0
	it	ne
	movne	r0, #1
	pop	{r3, pc}
	.size	IntMasterDisable, .-IntMasterDisable
	.section	.text.IntRegister,"ax",%progbits
	.align	1
	.global	IntRegister
	.thumb
	.thumb_func
	.type	IntRegister, %function
IntRegister:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L10
	push	{r4, r5, r6, r7, lr}
	ldr	r2, [r3]
	ldr	r4, .L10+4
	cmp	r2, r4
	mov	r5, r4
	beq	.L6
	ldr	r7, [r3]
	movs	r2, #0
.L7:
	ldr	r6, [r2, r7]
	str	r6, [r5, r2]
	adds	r2, r2, #4
	cmp	r2, #620
	bne	.L7
	str	r4, [r3]
.L6:
	str	r1, [r5, r0, lsl #2]
	pop	{r4, r5, r6, r7, pc}
.L11:
	.align	2
.L10:
	.word	-536810232
	.word	.LANCHOR0
	.size	IntRegister, .-IntRegister
	.section	.text.IntUnregister,"ax",%progbits
	.align	1
	.global	IntUnregister
	.thumb
	.thumb_func
	.type	IntUnregister, %function
IntUnregister:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L13
	ldr	r2, .L13+4
	str	r2, [r3, r0, lsl #2]
	bx	lr
.L14:
	.align	2
.L13:
	.word	.LANCHOR0
	.word	_IntDefaultHandler
	.size	IntUnregister, .-IntUnregister
	.section	.text.IntPriorityGroupingSet,"ax",%progbits
	.align	1
	.global	IntPriorityGroupingSet
	.thumb
	.thumb_func
	.type	IntPriorityGroupingSet, %function
IntPriorityGroupingSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L16
	ldr	r2, .L16+4
	ldr	r3, [r3, r0, lsl #2]
	orr	r3, r3, #100139008
	orr	r3, r3, #131072
	str	r3, [r2]
	bx	lr
.L17:
	.align	2
.L16:
	.word	.LANCHOR1
	.word	-536810228
	.size	IntPriorityGroupingSet, .-IntPriorityGroupingSet
	.section	.text.IntPriorityGroupingGet,"ax",%progbits
	.align	1
	.global	IntPriorityGroupingGet
	.thumb
	.thumb_func
	.type	IntPriorityGroupingGet, %function
IntPriorityGroupingGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L22
	ldr	r3, [r3]
	movs	r0, #0
	and	r3, r3, #1792
.L20:
	ldr	r2, .L22+4
	ldr	r2, [r2, r0, lsl #2]
	cmp	r3, r2
	beq	.L19
	adds	r0, r0, #1
	cmp	r0, #8
	bne	.L20
.L19:
	bx	lr
.L23:
	.align	2
.L22:
	.word	-536810228
	.word	.LANCHOR1
	.size	IntPriorityGroupingGet, .-IntPriorityGroupingGet
	.section	.text.IntPrioritySet,"ax",%progbits
	.align	1
	.global	IntPrioritySet
	.thumb
	.thumb_func
	.type	IntPrioritySet, %function
IntPrioritySet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	lsrs	r2, r0, #2
	ldr	r3, .L25
	push	{r4, lr}
	ldr	r4, [r3, r2, lsl #2]
	and	r0, r0, #3
	ldr	r2, [r4]
	lsls	r0, r0, #3
	movs	r3, #255
	lsls	r3, r3, r0
	bic	r3, r2, r3
	lsls	r1, r1, r0
	orrs	r1, r1, r3
	str	r1, [r4]
	pop	{r4, pc}
.L26:
	.align	2
.L25:
	.word	.LANCHOR2
	.size	IntPrioritySet, .-IntPrioritySet
	.section	.text.IntPriorityGet,"ax",%progbits
	.align	1
	.global	IntPriorityGet
	.thumb
	.thumb_func
	.type	IntPriorityGet, %function
IntPriorityGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	lsrs	r2, r0, #2
	ldr	r3, .L28
	ldr	r3, [r3, r2, lsl #2]
	ldr	r2, [r3]
	and	r3, r0, #3
	lsls	r3, r3, #3
	lsr	r0, r2, r3
	uxtb	r0, r0
	bx	lr
.L29:
	.align	2
.L28:
	.word	.LANCHOR2
	.size	IntPriorityGet, .-IntPriorityGet
	.section	.text.IntEnable,"ax",%progbits
	.align	1
	.global	IntEnable
	.thumb
	.thumb_func
	.type	IntEnable, %function
IntEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #4
	bne	.L31
	ldr	r2, .L37
	ldr	r3, [r2]
	orr	r3, r3, #65536
	b	.L36
.L31:
	cmp	r0, #5
	bne	.L33
	ldr	r2, .L37
	ldr	r3, [r2]
	orr	r3, r3, #131072
	b	.L36
.L33:
	cmp	r0, #6
	bne	.L34
	ldr	r2, .L37
	ldr	r3, [r2]
	orr	r3, r3, #262144
	b	.L36
.L34:
	cmp	r0, #15
	bne	.L35
	ldr	r2, .L37+4
	ldr	r3, [r2]
	orr	r3, r3, #2
	b	.L36
.L35:
	bls	.L30
	subs	r0, r0, #16
	lsrs	r2, r0, #5
	ldr	r3, .L37+8
	and	r0, r0, #31
	ldr	r2, [r3, r2, lsl #2]
	movs	r3, #1
	lsls	r3, r3, r0
.L36:
	str	r3, [r2]
.L30:
	bx	lr
.L38:
	.align	2
.L37:
	.word	-536810204
	.word	-536813552
	.word	.LANCHOR3
	.size	IntEnable, .-IntEnable
	.section	.text.IntDisable,"ax",%progbits
	.align	1
	.global	IntDisable
	.thumb
	.thumb_func
	.type	IntDisable, %function
IntDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #4
	bne	.L40
	ldr	r2, .L46
	ldr	r3, [r2]
	bic	r3, r3, #65536
	b	.L45
.L40:
	cmp	r0, #5
	bne	.L42
	ldr	r2, .L46
	ldr	r3, [r2]
	bic	r3, r3, #131072
	b	.L45
.L42:
	cmp	r0, #6
	bne	.L43
	ldr	r2, .L46
	ldr	r3, [r2]
	bic	r3, r3, #262144
	b	.L45
.L43:
	cmp	r0, #15
	bne	.L44
	ldr	r2, .L46+4
	ldr	r3, [r2]
	bic	r3, r3, #2
	b	.L45
.L44:
	bls	.L39
	subs	r0, r0, #16
	lsrs	r2, r0, #5
	ldr	r3, .L46+8
	and	r0, r0, #31
	ldr	r2, [r3, r2, lsl #2]
	movs	r3, #1
	lsls	r3, r3, r0
.L45:
	str	r3, [r2]
.L39:
	bx	lr
.L47:
	.align	2
.L46:
	.word	-536810204
	.word	-536813552
	.word	.LANCHOR4
	.size	IntDisable, .-IntDisable
	.section	.text.IntIsEnabled,"ax",%progbits
	.align	1
	.global	IntIsEnabled
	.thumb
	.thumb_func
	.type	IntIsEnabled, %function
IntIsEnabled:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #4
	bne	.L49
	ldr	r3, .L55
	ldr	r0, [r3]
	and	r0, r0, #65536
	bx	lr
.L49:
	cmp	r0, #5
	bne	.L51
	ldr	r3, .L55
	ldr	r0, [r3]
	and	r0, r0, #131072
	bx	lr
.L51:
	cmp	r0, #6
	bne	.L52
	ldr	r3, .L55
	ldr	r0, [r3]
	and	r0, r0, #262144
	bx	lr
.L52:
	cmp	r0, #15
	bne	.L53
	ldr	r3, .L55+4
	ldr	r0, [r3]
	and	r0, r0, #2
	bx	lr
.L53:
	itttt	hi
	subhi	r0, r0, #16
	lsrhi	r2, r0, #5
	ldrhi	r3, .L55+8
	ldrhi	r3, [r3, r2, lsl #2]
	itttt	hi
	andhi	r2, r0, #31
	ldrhi	r3, [r3]
	movhi	r0, #1
	lslhi	r0, r0, r2
	ite	hi
	andhi	r0, r0, r3
	movls	r0, #0
	bx	lr
.L56:
	.align	2
.L55:
	.word	-536810204
	.word	-536813552
	.word	.LANCHOR3
	.size	IntIsEnabled, .-IntIsEnabled
	.section	.text.IntPendSet,"ax",%progbits
	.align	1
	.global	IntPendSet
	.thumb
	.thumb_func
	.type	IntPendSet, %function
IntPendSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #2
	bne	.L58
	ldr	r2, .L63
	ldr	r3, [r2]
	orr	r3, r3, #-2147483648
	b	.L62
.L58:
	cmp	r0, #14
	bne	.L60
	ldr	r2, .L63
	ldr	r3, [r2]
	orr	r3, r3, #268435456
	b	.L62
.L60:
	cmp	r0, #15
	bne	.L61
	ldr	r2, .L63
	ldr	r3, [r2]
	orr	r3, r3, #67108864
	b	.L62
.L61:
	bls	.L57
	subs	r0, r0, #16
	lsrs	r2, r0, #5
	ldr	r3, .L63+4
	and	r0, r0, #31
	ldr	r2, [r3, r2, lsl #2]
	movs	r3, #1
	lsls	r3, r3, r0
.L62:
	str	r3, [r2]
.L57:
	bx	lr
.L64:
	.align	2
.L63:
	.word	-536810236
	.word	.LANCHOR5
	.size	IntPendSet, .-IntPendSet
	.section	.text.IntPendClear,"ax",%progbits
	.align	1
	.global	IntPendClear
	.thumb
	.thumb_func
	.type	IntPendClear, %function
IntPendClear:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #14
	bne	.L66
	ldr	r2, .L70
	ldr	r3, [r2]
	orr	r3, r3, #134217728
	b	.L69
.L66:
	cmp	r0, #15
	bne	.L68
	ldr	r2, .L70
	ldr	r3, [r2]
	orr	r3, r3, #33554432
	b	.L69
.L68:
	bls	.L65
	subs	r0, r0, #16
	lsrs	r2, r0, #5
	ldr	r3, .L70+4
	and	r0, r0, #31
	ldr	r2, [r3, r2, lsl #2]
	movs	r3, #1
	lsls	r3, r3, r0
.L69:
	str	r3, [r2]
.L65:
	bx	lr
.L71:
	.align	2
.L70:
	.word	-536810236
	.word	.LANCHOR6
	.size	IntPendClear, .-IntPendClear
	.section	.text.IntPriorityMaskSet,"ax",%progbits
	.align	1
	.global	IntPriorityMaskSet
	.thumb
	.thumb_func
	.type	IntPriorityMaskSet, %function
IntPriorityMaskSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	CPUbasepriSet
	.size	IntPriorityMaskSet, .-IntPriorityMaskSet
	.section	.text.IntPriorityMaskGet,"ax",%progbits
	.align	1
	.global	IntPriorityMaskGet
	.thumb
	.thumb_func
	.type	IntPriorityMaskGet, %function
IntPriorityMaskGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	CPUbasepriGet
	.size	IntPriorityMaskGet, .-IntPriorityMaskGet
	.section	.text.IntTrigger,"ax",%progbits
	.align	1
	.global	IntTrigger
	.thumb
	.thumb_func
	.type	IntTrigger, %function
IntTrigger:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L75
	subs	r0, r0, #16
	str	r0, [r3]
	bx	lr
.L76:
	.align	2
.L75:
	.word	-536809728
	.size	IntTrigger, .-IntTrigger
	.section	.rodata.g_pui32Priority,"a",%progbits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	g_pui32Priority, %object
	.size	g_pui32Priority, 32
g_pui32Priority:
	.word	1792
	.word	1536
	.word	1280
	.word	1024
	.word	768
	.word	512
	.word	256
	.word	0
	.section	.rodata.g_pui32Dii16Regs,"a",%progbits
	.align	2
	.set	.LANCHOR4,. + 0
	.type	g_pui32Dii16Regs, %object
	.size	g_pui32Dii16Regs, 20
g_pui32Dii16Regs:
	.word	-536813184
	.word	-536813180
	.word	-536813176
	.word	-536813172
	.word	-536813168
	.section	.rodata.g_pui32PendRegs,"a",%progbits
	.align	2
	.set	.LANCHOR5,. + 0
	.type	g_pui32PendRegs, %object
	.size	g_pui32PendRegs, 20
g_pui32PendRegs:
	.word	-536813056
	.word	-536813052
	.word	-536813048
	.word	-536813044
	.word	-536813040
	.section	vtable,"aw",%progbits
	.align	10
	.set	.LANCHOR0,. + 0
	.type	g_pfnRAMVectors, %object
	.size	g_pfnRAMVectors, 620
g_pfnRAMVectors:
	.space	620
	.section	.rodata.g_pui32Regs,"a",%progbits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	g_pui32Regs, %object
	.size	g_pui32Regs, 156
g_pui32Regs:
	.word	0
	.word	-536810216
	.word	-536810212
	.word	-536810208
	.word	-536812544
	.word	-536812540
	.word	-536812536
	.word	-536812532
	.word	-536812528
	.word	-536812524
	.word	-536812520
	.word	-536812516
	.word	-536812512
	.word	-536812508
	.word	-536812504
	.word	-536812500
	.word	-536812496
	.word	-536812492
	.word	-536812488
	.word	-536812484
	.word	-536812480
	.word	-536812476
	.word	-536812472
	.word	-536812468
	.word	-536812464
	.word	-536812460
	.word	-536812456
	.word	-536812452
	.word	-536812448
	.word	-536812444
	.word	-536812440
	.word	-536812436
	.word	-536812432
	.word	-536812428
	.word	-536812424
	.word	-536812420
	.word	-536812416
	.word	-536812412
	.word	-536812408
	.section	.rodata.g_pui32EnRegs,"a",%progbits
	.align	2
	.set	.LANCHOR3,. + 0
	.type	g_pui32EnRegs, %object
	.size	g_pui32EnRegs, 20
g_pui32EnRegs:
	.word	-536813312
	.word	-536813308
	.word	-536813304
	.word	-536813300
	.word	-536813296
	.section	.rodata.g_pui32UnpendRegs,"a",%progbits
	.align	2
	.set	.LANCHOR6,. + 0
	.type	g_pui32UnpendRegs, %object
	.size	g_pui32UnpendRegs, 20
g_pui32UnpendRegs:
	.word	-536812928
	.word	-536812924
	.word	-536812920
	.word	-536812916
	.word	-536812912
	.ident	"GCC: (15:4.9.3+svn227297-1) 4.9.3 20150529 (prerelease)"
