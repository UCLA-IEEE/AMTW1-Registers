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
	.file	"aes.c"
	.section	.text.AESReset,"ax",%progbits
	.align	1
	.global	AESReset
	.thumb
	.thumb_func
	.type	AESReset, %function
AESReset:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #132]
	orr	r3, r3, #2
	str	r3, [r0, #132]
.L2:
	ldr	r3, [r0, #136]
	lsls	r3, r3, #31
	bpl	.L2
	bx	lr
	.size	AESReset, .-AESReset
	.section	.text.AESConfigSet,"ax",%progbits
	.align	1
	.global	AESConfigSet
	.thumb
	.thumb_func
	.type	AESConfigSet, %function
AESConfigSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #80]
	lsls	r3, r3, #2
	it	mi
	orrmi	r1, r1, #536870912
	str	r1, [r0, #80]
	bx	lr
	.size	AESConfigSet, .-AESConfigSet
	.section	.text.AESKey1Set,"ax",%progbits
	.align	1
	.global	AESKey1Set
	.thumb
	.thumb_func
	.type	AESKey1Set, %function
AESKey1Set:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r1]
	str	r3, [r0, #56]
	ldr	r3, [r1, #4]
	str	r3, [r0, #60]
	ldr	r3, [r1, #8]
	str	r3, [r0, #48]
	ldr	r3, [r1, #12]
	str	r3, [r0, #52]
	cmp	r2, #8
	beq	.L11
	ldr	r3, [r1, #16]
	str	r3, [r0, #40]
	ldr	r3, [r1, #20]
	str	r3, [r0, #44]
	cmp	r2, #24
	itttt	eq
	ldreq	r3, [r1, #24]
	streq	r3, [r0, #32]
	ldreq	r3, [r1, #28]
	streq	r3, [r0, #36]
.L11:
	bx	lr
	.size	AESKey1Set, .-AESKey1Set
	.section	.text.AESKey2Set,"ax",%progbits
	.align	1
	.global	AESKey2Set
	.thumb
	.thumb_func
	.type	AESKey2Set, %function
AESKey2Set:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r1]
	str	r3, [r0, #24]
	ldr	r3, [r1, #4]
	str	r3, [r0, #28]
	ldr	r3, [r1, #8]
	str	r3, [r0, #16]
	ldr	r3, [r1, #12]
	str	r3, [r0, #20]
	cmp	r2, #8
	beq	.L15
	ldr	r3, [r1, #16]
	str	r3, [r0, #8]
	ldr	r3, [r1, #20]
	str	r3, [r0, #12]
	cmp	r2, #24
	itttt	eq
	ldreq	r3, [r1, #24]
	streq	r3, [r0]
	ldreq	r3, [r1, #28]
	streq	r3, [r0, #4]
.L15:
	bx	lr
	.size	AESKey2Set, .-AESKey2Set
	.section	.text.AESKey3Set,"ax",%progbits
	.align	1
	.global	AESKey3Set
	.thumb
	.thumb_func
	.type	AESKey3Set, %function
AESKey3Set:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r1]
	str	r3, [r0, #8]
	ldr	r3, [r1, #4]
	str	r3, [r0, #12]
	ldr	r3, [r1, #8]
	str	r3, [r0]
	ldr	r3, [r1, #12]
	str	r3, [r0, #4]
	bx	lr
	.size	AESKey3Set, .-AESKey3Set
	.section	.text.AESIVSet,"ax",%progbits
	.align	1
	.global	AESIVSet
	.thumb
	.thumb_func
	.type	AESIVSet, %function
AESIVSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r1]
	str	r3, [r0, #64]
	ldr	r3, [r1, #4]
	str	r3, [r0, #68]
	ldr	r3, [r1, #8]
	str	r3, [r0, #72]
	ldr	r3, [r1, #12]
	str	r3, [r0, #76]
	bx	lr
	.size	AESIVSet, .-AESIVSet
	.section	.text.AESIVRead,"ax",%progbits
	.align	1
	.global	AESIVRead
	.thumb
	.thumb_func
	.type	AESIVRead, %function
AESIVRead:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.L22:
	ldr	r3, [r0, #80]
	lsls	r3, r3, #1
	bpl	.L22
	ldr	r3, [r0, #64]
	str	r3, [r1]
	ldr	r3, [r0, #68]
	str	r3, [r1, #4]
	ldr	r3, [r0, #72]
	str	r3, [r1, #8]
	ldr	r3, [r0, #76]
	str	r3, [r1, #12]
	bx	lr
	.size	AESIVRead, .-AESIVRead
	.section	.text.AESTagRead,"ax",%progbits
	.align	1
	.global	AESTagRead
	.thumb
	.thumb_func
	.type	AESTagRead, %function
AESTagRead:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.L26:
	ldr	r3, [r0, #80]
	lsls	r3, r3, #1
	bpl	.L26
	ldr	r3, [r0, #112]
	str	r3, [r1]
	ldr	r3, [r0, #116]
	str	r3, [r1, #4]
	ldr	r3, [r0, #120]
	str	r3, [r1, #8]
	ldr	r3, [r0, #124]
	str	r3, [r1, #12]
	bx	lr
	.size	AESTagRead, .-AESTagRead
	.section	.text.AESLengthSet,"ax",%progbits
	.align	1
	.global	AESLengthSet
	.thumb
	.thumb_func
	.type	AESLengthSet, %function
AESLengthSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r2, [r0, #84]
	str	r3, [r0, #88]
	bx	lr
	.size	AESLengthSet, .-AESLengthSet
	.section	.text.AESAuthLengthSet,"ax",%progbits
	.align	1
	.global	AESAuthLengthSet
	.thumb
	.thumb_func
	.type	AESAuthLengthSet, %function
AESAuthLengthSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r1, [r0, #92]
	bx	lr
	.size	AESAuthLengthSet, .-AESAuthLengthSet
	.section	.text.AESDataReadNonBlocking,"ax",%progbits
	.align	1
	.global	AESDataReadNonBlocking
	.thumb
	.thumb_func
	.type	AESDataReadNonBlocking, %function
AESDataReadNonBlocking:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #80]
	ands	r3, r3, #1
	itttt	ne
	ldrne	r3, [r0, #108]
	strne	r3, [r1]
	ldrne	r3, [r0, #104]
	strne	r3, [r1, #4]
	itttt	ne
	ldrne	r3, [r0, #100]
	strne	r3, [r1, #8]
	ldrne	r3, [r0, #96]
	strne	r3, [r1, #12]
	ite	ne
	movne	r0, #1
	moveq	r0, r3
	bx	lr
	.size	AESDataReadNonBlocking, .-AESDataReadNonBlocking
	.section	.text.AESDataRead,"ax",%progbits
	.align	1
	.global	AESDataRead
	.thumb
	.thumb_func
	.type	AESDataRead, %function
AESDataRead:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.L35:
	ldr	r3, [r0, #80]
	lsls	r3, r3, #31
	bpl	.L35
	ldr	r3, [r0, #108]
	str	r3, [r1]
	ldr	r3, [r0, #104]
	str	r3, [r1, #4]
	ldr	r3, [r0, #100]
	str	r3, [r1, #8]
	ldr	r3, [r0, #96]
	str	r3, [r1, #12]
	bx	lr
	.size	AESDataRead, .-AESDataRead
	.section	.text.AESDataWriteNonBlocking,"ax",%progbits
	.align	1
	.global	AESDataWriteNonBlocking
	.thumb
	.thumb_func
	.type	AESDataWriteNonBlocking, %function
AESDataWriteNonBlocking:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #80]
	ands	r3, r3, #2
	itttt	ne
	ldrne	r3, [r1]
	strne	r3, [r0, #108]
	ldrne	r3, [r1, #4]
	strne	r3, [r0, #104]
	itttt	ne
	ldrne	r3, [r1, #8]
	strne	r3, [r0, #100]
	ldrne	r3, [r1, #12]
	strne	r3, [r0, #96]
	ite	ne
	movne	r0, #1
	moveq	r0, r3
	bx	lr
	.size	AESDataWriteNonBlocking, .-AESDataWriteNonBlocking
	.section	.text.AESDataWrite,"ax",%progbits
	.align	1
	.global	AESDataWrite
	.thumb
	.thumb_func
	.type	AESDataWrite, %function
AESDataWrite:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.L42:
	ldr	r3, [r0, #80]
	lsls	r3, r3, #30
	bpl	.L42
	ldr	r3, [r1]
	str	r3, [r0, #108]
	ldr	r3, [r1, #4]
	str	r3, [r0, #104]
	ldr	r3, [r1, #8]
	str	r3, [r0, #100]
	ldr	r3, [r1, #12]
	str	r3, [r0, #96]
	bx	lr
	.size	AESDataWrite, .-AESDataWrite
	.section	.text.AESDataProcess,"ax",%progbits
	.align	1
	.global	AESDataProcess
	.thumb
	.thumb_func
	.type	AESDataProcess, %function
AESDataProcess:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, lr}
	mov	r5, r3
	ldr	r3, .L49
	movs	r4, #0
	str	r5, [r3]
	mov	r6, r0
	mov	r8, r1
	mov	r9, r2
	str	r4, [r3, #4]
.L46:
	cmp	r4, r5
	bcs	.L48
	bic	r7, r4, #3
	mov	r0, r6
	add	r1, r8, r7
	bl	AESDataWrite
	mov	r0, r6
	add	r1, r9, r7
	bl	AESDataRead
	adds	r4, r4, #16
	b	.L46
.L48:
	movs	r0, #1
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
.L50:
	.align	2
.L49:
	.word	1141071956
	.size	AESDataProcess, .-AESDataProcess
	.section	.text.AESDataAuth,"ax",%progbits
	.align	1
	.global	AESDataAuth
	.thumb
	.thumb_func
	.type	AESDataAuth, %function
AESDataAuth:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r6, r3
	movs	r3, #0
	mov	r5, r0
	mov	r8, r1
	mov	r7, r2
	bl	AESLengthSet
	movs	r4, #0
.L52:
	cmp	r4, r7
	bcs	.L54
	bic	r1, r4, #3
	mov	r0, r5
	add	r1, r1, r8
	bl	AESDataWrite
	adds	r4, r4, #16
	b	.L52
.L54:
	mov	r0, r5
	mov	r1, r6
	bl	AESTagRead
	movs	r0, #1
	pop	{r4, r5, r6, r7, r8, pc}
	.size	AESDataAuth, .-AESDataAuth
	.section	.text.AESDataProcessAuth,"ax",%progbits
	.align	1
	.global	AESDataProcessAuth
	.thumb
	.thumb_func
	.type	AESDataProcessAuth, %function
AESDataProcessAuth:
	@ args = 12, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, lr}
	mov	r4, r0
	ldr	r7, [sp, #36]
	mov	r9, r2
	mov	r6, r3
	mov	r2, r3
	movs	r3, #0
	mov	r8, r1
	movs	r5, #0
	bl	AESLengthSet
	str	r7, [r4, #92]
.L56:
	cmp	r5, r7
	bcs	.L60
	ldr	r3, [sp, #32]
	bic	r1, r5, #3
	mov	r0, r4
	add	r1, r1, r3
	bl	AESDataWrite
	adds	r5, r5, #16
	b	.L56
.L60:
	movs	r5, #0
.L58:
	cmp	r5, r6
	bcs	.L61
	bic	r7, r5, #3
	mov	r0, r4
	add	r1, r8, r7
	bl	AESDataWrite
	mov	r0, r4
	add	r1, r9, r7
	bl	AESDataRead
	adds	r5, r5, #16
	b	.L58
.L61:
	mov	r0, r4
	ldr	r1, [sp, #40]
	bl	AESTagRead
	movs	r0, #1
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
	.size	AESDataProcessAuth, .-AESDataProcessAuth
	.section	.text.AESIntStatus,"ax",%progbits
	.align	1
	.global	AESIntStatus
	.thumb
	.thumb_func
	.type	AESIntStatus, %function
AESIntStatus:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, [r0, #140]
	sub	r4, r0, #24448
	cbz	r1, .L63
	ldr	r2, [r0, #144]
	ldr	r1, [r4, #-88]
	and	r0, r1, #2
	and	r4, r1, #1
	lsls	r0, r0, #18
	orr	r0, r0, r4, lsl #16
	ands	r3, r3, r2
	orrs	r3, r3, r0
	and	r0, r1, #12
	b	.L65
.L63:
	ldr	r2, [r4, #-92]
	and	r0, r2, #2
	and	r1, r2, #1
	lsls	r0, r0, #18
	orr	r0, r0, r1, lsl #16
	orrs	r3, r3, r0
	and	r0, r2, #12
.L65:
	orr	r0, r3, r0, lsl #15
	pop	{r4, pc}
	.size	AESIntStatus, .-AESIntStatus
	.section	.text.AESIntEnable,"ax",%progbits
	.align	1
	.global	AESIntEnable
	.thumb
	.thumb_func
	.type	AESIntEnable, %function
AESIntEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	sub	r5, r0, #24448
	and	r3, r1, #393216
	ubfx	r2, r1, #16, #1
	ldr	r4, [r5, #-96]
	orr	r2, r2, r3, lsr #15
	and	r3, r1, #524288
	orr	r3, r2, r3, lsr #18
	orrs	r3, r3, r4
	str	r3, [r5, #-96]
	ldr	r3, [r0, #144]
	uxth	r1, r1
	orrs	r1, r1, r3
	str	r1, [r0, #144]
	pop	{r4, r5, pc}
	.size	AESIntEnable, .-AESIntEnable
	.section	.text.AESIntDisable,"ax",%progbits
	.align	1
	.global	AESIntDisable
	.thumb
	.thumb_func
	.type	AESIntDisable, %function
AESIntDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	sub	r5, r0, #24448
	and	r3, r1, #393216
	ubfx	r2, r1, #16, #1
	ldr	r4, [r5, #-96]
	orr	r2, r2, r3, lsr #15
	and	r3, r1, #524288
	orr	r3, r2, r3, lsr #18
	bic	r3, r4, r3
	str	r3, [r5, #-96]
	ldr	r3, [r0, #144]
	uxth	r1, r1
	bic	r1, r3, r1
	str	r1, [r0, #144]
	pop	{r4, r5, pc}
	.size	AESIntDisable, .-AESIntDisable
	.section	.text.AESIntClear,"ax",%progbits
	.align	1
	.global	AESIntClear
	.thumb
	.thumb_func
	.type	AESIntClear, %function
AESIntClear:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	and	r2, r1, #393216
	ubfx	r3, r1, #16, #1
	sub	r0, r0, #24448
	orr	r3, r3, r2, lsr #15
	and	r1, r1, #524288
	orr	r1, r3, r1, lsr #18
	str	r1, [r0, #-84]
	bx	lr
	.size	AESIntClear, .-AESIntClear
	.section	.text.AESIntRegister,"ax",%progbits
	.align	1
	.global	AESIntRegister
	.thumb
	.thumb_func
	.type	AESIntRegister, %function
AESIntRegister:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	movs	r0, #111
	bl	IntRegister
	movs	r0, #111
	pop	{r3, lr}
	b	IntEnable
	.size	AESIntRegister, .-AESIntRegister
	.section	.text.AESIntUnregister,"ax",%progbits
	.align	1
	.global	AESIntUnregister
	.thumb
	.thumb_func
	.type	AESIntUnregister, %function
AESIntUnregister:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	movs	r0, #111
	bl	IntDisable
	movs	r0, #111
	pop	{r3, lr}
	b	IntUnregister
	.size	AESIntUnregister, .-AESIntUnregister
	.section	.text.AESDMAEnable,"ax",%progbits
	.align	1
	.global	AESDMAEnable
	.thumb
	.thumb_func
	.type	AESDMAEnable, %function
AESDMAEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #132]
	orrs	r1, r1, r3
	str	r1, [r0, #132]
	bx	lr
	.size	AESDMAEnable, .-AESDMAEnable
	.section	.text.AESDMADisable,"ax",%progbits
	.align	1
	.global	AESDMADisable
	.thumb
	.thumb_func
	.type	AESDMADisable, %function
AESDMADisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #132]
	bic	r1, r3, r1
	str	r1, [r0, #132]
	bx	lr
	.size	AESDMADisable, .-AESDMADisable
	.ident	"GCC: (15:4.9.3+svn227297-1) 4.9.3 20150529 (prerelease)"
