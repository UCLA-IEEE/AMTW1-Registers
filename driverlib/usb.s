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
	.file	"usb.c"
	.section	.text._USBIntNumberGet.isra.0,"ax",%progbits
	.align	1
	.thumb
	.thumb_func
	.type	_USBIntNumberGet.isra.0, %function
_USBIntNumberGet.isra.0:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L6
	ldr	r3, .L6+4
	ldr	r1, [r2]
	ands	r3, r3, r1
	ldr	r1, .L6+8
	cmp	r3, r1
	beq	.L3
	ldr	r2, [r2]
	ldr	r3, .L6+4
	ldr	r0, .L6+12
	ands	r3, r3, r2
	cmp	r3, r0
	ite	eq
	moveq	r0, #58
	movne	r0, #0
	bx	lr
.L3:
	movs	r0, #60
	bx	lr
.L7:
	.align	2
.L6:
	.word	1074782208
	.word	1895759872
	.word	268763136
	.word	269090816
	.size	_USBIntNumberGet.isra.0, .-_USBIntNumberGet.isra.0
	.section	.text.USBHostSuspend,"ax",%progbits
	.align	1
	.global	USBHostSuspend
	.thumb
	.thumb_func
	.type	USBHostSuspend, %function
USBHostSuspend:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0, #1]	@ zero_extendqisi2
	orr	r3, r3, #2
	strb	r3, [r0, #1]
	bx	lr
	.size	USBHostSuspend, .-USBHostSuspend
	.section	.text.USBHostReset,"ax",%progbits
	.align	1
	.global	USBHostReset
	.thumb
	.thumb_func
	.type	USBHostReset, %function
USBHostReset:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0, #1]	@ zero_extendqisi2
	cbz	r1, .L10
	orr	r3, r3, #8
	b	.L12
.L10:
	and	r3, r3, #247
.L12:
	strb	r3, [r0, #1]
	bx	lr
	.size	USBHostReset, .-USBHostReset
	.section	.text.USBHighSpeed,"ax",%progbits
	.align	1
	.global	USBHighSpeed
	.thumb
	.thumb_func
	.type	USBHighSpeed, %function
USBHighSpeed:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0, #1]	@ zero_extendqisi2
	cbz	r1, .L14
	orr	r3, r3, #32
	b	.L16
.L14:
	and	r3, r3, #223
.L16:
	strb	r3, [r0, #1]
	bx	lr
	.size	USBHighSpeed, .-USBHighSpeed
	.section	.text.USBHostResume,"ax",%progbits
	.align	1
	.global	USBHostResume
	.thumb
	.thumb_func
	.type	USBHostResume, %function
USBHostResume:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0, #1]	@ zero_extendqisi2
	cbz	r1, .L18
	orr	r3, r3, #4
	b	.L20
.L18:
	and	r3, r3, #251
.L20:
	strb	r3, [r0, #1]
	bx	lr
	.size	USBHostResume, .-USBHostResume
	.section	.text.USBHostSpeedGet,"ax",%progbits
	.align	1
	.global	USBHostSpeedGet
	.thumb
	.thumb_func
	.type	USBHostSpeedGet, %function
USBHostSpeedGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0, #1]	@ zero_extendqisi2
	lsls	r2, r3, #27
	bmi	.L23
	ldrb	r3, [r0, #96]	@ zero_extendqisi2
	lsls	r3, r3, #25
	bmi	.L24
	ldrb	r3, [r0, #96]	@ zero_extendqisi2
	tst	r3, #32
	ite	ne
	movne	r0, #0
	moveq	r0, #-2147483648
	bx	lr
.L23:
	movs	r0, #2
	bx	lr
.L24:
	movs	r0, #1
	bx	lr
	.size	USBHostSpeedGet, .-USBHostSpeedGet
	.section	.text.USBDevSpeedGet,"ax",%progbits
	.align	1
	.global	USBDevSpeedGet
	.thumb
	.thumb_func
	.type	USBDevSpeedGet, %function
USBDevSpeedGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0, #1]	@ zero_extendqisi2
	tst	r3, #16
	ite	ne
	movne	r0, #2
	moveq	r0, #1
	bx	lr
	.size	USBDevSpeedGet, .-USBDevSpeedGet
	.section	.text.USBIntDisableControl,"ax",%progbits
	.align	1
	.global	USBIntDisableControl
	.thumb
	.thumb_func
	.type	USBIntDisableControl, %function
USBIntDisableControl:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	tst	r1, #255
	ittt	ne
	ldrbne	r3, [r0, #11]	@ zero_extendqisi2
	bicne	r3, r3, r1
	strbne	r3, [r0, #11]
	lsls	r2, r1, #23
	itt	mi
	movmi	r3, #0
	strmi	r3, [r0, #1032]
	lsls	r3, r1, #22
	ittt	mi
	ldrmi	r3, .L42
	movmi	r2, #0
	strmi	r2, [r3]
	bx	lr
.L43:
	.align	2
.L42:
	.word	1074070600
	.size	USBIntDisableControl, .-USBIntDisableControl
	.section	.text.USBIntEnableControl,"ax",%progbits
	.align	1
	.global	USBIntEnableControl
	.thumb
	.thumb_func
	.type	USBIntEnableControl, %function
USBIntEnableControl:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	tst	r1, #255
	itttt	ne
	ldrbne	r3, [r0, #11]	@ zero_extendqisi2
	orrne	r3, r3, r1
	uxtbne	r3, r3
	strbne	r3, [r0, #11]
	lsls	r2, r1, #23
	itt	mi
	movmi	r3, #1
	strmi	r3, [r0, #1032]
	lsls	r3, r1, #22
	ittt	mi
	ldrmi	r3, .L57
	movmi	r2, #1
	strmi	r2, [r3]
	bx	lr
.L58:
	.align	2
.L57:
	.word	1074070600
	.size	USBIntEnableControl, .-USBIntEnableControl
	.section	.text.USBIntStatusControl,"ax",%progbits
	.align	1
	.global	USBIntStatusControl
	.thumb
	.thumb_func
	.type	USBIntStatusControl, %function
USBIntStatusControl:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0, #10]	@ zero_extendqisi2
	ldr	r2, [r0, #1036]
	lsls	r2, r2, #31
	ittt	mi
	ldrbmi	r2, [r0, #1036]	@ zero_extendqisi2
	orrmi	r2, r2, #1
	strbmi	r2, [r0, #1036]
	ldr	r2, .L68
	ldr	r1, [r2]
	uxtb	r3, r3
	it	mi
	orrmi	r3, r3, #256
	lsls	r1, r1, #31
	itttt	mi
	ldrmi	r1, [r2]
	orrmi	r3, r3, #512
	orrmi	r1, r1, #1
	strmi	r1, [r2]
	mov	r0, r3
	bx	lr
.L69:
	.align	2
.L68:
	.word	1074070604
	.size	USBIntStatusControl, .-USBIntStatusControl
	.section	.text.USBIntDisableEndpoint,"ax",%progbits
	.align	1
	.global	USBIntDisableEndpoint
	.thumb
	.thumb_func
	.type	USBIntDisableEndpoint, %function
USBIntDisableEndpoint:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrh	r3, [r0, #6]
	uxth	r3, r3
	bic	r3, r3, r1
	strh	r3, [r0, #6]	@ movhi
	ldrh	r3, [r0, #8]
	lsrs	r1, r1, #17
	uxth	r3, r3
	lsls	r1, r1, #17
	bic	r1, r3, r1, lsr #16
	strh	r1, [r0, #8]	@ movhi
	bx	lr
	.size	USBIntDisableEndpoint, .-USBIntDisableEndpoint
	.section	.text.USBIntEnableEndpoint,"ax",%progbits
	.align	1
	.global	USBIntEnableEndpoint
	.thumb
	.thumb_func
	.type	USBIntEnableEndpoint, %function
USBIntEnableEndpoint:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrh	r3, [r0, #6]
	orrs	r3, r3, r1
	uxth	r3, r3
	strh	r3, [r0, #6]	@ movhi
	ldrh	r3, [r0, #8]
	lsrs	r1, r1, #17
	uxth	r3, r3
	lsls	r1, r1, #17
	orr	r1, r3, r1, lsr #16
	strh	r1, [r0, #8]	@ movhi
	bx	lr
	.size	USBIntEnableEndpoint, .-USBIntEnableEndpoint
	.section	.text.USBIntStatusEndpoint,"ax",%progbits
	.align	1
	.global	USBIntStatusEndpoint
	.thumb
	.thumb_func
	.type	USBIntStatusEndpoint, %function
USBIntStatusEndpoint:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrh	r3, [r0, #2]
	ldrh	r0, [r0, #4]
	uxth	r3, r3
	orr	r0, r3, r0, lsl #16
	bx	lr
	.size	USBIntStatusEndpoint, .-USBIntStatusEndpoint
	.section	.text.USBIntRegister,"ax",%progbits
	.align	1
	.global	USBIntRegister
	.thumb
	.thumb_func
	.type	USBIntRegister, %function
USBIntRegister:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r5, r1
	bl	_USBIntNumberGet.isra.0
	mov	r1, r5
	mov	r4, r0
	bl	IntRegister
	mov	r0, r4
	pop	{r3, r4, r5, lr}
	b	IntEnable
	.size	USBIntRegister, .-USBIntRegister
	.section	.text.USBIntUnregister,"ax",%progbits
	.align	1
	.global	USBIntUnregister
	.thumb
	.thumb_func
	.type	USBIntUnregister, %function
USBIntUnregister:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	_USBIntNumberGet.isra.0
	mov	r4, r0
	bl	IntDisable
	mov	r0, r4
	pop	{r4, lr}
	b	IntUnregister
	.size	USBIntUnregister, .-USBIntUnregister
	.section	.text.USBEndpointStatus,"ax",%progbits
	.align	1
	.global	USBEndpointStatus
	.thumb
	.thumb_func
	.type	USBEndpointStatus, %function
USBEndpointStatus:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r1, r1, r0
	ldrh	r3, [r1, #258]
	ldrh	r0, [r1, #262]
	uxth	r3, r3
	orr	r0, r3, r0, lsl #16
	bx	lr
	.size	USBEndpointStatus, .-USBEndpointStatus
	.section	.text.USBHostEndpointStatusClear,"ax",%progbits
	.align	1
	.global	USBHostEndpointStatusClear
	.thumb
	.thumb_func
	.type	USBHostEndpointStatusClear, %function
USBHostEndpointStatusClear:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvns	r3, r2
	cbnz	r1, .L77
	ldrb	r2, [r0, #258]	@ zero_extendqisi2
	ands	r3, r3, r2
	strb	r3, [r0, #258]
	bx	lr
.L77:
	add	r1, r1, r0
	ldrb	r0, [r1, #258]	@ zero_extendqisi2
	ands	r3, r3, r0
	strb	r3, [r1, #258]
	ldrb	r3, [r1, #262]	@ zero_extendqisi2
	bic	r2, r3, r2, lsr #16
	strb	r2, [r1, #262]
	bx	lr
	.size	USBHostEndpointStatusClear, .-USBHostEndpointStatusClear
	.section	.text.USBDevEndpointStatusClear,"ax",%progbits
	.align	1
	.global	USBDevEndpointStatusClear
	.thumb
	.thumb_func
	.type	USBDevEndpointStatusClear, %function
USBDevEndpointStatusClear:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbnz	r1, .L80
	lsls	r3, r2, #31
	ittt	mi
	ldrbmi	r3, [r0, #258]	@ zero_extendqisi2
	orrmi	r3, r3, #64
	strbmi	r3, [r0, #258]
	lsls	r1, r2, #27
	ittt	mi
	ldrbmi	r3, [r0, #258]	@ zero_extendqisi2
	orrmi	r3, r3, #128
	strbmi	r3, [r0, #258]
	lsls	r3, r2, #29
	bpl	.L79
	ldrb	r3, [r0, #258]	@ zero_extendqisi2
	and	r3, r3, #251
	strb	r3, [r0, #258]
	bx	lr
.L80:
	add	r0, r0, r1
	and	r1, r2, #36
	ldrb	r3, [r0, #258]	@ zero_extendqisi2
	bic	r3, r3, r1
	strb	r3, [r0, #258]
	ldrb	r3, [r0, #262]	@ zero_extendqisi2
	and	r2, r2, #4980736
	bic	r2, r3, r2, lsr #16
	strb	r2, [r0, #262]
.L79:
	bx	lr
	.size	USBDevEndpointStatusClear, .-USBDevEndpointStatusClear
	.section	.text.USBHostEndpointDataToggle,"ax",%progbits
	.align	1
	.global	USBHostEndpointDataToggle
	.thumb
	.thumb_func
	.type	USBHostEndpointDataToggle, %function
USBHostEndpointDataToggle:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r2, .L94
	cbz	r1, .L101
	cbz	r3, .L102
	movs	r2, #1
	b	.L98
.L94:
	cbnz	r1, .L98
	b	.L95
.L101:
	movs	r1, #2
.L95:
	ldrb	r3, [r0, #259]	@ zero_extendqisi2
	and	r3, r3, #249
	orr	r3, r3, #4
	orrs	r1, r1, r3
	uxtb	r1, r1
	strb	r1, [r0, #259]
	bx	lr
.L98:
	cbnz	r3, .L100
.L105:
	addw	r0, r0, #263
	ldrb	r3, [r0, r1]	@ zero_extendqisi2
	and	r3, r3, #249
	orr	r3, r3, #4
	b	.L106
.L100:
	addw	r0, r0, #259
	ldrb	r3, [r0, r1]	@ zero_extendqisi2
	and	r3, r3, #252
	orr	r3, r3, #2
.L106:
	orrs	r2, r2, r3
	strb	r2, [r0, r1]
	bx	lr
.L102:
	movs	r2, #2
	b	.L105
	.size	USBHostEndpointDataToggle, .-USBHostEndpointDataToggle
	.section	.text.USBEndpointDataToggleClear,"ax",%progbits
	.align	1
	.global	USBEndpointDataToggleClear
	.thumb
	.thumb_func
	.type	USBEndpointDataToggleClear, %function
USBEndpointDataToggleClear:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	lsls	r3, r2, #18
	itete	mi
	addmi	r1, r1, #258
	addpl	r1, r1, #262
	ldrbmi	r3, [r1, r0]	@ zero_extendqisi2
	ldrbpl	r3, [r1, r0]	@ zero_extendqisi2
	ite	mi
	orrmi	r3, r3, #64
	orrpl	r3, r3, #128
	strb	r3, [r1, r0]
	bx	lr
	.size	USBEndpointDataToggleClear, .-USBEndpointDataToggleClear
	.section	.text.USBHostEndpointPing,"ax",%progbits
	.align	1
	.global	USBHostEndpointPing
	.thumb
	.thumb_func
	.type	USBHostEndpointPing, %function
USBHostEndpointPing:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L115
	cbz	r2, .L112
	ldrb	r2, [r3]	@ zero_extendqisi2
	and	r2, r2, #247
	b	.L114
.L112:
	ldrb	r2, [r3]	@ zero_extendqisi2
	orr	r2, r2, #8
.L114:
	strb	r2, [r3]
	bx	lr
.L116:
	.align	2
.L115:
	.word	1074069763
	.size	USBHostEndpointPing, .-USBHostEndpointPing
	.section	.text.USBDevEndpointStall,"ax",%progbits
	.align	1
	.global	USBDevEndpointStall
	.thumb
	.thumb_func
	.type	USBDevEndpointStall, %function
USBDevEndpointStall:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbnz	r1, .L118
	ldrb	r3, [r0, #258]	@ zero_extendqisi2
	orr	r3, r3, #96
	strb	r3, [r0, #258]
	bx	lr
.L118:
	cmp	r2, #8192
	itete	eq
	addeq	r0, r0, #258
	addne	r0, r0, #262
	ldrbeq	r3, [r0, r1]	@ zero_extendqisi2
	ldrbne	r3, [r0, r1]	@ zero_extendqisi2
	ite	eq
	orreq	r3, r3, #16
	orrne	r3, r3, #32
	strb	r3, [r0, r1]
	bx	lr
	.size	USBDevEndpointStall, .-USBDevEndpointStall
	.section	.text.USBDevEndpointStallClear,"ax",%progbits
	.align	1
	.global	USBDevEndpointStallClear
	.thumb
	.thumb_func
	.type	USBDevEndpointStallClear, %function
USBDevEndpointStallClear:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbnz	r1, .L123
	ldrb	r3, [r0, #258]	@ zero_extendqisi2
	and	r3, r3, #251
	strb	r3, [r0, #258]
	bx	lr
.L123:
	cmp	r2, #8192
	itete	eq
	addeq	r0, r0, #258
	addne	r0, r0, #262
	ldrbeq	r3, [r0, r1]	@ zero_extendqisi2
	ldrbne	r3, [r0, r1]	@ zero_extendqisi2
	itete	eq
	andeq	r3, r3, #207
	andne	r3, r3, #159
	strbeq	r3, [r0, r1]
	strbne	r3, [r0, r1]
	itete	eq
	ldrbeq	r3, [r0, r1]	@ zero_extendqisi2
	ldrbne	r3, [r0, r1]	@ zero_extendqisi2
	orreq	r3, r3, #64
	orrne	r3, r3, #128
	strb	r3, [r0, r1]
	bx	lr
	.size	USBDevEndpointStallClear, .-USBDevEndpointStallClear
	.section	.text.USBDevConnect,"ax",%progbits
	.align	1
	.global	USBDevConnect
	.thumb
	.thumb_func
	.type	USBDevConnect, %function
USBDevConnect:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0, #1]	@ zero_extendqisi2
	orr	r3, r3, #64
	strb	r3, [r0, #1]
	bx	lr
	.size	USBDevConnect, .-USBDevConnect
	.section	.text.USBDevDisconnect,"ax",%progbits
	.align	1
	.global	USBDevDisconnect
	.thumb
	.thumb_func
	.type	USBDevDisconnect, %function
USBDevDisconnect:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0, #1]	@ zero_extendqisi2
	and	r3, r3, #191
	strb	r3, [r0, #1]
	bx	lr
	.size	USBDevDisconnect, .-USBDevDisconnect
	.section	.text.USBDevAddrSet,"ax",%progbits
	.align	1
	.global	USBDevAddrSet
	.thumb
	.thumb_func
	.type	USBDevAddrSet, %function
USBDevAddrSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	uxtb	r1, r1
	strb	r1, [r0]
	bx	lr
	.size	USBDevAddrSet, .-USBDevAddrSet
	.section	.text.USBDevAddrGet,"ax",%progbits
	.align	1
	.global	USBDevAddrGet
	.thumb
	.thumb_func
	.type	USBDevAddrGet, %function
USBDevAddrGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r0, [r0]	@ zero_extendqisi2
	bx	lr
	.size	USBDevAddrGet, .-USBDevAddrGet
	.section	.text.USBHostEndpointConfig,"ax",%progbits
	.align	1
	.global	USBHostEndpointConfig
	.thumb
	.thumb_func
	.type	USBHostEndpointConfig, %function
USBHostEndpointConfig:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, [sp, #20]
	ldr	r4, [sp, #16]
	uxtb	r3, r3
	and	r6, r5, #16384
	cbnz	r1, .L132
	strb	r3, [r0, #267]
	cbz	r6, .L133
	movs	r3, #64
	b	.L162
.L133:
	lsls	r3, r5, #19
	ite	mi
	movmi	r3, #128
	movpl	r3, #192
.L162:
	strb	r3, [r0, #266]
	pop	{r4, r5, r6, pc}
.L132:
	cbz	r6, .L136
	orr	r4, r4, #64
	b	.L137
.L136:
	lsls	r6, r5, #19
	ite	mi
	orrmi	r4, r4, #128
	orrpl	r4, r4, #192
.L137:
	and	r6, r5, #768
	cmp	r6, #256
	beq	.L140
	cmp	r6, #512
	beq	.L141
	cbnz	r6, .L139
	orr	r4, r4, #16
	b	.L139
.L140:
	orr	r4, r4, #32
	b	.L139
.L141:
	orr	r4, r4, #48
.L139:
	tst	r5, #8192
	add	r1, r1, r0
	uxtb	r4, r4
	uxth	r2, r2
	and	r0, r5, #16
	beq	.L143
	tst	r5, #1
	strb	r4, [r1, #266]
	strb	r3, [r1, #267]
	strh	r2, [r1, #256]	@ movhi
	ite	eq
	moveq	r3, #0
	movne	r3, #128
	cbz	r0, .L145
	orr	r3, r3, #20
	b	.L146
.L145:
	lsls	r5, r5, #28
	it	mi
	orrmi	r3, r3, #16
.L146:
	uxtb	r3, r3
	strb	r3, [r1, #259]
	pop	{r4, r5, r6, pc}
.L143:
	tst	r5, #4
	strb	r4, [r1, #268]
	strb	r3, [r1, #269]
	ite	eq
	moveq	r3, #0
	movne	r3, #128
	lsls	r4, r5, #30
	strh	r2, [r1, #260]	@ movhi
	it	mi
	orrmi	r3, r3, #64
	cbz	r0, .L149
	orr	r3, r3, #40
	b	.L150
.L149:
	lsls	r2, r5, #28
	it	mi
	orrmi	r3, r3, #32
.L150:
	uxtb	r3, r3
	strb	r3, [r1, #263]
	pop	{r4, r5, r6, pc}
	.size	USBHostEndpointConfig, .-USBHostEndpointConfig
	.section	.text.USBHostEndpointSpeed,"ax",%progbits
	.align	1
	.global	USBHostEndpointSpeed
	.thumb
	.thumb_func
	.type	USBHostEndpointSpeed, %function
USBHostEndpointSpeed:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	lsls	r4, r2, #17
	bmi	.L168
	tst	r2, #4096
	ite	ne
	movne	r3, #128
	moveq	r3, #192
	b	.L164
.L168:
	movs	r3, #64
.L164:
	cbnz	r1, .L165
	uxtb	r3, r3
	strb	r3, [r0, #266]
	pop	{r4, pc}
.L165:
	lsls	r2, r2, #18
	ite	mi
	addmi	r0, r0, #266
	addpl	r0, r0, #268
	ldrh	r2, [r0, r1]
	ldrh	r4, [r0, r1]
	uxth	r2, r2
	bic	r2, r2, #192
	uxth	r4, r4
	orrs	r3, r3, r2
	orrs	r3, r3, r4
	strh	r3, [r0, r1]	@ movhi
	pop	{r4, pc}
	.size	USBHostEndpointSpeed, .-USBHostEndpointSpeed
	.section	.text.USBDevEndpointConfigSet,"ax",%progbits
	.align	1
	.global	USBDevEndpointConfigSet
	.thumb
	.thumb_func
	.type	USBDevEndpointConfigSet, %function
USBDevEndpointConfigSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	tst	r3, #8192
	push	{r4, lr}
	add	r1, r1, r0
	uxth	r2, r2
	and	r4, r3, #16
	and	r0, r3, #768
	beq	.L172
	tst	r3, #1
	strh	r2, [r1, #256]	@ movhi
	ite	eq
	moveq	r2, #0
	movne	r2, #128
	cbz	r4, .L174
	orr	r2, r2, #20
	b	.L175
.L174:
	lsls	r3, r3, #28
	it	mi
	orrmi	r2, r2, #16
.L175:
	cbnz	r0, .L176
	orr	r2, r2, #64
.L176:
	uxtb	r2, r2
	movs	r3, #64
	strb	r2, [r1, #259]
	strb	r3, [r1, #258]
	pop	{r4, pc}
.L172:
	tst	r3, #4
	strh	r2, [r1, #260]	@ movhi
	ite	eq
	moveq	r2, #0
	movne	r2, #128
	cbz	r4, .L179
	orr	r2, r2, #40
	b	.L180
.L179:
	lsls	r4, r3, #28
	it	mi
	orrmi	r2, r2, #32
.L180:
	lsls	r3, r3, #26
	it	mi
	orrmi	r2, r2, #16
	cbnz	r0, .L182
	orr	r2, r2, #64
.L182:
	uxtb	r2, r2
	movs	r3, #128
	strb	r2, [r1, #263]
	strb	r3, [r1, #262]
	pop	{r4, pc}
	.size	USBDevEndpointConfigSet, .-USBDevEndpointConfigSet
	.section	.text.USBDevEndpointConfigGet,"ax",%progbits
	.align	1
	.global	USBDevEndpointConfigGet
	.thumb
	.thumb_func
	.type	USBDevEndpointConfigGet, %function
USBDevEndpointConfigGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, [r3]
	ands	r4, r4, #8192
	add	r1, r1, r0
	beq	.L195
	mov	r0, #8192
	str	r0, [r3]
	ldrh	r0, [r1, #256]
	uxth	r0, r0
	str	r0, [r2]
	ldrb	r2, [r1, #259]	@ zero_extendqisi2
	uxtb	r2, r2
	lsls	r1, r2, #24
	ittt	mi
	ldrmi	r1, [r3]
	orrmi	r1, r1, #1
	strmi	r1, [r3]
	lsls	r4, r2, #27
	bpl	.L202
	tst	r2, #4
	b	.L223
.L195:
	ldrh	r0, [r1, #260]
	str	r4, [r3]
	uxth	r0, r0
	str	r0, [r2]
	ldrb	r2, [r1, #263]	@ zero_extendqisi2
	uxtb	r2, r2
	lsls	r0, r2, #24
	ittt	mi
	ldrmi	r1, [r3]
	orrmi	r1, r1, #4
	strmi	r1, [r3]
	lsls	r1, r2, #26
	bpl	.L202
	tst	r2, #8
.L223:
	ldr	r1, [r3]
	ite	ne
	orrne	r1, r1, #16
	orreq	r1, r1, #8
	str	r1, [r3]
.L202:
	lsls	r2, r2, #25
	ittt	pl
	ldrpl	r2, [r3]
	orrpl	r2, r2, #256
	strpl	r2, [r3]
	pop	{r4, pc}
	.size	USBDevEndpointConfigGet, .-USBDevEndpointConfigGet
	.section	.text.USBFIFOConfigSet,"ax",%progbits
	.align	1
	.global	USBFIFOConfigSet
	.thumb
	.thumb_func
	.type	USBFIFOConfigSet, %function
USBFIFOConfigSet:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, [sp, #8]
	lsrs	r1, r1, #4
	tst	r4, #8192
	ldrb	r4, [r0, #14]	@ zero_extendqisi2
	uxtb	r1, r1
	uxtb	r3, r3
	lsr	r2, r2, #3
	uxtb	r4, r4
	strb	r1, [r0, #14]
	beq	.L225
	strb	r3, [r0, #98]
	strb	r4, [r0, #14]
	ldrb	r3, [r0, #14]	@ zero_extendqisi2
	strb	r1, [r0, #14]
	uxth	r2, r2
	uxtb	r3, r3
	strh	r2, [r0, #100]	@ movhi
	b	.L227
.L225:
	strb	r3, [r0, #99]
	strb	r4, [r0, #14]
	ldrb	r3, [r0, #14]	@ zero_extendqisi2
	strb	r1, [r0, #14]
	uxth	r2, r2
	uxtb	r3, r3
	strh	r2, [r0, #102]	@ movhi
.L227:
	strb	r3, [r0, #14]
	pop	{r4, pc}
	.size	USBFIFOConfigSet, .-USBFIFOConfigSet
	.section	.text.USBFIFOConfigGet,"ax",%progbits
	.align	1
	.global	USBFIFOConfigGet
	.thumb
	.thumb_func
	.type	USBFIFOConfigGet, %function
USBFIFOConfigGet:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldr	r4, [sp, #12]
	ldrb	r5, [r0, #14]	@ zero_extendqisi2
	lsrs	r1, r1, #4
	uxtb	r1, r1
	tst	r4, #8192
	uxtb	r5, r5
	strb	r1, [r0, #14]
	beq	.L229
	ldrh	r4, [r0, #100]
	strb	r5, [r0, #14]
	uxtb	r4, r4
	lsls	r4, r4, #3
	str	r4, [r2]
	ldrb	r2, [r0, #14]	@ zero_extendqisi2
	strb	r1, [r0, #14]
	uxtb	r2, r2
	ldrb	r1, [r0, #98]	@ zero_extendqisi2
	b	.L231
.L229:
	ldrh	r4, [r0, #102]
	strb	r5, [r0, #14]
	uxtb	r4, r4
	lsls	r4, r4, #3
	str	r4, [r2]
	ldrb	r2, [r0, #14]	@ zero_extendqisi2
	strb	r1, [r0, #14]
	ldrb	r1, [r0, #99]	@ zero_extendqisi2
	uxtb	r2, r2
.L231:
	strb	r2, [r0, #14]
	str	r1, [r3]
	pop	{r4, r5, pc}
	.size	USBFIFOConfigGet, .-USBFIFOConfigGet
	.section	.text.USBEndpointDMAConfigSet,"ax",%progbits
	.align	1
	.global	USBEndpointDMAConfigSet
	.thumb
	.thumb_func
	.type	USBEndpointDMAConfigSet, %function
USBEndpointDMAConfigSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	tst	r2, #8192
	push	{r4, lr}
	and	r4, r2, #16
	beq	.L233
	addw	r1, r1, #259
	ldrb	r3, [r1, r0]	@ zero_extendqisi2
	and	r3, r3, #123
	cbz	r4, .L234
	orr	r3, r3, #4
.L234:
	lsls	r2, r2, #31
	bpl	.L239
	orr	r3, r3, #128
	b	.L239
.L233:
	addw	r1, r1, #263
	ldrb	r3, [r1, r0]	@ zero_extendqisi2
	and	r3, r3, #55
	cbz	r4, .L237
	orr	r3, r3, #8
.L237:
	lsls	r4, r2, #29
	it	mi
	orrmi	r3, r3, #128
	lsls	r2, r2, #30
	it	mi
	orrmi	r3, r3, #64
.L239:
	uxtb	r3, r3
	strb	r3, [r1, r0]
	pop	{r4, pc}
	.size	USBEndpointDMAConfigSet, .-USBEndpointDMAConfigSet
	.section	.text.USBEndpointDMAEnable,"ax",%progbits
	.align	1
	.global	USBEndpointDMAEnable
	.thumb
	.thumb_func
	.type	USBEndpointDMAEnable, %function
USBEndpointDMAEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	lsls	r3, r2, #18
	itete	mi
	addwmi	r1, r1, #259
	addwpl	r1, r1, #263
	ldrbmi	r3, [r1, r0]	@ zero_extendqisi2
	ldrbpl	r3, [r1, r0]	@ zero_extendqisi2
	ite	mi
	orrmi	r3, r3, #16
	orrpl	r3, r3, #32
	strb	r3, [r1, r0]
	bx	lr
	.size	USBEndpointDMAEnable, .-USBEndpointDMAEnable
	.section	.text.USBEndpointDMADisable,"ax",%progbits
	.align	1
	.global	USBEndpointDMADisable
	.thumb
	.thumb_func
	.type	USBEndpointDMADisable, %function
USBEndpointDMADisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	lsls	r3, r2, #18
	itete	mi
	addwmi	r1, r1, #259
	addwpl	r1, r1, #263
	ldrbmi	r3, [r1, r0]	@ zero_extendqisi2
	ldrbpl	r3, [r1, r0]	@ zero_extendqisi2
	ite	mi
	andmi	r3, r3, #239
	andpl	r3, r3, #223
	strb	r3, [r1, r0]
	bx	lr
	.size	USBEndpointDMADisable, .-USBEndpointDMADisable
	.section	.text.USBEndpointDataAvail,"ax",%progbits
	.align	1
	.global	USBEndpointDataAvail
	.thumb
	.thumb_func
	.type	USBEndpointDataAvail, %function
USBEndpointDataAvail:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r1, .L266
	add	r3, r1, #262
	b	.L264
.L266:
	mov	r3, #258
.L264:
	ldrh	r3, [r3, r0]
	ands	r3, r3, #1
	ittte	ne
	addne	r0, r0, #264
	ldrhne	r0, [r0, r1]
	uxthne	r0, r0
	moveq	r0, r3
	bx	lr
	.size	USBEndpointDataAvail, .-USBEndpointDataAvail
	.section	.text.USBEndpointDataGet,"ax",%progbits
	.align	1
	.global	USBEndpointDataGet
	.thumb
	.thumb_func
	.type	USBEndpointDataGet, %function
USBEndpointDataGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	cbz	r1, .L274
	add	r4, r1, #262
	b	.L269
.L274:
	mov	r4, #258
.L269:
	ldrh	r4, [r4, r0]
	ands	r4, r4, #1
	bne	.L270
	str	r4, [r3]
	mov	r0, #-1
	pop	{r4, r5, pc}
.L270:
	add	r4, r0, #264
	adds	r0, r0, #32
	ldrh	r4, [r4, r1]
	uxth	r5, r4
	ldr	r4, [r3]
	cmp	r4, r5
	it	cs
	movcs	r4, r5
	str	r4, [r3]
	add	r1, r0, r1, lsr #2
	add	r4, r4, r2
.L272:
	cmp	r2, r4
	beq	.L275
	ldrb	r3, [r1]	@ zero_extendqisi2
	strb	r3, [r2], #1
	b	.L272
.L275:
	movs	r0, #0
	pop	{r4, r5, pc}
	.size	USBEndpointDataGet, .-USBEndpointDataGet
	.section	.text.USBDevEndpointDataAck,"ax",%progbits
	.align	1
	.global	USBDevEndpointDataAck
	.thumb
	.thumb_func
	.type	USBDevEndpointDataAck, %function
USBDevEndpointDataAck:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbnz	r1, .L277
	cmp	r2, #0
	ite	ne
	movne	r3, #72
	moveq	r3, #64
	strb	r3, [r0, #258]
	bx	lr
.L277:
	add	r0, r0, #262
	ldrb	r3, [r0, r1]	@ zero_extendqisi2
	and	r3, r3, #254
	strb	r3, [r0, r1]
	bx	lr
	.size	USBDevEndpointDataAck, .-USBDevEndpointDataAck
	.section	.text.USBHostEndpointDataAck,"ax",%progbits
	.align	1
	.global	USBHostEndpointDataAck
	.thumb
	.thumb_func
	.type	USBHostEndpointDataAck, %function
USBHostEndpointDataAck:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbnz	r1, .L282
	ldrb	r3, [r0, #258]	@ zero_extendqisi2
	and	r3, r3, #254
	strb	r3, [r0, #258]
	bx	lr
.L282:
	add	r0, r0, #262
	ldrb	r3, [r0, r1]	@ zero_extendqisi2
	and	r3, r3, #254
	strb	r3, [r0, r1]
	bx	lr
	.size	USBHostEndpointDataAck, .-USBHostEndpointDataAck
	.section	.text.USBEndpointDataPut,"ax",%progbits
	.align	1
	.global	USBEndpointDataPut
	.thumb
	.thumb_func
	.type	USBEndpointDataPut, %function
USBEndpointDataPut:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	add	r4, r0, #258
	cmp	r1, #0
	ite	eq
	moveq	r5, #2
	movne	r5, #1
	ldrb	r4, [r4, r1]	@ zero_extendqisi2
	tst	r5, r4
	bne	.L290
	adds	r0, r0, #32
	add	r1, r0, r1, lsr #2
	add	r3, r3, r2
.L287:
	cmp	r2, r3
	beq	.L291
	ldrb	r0, [r2], #1	@ zero_extendqisi2
	strb	r0, [r1]
	b	.L287
.L291:
	movs	r0, #0
	pop	{r4, r5, pc}
.L290:
	mov	r0, #-1
	pop	{r4, r5, pc}
	.size	USBEndpointDataPut, .-USBEndpointDataPut
	.section	.text.USBEndpointDataSend,"ax",%progbits
	.align	1
	.global	USBEndpointDataSend
	.thumb
	.thumb_func
	.type	USBEndpointDataSend, %function
USBEndpointDataSend:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbnz	r1, .L293
	ldrb	r3, [r0, #258]	@ zero_extendqisi2
	lsls	r3, r3, #30
	bmi	.L297
	uxtb	r2, r2
	b	.L295
.L293:
	add	r3, r0, #258
	ldrb	r3, [r3, r1]	@ zero_extendqisi2
	lsls	r3, r3, #31
	bmi	.L297
	ubfx	r2, r2, #8, #8
.L295:
	add	r0, r0, #258
	uxtb	r2, r2
	strb	r2, [r0, r1]
	movs	r0, #0
	bx	lr
.L297:
	mov	r0, #-1
	bx	lr
	.size	USBEndpointDataSend, .-USBEndpointDataSend
	.section	.text.USBFIFOFlush,"ax",%progbits
	.align	1
	.global	USBFIFOFlush
	.thumb
	.thumb_func
	.type	USBFIFOFlush, %function
USBFIFOFlush:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbnz	r1, .L299
	ldrb	r3, [r0, #258]	@ zero_extendqisi2
	lsls	r2, r3, #30
	beq	.L298
	movs	r3, #1
	strb	r3, [r0, #259]
	bx	lr
.L299:
	lsls	r3, r2, #18
	bpl	.L301
	add	r0, r0, #258
	ldrb	r3, [r0, r1]	@ zero_extendqisi2
	lsls	r2, r3, #31
	bpl	.L298
	ldrb	r3, [r0, r1]	@ zero_extendqisi2
	orr	r3, r3, #8
	b	.L311
.L301:
	add	r0, r0, #262
	ldrb	r3, [r0, r1]	@ zero_extendqisi2
	lsls	r3, r3, #31
	bpl	.L298
	ldrb	r3, [r0, r1]	@ zero_extendqisi2
	orr	r3, r3, #16
.L311:
	strb	r3, [r0, r1]
.L298:
	bx	lr
	.size	USBFIFOFlush, .-USBFIFOFlush
	.section	.text.USBHostRequestIN,"ax",%progbits
	.align	1
	.global	USBHostRequestIN
	.thumb
	.thumb_func
	.type	USBHostRequestIN, %function
USBHostRequestIN:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r1, .L314
	add	r1, r1, #262
	b	.L313
.L314:
	mov	r1, #258
.L313:
	movs	r3, #32
	strb	r3, [r1, r0]
	bx	lr
	.size	USBHostRequestIN, .-USBHostRequestIN
	.section	.text.USBHostRequestINClear,"ax",%progbits
	.align	1
	.global	USBHostRequestINClear
	.thumb
	.thumb_func
	.type	USBHostRequestINClear, %function
USBHostRequestINClear:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r1, .L317
	add	r1, r1, #262
	b	.L316
.L317:
	mov	r1, #258
.L316:
	ldrb	r3, [r1, r0]	@ zero_extendqisi2
	and	r3, r3, #223
	strb	r3, [r1, r0]
	bx	lr
	.size	USBHostRequestINClear, .-USBHostRequestINClear
	.section	.text.USBHostRequestStatus,"ax",%progbits
	.align	1
	.global	USBHostRequestStatus
	.thumb
	.thumb_func
	.type	USBHostRequestStatus, %function
USBHostRequestStatus:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r3, #96
	strb	r3, [r0, #258]
	bx	lr
	.size	USBHostRequestStatus, .-USBHostRequestStatus
	.section	.text.USBHostAddrSet,"ax",%progbits
	.align	1
	.global	USBHostAddrSet
	.thumb
	.thumb_func
	.type	USBHostAddrSet, %function
USBHostAddrSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	tst	r3, #8192
	lsr	r1, r1, #1
	ite	ne
	addne	r0, r0, #128
	addeq	r0, r0, #132
	uxtb	r2, r2
	strb	r2, [r0, r1]
	bx	lr
	.size	USBHostAddrSet, .-USBHostAddrSet
	.section	.text.USBHostAddrGet,"ax",%progbits
	.align	1
	.global	USBHostAddrGet
	.thumb
	.thumb_func
	.type	USBHostAddrGet, %function
USBHostAddrGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	tst	r2, #8192
	lsr	r1, r1, #1
	ite	ne
	addne	r0, r0, #128
	addeq	r0, r0, #132
	ldrb	r0, [r0, r1]	@ zero_extendqisi2
	uxtb	r0, r0
	bx	lr
	.size	USBHostAddrGet, .-USBHostAddrGet
	.section	.text.USBHostHubAddrSet,"ax",%progbits
	.align	1
	.global	USBHostHubAddrSet
	.thumb
	.thumb_func
	.type	USBHostHubAddrSet, %function
USBHostHubAddrSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	tst	r3, #8192
	push	{r4, r5, lr}
	lsr	r4, r1, #1
	ite	ne
	addne	r5, r0, #130
	addeq	r5, r0, #134
	uxth	r2, r2
	strh	r2, [r5, r4]	@ movhi
	cbnz	r1, .L327
	lsls	r2, r3, #19
	bpl	.L331
	movs	r3, #128
	b	.L334
.L331:
	lsls	r3, r3, #17
	ite	mi
	movmi	r3, #64
	movpl	r3, #192
.L334:
	strb	r3, [r0, #266]
.L327:
	pop	{r4, r5, pc}
	.size	USBHostHubAddrSet, .-USBHostHubAddrSet
	.section	.text.USBHostHubAddrGet,"ax",%progbits
	.align	1
	.global	USBHostHubAddrGet
	.thumb
	.thumb_func
	.type	USBHostHubAddrGet, %function
USBHostHubAddrGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	tst	r2, #8192
	lsr	r1, r1, #1
	ite	ne
	addne	r0, r0, #130
	addeq	r0, r0, #134
	ldrb	r0, [r0, r1]	@ zero_extendqisi2
	uxtb	r0, r0
	bx	lr
	.size	USBHostHubAddrGet, .-USBHostHubAddrGet
	.section	.text.USBHostPwrConfig,"ax",%progbits
	.align	1
	.global	USBHostPwrConfig
	.thumb
	.thumb_func
	.type	USBHostPwrConfig, %function
USBHostPwrConfig:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	lsrs	r3, r1, #16
	str	r3, [r0, #1072]
	ldrh	r3, [r0, #1024]
	uxth	r3, r3
	bic	r3, r3, #864
	bic	r3, r3, #3
	orrs	r1, r1, r3
	uxth	r1, r1
	strh	r1, [r0, #1024]	@ movhi
	bx	lr
	.size	USBHostPwrConfig, .-USBHostPwrConfig
	.section	.text.USBHostPwrFaultEnable,"ax",%progbits
	.align	1
	.global	USBHostPwrFaultEnable
	.thumb
	.thumb_func
	.type	USBHostPwrFaultEnable, %function
USBHostPwrFaultEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrh	r3, [r0, #1024]
	uxth	r3, r3
	orr	r3, r3, #16
	strh	r3, [r0, #1024]	@ movhi
	bx	lr
	.size	USBHostPwrFaultEnable, .-USBHostPwrFaultEnable
	.section	.text.USBHostPwrFaultDisable,"ax",%progbits
	.align	1
	.global	USBHostPwrFaultDisable
	.thumb
	.thumb_func
	.type	USBHostPwrFaultDisable, %function
USBHostPwrFaultDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrh	r3, [r0, #1024]
	bic	r3, r3, #16
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r0, #1024]	@ movhi
	bx	lr
	.size	USBHostPwrFaultDisable, .-USBHostPwrFaultDisable
	.section	.text.USBHostPwrEnable,"ax",%progbits
	.align	1
	.global	USBHostPwrEnable
	.thumb
	.thumb_func
	.type	USBHostPwrEnable, %function
USBHostPwrEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrh	r3, [r0, #1024]
	uxth	r3, r3
	orr	r3, r3, #4
	strh	r3, [r0, #1024]	@ movhi
	bx	lr
	.size	USBHostPwrEnable, .-USBHostPwrEnable
	.section	.text.USBHostPwrDisable,"ax",%progbits
	.align	1
	.global	USBHostPwrDisable
	.thumb
	.thumb_func
	.type	USBHostPwrDisable, %function
USBHostPwrDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrh	r3, [r0, #1024]
	bic	r3, r3, #4
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r0, #1024]	@ movhi
	bx	lr
	.size	USBHostPwrDisable, .-USBHostPwrDisable
	.section	.text.USBFrameNumberGet,"ax",%progbits
	.align	1
	.global	USBFrameNumberGet
	.thumb
	.thumb_func
	.type	USBFrameNumberGet, %function
USBFrameNumberGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrh	r0, [r0, #12]
	uxth	r0, r0
	bx	lr
	.size	USBFrameNumberGet, .-USBFrameNumberGet
	.section	.text.USBOTGSessionRequest,"ax",%progbits
	.align	1
	.global	USBOTGSessionRequest
	.thumb
	.thumb_func
	.type	USBOTGSessionRequest, %function
USBOTGSessionRequest:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0, #96]	@ zero_extendqisi2
	cbz	r1, .L346
	orr	r3, r3, #1
	b	.L348
.L346:
	and	r3, r3, #254
.L348:
	strb	r3, [r0, #96]
	bx	lr
	.size	USBOTGSessionRequest, .-USBOTGSessionRequest
	.section	.text.USBFIFOAddrGet,"ax",%progbits
	.align	1
	.global	USBFIFOAddrGet
	.thumb
	.thumb_func
	.type	USBFIFOAddrGet, %function
USBFIFOAddrGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	adds	r0, r0, #32
	add	r0, r0, r1, lsr #2
	bx	lr
	.size	USBFIFOAddrGet, .-USBFIFOAddrGet
	.section	.text.USBModeGet,"ax",%progbits
	.align	1
	.global	USBModeGet
	.thumb
	.thumb_func
	.type	USBModeGet, %function
USBModeGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r0, [r0, #96]	@ zero_extendqisi2
	and	r0, r0, #157
	bx	lr
	.size	USBModeGet, .-USBModeGet
	.section	.text.USBEndpointDMAChannel,"ax",%progbits
	.align	1
	.global	USBEndpointDMAChannel
	.thumb
	.thumb_func
	.type	USBEndpointDMAChannel, %function
USBEndpointDMAChannel:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	lsls	r2, r2, #2
	ldr	r4, [r0, #1104]
	movs	r3, #15
	lsls	r3, r3, r2
	lsrs	r1, r1, #4
	bic	r3, r4, r3
	lsls	r1, r1, r2
	orrs	r1, r1, r3
	str	r1, [r0, #1104]
	pop	{r4, pc}
	.size	USBEndpointDMAChannel, .-USBEndpointDMAChannel
	.section	.text.USBHostMode,"ax",%progbits
	.align	1
	.global	USBHostMode
	.thumb
	.thumb_func
	.type	USBHostMode, %function
USBHostMode:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r3, #2
	strb	r3, [r0, #1052]
	bx	lr
	.size	USBHostMode, .-USBHostMode
	.section	.text.USBDevMode,"ax",%progbits
	.align	1
	.global	USBDevMode
	.thumb
	.thumb_func
	.type	USBDevMode, %function
USBDevMode:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r3, #3
	strb	r3, [r0, #1052]
	bx	lr
	.size	USBDevMode, .-USBDevMode
	.section	.text.USBOTGMode,"ax",%progbits
	.align	1
	.global	USBOTGMode
	.thumb
	.thumb_func
	.type	USBOTGMode, %function
USBOTGMode:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r3, #0
	strb	r3, [r0, #1052]
	bx	lr
	.size	USBOTGMode, .-USBOTGMode
	.section	.text.USBModeConfig,"ax",%progbits
	.align	1
	.global	USBModeConfig
	.thumb
	.thumb_func
	.type	USBModeConfig, %function
USBModeConfig:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r1, [r0, #1052]
	bx	lr
	.size	USBModeConfig, .-USBModeConfig
	.section	.text.USBPHYPowerOff,"ax",%progbits
	.align	1
	.global	USBPHYPowerOff
	.thumb
	.thumb_func
	.type	USBPHYPowerOff, %function
USBPHYPowerOff:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0, #1]	@ zero_extendqisi2
	orr	r3, r3, #1
	strb	r3, [r0, #1]
	bx	lr
	.size	USBPHYPowerOff, .-USBPHYPowerOff
	.section	.text.USBPHYPowerOn,"ax",%progbits
	.align	1
	.global	USBPHYPowerOn
	.thumb
	.thumb_func
	.type	USBPHYPowerOn, %function
USBPHYPowerOn:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0, #1]	@ zero_extendqisi2
	and	r3, r3, #254
	strb	r3, [r0, #1]
	bx	lr
	.size	USBPHYPowerOn, .-USBPHYPowerOn
	.section	.text.USBEndpointPacketCountSet,"ax",%progbits
	.align	1
	.global	USBEndpointPacketCountSet
	.thumb
	.thumb_func
	.type	USBEndpointPacketCountSet, %function
USBEndpointPacketCountSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r3, #-1073741824
	add	r0, r0, #772
	add	r1, r3, r1, lsr #4
	str	r2, [r0, r1, lsl #2]
	bx	lr
	.size	USBEndpointPacketCountSet, .-USBEndpointPacketCountSet
	.section	.text.USBNumEndpointsGet,"ax",%progbits
	.align	1
	.global	USBNumEndpointsGet
	.thumb
	.thumb_func
	.type	USBNumEndpointsGet, %function
USBNumEndpointsGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r0, [r0, #120]	@ zero_extendqisi2
	and	r0, r0, #15
	bx	lr
	.size	USBNumEndpointsGet, .-USBNumEndpointsGet
	.section	.text.USBControllerVersion,"ax",%progbits
	.align	1
	.global	USBControllerVersion
	.thumb
	.thumb_func
	.type	USBControllerVersion, %function
USBControllerVersion:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #4032]
	and	r0, r0, #15
	bx	lr
	.size	USBControllerVersion, .-USBControllerVersion
	.section	.text.USBClockEnable,"ax",%progbits
	.align	1
	.global	USBClockEnable
	.thumb
	.thumb_func
	.type	USBClockEnable, %function
USBClockEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r1, r1, #1
	orrs	r2, r2, r1
	str	r2, [r0, #4040]
	bx	lr
	.size	USBClockEnable, .-USBClockEnable
	.section	.text.USBClockDisable,"ax",%progbits
	.align	1
	.global	USBClockDisable
	.thumb
	.thumb_func
	.type	USBClockDisable, %function
USBClockDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r3, #0
	str	r3, [r0, #4040]
	bx	lr
	.size	USBClockDisable, .-USBClockDisable
	.section	.text.USBDMAChannelIntEnable,"ax",%progbits
	.align	1
	.global	USBDMAChannelIntEnable
	.thumb
	.thumb_func
	.type	USBDMAChannelIntEnable, %function
USBDMAChannelIntEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, #516
	lsls	r1, r1, #4
	ldr	r3, [r0, r1]
	orr	r3, r3, #8
	str	r3, [r0, r1]
	bx	lr
	.size	USBDMAChannelIntEnable, .-USBDMAChannelIntEnable
	.section	.text.USBDMAChannelIntDisable,"ax",%progbits
	.align	1
	.global	USBDMAChannelIntDisable
	.thumb
	.thumb_func
	.type	USBDMAChannelIntDisable, %function
USBDMAChannelIntDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, #516
	lsls	r1, r1, #4
	ldr	r3, [r0, r1]
	bic	r3, r3, #8
	str	r3, [r0, r1]
	bx	lr
	.size	USBDMAChannelIntDisable, .-USBDMAChannelIntDisable
	.section	.text.USBDMAChannelIntStatus,"ax",%progbits
	.align	1
	.global	USBDMAChannelIntStatus
	.thumb
	.thumb_func
	.type	USBDMAChannelIntStatus, %function
USBDMAChannelIntStatus:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #512]
	bx	lr
	.size	USBDMAChannelIntStatus, .-USBDMAChannelIntStatus
	.section	.text.USBDMAChannelEnable,"ax",%progbits
	.align	1
	.global	USBDMAChannelEnable
	.thumb
	.thumb_func
	.type	USBDMAChannelEnable, %function
USBDMAChannelEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, #516
	lsls	r1, r1, #4
	ldr	r3, [r0, r1]
	orr	r3, r3, #1
	str	r3, [r0, r1]
	bx	lr
	.size	USBDMAChannelEnable, .-USBDMAChannelEnable
	.section	.text.USBDMAChannelDisable,"ax",%progbits
	.align	1
	.global	USBDMAChannelDisable
	.thumb
	.thumb_func
	.type	USBDMAChannelDisable, %function
USBDMAChannelDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, #516
	lsls	r1, r1, #4
	ldr	r3, [r0, r1]
	bic	r3, r3, #1
	str	r3, [r0, r1]
	bx	lr
	.size	USBDMAChannelDisable, .-USBDMAChannelDisable
	.section	.text.USBDMAChannelConfigSet,"ax",%progbits
	.align	1
	.global	USBDMAChannelConfigSet
	.thumb
	.thumb_func
	.type	USBDMAChannelConfigSet, %function
USBDMAChannelConfigSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	add	r0, r0, #516
	lsls	r1, r1, #4
	movs	r4, #0
	orrs	r3, r3, r2
	str	r4, [r0, r1]
	str	r3, [r0, r1]
	pop	{r4, pc}
	.size	USBDMAChannelConfigSet, .-USBDMAChannelConfigSet
	.section	.text.USBDMAChannelStatus,"ax",%progbits
	.align	1
	.global	USBDMAChannelStatus
	.thumb
	.thumb_func
	.type	USBDMAChannelStatus, %function
USBDMAChannelStatus:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	lsls	r1, r1, #4
	add	r0, r0, #516
	ldr	r0, [r0, r1]
	and	r0, r0, #256
	bx	lr
	.size	USBDMAChannelStatus, .-USBDMAChannelStatus
	.section	.text.USBDMAChannelStatusClear,"ax",%progbits
	.align	1
	.global	USBDMAChannelStatusClear
	.thumb
	.thumb_func
	.type	USBDMAChannelStatusClear, %function
USBDMAChannelStatusClear:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, #516
	lsls	r1, r1, #4
	and	r2, r2, #256
	ldr	r3, [r0, r1]
	bic	r3, r3, r2
	str	r3, [r0, r1]
	bx	lr
	.size	USBDMAChannelStatusClear, .-USBDMAChannelStatusClear
	.section	.text.USBDMAChannelAddressSet,"ax",%progbits
	.align	1
	.global	USBDMAChannelAddressSet
	.thumb
	.thumb_func
	.type	USBDMAChannelAddressSet, %function
USBDMAChannelAddressSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, #520
	lsls	r1, r1, #4
	str	r2, [r0, r1]
	bx	lr
	.size	USBDMAChannelAddressSet, .-USBDMAChannelAddressSet
	.section	.text.USBDMAChannelAddressGet,"ax",%progbits
	.align	1
	.global	USBDMAChannelAddressGet
	.thumb
	.thumb_func
	.type	USBDMAChannelAddressGet, %function
USBDMAChannelAddressGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	lsls	r1, r1, #4
	add	r0, r0, #520
	ldr	r0, [r0, r1]
	bx	lr
	.size	USBDMAChannelAddressGet, .-USBDMAChannelAddressGet
	.section	.text.USBDMAChannelCountSet,"ax",%progbits
	.align	1
	.global	USBDMAChannelCountSet
	.thumb
	.thumb_func
	.type	USBDMAChannelCountSet, %function
USBDMAChannelCountSet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, #524
	lsls	r1, r1, #4
	str	r2, [r0, r1]
	bx	lr
	.size	USBDMAChannelCountSet, .-USBDMAChannelCountSet
	.section	.text.USBDMAChannelCountGet,"ax",%progbits
	.align	1
	.global	USBDMAChannelCountGet
	.thumb
	.thumb_func
	.type	USBDMAChannelCountGet, %function
USBDMAChannelCountGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	lsls	r1, r1, #4
	add	r0, r0, #524
	ldr	r0, [r0, r1]
	bx	lr
	.size	USBDMAChannelCountGet, .-USBDMAChannelCountGet
	.section	.text.USBDMANumChannels,"ax",%progbits
	.align	1
	.global	USBDMANumChannels
	.thumb
	.thumb_func
	.type	USBDMANumChannels, %function
USBDMANumChannels:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #121]
	lsrs	r0, r0, #4
	bx	lr
	.size	USBDMANumChannels, .-USBDMANumChannels
	.section	.text.USBULPIConfig,"ax",%progbits
	.align	1
	.global	USBULPIConfig
	.thumb
	.thumb_func
	.type	USBULPIConfig, %function
USBULPIConfig:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	uxtb	r1, r1
	strb	r1, [r0, #112]
	bx	lr
	.size	USBULPIConfig, .-USBULPIConfig
	.section	.text.USBULPIEnable,"ax",%progbits
	.align	1
	.global	USBULPIEnable
	.thumb
	.thumb_func
	.type	USBULPIEnable, %function
USBULPIEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #4036]
	orr	r3, r3, #65536
	str	r3, [r0, #4036]
	bx	lr
	.size	USBULPIEnable, .-USBULPIEnable
	.section	.text.USBULPIDisable,"ax",%progbits
	.align	1
	.global	USBULPIDisable
	.thumb
	.thumb_func
	.type	USBULPIDisable, %function
USBULPIDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #4036]
	bic	r3, r3, #65536
	str	r3, [r0, #4036]
	bx	lr
	.size	USBULPIDisable, .-USBULPIDisable
	.section	.text.USBULPIRegRead,"ax",%progbits
	.align	1
	.global	USBULPIRegRead
	.thumb
	.thumb_func
	.type	USBULPIRegRead, %function
USBULPIRegRead:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r3, #5
	strb	r1, [r0, #117]
	add	r2, r0, #118
	strb	r3, [r0, #118]
.L380:
	ldrb	r3, [r2]	@ zero_extendqisi2
	lsls	r3, r3, #30
	bpl	.L380
	movs	r3, #0
	strb	r3, [r0, #118]
	ldrb	r0, [r0, #116]	@ zero_extendqisi2
	bx	lr
	.size	USBULPIRegRead, .-USBULPIRegRead
	.section	.text.USBULPIRegWrite,"ax",%progbits
	.align	1
	.global	USBULPIRegWrite
	.thumb
	.thumb_func
	.type	USBULPIRegWrite, %function
USBULPIRegWrite:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r3, #1
	strb	r1, [r0, #117]
	strb	r2, [r0, #116]
	add	r2, r0, #118
	strb	r3, [r0, #118]
.L384:
	ldrb	r3, [r2]	@ zero_extendqisi2
	lsls	r3, r3, #30
	bpl	.L384
	movs	r3, #0
	strb	r3, [r0, #118]
	bx	lr
	.size	USBULPIRegWrite, .-USBULPIRegWrite
	.section	.text.USBHostLPMSend,"ax",%progbits
	.align	1
	.global	USBHostLPMSend
	.thumb
	.thumb_func
	.type	USBHostLPMSend, %function
USBHostLPMSend:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	uxtb	r1, r1
	strb	r1, [r0, #869]
	ldrh	r3, [r0, #864]
	lsrs	r2, r2, #4
	ubfx	r3, r3, #0, #12
	orr	r3, r3, r2, lsl #12
	uxth	r3, r3
	strh	r3, [r0, #864]	@ movhi
	ldrb	r3, [r0, #866]	@ zero_extendqisi2
	orr	r3, r3, #1
	strb	r3, [r0, #866]
	bx	lr
	.size	USBHostLPMSend, .-USBHostLPMSend
	.section	.text.USBHostLPMConfig,"ax",%progbits
	.align	1
	.global	USBHostLPMConfig
	.thumb
	.thumb_func
	.type	USBHostLPMConfig, %function
USBHostLPMConfig:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r1, r1, #50
	movs	r3, #75
	udiv	r1, r1, r3
	orr	r2, r2, r1, lsl #4
	uxth	r1, r2
	strh	r1, [r0, #864]	@ movhi
	bx	lr
	.size	USBHostLPMConfig, .-USBHostLPMConfig
	.section	.text.USBHostLPMResume,"ax",%progbits
	.align	1
	.global	USBHostLPMResume
	.thumb
	.thumb_func
	.type	USBHostLPMResume, %function
USBHostLPMResume:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0, #866]	@ zero_extendqisi2
	orr	r3, r3, #2
	strb	r3, [r0, #866]
	bx	lr
	.size	USBHostLPMResume, .-USBHostLPMResume
	.section	.text.USBDevLPMRemoteWake,"ax",%progbits
	.align	1
	.global	USBDevLPMRemoteWake
	.thumb
	.thumb_func
	.type	USBDevLPMRemoteWake, %function
USBDevLPMRemoteWake:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0, #866]	@ zero_extendqisi2
	orr	r3, r3, #2
	strb	r3, [r0, #866]
	bx	lr
	.size	USBDevLPMRemoteWake, .-USBDevLPMRemoteWake
	.section	.text.USBDevLPMConfig,"ax",%progbits
	.align	1
	.global	USBDevLPMConfig
	.thumb
	.thumb_func
	.type	USBDevLPMConfig, %function
USBDevLPMConfig:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	uxtb	r1, r1
	strb	r1, [r0, #866]
	bx	lr
	.size	USBDevLPMConfig, .-USBDevLPMConfig
	.section	.text.USBDevLPMEnable,"ax",%progbits
	.align	1
	.global	USBDevLPMEnable
	.thumb
	.thumb_func
	.type	USBDevLPMEnable, %function
USBDevLPMEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0, #866]	@ zero_extendqisi2
	orr	r3, r3, #13
	strb	r3, [r0, #866]
	bx	lr
	.size	USBDevLPMEnable, .-USBDevLPMEnable
	.section	.text.USBDevLPMDisable,"ax",%progbits
	.align	1
	.global	USBDevLPMDisable
	.thumb
	.thumb_func
	.type	USBDevLPMDisable, %function
USBDevLPMDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0, #866]	@ zero_extendqisi2
	and	r3, r3, #254
	strb	r3, [r0, #866]
	bx	lr
	.size	USBDevLPMDisable, .-USBDevLPMDisable
	.section	.text.USBLPMLinkStateGet,"ax",%progbits
	.align	1
	.global	USBLPMLinkStateGet
	.thumb
	.thumb_func
	.type	USBLPMLinkStateGet, %function
USBLPMLinkStateGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrh	r0, [r0, #864]
	and	r0, r0, #15
	bx	lr
	.size	USBLPMLinkStateGet, .-USBLPMLinkStateGet
	.section	.text.USBLPMEndpointGet,"ax",%progbits
	.align	1
	.global	USBLPMEndpointGet
	.thumb
	.thumb_func
	.type	USBLPMEndpointGet, %function
USBLPMEndpointGet:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrh	r0, [r0, #864]
	ubfx	r0, r0, #12, #4
	bx	lr
	.size	USBLPMEndpointGet, .-USBLPMEndpointGet
	.section	.text.USBLPMRemoteWakeEnabled,"ax",%progbits
	.align	1
	.global	USBLPMRemoteWakeEnabled
	.thumb
	.thumb_func
	.type	USBLPMRemoteWakeEnabled, %function
USBLPMRemoteWakeEnabled:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrh	r0, [r0, #864]
	ubfx	r0, r0, #8, #1
	bx	lr
	.size	USBLPMRemoteWakeEnabled, .-USBLPMRemoteWakeEnabled
	.section	.text.USBLPMIntStatus,"ax",%progbits
	.align	1
	.global	USBLPMIntStatus
	.thumb
	.thumb_func
	.type	USBLPMIntStatus, %function
USBLPMIntStatus:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r0, [r0, #868]	@ zero_extendqisi2
	bx	lr
	.size	USBLPMIntStatus, .-USBLPMIntStatus
	.section	.text.USBLPMIntEnable,"ax",%progbits
	.align	1
	.global	USBLPMIntEnable
	.thumb
	.thumb_func
	.type	USBLPMIntEnable, %function
USBLPMIntEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0, #867]	@ zero_extendqisi2
	orrs	r1, r1, r3
	uxtb	r1, r1
	strb	r1, [r0, #867]
	bx	lr
	.size	USBLPMIntEnable, .-USBLPMIntEnable
	.section	.text.USBLPMIntDisable,"ax",%progbits
	.align	1
	.global	USBLPMIntDisable
	.thumb
	.thumb_func
	.type	USBLPMIntDisable, %function
USBLPMIntDisable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0, #867]	@ zero_extendqisi2
	bic	r1, r3, r1
	strb	r1, [r0, #867]
	bx	lr
	.size	USBLPMIntDisable, .-USBLPMIntDisable
	.ident	"GCC: (15:4.9.3+svn227297-1) 4.9.3 20150529 (prerelease)"
