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
	.file	"flash.c"
	.section	.text.FlashErase,"ax",%progbits
	.align	1
	.global	FlashErase
	.thumb
	.thumb_func
	.type	FlashErase, %function
FlashErase:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L5
	movw	r2, #2561
	str	r2, [r3]
	str	r0, [r3, #-20]
	subs	r3, r3, #12
	ldr	r2, .L5+4
	str	r2, [r3]
.L2:
	ldr	r2, [r3]
	lsls	r2, r2, #30
	bmi	.L2
	ldr	r3, .L5+8
	ldr	r3, [r3]
	movw	r0, #2561
	ands	r0, r0, r3
	adds	r0, r0, #0
	it	ne
	movne	r0, #1
	negs	r0, r0
	bx	lr
.L6:
	.align	2
.L5:
	.word	1074778132
	.word	-1539178494
	.word	1074778124
	.size	FlashErase, .-FlashErase
	.section	.text.FlashProgram,"ax",%progbits
	.align	1
	.global	FlashProgram
	.thumb
	.thumb_func
	.type	FlashProgram, %function
FlashProgram:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L18
	push	{r4, r5, r6, lr}
	movw	r4, #9729
	str	r4, [r3]
.L8:
	cbz	r2, .L17
	ldr	r4, .L18+4
	bic	r3, r1, #127
	str	r3, [r4]
	mov	r4, r0
.L9:
	subs	r3, r1, r0
	add	r3, r3, r4
	ands	r5, r3, #124
	bne	.L10
	ldr	r6, .L18+8
	ldr	r6, [r6]
	cbnz	r6, .L15
.L10:
	cbz	r2, .L15
	ldr	r3, .L18+12
	add	r3, r3, r5
	ldr	r5, [r4], #4
	str	r5, [r3]
	subs	r2, r2, #4
	b	.L9
.L15:
	mov	r1, r3
	ldr	r3, .L18+16
	ldr	r0, .L18+20
	str	r0, [r3]
.L13:
	ldr	r0, [r3]
	lsls	r0, r0, #31
	bmi	.L13
	mov	r0, r4
	b	.L8
.L17:
	ldr	r3, .L18+24
	ldr	r3, [r3]
	movw	r0, #9729
	ands	r0, r0, r3
	adds	r0, r0, #0
	it	ne
	movne	r0, #1
	negs	r0, r0
	pop	{r4, r5, r6, pc}
.L19:
	.align	2
.L18:
	.word	1074778132
	.word	1074778112
	.word	1074778160
	.word	1074778368
	.word	1074778144
	.word	-1539178495
	.word	1074778124
	.size	FlashProgram, .-FlashProgram
	.section	.text.FlashProtectGet,"ax",%progbits
	.align	1
	.global	FlashProtectGet
	.thumb
	.thumb_func
	.type	FlashProtectGet, %function
FlashProtectGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ubfx	r3, r0, #16, #2
	ldr	r1, .L25
	ldr	r1, [r1, r3, lsl #2]
	mov	r2, r0
	ldr	r0, [r1]
	ldr	r1, .L25+4
	ldr	r3, [r1, r3, lsl #2]
	ldr	r3, [r3]
	ubfx	r2, r2, #11, #5
	lsrs	r0, r0, r2
	lsrs	r3, r3, r2
	and	r0, r0, #1
	and	r3, r3, #1
	orr	r0, r3, r0, lsl #1
	cmp	r0, #1
	bls	.L24
	subs	r3, r0, #2
	rsbs	r0, r3, #0
	adcs	r0, r0, r3
	bx	lr
.L24:
	movs	r0, #2
	bx	lr
.L26:
	.align	2
.L25:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.size	FlashProtectGet, .-FlashProtectGet
	.section	.text.FlashProtectSet,"ax",%progbits
	.align	1
	.global	FlashProtectSet
	.thumb
	.thumb_func
	.type	FlashProtectSet, %function
FlashProtectSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ubfx	r3, r0, #16, #2
	push	{r4, r5, r6, lr}
	ldr	r2, .L36
	ldr	r4, .L36+4
	ldr	r5, [r2, r3, lsl #2]
	ldr	r4, [r4, r3, lsl #2]
	ldr	r2, [r5]
	ldr	r3, [r4]
	cmp	r1, #1
	ubfx	r0, r0, #11, #5
	beq	.L29
	cmp	r1, #2
	bne	.L35
	movs	r1, #1
	lsls	r1, r1, r0
	mvns	r1, r1
	ands	r2, r2, r1
	ands	r3, r3, r1
	b	.L31
.L29:
	lsr	r6, r2, r0
	lsls	r6, r6, #31
	bpl	.L34
	lsls	r1, r1, r0
	bic	r3, r3, r1
	b	.L31
.L35:
	lsrs	r2, r2, r0
	lsls	r2, r2, #31
	bpl	.L34
	lsrs	r3, r3, r0
	and	r0, r3, #1
	eor	r0, r0, #1
	negs	r0, r0
	pop	{r4, r5, r6, pc}
.L31:
	str	r2, [r5]
	movs	r0, #0
	str	r3, [r4]
	pop	{r4, r5, r6, pc}
.L34:
	mov	r0, #-1
	pop	{r4, r5, r6, pc}
.L37:
	.align	2
.L36:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.size	FlashProtectSet, .-FlashProtectSet
	.section	.text.FlashProtectSave,"ax",%progbits
	.align	1
	.global	FlashProtectSave
	.thumb
	.thumb_func
	.type	FlashProtectSave, %function
FlashProtectSave:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r3, #0
.L40:
	ldr	r2, .L43
	ldr	r1, .L43+4
	str	r3, [r2]
	adds	r2, r2, #8
	str	r1, [r2]
.L39:
	ldr	r0, [r2]
	ands	r0, r0, #8
	bne	.L39
	adds	r3, r3, #1
	cmp	r3, #8
	bne	.L40
	bx	lr
.L44:
	.align	2
.L43:
	.word	1074778112
	.word	-1539178488
	.size	FlashProtectSave, .-FlashProtectSave
	.section	.text.FlashUserGet,"ax",%progbits
	.align	1
	.global	FlashUserGet
	.thumb
	.thumb_func
	.type	FlashUserGet, %function
FlashUserGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L46
	ldr	r3, [r3]
	str	r3, [r0]
	ldr	r3, .L46+4
	ldr	r3, [r3]
	str	r3, [r1]
	movs	r0, #0
	bx	lr
.L47:
	.align	2
.L46:
	.word	1074782688
	.word	1074782692
	.size	FlashUserGet, .-FlashUserGet
	.section	.text.FlashUserSet,"ax",%progbits
	.align	1
	.global	FlashUserSet
	.thumb
	.thumb_func
	.type	FlashUserSet, %function
FlashUserSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L49
	str	r0, [r3]
	str	r1, [r3, #4]
	movs	r0, #0
	bx	lr
.L50:
	.align	2
.L49:
	.word	1074782688
	.size	FlashUserSet, .-FlashUserSet
	.section	.text.FlashUserSave,"ax",%progbits
	.align	1
	.global	FlashUserSave
	.thumb
	.thumb_func
	.type	FlashUserSave, %function
FlashUserSave:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L56
	ldr	r2, .L56+4
	mov	r3, #-2147483648
	str	r3, [r1]
	ldr	r3, .L56+8
	str	r2, [r3]
.L52:
	ldr	r0, [r3]
	lsls	r0, r0, #28
	bmi	.L52
	ldr	r0, .L56+12
	str	r0, [r1]
	ldr	r1, .L56+8
	str	r2, [r1]
.L53:
	ldr	r0, [r3]
	ands	r0, r0, #8
	bne	.L53
	bx	lr
.L57:
	.align	2
.L56:
	.word	1074778112
	.word	-1539178488
	.word	1074778120
	.word	-2147483647
	.size	FlashUserSave, .-FlashUserSave
	.section	.text.FlashIntRegister,"ax",%progbits
	.align	1
	.global	FlashIntRegister
	.thumb
	.thumb_func
	.type	FlashIntRegister, %function
FlashIntRegister:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	mov	r1, r0
	movs	r0, #45
	bl	IntRegister
	movs	r0, #45
	pop	{r3, lr}
	b	IntEnable
	.size	FlashIntRegister, .-FlashIntRegister
	.section	.text.FlashIntUnregister,"ax",%progbits
	.align	1
	.global	FlashIntUnregister
	.thumb
	.thumb_func
	.type	FlashIntUnregister, %function
FlashIntUnregister:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	movs	r0, #45
	bl	IntDisable
	movs	r0, #45
	pop	{r3, lr}
	b	IntUnregister
	.size	FlashIntUnregister, .-FlashIntUnregister
	.section	.text.FlashIntEnable,"ax",%progbits
	.align	1
	.global	FlashIntEnable
	.thumb
	.thumb_func
	.type	FlashIntEnable, %function
FlashIntEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L61
	ldr	r3, [r2]
	orrs	r0, r0, r3
	str	r0, [r2]
	bx	lr
.L62:
	.align	2
.L61:
	.word	1074778128
	.size	FlashIntEnable, .-FlashIntEnable
	.section	.text.FlashIntDisable,"ax",%progbits
	.align	1
	.global	FlashIntDisable
	.thumb
	.thumb_func
	.type	FlashIntDisable, %function
FlashIntDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L64
	ldr	r3, [r2]
	bic	r0, r3, r0
	str	r0, [r2]
	bx	lr
.L65:
	.align	2
.L64:
	.word	1074778128
	.size	FlashIntDisable, .-FlashIntDisable
	.section	.text.FlashIntStatus,"ax",%progbits
	.align	1
	.global	FlashIntStatus
	.thumb
	.thumb_func
	.type	FlashIntStatus, %function
FlashIntStatus:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L67
	ldr	r3, .L70
	b	.L69
.L67:
	ldr	r3, .L70+4
.L69:
	ldr	r0, [r3]
	bx	lr
.L71:
	.align	2
.L70:
	.word	1074778132
	.word	1074778124
	.size	FlashIntStatus, .-FlashIntStatus
	.section	.text.FlashIntClear,"ax",%progbits
	.align	1
	.global	FlashIntClear
	.thumb
	.thumb_func
	.type	FlashIntClear, %function
FlashIntClear:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L73
	str	r0, [r3]
	bx	lr
.L74:
	.align	2
.L73:
	.word	1074778132
	.size	FlashIntClear, .-FlashIntClear
	.section	.rodata.g_pui32FMPPERegs,"a",%progbits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	g_pui32FMPPERegs, %object
	.size	g_pui32FMPPERegs, 64
g_pui32FMPPERegs:
	.word	1074783232
	.word	1074783236
	.word	1074783240
	.word	1074783244
	.word	1074783248
	.word	1074783252
	.word	1074783256
	.word	1074783260
	.word	1074783264
	.word	1074783268
	.word	1074783272
	.word	1074783276
	.word	1074783280
	.word	1074783284
	.word	1074783288
	.word	1074783292
	.section	.rodata.g_pui32FMPRERegs,"a",%progbits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	g_pui32FMPRERegs, %object
	.size	g_pui32FMPRERegs, 64
g_pui32FMPRERegs:
	.word	1074782720
	.word	1074782724
	.word	1074782728
	.word	1074782732
	.word	1074782736
	.word	1074782740
	.word	1074782744
	.word	1074782748
	.word	1074782752
	.word	1074782756
	.word	1074782760
	.word	1074782764
	.word	1074782768
	.word	1074782772
	.word	1074782776
	.word	1074782780
	.ident	"GCC: (15:4.9.3+svn227297-1) 4.9.3 20150529 (prerelease)"
