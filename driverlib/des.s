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
	.file	"des.c"
	.section	.text.DESReset,"ax",%progbits
	.align	1
	.global	DESReset
	.thumb
	.thumb_func
	.type	DESReset, %function
DESReset:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #52]
	orr	r3, r3, #2
	str	r3, [r0, #52]
.L2:
	ldr	r3, [r0, #56]
	lsls	r3, r3, #31
	bpl	.L2
	bx	lr
	.size	DESReset, .-DESReset
	.section	.text.DESConfigSet,"ax",%progbits
	.align	1
	.global	DESConfigSet
	.thumb
	.thumb_func
	.type	DESConfigSet, %function
DESConfigSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #32]
	and	r3, r3, #-2147483648
	orrs	r1, r1, r3
	str	r1, [r0, #32]
	bx	lr
	.size	DESConfigSet, .-DESConfigSet
	.section	.text.DESKeySet,"ax",%progbits
	.align	1
	.global	DESKeySet
	.thumb
	.thumb_func
	.type	DESKeySet, %function
DESKeySet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r1]
	str	r3, [r0, #16]
	ldr	r3, [r1, #4]
	str	r3, [r0, #20]
	ldr	r3, [r0, #32]
	lsls	r3, r3, #28
	bpl	.L7
	ldr	r3, [r1, #8]
	str	r3, [r0, #8]
	ldr	r3, [r1, #12]
	str	r3, [r0, #12]
	ldr	r3, [r1, #16]
	str	r3, [r0]
	ldr	r3, [r1, #20]
	str	r3, [r0, #4]
.L7:
	bx	lr
	.size	DESKeySet, .-DESKeySet
	.section	.text.DESIVSet,"ax",%progbits
	.align	1
	.global	DESIVSet
	.thumb
	.thumb_func
	.type	DESIVSet, %function
DESIVSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #32]
	cmp	r3, #0
	itttt	lt
	ldrlt	r3, [r1]
	strlt	r3, [r0, #24]
	ldrlt	r3, [r1, #4]
	strlt	r3, [r0, #28]
	ite	lt
	movlt	r0, #1
	movge	r0, #0
	bx	lr
	.size	DESIVSet, .-DESIVSet
	.section	.text.DESLengthSet,"ax",%progbits
	.align	1
	.global	DESLengthSet
	.thumb
	.thumb_func
	.type	DESLengthSet, %function
DESLengthSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r1, [r0, #36]
	bx	lr
	.size	DESLengthSet, .-DESLengthSet
	.section	.text.DESDataReadNonBlocking,"ax",%progbits
	.align	1
	.global	DESDataReadNonBlocking
	.thumb
	.thumb_func
	.type	DESDataReadNonBlocking, %function
DESDataReadNonBlocking:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #32]
	ands	r0, r0, #1
	beq	.L17
	ldr	r3, .L19
	ldr	r3, [r3]
	str	r3, [r1]
	ldr	r3, .L19+4
	ldr	r3, [r3]
	str	r3, [r1, #4]
	movs	r0, #1
.L17:
	bx	lr
.L20:
	.align	2
.L19:
	.word	1141080104
	.word	1141080108
	.size	DESDataReadNonBlocking, .-DESDataReadNonBlocking
	.section	.text.DESDataRead,"ax",%progbits
	.align	1
	.global	DESDataRead
	.thumb
	.thumb_func
	.type	DESDataRead, %function
DESDataRead:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.L22:
	ldr	r3, [r0, #32]
	lsls	r3, r3, #31
	bpl	.L22
	ldr	r3, .L25
	ldr	r3, [r3]
	str	r3, [r1]
	ldr	r3, .L25+4
	ldr	r3, [r3]
	str	r3, [r1, #4]
	bx	lr
.L26:
	.align	2
.L25:
	.word	1141080104
	.word	1141080108
	.size	DESDataRead, .-DESDataRead
	.section	.text.DESDataWriteNonBlocking,"ax",%progbits
	.align	1
	.global	DESDataWriteNonBlocking
	.thumb
	.thumb_func
	.type	DESDataWriteNonBlocking, %function
DESDataWriteNonBlocking:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #32]
	ands	r0, r0, #2
	beq	.L28
	ldr	r3, .L30
	ldr	r2, [r1]
	str	r2, [r3]
	ldr	r2, [r1, #4]
	str	r2, [r3, #4]
	movs	r0, #1
.L28:
	bx	lr
.L31:
	.align	2
.L30:
	.word	1141080104
	.size	DESDataWriteNonBlocking, .-DESDataWriteNonBlocking
	.section	.text.DESDataWrite,"ax",%progbits
	.align	1
	.global	DESDataWrite
	.thumb
	.thumb_func
	.type	DESDataWrite, %function
DESDataWrite:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.L33:
	ldr	r3, [r0, #32]
	lsls	r3, r3, #30
	bpl	.L33
	ldr	r3, .L36
	ldr	r2, [r1]
	str	r2, [r3]
	ldr	r2, [r1, #4]
	str	r2, [r3, #4]
	bx	lr
.L37:
	.align	2
.L36:
	.word	1141080104
	.size	DESDataWrite, .-DESDataWrite
	.section	.text.DESDataProcess,"ax",%progbits
	.align	1
	.global	DESDataProcess
	.thumb
	.thumb_func
	.type	DESDataProcess, %function
DESDataProcess:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r4, r0
	mov	r8, r1
	mov	r9, r2
	str	r3, [r0, #36]
	lsrs	r7, r3, #2
	movs	r5, #0
.L39:
	cmp	r5, r7
	bcs	.L47
.L44:
	ldr	r3, [r4, #32]
	lsls	r2, r3, #30
	add	r10, r4, #32
	bpl	.L44
	lsls	r6, r5, #2
	mov	r0, r4
	add	r1, r8, r6
	bl	DESDataWriteNonBlocking
.L41:
	ldr	r3, [r10]
	lsls	r3, r3, #31
	bpl	.L41
	mov	r0, r4
	add	r1, r9, r6
	bl	DESDataReadNonBlocking
	adds	r5, r5, #2
	b	.L39
.L47:
	movs	r0, #1
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
	.size	DESDataProcess, .-DESDataProcess
	.section	.text.DESIntStatus,"ax",%progbits
	.align	1
	.global	DESIntStatus
	.thumb
	.thumb_func
	.type	DESIntStatus, %function
DESIntStatus:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #60]
	sub	r2, r0, #32640
	cbz	r1, .L49
	ldr	r0, [r0, #64]
	ldr	r2, [r2, #-72]
	ands	r3, r3, r0
	orr	r0, r3, r2, lsl #16
	bx	lr
.L49:
	ldr	r0, [r2, #-76]
	orr	r0, r3, r0, lsl #16
	bx	lr
	.size	DESIntStatus, .-DESIntStatus
	.section	.text.DESIntEnable,"ax",%progbits
	.align	1
	.global	DESIntEnable
	.thumb
	.thumb_func
	.type	DESIntEnable, %function
DESIntEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	sub	r2, r0, #32640
	push	{r4, lr}
	ldr	r4, [r2, #-80]
	ubfx	r3, r1, #16, #3
	orrs	r3, r3, r4
	str	r3, [r2, #-80]
	ldr	r3, [r0, #64]
	uxth	r1, r1
	orrs	r1, r1, r3
	str	r1, [r0, #64]
	pop	{r4, pc}
	.size	DESIntEnable, .-DESIntEnable
	.section	.text.DESIntDisable,"ax",%progbits
	.align	1
	.global	DESIntDisable
	.thumb
	.thumb_func
	.type	DESIntDisable, %function
DESIntDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	sub	r2, r0, #32640
	push	{r4, lr}
	ldr	r3, [r2, #-80]
	ubfx	r4, r1, #16, #3
	bic	r3, r3, r4
	str	r3, [r2, #-80]
	ldr	r3, [r0, #64]
	uxth	r1, r1
	bic	r1, r3, r1
	str	r1, [r0, #64]
	pop	{r4, pc}
	.size	DESIntDisable, .-DESIntDisable
	.section	.text.DESIntClear,"ax",%progbits
	.align	1
	.global	DESIntClear
	.thumb
	.thumb_func
	.type	DESIntClear, %function
DESIntClear:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	r0, r0, #32640
	ubfx	r1, r1, #16, #3
	str	r1, [r0, #-68]
	bx	lr
	.size	DESIntClear, .-DESIntClear
	.section	.text.DESIntRegister,"ax",%progbits
	.align	1
	.global	DESIntRegister
	.thumb
	.thumb_func
	.type	DESIntRegister, %function
DESIntRegister:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	movs	r0, #112
	bl	IntRegister
	movs	r0, #112
	pop	{r3, lr}
	b	IntEnable
	.size	DESIntRegister, .-DESIntRegister
	.section	.text.DESIntUnregister,"ax",%progbits
	.align	1
	.global	DESIntUnregister
	.thumb
	.thumb_func
	.type	DESIntUnregister, %function
DESIntUnregister:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	movs	r0, #112
	bl	IntDisable
	movs	r0, #112
	pop	{r3, lr}
	b	IntUnregister
	.size	DESIntUnregister, .-DESIntUnregister
	.section	.text.DESDMAEnable,"ax",%progbits
	.align	1
	.global	DESDMAEnable
	.thumb
	.thumb_func
	.type	DESDMAEnable, %function
DESDMAEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #52]
	orrs	r1, r1, r3
	str	r1, [r0, #52]
	bx	lr
	.size	DESDMAEnable, .-DESDMAEnable
	.section	.text.DESDMADisable,"ax",%progbits
	.align	1
	.global	DESDMADisable
	.thumb
	.thumb_func
	.type	DESDMADisable, %function
DESDMADisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #52]
	bic	r1, r3, r1
	str	r1, [r0, #52]
	bx	lr
	.size	DESDMADisable, .-DESDMADisable
	.ident	"GCC: (15:4.9.3+svn227297-1) 4.9.3 20150529 (prerelease)"
