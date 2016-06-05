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
	.file	"sw_crc.c"
	.section	.text.Crc8CCITT,"ax",%progbits
	.align	1
	.global	Crc8CCITT
	.thumb
	.thumb_func
	.type	Crc8CCITT, %function
Crc8CCITT:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	lsls	r4, r1, #31
	itttt	mi
	ldrbmi	r3, [r1], #1	@ zero_extendqisi2
	eormi	r0, r0, r3
	ldrmi	r3, .L19
	addmi	r2, r2, #-1
	it	mi
	ldrbmi	r0, [r3, r0]	@ zero_extendqisi2
	lsls	r3, r1, #30
	bpl	.L3
	cmp	r2, #1
	bls	.L3
	ldrh	r5, [r1], #2
	ldr	r4, .L19
	eors	r0, r0, r5
	uxtb	r0, r0
	subs	r2, r2, #2
	ldrb	r3, [r4, r0]	@ zero_extendqisi2
	eor	r3, r3, r5, lsr #8
	ldrb	r0, [r4, r3]	@ zero_extendqisi2
.L3:
	mov	r5, r1
.L4:
	subs	r3, r2, r5
	add	r3, r3, r1
	cmp	r3, #3
	bls	.L18
	ldr	r6, [r5], #4
	ldr	r4, .L19
	eors	r0, r0, r6
	uxtb	r0, r0
	ldrb	r3, [r4, r0]	@ zero_extendqisi2
	eor	r3, r3, r6, lsr #8
	uxtb	r3, r3
	ldrb	r3, [r4, r3]	@ zero_extendqisi2
	eor	r3, r3, r6, lsr #16
	uxtb	r3, r3
	ldrb	r3, [r4, r3]	@ zero_extendqisi2
	eor	r3, r3, r6, lsr #24
	ldrb	r0, [r4, r3]	@ zero_extendqisi2
	b	.L4
.L18:
	lsrs	r4, r2, #2
	and	r2, r2, #3
	cmp	r2, #1
	add	r3, r1, r4, lsl #2
	bls	.L6
	ldrh	r5, [r1, r4, lsl #2]
	ldr	r4, .L19
	eors	r0, r0, r5
	uxtb	r0, r0
	adds	r3, r3, #2
	ldrb	r1, [r4, r0]	@ zero_extendqisi2
	eor	r1, r1, r5, lsr #8
	subs	r2, r2, #2
	ldrb	r0, [r4, r1]	@ zero_extendqisi2
.L6:
	cbz	r2, .L7
	ldrb	r3, [r3]	@ zero_extendqisi2
	eors	r0, r0, r3
	ldr	r3, .L19
	ldrb	r0, [r3, r0]	@ zero_extendqisi2
.L7:
	pop	{r4, r5, r6, pc}
.L20:
	.align	2
.L19:
	.word	.LANCHOR0
	.size	Crc8CCITT, .-Crc8CCITT
	.section	.text.Crc16,"ax",%progbits
	.align	1
	.global	Crc16
	.thumb
	.thumb_func
	.type	Crc16, %function
Crc16:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	lsls	r4, r1, #31
	bpl	.L22
	ldrb	r3, [r1], #1	@ zero_extendqisi2
	ldr	r4, .L38
	eors	r3, r3, r0
	uxtb	r3, r3
	subs	r2, r2, #1
	ldrh	r3, [r4, r3, lsl #1]
	eor	r0, r3, r0, lsr #8
.L22:
	lsls	r3, r1, #30
	bpl	.L23
	cmp	r2, #1
	bls	.L23
	ldrh	r3, [r1], #2
	ldr	r5, .L38
	eor	r4, r3, r0
	uxtb	r4, r4
	subs	r2, r2, #2
	ldrh	r4, [r5, r4, lsl #1]
	eor	r0, r4, r0, lsr #8
	eor	r3, r0, r3, lsr #8
	uxtb	r3, r3
	ldrh	r3, [r5, r3, lsl #1]
	eor	r0, r3, r0, lsr #8
.L23:
	mov	r6, r1
.L24:
	subs	r3, r2, r6
	add	r3, r3, r1
	cmp	r3, #3
	bls	.L37
	ldr	r3, [r6], #4
	ldr	r5, .L38
	eor	r4, r3, r0
	uxtb	r4, r4
	ldrh	r4, [r5, r4, lsl #1]
	eor	r0, r4, r0, lsr #8
	eor	r4, r0, r3, lsr #8
	uxtb	r4, r4
	ldrh	r4, [r5, r4, lsl #1]
	eor	r0, r4, r0, lsr #8
	eor	r4, r0, r3, lsr #16
	uxtb	r4, r4
	ldrh	r4, [r5, r4, lsl #1]
	eor	r0, r4, r0, lsr #8
	eor	r3, r0, r3, lsr #24
	uxtb	r3, r3
	ldrh	r3, [r5, r3, lsl #1]
	eor	r0, r3, r0, lsr #8
	b	.L24
.L37:
	lsrs	r3, r2, #2
	and	r2, r2, #3
	cmp	r2, #1
	add	r4, r1, r3, lsl #2
	bls	.L26
	ldrh	r3, [r1, r3, lsl #2]
	ldr	r5, .L38
	eor	r1, r0, r3
	uxtb	r1, r1
	adds	r4, r4, #2
	ldrh	r1, [r5, r1, lsl #1]
	eor	r0, r1, r0, lsr #8
	eor	r3, r0, r3, lsr #8
	uxtb	r3, r3
	subs	r2, r2, #2
	ldrh	r3, [r5, r3, lsl #1]
	eor	r0, r3, r0, lsr #8
.L26:
	cbz	r2, .L27
	ldrb	r3, [r4]	@ zero_extendqisi2
	ldr	r2, .L38
	eors	r3, r3, r0
	uxtb	r3, r3
	ldrh	r3, [r2, r3, lsl #1]
	eor	r0, r3, r0, lsr #8
.L27:
	pop	{r4, r5, r6, pc}
.L39:
	.align	2
.L38:
	.word	.LANCHOR1
	.size	Crc16, .-Crc16
	.section	.text.Crc16Array,"ax",%progbits
	.align	1
	.global	Crc16Array
	.thumb
	.thumb_func
	.type	Crc16Array, %function
Crc16Array:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	lsls	r2, r0, #2
	movs	r0, #0
	b	Crc16
	.size	Crc16Array, .-Crc16Array
	.section	.text.Crc16Array3,"ax",%progbits
	.align	1
	.global	Crc16Array3
	.thumb
	.thumb_func
	.type	Crc16Array3, %function
Crc16Array3:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	movs	r4, #0
	mov	r5, r4
	mov	r7, r4
.L42:
	adds	r0, r0, #-1
	bcc	.L44
	ldr	r3, [r1], #4
	ldr	r6, .L45
	uxtb	r8, r3
	eor	lr, r8, r7
	uxtb	lr, lr
	eor	r8, r8, r4
	ldrh	lr, [r6, lr, lsl #1]
	eor	r7, lr, r7, lsr #8
	ubfx	lr, r3, #8, #8
	eor	ip, lr, r7
	uxtb	ip, ip
	eor	lr, lr, r5
	ldrh	ip, [r6, ip, lsl #1]
	eor	r7, ip, r7, lsr #8
	ubfx	ip, r3, #16, #8
	eor	r9, ip, r7
	uxtb	r9, r9
	uxtb	r8, r8
	uxtb	lr, lr
	ldrh	r9, [r6, r9, lsl #1]
	ldrh	r8, [r6, r8, lsl #1]
	ldrh	lr, [r6, lr, lsl #1]
	eor	r7, r9, r7, lsr #8
	lsrs	r3, r3, #24
	eor	r4, r8, r4, lsr #8
	eor	r5, lr, r5, lsr #8
	eor	r9, r3, r7
	eor	ip, ip, r4
	eors	r3, r3, r5
	uxtb	r9, r9
	uxtb	ip, ip
	uxtb	r3, r3
	ldrh	r9, [r6, r9, lsl #1]
	ldrh	ip, [r6, ip, lsl #1]
	ldrh	r3, [r6, r3, lsl #1]
	eor	r7, r9, r7, lsr #8
	eor	r4, ip, r4, lsr #8
	eor	r5, r3, r5, lsr #8
	b	.L42
.L44:
	strh	r7, [r2]	@ movhi
	strh	r4, [r2, #2]	@ movhi
	strh	r5, [r2, #4]	@ movhi
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L46:
	.align	2
.L45:
	.word	.LANCHOR1
	.size	Crc16Array3, .-Crc16Array3
	.section	.text.Crc32,"ax",%progbits
	.align	1
	.global	Crc32
	.thumb
	.thumb_func
	.type	Crc32, %function
Crc32:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	lsls	r4, r1, #31
	bpl	.L48
	ldrb	r3, [r1], #1	@ zero_extendqisi2
	ldr	r4, .L64
	eors	r3, r3, r0
	uxtb	r3, r3
	subs	r2, r2, #1
	ldr	r3, [r4, r3, lsl #2]
	eor	r0, r3, r0, lsr #8
.L48:
	lsls	r3, r1, #30
	bpl	.L49
	cmp	r2, #1
	bls	.L49
	ldrh	r3, [r1], #2
	ldr	r5, .L64
	eor	r4, r3, r0
	uxtb	r4, r4
	subs	r2, r2, #2
	ldr	r4, [r5, r4, lsl #2]
	eor	r0, r4, r0, lsr #8
	eor	r3, r0, r3, lsr #8
	uxtb	r3, r3
	ldr	r3, [r5, r3, lsl #2]
	eor	r0, r3, r0, lsr #8
.L49:
	mov	r6, r1
.L50:
	subs	r3, r2, r6
	add	r3, r3, r1
	cmp	r3, #3
	bls	.L63
	ldr	r3, [r6], #4
	ldr	r5, .L64
	eor	r4, r3, r0
	uxtb	r4, r4
	ldr	r4, [r5, r4, lsl #2]
	eor	r0, r4, r0, lsr #8
	eor	r4, r0, r3, lsr #8
	uxtb	r4, r4
	ldr	r4, [r5, r4, lsl #2]
	eor	r0, r4, r0, lsr #8
	eor	r4, r0, r3, lsr #16
	uxtb	r4, r4
	ldr	r4, [r5, r4, lsl #2]
	eor	r0, r4, r0, lsr #8
	eor	r3, r0, r3, lsr #24
	uxtb	r3, r3
	ldr	r3, [r5, r3, lsl #2]
	eor	r0, r3, r0, lsr #8
	b	.L50
.L63:
	lsrs	r3, r2, #2
	and	r2, r2, #3
	cmp	r2, #1
	add	r4, r1, r3, lsl #2
	bls	.L52
	ldrh	r3, [r1, r3, lsl #2]
	ldr	r5, .L64
	eor	r1, r0, r3
	uxtb	r1, r1
	adds	r4, r4, #2
	ldr	r1, [r5, r1, lsl #2]
	eor	r0, r1, r0, lsr #8
	eor	r3, r0, r3, lsr #8
	uxtb	r3, r3
	subs	r2, r2, #2
	ldr	r3, [r5, r3, lsl #2]
	eor	r0, r3, r0, lsr #8
.L52:
	cbz	r2, .L53
	ldrb	r3, [r4]	@ zero_extendqisi2
	ldr	r2, .L64
	eors	r3, r3, r0
	uxtb	r3, r3
	ldr	r3, [r2, r3, lsl #2]
	eor	r0, r3, r0, lsr #8
.L53:
	pop	{r4, r5, r6, pc}
.L65:
	.align	2
.L64:
	.word	.LANCHOR2
	.size	Crc32, .-Crc32
	.section	.rodata.g_pui32Crc32,"a",%progbits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	g_pui32Crc32, %object
	.size	g_pui32Crc32, 1024
g_pui32Crc32:
	.word	0
	.word	1996959894
	.word	-301047508
	.word	-1727442502
	.word	124634137
	.word	1886057615
	.word	-379345611
	.word	-1637575261
	.word	249268274
	.word	2044508324
	.word	-522852066
	.word	-1747789432
	.word	162941995
	.word	2125561021
	.word	-407360249
	.word	-1866523247
	.word	498536548
	.word	1789927666
	.word	-205950648
	.word	-2067906082
	.word	450548861
	.word	1843258603
	.word	-187386543
	.word	-2083289657
	.word	325883990
	.word	1684777152
	.word	-43845254
	.word	-1973040660
	.word	335633487
	.word	1661365465
	.word	-99664541
	.word	-1928851979
	.word	997073096
	.word	1281953886
	.word	-715111964
	.word	-1570279054
	.word	1006888145
	.word	1258607687
	.word	-770865667
	.word	-1526024853
	.word	901097722
	.word	1119000684
	.word	-608450090
	.word	-1396901568
	.word	853044451
	.word	1172266101
	.word	-589951537
	.word	-1412350631
	.word	651767980
	.word	1373503546
	.word	-925412992
	.word	-1076862698
	.word	565507253
	.word	1454621731
	.word	-809855591
	.word	-1195530993
	.word	671266974
	.word	1594198024
	.word	-972236366
	.word	-1324619484
	.word	795835527
	.word	1483230225
	.word	-1050600021
	.word	-1234817731
	.word	1994146192
	.word	31158534
	.word	-1731059524
	.word	-271249366
	.word	1907459465
	.word	112637215
	.word	-1614814043
	.word	-390540237
	.word	2013776290
	.word	251722036
	.word	-1777751922
	.word	-519137256
	.word	2137656763
	.word	141376813
	.word	-1855689577
	.word	-429695999
	.word	1802195444
	.word	476864866
	.word	-2056965928
	.word	-228458418
	.word	1812370925
	.word	453092731
	.word	-2113342271
	.word	-183516073
	.word	1706088902
	.word	314042704
	.word	-1950435094
	.word	-54949764
	.word	1658658271
	.word	366619977
	.word	-1932296973
	.word	-69972891
	.word	1303535960
	.word	984961486
	.word	-1547960204
	.word	-725929758
	.word	1256170817
	.word	1037604311
	.word	-1529756563
	.word	-740887301
	.word	1131014506
	.word	879679996
	.word	-1385723834
	.word	-631195440
	.word	1141124467
	.word	855842277
	.word	-1442165665
	.word	-586318647
	.word	1342533948
	.word	654459306
	.word	-1106571248
	.word	-921952122
	.word	1466479909
	.word	544179635
	.word	-1184443383
	.word	-832445281
	.word	1591671054
	.word	702138776
	.word	-1328506846
	.word	-942167884
	.word	1504918807
	.word	783551873
	.word	-1212326853
	.word	-1061524307
	.word	-306674912
	.word	-1698712650
	.word	62317068
	.word	1957810842
	.word	-355121351
	.word	-1647151185
	.word	81470997
	.word	1943803523
	.word	-480048366
	.word	-1805370492
	.word	225274430
	.word	2053790376
	.word	-468791541
	.word	-1828061283
	.word	167816743
	.word	2097651377
	.word	-267414716
	.word	-2029476910
	.word	503444072
	.word	1762050814
	.word	-144550051
	.word	-2140837941
	.word	426522225
	.word	1852507879
	.word	-19653770
	.word	-1982649376
	.word	282753626
	.word	1742555852
	.word	-105259153
	.word	-1900089351
	.word	397917763
	.word	1622183637
	.word	-690576408
	.word	-1580100738
	.word	953729732
	.word	1340076626
	.word	-776247311
	.word	-1497606297
	.word	1068828381
	.word	1219638859
	.word	-670225446
	.word	-1358292148
	.word	906185462
	.word	1090812512
	.word	-547295293
	.word	-1469587627
	.word	829329135
	.word	1181335161
	.word	-882789492
	.word	-1134132454
	.word	628085408
	.word	1382605366
	.word	-871598187
	.word	-1156888829
	.word	570562233
	.word	1426400815
	.word	-977650754
	.word	-1296233688
	.word	733239954
	.word	1555261956
	.word	-1026031705
	.word	-1244606671
	.word	752459403
	.word	1541320221
	.word	-1687895376
	.word	-328994266
	.word	1969922972
	.word	40735498
	.word	-1677130071
	.word	-351390145
	.word	1913087877
	.word	83908371
	.word	-1782625662
	.word	-491226604
	.word	2075208622
	.word	213261112
	.word	-1831694693
	.word	-438977011
	.word	2094854071
	.word	198958881
	.word	-2032938284
	.word	-237706686
	.word	1759359992
	.word	534414190
	.word	-2118248755
	.word	-155638181
	.word	1873836001
	.word	414664567
	.word	-2012718362
	.word	-15766928
	.word	1711684554
	.word	285281116
	.word	-1889165569
	.word	-127750551
	.word	1634467795
	.word	376229701
	.word	-1609899400
	.word	-686959890
	.word	1308918612
	.word	956543938
	.word	-1486412191
	.word	-799009033
	.word	1231636301
	.word	1047427035
	.word	-1362007478
	.word	-640263460
	.word	1088359270
	.word	936918000
	.word	-1447252397
	.word	-558129467
	.word	1202900863
	.word	817233897
	.word	-1111625188
	.word	-893730166
	.word	1404277552
	.word	615818150
	.word	-1160759803
	.word	-841546093
	.word	1423857449
	.word	601450431
	.word	-1285129682
	.word	-1000256840
	.word	1567103746
	.word	711928724
	.word	-1274298825
	.word	-1022587231
	.word	1510334235
	.word	755167117
	.section	.rodata.g_pui16Crc16,"a",%progbits
	.align	1
	.set	.LANCHOR1,. + 0
	.type	g_pui16Crc16, %object
	.size	g_pui16Crc16, 512
g_pui16Crc16:
	.short	0
	.short	-16191
	.short	-15999
	.short	320
	.short	-15615
	.short	960
	.short	640
	.short	-15807
	.short	-14847
	.short	1728
	.short	1920
	.short	-14527
	.short	1280
	.short	-14911
	.short	-15231
	.short	1088
	.short	-13311
	.short	3264
	.short	3456
	.short	-12991
	.short	3840
	.short	-12351
	.short	-12671
	.short	3648
	.short	2560
	.short	-13631
	.short	-13439
	.short	2880
	.short	-14079
	.short	2496
	.short	2176
	.short	-14271
	.short	-10239
	.short	6336
	.short	6528
	.short	-9919
	.short	6912
	.short	-9279
	.short	-9599
	.short	6720
	.short	7680
	.short	-8511
	.short	-8319
	.short	8000
	.short	-8959
	.short	7616
	.short	7296
	.short	-9151
	.short	5120
	.short	-11071
	.short	-10879
	.short	5440
	.short	-10495
	.short	6080
	.short	5760
	.short	-10687
	.short	-11775
	.short	4800
	.short	4992
	.short	-11455
	.short	4352
	.short	-11839
	.short	-12159
	.short	4160
	.short	-4095
	.short	12480
	.short	12672
	.short	-3775
	.short	13056
	.short	-3135
	.short	-3455
	.short	12864
	.short	13824
	.short	-2367
	.short	-2175
	.short	14144
	.short	-2815
	.short	13760
	.short	13440
	.short	-3007
	.short	15360
	.short	-831
	.short	-639
	.short	15680
	.short	-255
	.short	16320
	.short	16000
	.short	-447
	.short	-1535
	.short	15040
	.short	15232
	.short	-1215
	.short	14592
	.short	-1599
	.short	-1919
	.short	14400
	.short	10240
	.short	-5951
	.short	-5759
	.short	10560
	.short	-5375
	.short	11200
	.short	10880
	.short	-5567
	.short	-4607
	.short	11968
	.short	12160
	.short	-4287
	.short	11520
	.short	-4671
	.short	-4991
	.short	11328
	.short	-7167
	.short	9408
	.short	9600
	.short	-6847
	.short	9984
	.short	-6207
	.short	-6527
	.short	9792
	.short	8704
	.short	-7487
	.short	-7295
	.short	9024
	.short	-7935
	.short	8640
	.short	8320
	.short	-8127
	.short	-24575
	.short	24768
	.short	24960
	.short	-24255
	.short	25344
	.short	-23615
	.short	-23935
	.short	25152
	.short	26112
	.short	-22847
	.short	-22655
	.short	26432
	.short	-23295
	.short	26048
	.short	25728
	.short	-23487
	.short	27648
	.short	-21311
	.short	-21119
	.short	27968
	.short	-20735
	.short	28608
	.short	28288
	.short	-20927
	.short	-22015
	.short	27328
	.short	27520
	.short	-21695
	.short	26880
	.short	-22079
	.short	-22399
	.short	26688
	.short	30720
	.short	-18239
	.short	-18047
	.short	31040
	.short	-17663
	.short	31680
	.short	31360
	.short	-17855
	.short	-16895
	.short	32448
	.short	32640
	.short	-16575
	.short	32000
	.short	-16959
	.short	-17279
	.short	31808
	.short	-19455
	.short	29888
	.short	30080
	.short	-19135
	.short	30464
	.short	-18495
	.short	-18815
	.short	30272
	.short	29184
	.short	-19775
	.short	-19583
	.short	29504
	.short	-20223
	.short	29120
	.short	28800
	.short	-20415
	.short	20480
	.short	-28479
	.short	-28287
	.short	20800
	.short	-27903
	.short	21440
	.short	21120
	.short	-28095
	.short	-27135
	.short	22208
	.short	22400
	.short	-26815
	.short	21760
	.short	-27199
	.short	-27519
	.short	21568
	.short	-25599
	.short	23744
	.short	23936
	.short	-25279
	.short	24320
	.short	-24639
	.short	-24959
	.short	24128
	.short	23040
	.short	-25919
	.short	-25727
	.short	23360
	.short	-26367
	.short	22976
	.short	22656
	.short	-26559
	.short	-30719
	.short	18624
	.short	18816
	.short	-30399
	.short	19200
	.short	-29759
	.short	-30079
	.short	19008
	.short	19968
	.short	-28991
	.short	-28799
	.short	20288
	.short	-29439
	.short	19904
	.short	19584
	.short	-29631
	.short	17408
	.short	-31551
	.short	-31359
	.short	17728
	.short	-30975
	.short	18368
	.short	18048
	.short	-31167
	.short	-32255
	.short	17088
	.short	17280
	.short	-31935
	.short	16640
	.short	-32319
	.short	-32639
	.short	16448
	.section	.rodata.g_pui8Crc8CCITT,"a",%progbits
	.set	.LANCHOR0,. + 0
	.type	g_pui8Crc8CCITT, %object
	.size	g_pui8Crc8CCITT, 256
g_pui8Crc8CCITT:
	.byte	0
	.byte	7
	.byte	14
	.byte	9
	.byte	28
	.byte	27
	.byte	18
	.byte	21
	.byte	56
	.byte	63
	.byte	54
	.byte	49
	.byte	36
	.byte	35
	.byte	42
	.byte	45
	.byte	112
	.byte	119
	.byte	126
	.byte	121
	.byte	108
	.byte	107
	.byte	98
	.byte	101
	.byte	72
	.byte	79
	.byte	70
	.byte	65
	.byte	84
	.byte	83
	.byte	90
	.byte	93
	.byte	-32
	.byte	-25
	.byte	-18
	.byte	-23
	.byte	-4
	.byte	-5
	.byte	-14
	.byte	-11
	.byte	-40
	.byte	-33
	.byte	-42
	.byte	-47
	.byte	-60
	.byte	-61
	.byte	-54
	.byte	-51
	.byte	-112
	.byte	-105
	.byte	-98
	.byte	-103
	.byte	-116
	.byte	-117
	.byte	-126
	.byte	-123
	.byte	-88
	.byte	-81
	.byte	-90
	.byte	-95
	.byte	-76
	.byte	-77
	.byte	-70
	.byte	-67
	.byte	-57
	.byte	-64
	.byte	-55
	.byte	-50
	.byte	-37
	.byte	-36
	.byte	-43
	.byte	-46
	.byte	-1
	.byte	-8
	.byte	-15
	.byte	-10
	.byte	-29
	.byte	-28
	.byte	-19
	.byte	-22
	.byte	-73
	.byte	-80
	.byte	-71
	.byte	-66
	.byte	-85
	.byte	-84
	.byte	-91
	.byte	-94
	.byte	-113
	.byte	-120
	.byte	-127
	.byte	-122
	.byte	-109
	.byte	-108
	.byte	-99
	.byte	-102
	.byte	39
	.byte	32
	.byte	41
	.byte	46
	.byte	59
	.byte	60
	.byte	53
	.byte	50
	.byte	31
	.byte	24
	.byte	17
	.byte	22
	.byte	3
	.byte	4
	.byte	13
	.byte	10
	.byte	87
	.byte	80
	.byte	89
	.byte	94
	.byte	75
	.byte	76
	.byte	69
	.byte	66
	.byte	111
	.byte	104
	.byte	97
	.byte	102
	.byte	115
	.byte	116
	.byte	125
	.byte	122
	.byte	-119
	.byte	-114
	.byte	-121
	.byte	-128
	.byte	-107
	.byte	-110
	.byte	-101
	.byte	-100
	.byte	-79
	.byte	-74
	.byte	-65
	.byte	-72
	.byte	-83
	.byte	-86
	.byte	-93
	.byte	-92
	.byte	-7
	.byte	-2
	.byte	-9
	.byte	-16
	.byte	-27
	.byte	-30
	.byte	-21
	.byte	-20
	.byte	-63
	.byte	-58
	.byte	-49
	.byte	-56
	.byte	-35
	.byte	-38
	.byte	-45
	.byte	-44
	.byte	105
	.byte	110
	.byte	103
	.byte	96
	.byte	117
	.byte	114
	.byte	123
	.byte	124
	.byte	81
	.byte	86
	.byte	95
	.byte	88
	.byte	77
	.byte	74
	.byte	67
	.byte	68
	.byte	25
	.byte	30
	.byte	23
	.byte	16
	.byte	5
	.byte	2
	.byte	11
	.byte	12
	.byte	33
	.byte	38
	.byte	47
	.byte	40
	.byte	61
	.byte	58
	.byte	51
	.byte	52
	.byte	78
	.byte	73
	.byte	64
	.byte	71
	.byte	82
	.byte	85
	.byte	92
	.byte	91
	.byte	118
	.byte	113
	.byte	120
	.byte	127
	.byte	106
	.byte	109
	.byte	100
	.byte	99
	.byte	62
	.byte	57
	.byte	48
	.byte	55
	.byte	34
	.byte	37
	.byte	44
	.byte	43
	.byte	6
	.byte	1
	.byte	8
	.byte	15
	.byte	26
	.byte	29
	.byte	20
	.byte	19
	.byte	-82
	.byte	-87
	.byte	-96
	.byte	-89
	.byte	-78
	.byte	-75
	.byte	-68
	.byte	-69
	.byte	-106
	.byte	-111
	.byte	-104
	.byte	-97
	.byte	-118
	.byte	-115
	.byte	-124
	.byte	-125
	.byte	-34
	.byte	-39
	.byte	-48
	.byte	-41
	.byte	-62
	.byte	-59
	.byte	-52
	.byte	-53
	.byte	-26
	.byte	-31
	.byte	-24
	.byte	-17
	.byte	-6
	.byte	-3
	.byte	-12
	.byte	-13
	.ident	"GCC: (15:4.9.3+svn227297-1) 4.9.3 20150529 (prerelease)"
