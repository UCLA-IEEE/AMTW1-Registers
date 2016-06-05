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
	.file	"cpu.c"
	.section	.text.CPUcpsid,"ax",%progbits
	.align	1
	.global	CPUcpsid
	.thumb
	.thumb_func
	.type	CPUcpsid, %function
CPUcpsid:
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ 59 "driverlib/cpu.c" 1
	    mrs     r0, PRIMASK
    cpsid   i
    bx      lr

@ 0 "" 2
	.thumb
	.size	CPUcpsid, .-CPUcpsid
	.section	.text.CPUprimask,"ax",%progbits
	.align	1
	.global	CPUprimask
	.thumb
	.thumb_func
	.type	CPUprimask, %function
CPUprimask:
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ 141 "driverlib/cpu.c" 1
	    mrs     r0, PRIMASK
    bx      lr

@ 0 "" 2
	.thumb
	.size	CPUprimask, .-CPUprimask
	.section	.text.CPUcpsie,"ax",%progbits
	.align	1
	.global	CPUcpsie
	.thumb
	.thumb_func
	.type	CPUcpsie, %function
CPUcpsie:
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ 219 "driverlib/cpu.c" 1
	    mrs     r0, PRIMASK
    cpsie   i
    bx      lr

@ 0 "" 2
	.thumb
	.size	CPUcpsie, .-CPUcpsie
	.section	.text.CPUwfi,"ax",%progbits
	.align	1
	.global	CPUwfi
	.thumb
	.thumb_func
	.type	CPUwfi, %function
CPUwfi:
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ 298 "driverlib/cpu.c" 1
	    wfi
    bx      lr

@ 0 "" 2
	.thumb
	.size	CPUwfi, .-CPUwfi
	.section	.text.CPUbasepriSet,"ax",%progbits
	.align	1
	.global	CPUbasepriSet
	.thumb
	.thumb_func
	.type	CPUbasepriSet, %function
CPUbasepriSet:
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ 346 "driverlib/cpu.c" 1
	    msr     BASEPRI, r0
    bx      lr

@ 0 "" 2
	.thumb
	.size	CPUbasepriSet, .-CPUbasepriSet
	.section	.text.CPUbasepriGet,"ax",%progbits
	.align	1
	.global	CPUbasepriGet
	.thumb
	.thumb_func
	.type	CPUbasepriGet, %function
CPUbasepriGet:
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ 396 "driverlib/cpu.c" 1
	    mrs     r0, BASEPRI
    bx      lr

@ 0 "" 2
	.thumb
	.size	CPUbasepriGet, .-CPUbasepriGet
	.ident	"GCC: (15:4.9.3+svn227297-1) 4.9.3 20150529 (prerelease)"
