.include "macros.inc"
.file "temp.c"

# 0x00000000..0x00000614 | size: 0x614
.text
.balign 4

# .text:0x0 | size: 0x144
.fn f1, global
/* 00000000 00000034  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 00000004 00000038  48 00 00 10 */	b .L_00000014
.L_00000008:
/* 00000008 0000003C  80 83 00 04 */	lwz r4, 0x4(r3)
/* 0000000C 00000040  38 04 00 01 */	addi r0, r4, 0x1
/* 00000010 00000044  90 03 00 04 */	stw r0, 0x4(r3)
.L_00000014:
/* 00000014 00000048  80 A3 00 00 */	lwz r5, 0x0(r3)
/* 00000018 0000004C  80 83 00 04 */	lwz r4, 0x4(r3)
/* 0000001C 00000050  7C 05 20 AE */	lbzx r0, r5, r4
/* 00000020 00000054  7C 00 07 74 */	extsb r0, r0
/* 00000024 00000058  2C 00 00 20 */	cmpwi r0, 0x20
/* 00000028 0000005C  41 82 FF E0 */	beq .L_00000008
/* 0000002C 00000060  38 04 00 01 */	addi r0, r4, 0x1
/* 00000030 00000064  90 03 00 04 */	stw r0, 0x4(r3)
/* 00000034 00000068  7C 05 20 AE */	lbzx r0, r5, r4
/* 00000038 0000006C  7C 04 07 74 */	extsb r4, r0
/* 0000003C 00000070  2C 04 00 30 */	cmpwi r4, 0x30
/* 00000040 00000074  41 80 00 6C */	blt .L_000000AC
/* 00000044 00000078  2C 04 00 39 */	cmpwi r4, 0x39
/* 00000048 0000007C  41 81 00 64 */	bgt .L_000000AC
/* 0000004C 00000080  38 A4 FF D0 */	subi r5, r4, 0x30
/* 00000050 00000084  48 00 00 24 */	b .L_00000074
.L_00000054:
/* 00000054 00000088  80 83 00 04 */	lwz r4, 0x4(r3)
/* 00000058 0000008C  1C A5 00 0A */	mulli r5, r5, 0xa
/* 0000005C 00000090  38 04 00 01 */	addi r0, r4, 0x1
/* 00000060 00000094  90 03 00 04 */	stw r0, 0x4(r3)
/* 00000064 00000098  7C 06 20 AE */	lbzx r0, r6, r4
/* 00000068 0000009C  7C 00 07 74 */	extsb r0, r0
/* 0000006C 000000A0  7C A0 2A 14 */	add r5, r0, r5
/* 00000070 000000A4  38 A5 FF D0 */	subi r5, r5, 0x30
.L_00000074:
/* 00000074 000000A8  80 C3 00 00 */	lwz r6, 0x0(r3)
/* 00000078 000000AC  80 03 00 04 */	lwz r0, 0x4(r3)
/* 0000007C 000000B0  7C 06 00 AE */	lbzx r0, r6, r0
/* 00000080 000000B4  7C 00 07 74 */	extsb r0, r0
/* 00000084 000000B8  2C 00 00 30 */	cmpwi r0, 0x30
/* 00000088 000000BC  41 80 00 0C */	blt .L_00000094
/* 0000008C 000000C0  2C 00 00 39 */	cmpwi r0, 0x39
/* 00000090 000000C4  40 81 FF C4 */	ble .L_00000054
.L_00000094:
/* 00000094 000000C8  38 00 00 00 */	li r0, 0x0
/* 00000098 000000CC  90 01 00 0C */	stw r0, 0xc(r1)
/* 0000009C 000000D0  90 A1 00 10 */	stw r5, 0x10(r1)
/* 000000A0 000000D4  80 61 00 0C */	lwz r3, 0xc(r1)
/* 000000A4 000000D8  80 81 00 10 */	lwz r4, 0x10(r1)
/* 000000A8 000000DC  48 00 00 94 */	b .L_0000013C
.L_000000AC:
/* 000000AC 000000E0  7C 00 07 74 */	extsb r0, r0
/* 000000B0 000000E4  2C 00 00 2A */	cmpwi r0, 0x2a
/* 000000B4 000000E8  41 82 00 70 */	beq .L_00000124
/* 000000B8 000000EC  40 80 00 1C */	bge .L_000000D4
/* 000000BC 000000F0  2C 00 00 28 */	cmpwi r0, 0x28
/* 000000C0 000000F4  41 82 00 40 */	beq .L_00000100
/* 000000C4 000000F8  40 80 00 48 */	bge .L_0000010C
/* 000000C8 000000FC  2C 00 00 00 */	cmpwi r0, 0x0
/* 000000CC 00000100  41 82 00 4C */	beq .L_00000118
/* 000000D0 00000104  48 00 00 54 */	b .L_00000124
.L_000000D4:
/* 000000D4 00000108  2C 00 00 2D */	cmpwi r0, 0x2d
/* 000000D8 0000010C  41 82 00 1C */	beq .L_000000F4
/* 000000DC 00000110  40 80 00 48 */	bge .L_00000124
/* 000000E0 00000114  2C 00 00 2C */	cmpwi r0, 0x2c
/* 000000E4 00000118  40 80 00 40 */	bge .L_00000124
/* 000000E8 0000011C  38 00 00 01 */	li r0, 0x1
/* 000000EC 00000120  90 01 00 0C */	stw r0, 0xc(r1)
/* 000000F0 00000124  48 00 00 3C */	b .L_0000012C
.L_000000F4:
/* 000000F4 00000128  38 00 00 02 */	li r0, 0x2
/* 000000F8 0000012C  90 01 00 0C */	stw r0, 0xc(r1)
/* 000000FC 00000130  48 00 00 30 */	b .L_0000012C
.L_00000100:
/* 00000100 00000134  38 00 00 03 */	li r0, 0x3
/* 00000104 00000138  90 01 00 0C */	stw r0, 0xc(r1)
/* 00000108 0000013C  48 00 00 24 */	b .L_0000012C
.L_0000010C:
/* 0000010C 00000140  38 00 00 04 */	li r0, 0x4
/* 00000110 00000144  90 01 00 0C */	stw r0, 0xc(r1)
/* 00000114 00000148  48 00 00 18 */	b .L_0000012C
.L_00000118:
/* 00000118 0000014C  38 00 00 05 */	li r0, 0x5
/* 0000011C 00000150  90 01 00 0C */	stw r0, 0xc(r1)
/* 00000120 00000154  48 00 00 0C */	b .L_0000012C
.L_00000124:
/* 00000124 00000158  38 00 00 06 */	li r0, 0x6
/* 00000128 0000015C  90 01 00 0C */	stw r0, 0xc(r1)
.L_0000012C:
/* 0000012C 00000160  38 00 00 00 */	li r0, 0x0
/* 00000130 00000164  90 01 00 10 */	stw r0, 0x10(r1)
/* 00000134 00000168  80 61 00 0C */	lwz r3, 0xc(r1)
/* 00000138 0000016C  80 81 00 10 */	lwz r4, 0x10(r1)
.L_0000013C:
/* 0000013C 00000170  38 21 00 18 */	addi r1, r1, 0x18
/* 00000140 00000174  4E 80 00 20 */	blr
.endfn f1

# .text:0x144 | size: 0x10
.fn f2, global
/* 00000144 00000178  90 83 00 00 */	stw r4, 0x0(r3)
/* 00000148 0000017C  38 00 00 00 */	li r0, 0x0
/* 0000014C 00000180  90 03 00 04 */	stw r0, 0x4(r3)
/* 00000150 00000184  4E 80 00 20 */	blr
.endfn f2

# .text:0x154 | size: 0x40
.fn f3, global
/* 00000154 00000188  7C 08 02 A6 */	mflr r0
/* 00000158 0000018C  90 01 00 04 */	stw r0, 0x4(r1)
/* 0000015C 00000190  38 00 00 00 */	li r0, 0x0
/* 00000160 00000194  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 00000164 00000198  93 E1 00 14 */	stw r31, 0x14(r1)
/* 00000168 0000019C  7C 7F 1B 78 */	mr r31, r3
/* 0000016C 000001A0  90 83 00 00 */	stw r4, 0x0(r3)
/* 00000170 000001A4  90 1F 00 04 */	stw r0, 0x4(r31)
/* 00000174 000001A8  48 00 00 01 */	bl f1
/* 00000178 000001AC  90 9F 00 0C */	stw r4, 0xc(r31)
/* 0000017C 000001B0  90 7F 00 08 */	stw r3, 0x8(r31)
/* 00000180 000001B4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 00000184 000001B8  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 00000188 000001BC  38 21 00 18 */	addi r1, r1, 0x18
/* 0000018C 000001C0  7C 08 03 A6 */	mtlr r0
/* 00000190 000001C4  4E 80 00 20 */	blr
.endfn f3

# .text:0x194 | size: 0x44
.fn f4, global
/* 00000194 000001C8  7C 08 02 A6 */	mflr r0
/* 00000198 000001CC  90 01 00 04 */	stw r0, 0x4(r1)
/* 0000019C 000001D0  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 000001A0 000001D4  93 E1 00 14 */	stw r31, 0x14(r1)
/* 000001A4 000001D8  7C 7F 1B 78 */	mr r31, r3
/* 000001A8 000001DC  80 03 00 08 */	lwz r0, 0x8(r3)
/* 000001AC 000001E0  7C 00 20 00 */	cmpw r0, r4
/* 000001B0 000001E4  40 82 00 14 */	bne .L_000001C4
/* 000001B4 000001E8  7F E3 FB 78 */	mr r3, r31
/* 000001B8 000001EC  48 00 00 01 */	bl f1
/* 000001BC 000001F0  90 9F 00 0C */	stw r4, 0xc(r31)
/* 000001C0 000001F4  90 7F 00 08 */	stw r3, 0x8(r31)
.L_000001C4:
/* 000001C4 000001F8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 000001C8 000001FC  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 000001CC 00000200  38 21 00 18 */	addi r1, r1, 0x18
/* 000001D0 00000204  7C 08 03 A6 */	mtlr r0
/* 000001D4 00000208  4E 80 00 20 */	blr
.endfn f4

# .text:0x1D8 | size: 0xC8
.fn f5, global
/* 000001D8 0000020C  7C 08 02 A6 */	mflr r0
/* 000001DC 00000210  90 01 00 04 */	stw r0, 0x4(r1)
/* 000001E0 00000214  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 000001E4 00000218  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 000001E8 0000021C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 000001EC 00000220  7C 7E 1B 78 */	mr r30, r3
/* 000001F0 00000224  80 63 00 08 */	lwz r3, 0x8(r3)
/* 000001F4 00000228  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 000001F8 0000022C  90 61 00 0C */	stw r3, 0xc(r1)
/* 000001FC 00000230  90 01 00 10 */	stw r0, 0x10(r1)
/* 00000200 00000234  80 01 00 0C */	lwz r0, 0xc(r1)
/* 00000204 00000238  2C 00 00 00 */	cmpwi r0, 0x0
/* 00000208 0000023C  40 82 00 28 */	bne .L_00000230
/* 0000020C 00000240  80 1E 00 08 */	lwz r0, 0x8(r30)
/* 00000210 00000244  2C 00 00 00 */	cmpwi r0, 0x0
/* 00000214 00000248  40 82 00 14 */	bne .L_00000228
/* 00000218 0000024C  7F C3 F3 78 */	mr r3, r30
/* 0000021C 00000250  48 00 00 01 */	bl f1
/* 00000220 00000254  90 9E 00 0C */	stw r4, 0xc(r30)
/* 00000224 00000258  90 7E 00 08 */	stw r3, 0x8(r30)
.L_00000228:
/* 00000228 0000025C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 0000022C 00000260  48 00 00 5C */	b .L_00000288
.L_00000230:
/* 00000230 00000264  2C 00 00 03 */	cmpwi r0, 0x3
/* 00000234 00000268  40 82 00 50 */	bne .L_00000284
/* 00000238 0000026C  80 1E 00 08 */	lwz r0, 0x8(r30)
/* 0000023C 00000270  2C 00 00 03 */	cmpwi r0, 0x3
/* 00000240 00000274  40 82 00 14 */	bne .L_00000254
/* 00000244 00000278  7F C3 F3 78 */	mr r3, r30
/* 00000248 0000027C  48 00 00 01 */	bl f1
/* 0000024C 00000280  90 9E 00 0C */	stw r4, 0xc(r30)
/* 00000250 00000284  90 7E 00 08 */	stw r3, 0x8(r30)
.L_00000254:
/* 00000254 00000288  7F C3 F3 78 */	mr r3, r30
/* 00000258 0000028C  48 00 00 01 */	bl f7
/* 0000025C 00000290  80 1E 00 08 */	lwz r0, 0x8(r30)
/* 00000260 00000294  3B E3 00 00 */	addi r31, r3, 0x0
/* 00000264 00000298  2C 00 00 04 */	cmpwi r0, 0x4
/* 00000268 0000029C  40 82 00 14 */	bne .L_0000027C
/* 0000026C 000002A0  7F C3 F3 78 */	mr r3, r30
/* 00000270 000002A4  48 00 00 01 */	bl f1
/* 00000274 000002A8  90 9E 00 0C */	stw r4, 0xc(r30)
/* 00000278 000002AC  90 7E 00 08 */	stw r3, 0x8(r30)
.L_0000027C:
/* 0000027C 000002B0  7F E3 FB 78 */	mr r3, r31
/* 00000280 000002B4  48 00 00 08 */	b .L_00000288
.L_00000284:
/* 00000284 000002B8  38 60 00 00 */	li r3, 0x0
.L_00000288:
/* 00000288 000002BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 0000028C 000002C0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 00000290 000002C4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 00000294 000002C8  38 21 00 20 */	addi r1, r1, 0x20
/* 00000298 000002CC  7C 08 03 A6 */	mtlr r0
/* 0000029C 000002D0  4E 80 00 20 */	blr
.endfn f5

# .text:0x2A0 | size: 0x270
.fn f6, global
/* 000002A0 000002D4  7C 08 02 A6 */	mflr r0
/* 000002A4 000002D8  90 01 00 04 */	stw r0, 0x4(r1)
/* 000002A8 000002DC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 000002AC 000002E0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 000002B0 000002E4  93 C1 00 38 */	stw r30, 0x38(r1)
/* 000002B4 000002E8  7C 7E 1B 78 */	mr r30, r3
/* 000002B8 000002EC  93 A1 00 34 */	stw r29, 0x34(r1)
/* 000002BC 000002F0  80 63 00 08 */	lwz r3, 0x8(r3)
/* 000002C0 000002F4  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 000002C4 000002F8  90 61 00 1C */	stw r3, 0x1c(r1)
/* 000002C8 000002FC  90 01 00 20 */	stw r0, 0x20(r1)
/* 000002CC 00000300  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 000002D0 00000304  2C 00 00 00 */	cmpwi r0, 0x0
/* 000002D4 00000308  40 82 00 28 */	bne .L_000002FC
/* 000002D8 0000030C  80 1E 00 08 */	lwz r0, 0x8(r30)
/* 000002DC 00000310  2C 00 00 00 */	cmpwi r0, 0x0
/* 000002E0 00000314  40 82 00 14 */	bne .L_000002F4
/* 000002E4 00000318  7F C3 F3 78 */	mr r3, r30
/* 000002E8 0000031C  48 00 00 01 */	bl f1
/* 000002EC 00000320  90 9E 00 0C */	stw r4, 0xc(r30)
/* 000002F0 00000324  90 7E 00 08 */	stw r3, 0x8(r30)
.L_000002F4:
/* 000002F4 00000328  83 E1 00 20 */	lwz r31, 0x20(r1)
/* 000002F8 0000032C  48 00 01 E4 */	b .L_000004DC
.L_000002FC:
/* 000002FC 00000330  2C 00 00 03 */	cmpwi r0, 0x3
/* 00000300 00000334  40 82 00 4C */	bne .L_0000034C
/* 00000304 00000338  80 1E 00 08 */	lwz r0, 0x8(r30)
/* 00000308 0000033C  2C 00 00 03 */	cmpwi r0, 0x3
/* 0000030C 00000340  40 82 00 14 */	bne .L_00000320
/* 00000310 00000344  7F C3 F3 78 */	mr r3, r30
/* 00000314 00000348  48 00 00 01 */	bl f1
/* 00000318 0000034C  90 9E 00 0C */	stw r4, 0xc(r30)
/* 0000031C 00000350  90 7E 00 08 */	stw r3, 0x8(r30)
.L_00000320:
/* 00000320 00000354  7F C3 F3 78 */	mr r3, r30
/* 00000324 00000358  48 00 00 01 */	bl f7
/* 00000328 0000035C  80 1E 00 08 */	lwz r0, 0x8(r30)
/* 0000032C 00000360  3B E3 00 00 */	addi r31, r3, 0x0
/* 00000330 00000364  2C 00 00 04 */	cmpwi r0, 0x4
/* 00000334 00000368  40 82 01 A8 */	bne .L_000004DC
/* 00000338 0000036C  7F C3 F3 78 */	mr r3, r30
/* 0000033C 00000370  48 00 00 01 */	bl f1
/* 00000340 00000374  90 9E 00 0C */	stw r4, 0xc(r30)
/* 00000344 00000378  90 7E 00 08 */	stw r3, 0x8(r30)
/* 00000348 0000037C  48 00 01 94 */	b .L_000004DC
.L_0000034C:
/* 0000034C 00000380  3B E0 00 00 */	li r31, 0x0
/* 00000350 00000384  48 00 01 8C */	b .L_000004DC
.L_00000354:
/* 00000354 00000388  80 7E 00 08 */	lwz r3, 0x8(r30)
/* 00000358 0000038C  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 0000035C 00000390  90 61 00 24 */	stw r3, 0x24(r1)
/* 00000360 00000394  90 01 00 28 */	stw r0, 0x28(r1)
/* 00000364 00000398  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00000368 0000039C  2C 00 00 01 */	cmpwi r0, 0x1
/* 0000036C 000003A0  40 82 00 B8 */	bne .L_00000424
/* 00000370 000003A4  2C 04 00 01 */	cmpwi r4, 0x1
/* 00000374 000003A8  40 82 00 14 */	bne .L_00000388
/* 00000378 000003AC  7F C3 F3 78 */	mr r3, r30
/* 0000037C 000003B0  48 00 00 01 */	bl f1
/* 00000380 000003B4  90 9E 00 0C */	stw r4, 0xc(r30)
/* 00000384 000003B8  90 7E 00 08 */	stw r3, 0x8(r30)
.L_00000388:
/* 00000388 000003BC  80 7E 00 08 */	lwz r3, 0x8(r30)
/* 0000038C 000003C0  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 00000390 000003C4  90 61 00 14 */	stw r3, 0x14(r1)
/* 00000394 000003C8  90 01 00 18 */	stw r0, 0x18(r1)
/* 00000398 000003CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 0000039C 000003D0  2C 00 00 00 */	cmpwi r0, 0x0
/* 000003A0 000003D4  40 82 00 28 */	bne .L_000003C8
/* 000003A4 000003D8  80 1E 00 08 */	lwz r0, 0x8(r30)
/* 000003A8 000003DC  2C 00 00 00 */	cmpwi r0, 0x0
/* 000003AC 000003E0  40 82 00 14 */	bne .L_000003C0
/* 000003B0 000003E4  7F C3 F3 78 */	mr r3, r30
/* 000003B4 000003E8  48 00 00 01 */	bl f1
/* 000003B8 000003EC  90 9E 00 0C */	stw r4, 0xc(r30)
/* 000003BC 000003F0  90 7E 00 08 */	stw r3, 0x8(r30)
.L_000003C0:
/* 000003C0 000003F4  83 A1 00 18 */	lwz r29, 0x18(r1)
/* 000003C4 000003F8  48 00 00 58 */	b .L_0000041C
.L_000003C8:
/* 000003C8 000003FC  2C 00 00 03 */	cmpwi r0, 0x3
/* 000003CC 00000400  40 82 00 4C */	bne .L_00000418
/* 000003D0 00000404  80 1E 00 08 */	lwz r0, 0x8(r30)
/* 000003D4 00000408  2C 00 00 03 */	cmpwi r0, 0x3
/* 000003D8 0000040C  40 82 00 14 */	bne .L_000003EC
/* 000003DC 00000410  7F C3 F3 78 */	mr r3, r30
/* 000003E0 00000414  48 00 00 01 */	bl f1
/* 000003E4 00000418  90 9E 00 0C */	stw r4, 0xc(r30)
/* 000003E8 0000041C  90 7E 00 08 */	stw r3, 0x8(r30)
.L_000003EC:
/* 000003EC 00000420  7F C3 F3 78 */	mr r3, r30
/* 000003F0 00000424  48 00 00 01 */	bl f7
/* 000003F4 00000428  80 1E 00 08 */	lwz r0, 0x8(r30)
/* 000003F8 0000042C  3B A3 00 00 */	addi r29, r3, 0x0
/* 000003FC 00000430  2C 00 00 04 */	cmpwi r0, 0x4
/* 00000400 00000434  40 82 00 1C */	bne .L_0000041C
/* 00000404 00000438  7F C3 F3 78 */	mr r3, r30
/* 00000408 0000043C  48 00 00 01 */	bl f1
/* 0000040C 00000440  90 9E 00 0C */	stw r4, 0xc(r30)
/* 00000410 00000444  90 7E 00 08 */	stw r3, 0x8(r30)
/* 00000414 00000448  48 00 00 08 */	b .L_0000041C
.L_00000418:
/* 00000418 0000044C  3B A0 00 00 */	li r29, 0x0
.L_0000041C:
/* 0000041C 00000450  7F FF EA 14 */	add r31, r31, r29
/* 00000420 00000454  48 00 00 BC */	b .L_000004DC
.L_00000424:
/* 00000424 00000458  2C 00 00 02 */	cmpwi r0, 0x2
/* 00000428 0000045C  40 82 00 B4 */	bne .L_000004DC
/* 0000042C 00000460  2C 04 00 02 */	cmpwi r4, 0x2
/* 00000430 00000464  40 82 00 14 */	bne .L_00000444
/* 00000434 00000468  7F C3 F3 78 */	mr r3, r30
/* 00000438 0000046C  48 00 00 01 */	bl f1
/* 0000043C 00000470  90 9E 00 0C */	stw r4, 0xc(r30)
/* 00000440 00000474  90 7E 00 08 */	stw r3, 0x8(r30)
.L_00000444:
/* 00000444 00000478  80 7E 00 08 */	lwz r3, 0x8(r30)
/* 00000448 0000047C  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 0000044C 00000480  90 61 00 0C */	stw r3, 0xc(r1)
/* 00000450 00000484  90 01 00 10 */	stw r0, 0x10(r1)
/* 00000454 00000488  80 01 00 0C */	lwz r0, 0xc(r1)
/* 00000458 0000048C  2C 00 00 00 */	cmpwi r0, 0x0
/* 0000045C 00000490  40 82 00 28 */	bne .L_00000484
/* 00000460 00000494  80 1E 00 08 */	lwz r0, 0x8(r30)
/* 00000464 00000498  2C 00 00 00 */	cmpwi r0, 0x0
/* 00000468 0000049C  40 82 00 14 */	bne .L_0000047C
/* 0000046C 000004A0  7F C3 F3 78 */	mr r3, r30
/* 00000470 000004A4  48 00 00 01 */	bl f1
/* 00000474 000004A8  90 9E 00 0C */	stw r4, 0xc(r30)
/* 00000478 000004AC  90 7E 00 08 */	stw r3, 0x8(r30)
.L_0000047C:
/* 0000047C 000004B0  83 A1 00 10 */	lwz r29, 0x10(r1)
/* 00000480 000004B4  48 00 00 58 */	b .L_000004D8
.L_00000484:
/* 00000484 000004B8  2C 00 00 03 */	cmpwi r0, 0x3
/* 00000488 000004BC  40 82 00 4C */	bne .L_000004D4
/* 0000048C 000004C0  80 1E 00 08 */	lwz r0, 0x8(r30)
/* 00000490 000004C4  2C 00 00 03 */	cmpwi r0, 0x3
/* 00000494 000004C8  40 82 00 14 */	bne .L_000004A8
/* 00000498 000004CC  7F C3 F3 78 */	mr r3, r30
/* 0000049C 000004D0  48 00 00 01 */	bl f1
/* 000004A0 000004D4  90 9E 00 0C */	stw r4, 0xc(r30)
/* 000004A4 000004D8  90 7E 00 08 */	stw r3, 0x8(r30)
.L_000004A8:
/* 000004A8 000004DC  7F C3 F3 78 */	mr r3, r30
/* 000004AC 000004E0  48 00 00 01 */	bl f7
/* 000004B0 000004E4  80 1E 00 08 */	lwz r0, 0x8(r30)
/* 000004B4 000004E8  3B A3 00 00 */	addi r29, r3, 0x0
/* 000004B8 000004EC  2C 00 00 04 */	cmpwi r0, 0x4
/* 000004BC 000004F0  40 82 00 1C */	bne .L_000004D8
/* 000004C0 000004F4  7F C3 F3 78 */	mr r3, r30
/* 000004C4 000004F8  48 00 00 01 */	bl f1
/* 000004C8 000004FC  90 9E 00 0C */	stw r4, 0xc(r30)
/* 000004CC 00000500  90 7E 00 08 */	stw r3, 0x8(r30)
/* 000004D0 00000504  48 00 00 08 */	b .L_000004D8
.L_000004D4:
/* 000004D4 00000508  3B A0 00 00 */	li r29, 0x0
.L_000004D8:
/* 000004D8 0000050C  7F FD F8 50 */	subf r31, r29, r31
.L_000004DC:
/* 000004DC 00000510  80 9E 00 08 */	lwz r4, 0x8(r30)
/* 000004E0 00000514  2C 04 00 01 */	cmpwi r4, 0x1
/* 000004E4 00000518  41 82 FE 70 */	beq .L_00000354
/* 000004E8 0000051C  2C 04 00 02 */	cmpwi r4, 0x2
/* 000004EC 00000520  41 82 FE 68 */	beq .L_00000354
/* 000004F0 00000524  7F E3 FB 78 */	mr r3, r31
/* 000004F4 00000528  80 01 00 44 */	lwz r0, 0x44(r1)
/* 000004F8 0000052C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 000004FC 00000530  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 00000500 00000534  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 00000504 00000538  38 21 00 40 */	addi r1, r1, 0x40
/* 00000508 0000053C  7C 08 03 A6 */	mtlr r0
/* 0000050C 00000540  4E 80 00 20 */	blr
.endfn f6

# .text:0x510 | size: 0xC4
.fn f7, global
/* 00000510 00000544  7C 08 02 A6 */	mflr r0
/* 00000514 00000548  90 01 00 04 */	stw r0, 0x4(r1)
/* 00000518 0000054C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 0000051C 00000550  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 00000520 00000554  93 C1 00 18 */	stw r30, 0x18(r1)
/* 00000524 00000558  7C 7E 1B 78 */	mr r30, r3
/* 00000528 0000055C  48 00 00 01 */	bl f5
/* 0000052C 00000560  7C 7F 1B 78 */	mr r31, r3
/* 00000530 00000564  48 00 00 74 */	b .L_000005A4
.L_00000534:
/* 00000534 00000568  80 7E 00 08 */	lwz r3, 0x8(r30)
/* 00000538 0000056C  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 0000053C 00000570  90 61 00 0C */	stw r3, 0xc(r1)
/* 00000540 00000574  90 01 00 10 */	stw r0, 0x10(r1)
/* 00000544 00000578  80 01 00 0C */	lwz r0, 0xc(r1)
/* 00000548 0000057C  2C 00 00 01 */	cmpwi r0, 0x1
/* 0000054C 00000580  40 82 00 2C */	bne .L_00000578
/* 00000550 00000584  2C 04 00 01 */	cmpwi r4, 0x1
/* 00000554 00000588  40 82 00 14 */	bne .L_00000568
/* 00000558 0000058C  7F C3 F3 78 */	mr r3, r30
/* 0000055C 00000590  48 00 00 01 */	bl f1
/* 00000560 00000594  90 9E 00 0C */	stw r4, 0xc(r30)
/* 00000564 00000598  90 7E 00 08 */	stw r3, 0x8(r30)
.L_00000568:
/* 00000568 0000059C  7F C3 F3 78 */	mr r3, r30
/* 0000056C 000005A0  48 00 00 01 */	bl f5
/* 00000570 000005A4  7F FF 1A 14 */	add r31, r31, r3
/* 00000574 000005A8  48 00 00 30 */	b .L_000005A4
.L_00000578:
/* 00000578 000005AC  2C 00 00 02 */	cmpwi r0, 0x2
/* 0000057C 000005B0  40 82 00 28 */	bne .L_000005A4
/* 00000580 000005B4  2C 04 00 02 */	cmpwi r4, 0x2
/* 00000584 000005B8  40 82 00 14 */	bne .L_00000598
/* 00000588 000005BC  7F C3 F3 78 */	mr r3, r30
/* 0000058C 000005C0  48 00 00 01 */	bl f1
/* 00000590 000005C4  90 9E 00 0C */	stw r4, 0xc(r30)
/* 00000594 000005C8  90 7E 00 08 */	stw r3, 0x8(r30)
.L_00000598:
/* 00000598 000005CC  7F C3 F3 78 */	mr r3, r30
/* 0000059C 000005D0  48 00 00 01 */	bl f5
/* 000005A0 000005D4  7F E3 F8 50 */	subf r31, r3, r31
.L_000005A4:
/* 000005A4 000005D8  80 9E 00 08 */	lwz r4, 0x8(r30)
/* 000005A8 000005DC  2C 04 00 01 */	cmpwi r4, 0x1
/* 000005AC 000005E0  41 82 FF 88 */	beq .L_00000534
/* 000005B0 000005E4  2C 04 00 02 */	cmpwi r4, 0x2
/* 000005B4 000005E8  41 82 FF 80 */	beq .L_00000534
/* 000005B8 000005EC  7F E3 FB 78 */	mr r3, r31
/* 000005BC 000005F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 000005C0 000005F4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 000005C4 000005F8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 000005C8 000005FC  38 21 00 20 */	addi r1, r1, 0x20
/* 000005CC 00000600  7C 08 03 A6 */	mtlr r0
/* 000005D0 00000604  4E 80 00 20 */	blr
.endfn f7

# .text:0x5D4 | size: 0x40
.fn f8, global
/* 000005D4 00000608  7C 08 02 A6 */	mflr r0
/* 000005D8 0000060C  90 01 00 04 */	stw r0, 0x4(r1)
/* 000005DC 00000610  38 00 00 00 */	li r0, 0x0
/* 000005E0 00000614  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 000005E4 00000618  90 61 00 10 */	stw r3, 0x10(r1)
/* 000005E8 0000061C  38 61 00 10 */	addi r3, r1, 0x10
/* 000005EC 00000620  90 01 00 14 */	stw r0, 0x14(r1)
/* 000005F0 00000624  48 00 00 01 */	bl f1
/* 000005F4 00000628  90 81 00 1C */	stw r4, 0x1c(r1)
/* 000005F8 0000062C  90 61 00 18 */	stw r3, 0x18(r1)
/* 000005FC 00000630  38 61 00 10 */	addi r3, r1, 0x10
/* 00000600 00000634  48 00 00 01 */	bl f6
/* 00000604 00000638  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00000608 0000063C  38 21 00 20 */	addi r1, r1, 0x20
/* 0000060C 00000640  7C 08 03 A6 */	mtlr r0
/* 00000610 00000644  4E 80 00 20 */	blr
.endfn f8