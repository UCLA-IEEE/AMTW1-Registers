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
	.file	"crc.c"
	.section	.text.CRCConfigSet,"ax",%progbits
	.align	1
	.global	CRCConfigSet
	.thumb
	.thumb_func
	.type	CRCConfigSet, %function
CRCConfigSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r1, [r0, #1024]
	bx	lr
	.size	CRCConfigSet, .-CRCConfigSet
	.section	.text.CRCSeedSet,"ax",%progbits
	.align	1
	.global	CRCSeedSet
	.thumb
	.thumb_func
	.type	CRCSeedSet, %function
CRCSeedSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r1, [r0, #1040]
	bx	lr
	.size	CRCSeedSet, .-CRCSeedSet
	.section	.text.CRCDataWrite,"ax",%progbits
	.align	1
	.global	CRCDataWrite
	.thumb
	.thumb_func
	.type	CRCDataWrite, %function
CRCDataWrite:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r1, [r0, #1044]
	bx	lr
	.size	CRCDataWrite, .-CRCDataWrite
	.section	.text.CRCResultRead,"ax",%progbits
	.align	1
	.global	CRCResultRead
	.thumb
	.thumb_func
	.type	CRCResultRead, %function
CRCResultRead:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r1, .L5
	ldr	r0, [r0, #1048]
	bx	lr
.L5:
	ldr	r0, [r0, #1040]
	bx	lr
	.size	CRCResultRead, .-CRCResultRead
	.section	.text.CRCDataProcess,"ax",%progbits
	.align	1
	.global	CRCDataProcess
	.thumb
	.thumb_func
	.type	CRCDataProcess, %function
CRCDataProcess:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, [r0, #1024]
	lsls	r4, r4, #19
	bpl	.L10
	add	r2, r2, r1
.L11:
	cmp	r1, r2
	beq	.L14
	ldrb	r4, [r1], #1	@ zero_extendqisi2
	str	r4, [r0, #1044]
	b	.L11
.L14:
	mov	r1, r3
	pop	{r4, lr}
	b	CRCResultRead
.L10:
	adds	r2, r2, #-1
	bcc	.L14
	ldr	r4, [r1], #4
	str	r4, [r0, #1044]
	b	.L10
	.size	CRCDataProcess, .-CRCDataProcess
	.ident	"GCC: (15:4.9.3+svn227297-1) 4.9.3 20150529 (prerelease)"
