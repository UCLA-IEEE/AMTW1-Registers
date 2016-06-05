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
	.file	"eeprom.c"
	.section	.text._EEPROMWaitForDone,"ax",%progbits
	.align	1
	.thumb
	.thumb_func
	.type	_EEPROMWaitForDone, %function
_EEPROMWaitForDone:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.L2:
	ldr	r3, .L5
	ldr	r3, [r3]
	lsls	r3, r3, #31
	bmi	.L2
	bx	lr
.L6:
	.align	2
.L5:
	.word	1074458648
	.size	_EEPROMWaitForDone, .-_EEPROMWaitForDone
	.section	.text._EEPROMSectorMaskSet,"ax",%progbits
	.align	1
	.thumb
	.thumb_func
	.type	_EEPROMSectorMaskSet, %function
_EEPROMSectorMaskSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	lsrs	r0, r0, #7
	movs	r4, #1
	ldr	r5, .L8
	lsls	r4, r4, r0
	movs	r0, #10
	bl	SysCtlDelay
	movs	r3, #3
	str	r3, [r5]
	movs	r0, #10
	bl	SysCtlDelay
	ldr	r3, .L8+4
	mvns	r4, r4
	str	r4, [r3]
	movs	r0, #10
	bl	SysCtlDelay
	movs	r3, #0
	str	r3, [r5]
	movs	r0, #10
	pop	{r3, r4, r5, lr}
	b	SysCtlDelay
.L9:
	.align	2
.L8:
	.word	1074778364
	.word	1074455232
	.size	_EEPROMSectorMaskSet, .-_EEPROMSectorMaskSet
	.section	.text._EEPROMSectorMaskClear,"ax",%progbits
	.align	1
	.thumb
	.thumb_func
	.type	_EEPROMSectorMaskClear, %function
_EEPROMSectorMaskClear:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	movs	r0, #10
	ldr	r4, .L11
	bl	SysCtlDelay
	movs	r3, #3
	str	r3, [r4]
	movs	r0, #10
	bl	SysCtlDelay
	ldr	r3, .L11+4
	movs	r5, #0
	str	r5, [r3]
	movs	r0, #10
	bl	SysCtlDelay
	str	r5, [r4]
	movs	r0, #10
	pop	{r3, r4, r5, lr}
	b	SysCtlDelay
.L12:
	.align	2
.L11:
	.word	1074778364
	.word	1074455232
	.size	_EEPROMSectorMaskClear, .-_EEPROMSectorMaskClear
	.section	.text.EEPROMInit,"ax",%progbits
	.align	1
	.global	EEPROMInit
	.thumb
	.thumb_func
	.type	EEPROMInit, %function
EEPROMInit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L19
	movs	r0, #2
	bl	SysCtlDelay
	bl	_EEPROMWaitForDone
	ldr	r0, [r4]
	ands	r0, r0, #12
	beq	.L14
	ldr	r0, .L19+4
	bl	SysCtlPeripheralReset
	movs	r0, #2
	bl	SysCtlDelay
	bl	_EEPROMWaitForDone
	ldr	r3, [r4]
	tst	r3, #12
	ite	ne
	movne	r0, #2
	moveq	r0, #1
.L14:
	pop	{r4, pc}
.L20:
	.align	2
.L19:
	.word	1074458652
	.word	-268412928
	.size	EEPROMInit, .-EEPROMInit
	.section	.text.EEPROMSizeGet,"ax",%progbits
	.align	1
	.global	EEPROMSizeGet
	.thumb
	.thumb_func
	.type	EEPROMSizeGet, %function
EEPROMSizeGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L22
	ldr	r0, [r3]
	uxth	r0, r0
	lsls	r0, r0, #2
	bx	lr
.L23:
	.align	2
.L22:
	.word	1074458624
	.size	EEPROMSizeGet, .-EEPROMSizeGet
	.section	.text.EEPROMBlockCountGet,"ax",%progbits
	.align	1
	.global	EEPROMBlockCountGet
	.thumb
	.thumb_func
	.type	EEPROMBlockCountGet, %function
EEPROMBlockCountGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L25
	ldr	r0, [r3]
	ubfx	r0, r0, #16, #11
	bx	lr
.L26:
	.align	2
.L25:
	.word	1074458624
	.size	EEPROMBlockCountGet, .-EEPROMBlockCountGet
	.section	.text.EEPROMRead,"ax",%progbits
	.align	1
	.global	EEPROMRead
	.thumb
	.thumb_func
	.type	EEPROMRead, %function
EEPROMRead:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L35
	push	{r4, lr}
	lsrs	r4, r1, #6
	str	r4, [r3]
	ldr	r4, .L35+4
	ubfx	r1, r1, #2, #4
	str	r1, [r4]
	lsrs	r2, r2, #2
.L28:
	cbz	r2, .L34
	ldr	r1, .L35+8
	subs	r2, r2, #1
	ldr	r1, [r1]
	str	r1, [r0], #4
	beq	.L34
	ldr	r1, [r4]
	cmp	r1, #0
	bne	.L28
	ldr	r1, [r3]
	adds	r1, r1, #1
	str	r1, [r3]
	b	.L28
.L34:
	pop	{r4, pc}
.L36:
	.align	2
.L35:
	.word	1074458628
	.word	1074458632
	.word	1074458644
	.size	EEPROMRead, .-EEPROMRead
	.section	.text.EEPROMProgram,"ax",%progbits
	.align	1
	.global	EEPROMProgram
	.thumb
	.thumb_func
	.type	EEPROMProgram, %function
EEPROMProgram:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r10, r1
.L38:
	ldr	r6, .L54
	ldr	r3, [r6]
	lsls	r1, r3, #31
	bmi	.L38
	ldr	r7, .L54+4
	ldr	r1, .L54+8
	lsr	r3, r10, #6
	str	r3, [r7]
	ubfx	r3, r10, #2, #4
	str	r3, [r1]
	lsrs	r5, r2, #2
	sub	r8, r0, #4
	mov	r9, r1
.L39:
	ldr	r3, .L54+12
	ldr	r2, .L54+16
	ldr	r0, [r3]
	ldr	r1, .L54+20
	ands	r2, r2, r0
	cbz	r5, .L53
	cmp	r2, r1
	bne	.L40
	ldr	r3, [r3]
	uxth	r3, r3
	cbnz	r3, .L40
	mov	r0, r10
	bl	_EEPROMSectorMaskSet
.L40:
	ldr	r3, .L54+24
	ldr	r2, [r8, #4]!
	str	r2, [r3]
.L41:
	ldr	r4, [r6]
	lsls	r3, r4, #31
	bmi	.L41
	tst	r4, #272
	beq	.L42
	ldr	r2, .L54+12
	ldr	r3, .L54+16
	ldr	r1, [r2]
	ands	r3, r3, r1
	ldr	r1, .L54+20
	cmp	r3, r1
	bne	.L43
	ldr	r3, [r2]
	uxth	r3, r3
	cbnz	r3, .L43
	bl	_EEPROMSectorMaskClear
.L43:
	mov	r0, r4
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L42:
	subs	r5, r5, #1
	beq	.L39
	ldr	r3, [r9]
	cmp	r3, #0
	bne	.L39
	ldr	r3, [r7]
	adds	r3, r3, #1
	str	r3, [r7]
	b	.L39
.L53:
	cmp	r2, r1
	bne	.L47
	ldr	r3, [r3]
	uxth	r3, r3
	cbnz	r3, .L47
	bl	_EEPROMSectorMaskClear
.L47:
	ldr	r0, [r6]
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L55:
	.align	2
.L54:
	.word	1074458648
	.word	1074458628
	.word	1074458632
	.word	1074782208
	.word	1895759872
	.word	268763136
	.word	1074458644
	.size	EEPROMProgram, .-EEPROMProgram
	.section	.text.EEPROMProgramNonBlocking,"ax",%progbits
	.align	1
	.global	EEPROMProgramNonBlocking
	.thumb
	.thumb_func
	.type	EEPROMProgramNonBlocking, %function
EEPROMProgramNonBlocking:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L58
	push	{r3, r4, r5, lr}
	mov	r4, r1
	ldr	r3, .L58+4
	ldr	r1, [r2]
	ands	r3, r3, r1
	ldr	r1, .L58+8
	cmp	r3, r1
	mov	r5, r0
	bne	.L57
	ldr	r3, [r2]
	uxth	r3, r3
	cbnz	r3, .L57
	mov	r0, r4
	bl	_EEPROMSectorMaskSet
.L57:
	ldr	r3, .L58+12
	lsrs	r2, r4, #6
	ubfx	r4, r4, #2, #4
	str	r2, [r3]
	str	r4, [r3, #4]
	str	r5, [r3, #16]
	ldr	r0, [r3, #20]
	pop	{r3, r4, r5, pc}
.L59:
	.align	2
.L58:
	.word	1074782208
	.word	1895759872
	.word	268763136
	.word	1074458628
	.size	EEPROMProgramNonBlocking, .-EEPROMProgramNonBlocking
	.section	.text.EEPROMMassErase,"ax",%progbits
	.align	1
	.global	EEPROMMassErase
	.thumb
	.thumb_func
	.type	EEPROMMassErase, %function
EEPROMMassErase:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L62
	push	{r3, lr}
	ldr	r1, [r2]
	ldr	r3, .L62+4
	ands	r3, r3, r1
	ldr	r1, .L62+8
	cmp	r3, r1
	bne	.L61
	ldr	r3, [r2]
	uxth	r3, r3
	cbnz	r3, .L61
	bl	_EEPROMSectorMaskClear
.L61:
	ldr	r3, .L62+12
	ldr	r2, .L62+16
	str	r2, [r3]
	bl	_EEPROMWaitForDone
	ldr	r0, .L62+20
	bl	SysCtlPeripheralReset
	movs	r0, #2
	bl	SysCtlDelay
	bl	_EEPROMWaitForDone
	ldr	r3, .L62+24
	ldr	r0, [r3]
	pop	{r3, pc}
.L63:
	.align	2
.L62:
	.word	1074782208
	.word	1895759872
	.word	268763136
	.word	1074458752
	.word	-478478335
	.word	-268412928
	.word	1074458648
	.size	EEPROMMassErase, .-EEPROMMassErase
	.section	.text.EEPROMBlockProtectGet,"ax",%progbits
	.align	1
	.global	EEPROMBlockProtectGet
	.thumb
	.thumb_func
	.type	EEPROMBlockProtectGet, %function
EEPROMBlockProtectGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L65
	str	r0, [r3]
	ldr	r0, [r3, #44]
	bx	lr
.L66:
	.align	2
.L65:
	.word	1074458628
	.size	EEPROMBlockProtectGet, .-EEPROMBlockProtectGet
	.section	.text.EEPROMBlockProtectSet,"ax",%progbits
	.align	1
	.global	EEPROMBlockProtectSet
	.thumb
	.thumb_func
	.type	EEPROMBlockProtectSet, %function
EEPROMBlockProtectSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L70
	str	r0, [r3]
	str	r1, [r3, #44]
.L68:
	ldr	r3, .L70+4
	ldr	r2, [r3]
	lsls	r2, r2, #31
	bmi	.L68
	ldr	r0, [r3]
	bx	lr
.L71:
	.align	2
.L70:
	.word	1074458628
	.word	1074458648
	.size	EEPROMBlockProtectSet, .-EEPROMBlockProtectSet
	.section	.text.EEPROMBlockPasswordSet,"ax",%progbits
	.align	1
	.global	EEPROMBlockPasswordSet
	.thumb
	.thumb_func
	.type	EEPROMBlockPasswordSet, %function
EEPROMBlockPasswordSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L78
	push	{r4, lr}
	str	r0, [r3]
	ldr	r0, .L78+4
.L73:
	ldr	r3, .L78+8
	cbz	r2, .L77
	ldr	r4, [r1], #4
	str	r4, [r0], #4
	subs	r2, r2, #1
.L74:
	ldr	r4, [r3]
	lsls	r4, r4, #31
	bmi	.L74
	b	.L73
.L77:
	ldr	r0, [r3]
	pop	{r4, pc}
.L79:
	.align	2
.L78:
	.word	1074458628
	.word	1074458676
	.word	1074458648
	.size	EEPROMBlockPasswordSet, .-EEPROMBlockPasswordSet
	.section	.text.EEPROMBlockLock,"ax",%progbits
	.align	1
	.global	EEPROMBlockLock
	.thumb
	.thumb_func
	.type	EEPROMBlockLock, %function
EEPROMBlockLock:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L81
	mov	r2, #-1
	str	r0, [r3]
	str	r2, [r3, #28]
	ldr	r0, [r3, #28]
	bx	lr
.L82:
	.align	2
.L81:
	.word	1074458628
	.size	EEPROMBlockLock, .-EEPROMBlockLock
	.section	.text.EEPROMBlockUnlock,"ax",%progbits
	.align	1
	.global	EEPROMBlockUnlock
	.thumb
	.thumb_func
	.type	EEPROMBlockUnlock, %function
EEPROMBlockUnlock:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L87
	str	r0, [r3]
	ldr	r0, .L87+4
	mov	r3, #-1
	str	r3, [r0]
	add	r3, r2, #1073741824
	subs	r3, r3, #1
	add	r1, r1, r3, lsl #2
.L84:
	cbz	r2, .L86
	ldr	r3, [r1], #-4
	str	r3, [r0]
	subs	r2, r2, #1
	b	.L84
.L86:
	ldr	r0, [r0]
	bx	lr
.L88:
	.align	2
.L87:
	.word	1074458628
	.word	1074458656
	.size	EEPROMBlockUnlock, .-EEPROMBlockUnlock
	.section	.text.EEPROMBlockHide,"ax",%progbits
	.align	1
	.global	EEPROMBlockHide
	.thumb
	.thumb_func
	.type	EEPROMBlockHide, %function
EEPROMBlockHide:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r3, #1
	ldr	r2, .L90
	lsls	r3, r3, r0
	str	r3, [r2]
	bx	lr
.L91:
	.align	2
.L90:
	.word	1074458704
	.size	EEPROMBlockHide, .-EEPROMBlockHide
	.section	.text.EEPROMIntEnable,"ax",%progbits
	.align	1
	.global	EEPROMIntEnable
	.thumb
	.thumb_func
	.type	EEPROMIntEnable, %function
EEPROMIntEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L93
	ldr	r3, [r2]
	orr	r3, r3, #1
	str	r3, [r2]
	add	r2, r2, #317440
	add	r2, r2, #2000
	ldr	r3, [r2]
	orr	r3, r3, #4
	str	r3, [r2]
	bx	lr
.L94:
	.align	2
.L93:
	.word	1074458688
	.size	EEPROMIntEnable, .-EEPROMIntEnable
	.section	.text.EEPROMIntDisable,"ax",%progbits
	.align	1
	.global	EEPROMIntDisable
	.thumb
	.thumb_func
	.type	EEPROMIntDisable, %function
EEPROMIntDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L96
	ldr	r3, [r2]
	bic	r3, r3, #4
	str	r3, [r2]
	sub	r2, r2, #317440
	sub	r2, r2, #2000
	ldr	r3, [r2]
	bic	r3, r3, #1
	str	r3, [r2]
	bx	lr
.L97:
	.align	2
.L96:
	.word	1074778128
	.size	EEPROMIntDisable, .-EEPROMIntDisable
	.section	.text.EEPROMIntStatus,"ax",%progbits
	.align	1
	.global	EEPROMIntStatus
	.thumb
	.thumb_func
	.type	EEPROMIntStatus, %function
EEPROMIntStatus:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L99
	ldr	r3, .L102
	ldr	r0, [r3]
	and	r0, r0, #4
	bx	lr
.L99:
	ldr	r3, .L102+4
	ldr	r3, [r3]
	tst	r3, #1
	ite	ne
	movne	r0, #0
	moveq	r0, #4
	bx	lr
.L103:
	.align	2
.L102:
	.word	1074778132
	.word	1074458648
	.size	EEPROMIntStatus, .-EEPROMIntStatus
	.section	.text.EEPROMIntClear,"ax",%progbits
	.align	1
	.global	EEPROMIntClear
	.thumb
	.thumb_func
	.type	EEPROMIntClear, %function
EEPROMIntClear:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L106
	movs	r2, #4
	str	r2, [r3]
	ldr	r2, .L106+4
	ldr	r3, .L106+8
	ldr	r1, [r2]
	ands	r3, r3, r1
	ldr	r1, .L106+12
	cmp	r3, r1
	bne	.L104
	ldr	r3, [r2]
	uxth	r3, r3
	cbnz	r3, .L104
	b	_EEPROMSectorMaskClear
.L104:
	bx	lr
.L107:
	.align	2
.L106:
	.word	1074778132
	.word	1074782208
	.word	1895759872
	.word	268763136
	.size	EEPROMIntClear, .-EEPROMIntClear
	.section	.text.EEPROMStatusGet,"ax",%progbits
	.align	1
	.global	EEPROMStatusGet
	.thumb
	.thumb_func
	.type	EEPROMStatusGet, %function
EEPROMStatusGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L109
	ldr	r0, [r3]
	bx	lr
.L110:
	.align	2
.L109:
	.word	1074458648
	.size	EEPROMStatusGet, .-EEPROMStatusGet
	.ident	"GCC: (15:4.9.3+svn227297-1) 4.9.3 20150529 (prerelease)"
