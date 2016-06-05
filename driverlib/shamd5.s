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
	.file	"shamd5.c"
	.section	.text.SHAMD5Reset,"ax",%progbits
	.align	1
	.global	SHAMD5Reset
	.thumb
	.thumb_func
	.type	SHAMD5Reset, %function
SHAMD5Reset:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #272]
	orr	r3, r3, #2
	str	r3, [r0, #272]
.L2:
	ldr	r3, [r0, #276]
	lsls	r3, r3, #31
	bpl	.L2
	ldr	r3, [r0, #272]
	bic	r3, r3, #48
	str	r3, [r0, #272]
	bx	lr
	.size	SHAMD5Reset, .-SHAMD5Reset
	.section	.text.SHAMD5DMAEnable,"ax",%progbits
	.align	1
	.global	SHAMD5DMAEnable
	.thumb
	.thumb_func
	.type	SHAMD5DMAEnable, %function
SHAMD5DMAEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #272]
	orr	r3, r3, #136
	str	r3, [r0, #272]
	bx	lr
	.size	SHAMD5DMAEnable, .-SHAMD5DMAEnable
	.section	.text.SHAMD5DMADisable,"ax",%progbits
	.align	1
	.global	SHAMD5DMADisable
	.thumb
	.thumb_func
	.type	SHAMD5DMADisable, %function
SHAMD5DMADisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #272]
	bic	r3, r3, #136
	str	r3, [r0, #272]
	bx	lr
	.size	SHAMD5DMADisable, .-SHAMD5DMADisable
	.section	.text.SHAMD5IntStatus,"ax",%progbits
	.align	1
	.global	SHAMD5IntStatus
	.thumb
	.thumb_func
	.type	SHAMD5IntStatus, %function
SHAMD5IntStatus:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, [r0, #280]
	sub	r4, r0, #16320
	cbz	r1, .L9
	ldr	r2, [r0, #284]
	ldr	r1, [r4, #-40]
	and	r0, r1, #2
	and	r4, r1, #1
	lsls	r0, r0, #16
	orr	r0, r0, r4, lsl #19
	ands	r3, r3, r2
	orrs	r3, r3, r0
	and	r0, r1, #4
	b	.L11
.L9:
	ldr	r2, [r4, #-44]
	and	r0, r2, #2
	and	r1, r2, #1
	lsls	r0, r0, #16
	orr	r0, r0, r1, lsl #19
	orrs	r3, r3, r0
	and	r0, r2, #4
.L11:
	orr	r0, r3, r0, lsl #14
	pop	{r4, pc}
	.size	SHAMD5IntStatus, .-SHAMD5IntStatus
	.section	.text.SHAMD5IntEnable,"ax",%progbits
	.align	1
	.global	SHAMD5IntEnable
	.thumb
	.thumb_func
	.type	SHAMD5IntEnable, %function
SHAMD5IntEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	sub	r5, r0, #16320
	and	r2, r1, #65536
	ldr	r4, [r5, #-48]
	and	r3, r1, #131072
	lsrs	r2, r2, #14
	orr	r3, r2, r3, lsr #16
	orrs	r3, r3, r4
	str	r3, [r5, #-48]
	ldr	r3, [r0, #284]
	uxth	r1, r1
	orrs	r1, r1, r3
	str	r1, [r0, #284]
	ldr	r3, [r0, #272]
	orr	r3, r3, #4
	str	r3, [r0, #272]
	pop	{r4, r5, pc}
	.size	SHAMD5IntEnable, .-SHAMD5IntEnable
	.section	.text.SHAMD5IntDisable,"ax",%progbits
	.align	1
	.global	SHAMD5IntDisable
	.thumb
	.thumb_func
	.type	SHAMD5IntDisable, %function
SHAMD5IntDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	sub	r5, r0, #16320
	and	r2, r1, #65536
	ldr	r4, [r5, #-48]
	and	r3, r1, #131072
	lsrs	r2, r2, #14
	orr	r3, r2, r3, lsr #16
	bic	r3, r4, r3
	str	r3, [r5, #-48]
	ldr	r3, [r0, #284]
	uxth	r1, r1
	bic	r1, r3, r1
	str	r1, [r0, #284]
	ldr	r3, [r0, #284]
	cbnz	r3, .L13
	ldr	r3, [r0, #272]
	bic	r3, r3, #4
	str	r3, [r0, #272]
.L13:
	pop	{r4, r5, pc}
	.size	SHAMD5IntDisable, .-SHAMD5IntDisable
	.section	.text.SHAMD5IntClear,"ax",%progbits
	.align	1
	.global	SHAMD5IntClear
	.thumb
	.thumb_func
	.type	SHAMD5IntClear, %function
SHAMD5IntClear:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	and	r3, r1, #131072
	and	r1, r1, #65536
	sub	r0, r0, #16320
	lsrs	r1, r1, #14
	orr	r1, r1, r3, lsr #16
	str	r1, [r0, #-36]
	bx	lr
	.size	SHAMD5IntClear, .-SHAMD5IntClear
	.section	.text.SHAMD5IntRegister,"ax",%progbits
	.align	1
	.global	SHAMD5IntRegister
	.thumb
	.thumb_func
	.type	SHAMD5IntRegister, %function
SHAMD5IntRegister:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	movs	r0, #110
	bl	IntRegister
	movs	r0, #110
	pop	{r3, lr}
	b	IntEnable
	.size	SHAMD5IntRegister, .-SHAMD5IntRegister
	.section	.text.SHAMD5IntUnregister,"ax",%progbits
	.align	1
	.global	SHAMD5IntUnregister
	.thumb
	.thumb_func
	.type	SHAMD5IntUnregister, %function
SHAMD5IntUnregister:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	movs	r0, #110
	bl	IntDisable
	movs	r0, #110
	pop	{r3, lr}
	b	IntUnregister
	.size	SHAMD5IntUnregister, .-SHAMD5IntUnregister
	.section	.text.SHAMD5HashLengthSet,"ax",%progbits
	.align	1
	.global	SHAMD5HashLengthSet
	.thumb
	.thumb_func
	.type	SHAMD5HashLengthSet, %function
SHAMD5HashLengthSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r1, [r0, #72]
	bx	lr
	.size	SHAMD5HashLengthSet, .-SHAMD5HashLengthSet
	.section	.text.SHAMD5ConfigSet,"ax",%progbits
	.align	1
	.global	SHAMD5ConfigSet
	.thumb
	.thumb_func
	.type	SHAMD5ConfigSet, %function
SHAMD5ConfigSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r1, [r0, #68]
	bx	lr
	.size	SHAMD5ConfigSet, .-SHAMD5ConfigSet
	.section	.text.SHAMD5DataWriteNonBlocking,"ax",%progbits
	.align	1
	.global	SHAMD5DataWriteNonBlocking
	.thumb
	.thumb_func
	.type	SHAMD5DataWriteNonBlocking, %function
SHAMD5DataWriteNonBlocking:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #280]
	ands	r3, r3, #2
	push	{r4, r5, lr}
	beq	.L23
	add	r4, r1, #64
	mov	r2, r1
.L22:
	subs	r3, r0, r1
	adds	r3, r3, #128
	add	r3, r3, r2
	ldr	r5, [r2], #4
	str	r5, [r3]
	cmp	r2, r4
	bne	.L22
	movs	r0, #1
	pop	{r4, r5, pc}
.L23:
	mov	r0, r3
	pop	{r4, r5, pc}
	.size	SHAMD5DataWriteNonBlocking, .-SHAMD5DataWriteNonBlocking
	.section	.text.SHAMD5DataWrite,"ax",%progbits
	.align	1
	.global	SHAMD5DataWrite
	.thumb
	.thumb_func
	.type	SHAMD5DataWrite, %function
SHAMD5DataWrite:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
.L26:
	ldr	r3, [r0, #280]
	lsls	r3, r3, #30
	bpl	.L26
	add	r4, r1, #64
	mov	r2, r1
.L27:
	subs	r3, r0, r1
	adds	r3, r3, #128
	add	r3, r3, r2
	ldr	r5, [r2], #4
	str	r5, [r3]
	cmp	r2, r4
	bne	.L27
	pop	{r4, r5, pc}
	.size	SHAMD5DataWrite, .-SHAMD5DataWrite
	.section	.text._SHAMD5DataWriteMultiple,"ax",%progbits
	.align	1
	.thumb
	.thumb_func
	.type	_SHAMD5DataWriteMultiple, %function
_SHAMD5DataWriteMultiple:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	bic	r4, r2, #63
	mov	r7, r0
	mov	r6, r1
	mov	r5, r2
	add	r4, r4, r1
.L32:
	cmp	r6, r4
	beq	.L41
	mov	r1, r6
	mov	r0, r7
	bl	SHAMD5DataWrite
	adds	r6, r6, #64
	b	.L32
.L41:
	ands	r5, r5, #63
	beq	.L31
.L39:
	ldr	r3, [r7, #280]
	lsls	r3, r3, #30
	bpl	.L39
	mov	r2, r4
.L35:
	add	r3, r7, #128
	subs	r3, r3, r4
	add	r3, r3, r2
	ldr	r1, [r2], #4
	str	r1, [r3]
	subs	r3, r2, r4
	cmp	r3, r5
	bcc	.L35
.L31:
	pop	{r3, r4, r5, r6, r7, pc}
	.size	_SHAMD5DataWriteMultiple, .-_SHAMD5DataWriteMultiple
	.section	.text.SHAMD5ResultRead,"ax",%progbits
	.align	1
	.global	SHAMD5ResultRead
	.thumb
	.thumb_func
	.type	SHAMD5ResultRead, %function
SHAMD5ResultRead:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #68]
	and	r3, r3, #7
	push	{r4, lr}
	cmp	r3, #6
	bhi	.L42
	tbb	[pc, r3]
.L45:
	.byte	(.L50-.L45)/2
	.byte	(.L42-.L45)/2
	.byte	(.L46-.L45)/2
	.byte	(.L42-.L45)/2
	.byte	(.L47-.L45)/2
	.byte	(.L42-.L45)/2
	.byte	(.L48-.L45)/2
	.p2align 1
.L46:
	movs	r3, #20
	b	.L44
.L47:
	movs	r3, #28
	b	.L44
.L48:
	movs	r3, #32
	b	.L44
.L50:
	movs	r3, #16
.L44:
	mov	r2, r1
.L49:
	subs	r4, r0, r1
	adds	r4, r4, #32
	ldr	r4, [r4, r2]
	str	r4, [r2], #4
	subs	r4, r2, r1
	cmp	r4, r3
	bcc	.L49
.L42:
	pop	{r4, pc}
	.size	SHAMD5ResultRead, .-SHAMD5ResultRead
	.section	.text.SHAMD5DataProcess,"ax",%progbits
	.align	1
	.global	SHAMD5DataProcess
	.thumb
	.thumb_func
	.type	SHAMD5DataProcess, %function
SHAMD5DataProcess:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, r0
	mov	r5, r3
.L53:
	ldr	r3, [r4, #280]
	lsls	r0, r3, #28
	add	r6, r4, #280
	bpl	.L53
	str	r2, [r4, #72]
	mov	r0, r4
	bl	_SHAMD5DataWriteMultiple
.L54:
	ldr	r3, [r6]
	lsls	r3, r3, #31
	bpl	.L54
	mov	r0, r4
	mov	r1, r5
	pop	{r4, r5, r6, lr}
	b	SHAMD5ResultRead
	.size	SHAMD5DataProcess, .-SHAMD5DataProcess
	.section	.text.SHAMD5HMACProcess,"ax",%progbits
	.align	1
	.global	SHAMD5HMACProcess
	.thumb
	.thumb_func
	.type	SHAMD5HMACProcess, %function
SHAMD5HMACProcess:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, r0
	mov	r5, r3
.L60:
	ldr	r3, [r4, #280]
	lsls	r0, r3, #28
	add	r6, r4, #280
	bpl	.L60
	str	r2, [r4, #72]
	mov	r0, r4
	bl	_SHAMD5DataWriteMultiple
.L61:
	ldr	r3, [r6]
	lsls	r3, r3, #31
	bpl	.L61
	mov	r0, r4
	mov	r1, r5
	pop	{r4, r5, r6, lr}
	b	SHAMD5ResultRead
	.size	SHAMD5HMACProcess, .-SHAMD5HMACProcess
	.section	.text.SHAMD5HMACPPKeyGenerate,"ax",%progbits
	.align	1
	.global	SHAMD5HMACPPKeyGenerate
	.thumb
	.thumb_func
	.type	SHAMD5HMACPPKeyGenerate, %function
SHAMD5HMACPPKeyGenerate:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
.L67:
	ldr	r3, [r0, #280]
	lsls	r4, r3, #28
	add	r5, r0, #280
	bpl	.L67
	add	r6, r1, #64
	mov	r3, r1
.L68:
	subs	r4, r0, r1
	add	r4, r4, r3
	ldr	r7, [r3], #4
	str	r7, [r4]
	cmp	r3, r6
	bne	.L68
	ldr	r3, [r0, #68]
	orr	r3, r3, #32
	str	r3, [r0, #68]
	movs	r3, #0
	str	r3, [r0, #72]
.L69:
	ldr	r3, [r5]
	lsls	r3, r3, #31
	bpl	.L69
	add	r1, r2, #64
	mov	r3, r2
.L70:
	subs	r4, r0, r2
	ldr	r4, [r4, r3]
	str	r4, [r3], #4
	cmp	r3, r1
	bne	.L70
	pop	{r4, r5, r6, r7, pc}
	.size	SHAMD5HMACPPKeyGenerate, .-SHAMD5HMACPPKeyGenerate
	.section	.text.SHAMD5HMACKeySet,"ax",%progbits
	.align	1
	.global	SHAMD5HMACKeySet
	.thumb
	.thumb_func
	.type	SHAMD5HMACKeySet, %function
SHAMD5HMACKeySet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r3, r1
	add	r4, r1, #64
.L78:
	subs	r2, r0, r1
	add	r2, r2, r3
	ldr	r5, [r3], #4
	str	r5, [r2]
	cmp	r3, r4
	bne	.L78
	ldr	r3, [r0, #68]
	orr	r3, r3, #176
	str	r3, [r0, #68]
	pop	{r4, r5, pc}
	.size	SHAMD5HMACKeySet, .-SHAMD5HMACKeySet
	.section	.text.SHAMD5HMACPPKeySet,"ax",%progbits
	.align	1
	.global	SHAMD5HMACPPKeySet
	.thumb
	.thumb_func
	.type	SHAMD5HMACPPKeySet, %function
SHAMD5HMACPPKeySet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r3, r1
	add	r4, r1, #64
.L81:
	subs	r2, r0, r1
	add	r2, r2, r3
	ldr	r5, [r3], #4
	str	r5, [r2]
	cmp	r3, r4
	bne	.L81
	ldr	r3, [r0, #68]
	orr	r3, r3, #144
	str	r3, [r0, #68]
	movs	r3, #64
	str	r3, [r0, #64]
	pop	{r4, r5, pc}
	.size	SHAMD5HMACPPKeySet, .-SHAMD5HMACPPKeySet
	.ident	"GCC: (15:4.9.3+svn227297-1) 4.9.3 20150529 (prerelease)"
