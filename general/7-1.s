.include "macros.inc"
.file "temp.c"

# 0x00000000..0x00000278 | size: 0x278
.text
.balign 4

# .text:0x0 | size: 0x54
.fn f1, global
/* 00000000 00000034  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00000004 00000038  C0 24 00 00 */	lfs f1, 0x0(r4)
/* 00000008 0000003C  C0 05 00 00 */	lfs f0, 0x0(r5)
/* 0000000C 00000040  EC 01 00 28 */	fsubs f0, f1, f0
/* 00000010 00000044  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 00000014 00000048  C0 24 00 04 */	lfs f1, 0x4(r4)
/* 00000018 0000004C  C0 05 00 04 */	lfs f0, 0x4(r5)
/* 0000001C 00000050  EC 01 00 28 */	fsubs f0, f1, f0
/* 00000020 00000054  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 00000024 00000058  C0 24 00 08 */	lfs f1, 0x8(r4)
/* 00000028 0000005C  C0 05 00 08 */	lfs f0, 0x8(r5)
/* 0000002C 00000060  EC 01 00 28 */	fsubs f0, f1, f0
/* 00000030 00000064  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 00000034 00000068  80 81 00 14 */	lwz r4, 0x14(r1)
/* 00000038 0000006C  80 01 00 18 */	lwz r0, 0x18(r1)
/* 0000003C 00000070  90 83 00 00 */	stw r4, 0x0(r3)
/* 00000040 00000074  90 03 00 04 */	stw r0, 0x4(r3)
/* 00000044 00000078  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 00000048 0000007C  90 03 00 08 */	stw r0, 0x8(r3)
/* 0000004C 00000080  38 21 00 20 */	addi r1, r1, 0x20
/* 00000050 00000084  4E 80 00 20 */	blr
.endfn f1

# .text:0x54 | size: 0x28
.fn f2, global
/* 00000054 00000088  C0 23 00 04 */	lfs f1, 0x4(r3)
/* 00000058 0000008C  C0 04 00 04 */	lfs f0, 0x4(r4)
/* 0000005C 00000090  C0 43 00 00 */	lfs f2, 0x0(r3)
/* 00000060 00000094  EC 01 00 32 */	fmuls f0, f1, f0
/* 00000064 00000098  C0 24 00 00 */	lfs f1, 0x0(r4)
/* 00000068 0000009C  C0 83 00 08 */	lfs f4, 0x8(r3)
/* 0000006C 000000A0  C0 64 00 08 */	lfs f3, 0x8(r4)
/* 00000070 000000A4  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 00000074 000000A8  EC 24 00 FA */	fmadds f1, f4, f3, f0
/* 00000078 000000AC  4E 80 00 20 */	blr
.endfn f2

# .text:0x7C | size: 0x1FC
.fn f3, global
/* 0000007C 000000B0  7C 08 02 A6 */	mflr r0
/* 00000080 000000B4  90 01 00 04 */	stw r0, 0x4(r1)
/* 00000084 000000B8  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 00000088 000000BC  DB E1 00 D8 */	stfd f31, 0xd8(r1)
/* 0000008C 000000C0  DB C1 00 D0 */	stfd f30, 0xd0(r1)
/* 00000090 000000C4  80 A0 00 00 */	lwz r5, "@3"@sda21(r0)
/* 00000094 000000C8  80 00 00 00 */	lwz r0, "@3"+0x4@sda21(r0)
/* 00000098 000000CC  90 A1 00 A8 */	stw r5, 0xa8(r1)
/* 0000009C 000000D0  C0 80 00 00 */	lfs f4, "@39"@sda21(r0)
/* 000000A0 000000D4  90 01 00 AC */	stw r0, 0xac(r1)
/* 000000A4 000000D8  C1 00 00 00 */	lfs f8, "@38"@sda21(r0)
/* 000000A8 000000DC  80 A4 00 00 */	lwz r5, 0x0(r4)
/* 000000AC 000000E0  80 04 00 04 */	lwz r0, 0x4(r4)
/* 000000B0 000000E4  C0 00 00 00 */	lfs f0, "@40"@sda21(r0)
/* 000000B4 000000E8  90 A1 00 90 */	stw r5, 0x90(r1)
/* 000000B8 000000EC  90 01 00 94 */	stw r0, 0x94(r1)
/* 000000BC 000000F0  80 04 00 08 */	lwz r0, 0x8(r4)
/* 000000C0 000000F4  90 01 00 98 */	stw r0, 0x98(r1)
/* 000000C4 000000F8  80 A3 00 00 */	lwz r5, 0x0(r3)
/* 000000C8 000000FC  80 03 00 04 */	lwz r0, 0x4(r3)
/* 000000CC 00000100  C0 41 00 90 */	lfs f2, 0x90(r1)
/* 000000D0 00000104  90 A1 00 9C */	stw r5, 0x9c(r1)
/* 000000D4 00000108  C0 61 00 94 */	lfs f3, 0x94(r1)
/* 000000D8 0000010C  90 01 00 A0 */	stw r0, 0xa0(r1)
/* 000000DC 00000110  C0 21 00 98 */	lfs f1, 0x98(r1)
/* 000000E0 00000114  80 03 00 08 */	lwz r0, 0x8(r3)
/* 000000E4 00000118  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 000000E8 0000011C  C0 C1 00 9C */	lfs f6, 0x9c(r1)
/* 000000EC 00000120  C0 A1 00 A0 */	lfs f5, 0xa0(r1)
/* 000000F0 00000124  EC C6 10 28 */	fsubs f6, f6, f2
/* 000000F4 00000128  C0 41 00 A4 */	lfs f2, 0xa4(r1)
/* 000000F8 0000012C  EC 65 18 28 */	fsubs f3, f5, f3
/* 000000FC 00000130  EC 22 08 28 */	fsubs f1, f2, f1
/* 00000100 00000134  D0 C1 00 3C */	stfs f6, 0x3c(r1)
/* 00000104 00000138  D0 61 00 40 */	stfs f3, 0x40(r1)
/* 00000108 0000013C  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 0000010C 00000140  80 A3 00 0C */	lwz r5, 0xc(r3)
/* 00000110 00000144  80 03 00 10 */	lwz r0, 0x10(r3)
/* 00000114 00000148  80 C1 00 3C */	lwz r6, 0x3c(r1)
/* 00000118 0000014C  90 A1 00 10 */	stw r5, 0x10(r1)
/* 0000011C 00000150  80 A1 00 40 */	lwz r5, 0x40(r1)
/* 00000120 00000154  90 01 00 14 */	stw r0, 0x14(r1)
/* 00000124 00000158  80 01 00 44 */	lwz r0, 0x44(r1)
/* 00000128 0000015C  80 63 00 14 */	lwz r3, 0x14(r3)
/* 0000012C 00000160  90 61 00 18 */	stw r3, 0x18(r1)
/* 00000130 00000164  81 01 00 10 */	lwz r8, 0x10(r1)
/* 00000134 00000168  80 E1 00 14 */	lwz r7, 0x14(r1)
/* 00000138 0000016C  91 01 00 78 */	stw r8, 0x78(r1)
/* 0000013C 00000170  80 61 00 18 */	lwz r3, 0x18(r1)
/* 00000140 00000174  91 01 00 84 */	stw r8, 0x84(r1)
/* 00000144 00000178  90 E1 00 7C */	stw r7, 0x7c(r1)
/* 00000148 0000017C  90 61 00 80 */	stw r3, 0x80(r1)
/* 0000014C 00000180  90 E1 00 88 */	stw r7, 0x88(r1)
/* 00000150 00000184  C0 21 00 7C */	lfs f1, 0x7c(r1)
/* 00000154 00000188  90 61 00 8C */	stw r3, 0x8c(r1)
/* 00000158 0000018C  C0 A1 00 78 */	lfs f5, 0x78(r1)
/* 0000015C 00000190  90 C1 00 48 */	stw r6, 0x48(r1)
/* 00000160 00000194  C0 41 00 88 */	lfs f2, 0x88(r1)
/* 00000164 00000198  90 C1 00 54 */	stw r6, 0x54(r1)
/* 00000168 0000019C  EC 42 00 72 */	fmuls f2, f2, f1
/* 0000016C 000001A0  C0 C1 00 84 */	lfs f6, 0x84(r1)
/* 00000170 000001A4  90 A1 00 4C */	stw r5, 0x4c(r1)
/* 00000174 000001A8  C0 E1 00 8C */	lfs f7, 0x8c(r1)
/* 00000178 000001AC  90 01 00 50 */	stw r0, 0x50(r1)
/* 0000017C 000001B0  EC A6 11 7A */	fmadds f5, f6, f5, f2
/* 00000180 000001B4  C0 C1 00 80 */	lfs f6, 0x80(r1)
/* 00000184 000001B8  90 A1 00 58 */	stw r5, 0x58(r1)
/* 00000188 000001BC  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 0000018C 000001C0  90 01 00 5C */	stw r0, 0x5c(r1)
/* 00000190 000001C4  EF E7 29 BA */	fmadds f31, f7, f6, f5
/* 00000194 000001C8  C0 61 00 48 */	lfs f3, 0x48(r1)
/* 00000198 000001CC  91 01 00 60 */	stw r8, 0x60(r1)
/* 0000019C 000001D0  C0 41 00 58 */	lfs f2, 0x58(r1)
/* 000001A0 000001D4  90 C1 00 6C */	stw r6, 0x6c(r1)
/* 000001A4 000001D8  EC 22 00 72 */	fmuls f1, f2, f1
/* 000001A8 000001DC  C0 41 00 54 */	lfs f2, 0x54(r1)
/* 000001AC 000001E0  90 E1 00 64 */	stw r7, 0x64(r1)
/* 000001B0 000001E4  EC 84 07 F2 */	fmuls f4, f4, f31
/* 000001B4 000001E8  90 A1 00 70 */	stw r5, 0x70(r1)
/* 000001B8 000001EC  EC 22 08 FA */	fmadds f1, f2, f3, f1
/* 000001BC 000001F0  90 61 00 68 */	stw r3, 0x68(r1)
/* 000001C0 000001F4  90 01 00 74 */	stw r0, 0x74(r1)
/* 000001C4 000001F8  C0 41 00 64 */	lfs f2, 0x64(r1)
/* 000001C8 000001FC  C0 61 00 70 */	lfs f3, 0x70(r1)
/* 000001CC 00000200  C0 C1 00 60 */	lfs f6, 0x60(r1)
/* 000001D0 00000204  EC A3 00 B2 */	fmuls f5, f3, f2
/* 000001D4 00000208  C0 E1 00 6C */	lfs f7, 0x6c(r1)
/* 000001D8 0000020C  C1 24 00 0C */	lfs f9, 0xc(r4)
/* 000001DC 00000210  C0 61 00 5C */	lfs f3, 0x5c(r1)
/* 000001E0 00000214  C0 41 00 50 */	lfs f2, 0x50(r1)
/* 000001E4 00000218  EC A7 29 BA */	fmadds f5, f7, f6, f5
/* 000001E8 0000021C  C0 C1 00 74 */	lfs f6, 0x74(r1)
/* 000001EC 00000220  EC 43 08 BA */	fmadds f2, f3, f2, f1
/* 000001F0 00000224  C0 61 00 68 */	lfs f3, 0x68(r1)
/* 000001F4 00000228  EC 29 02 72 */	fmuls f1, f9, f9
/* 000001F8 0000022C  EC 66 28 FA */	fmadds f3, f6, f3, f5
/* 000001FC 00000230  EC 22 08 28 */	fsubs f1, f2, f1
/* 00000200 00000234  EF C8 00 F2 */	fmuls f30, f8, f3
/* 00000204 00000238  EC 24 00 72 */	fmuls f1, f4, f1
/* 00000208 0000023C  EC 3E 0F B8 */	fmsubs f1, f30, f30, f1
/* 0000020C 00000240  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 00000210 00000244  4C 41 13 82 */	cror eq, gt, eq
/* 00000214 00000248  40 82 00 44 */	bne .L_00000258
/* 00000218 0000024C  38 00 00 01 */	li r0, 0x1
/* 0000021C 00000250  90 01 00 A8 */	stw r0, 0xa8(r1)
/* 00000220 00000254  48 00 00 01 */	bl sqrt
/* 00000224 00000258  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 00000228 0000025C  C0 00 00 00 */	lfs f0, "@38"@sda21(r0)
/* 0000022C 00000260  90 01 00 CC */	stw r0, 0xcc(r1)
/* 00000230 00000264  3C 00 43 30 */	lis r0, 0x4330
/* 00000234 00000268  C8 60 00 00 */	lfd f3, "@42"@sda21(r0)
/* 00000238 0000026C  FC 20 F0 50 */	fneg f1, f30
/* 0000023C 00000270  90 01 00 C8 */	stw r0, 0xc8(r1)
/* 00000240 00000274  EC 00 07 F2 */	fmuls f0, f0, f31
/* 00000244 00000278  C8 41 00 C8 */	lfd f2, 0xc8(r1)
/* 00000248 0000027C  EC 42 18 28 */	fsubs f2, f2, f3
/* 0000024C 00000280  EC 21 10 28 */	fsubs f1, f1, f2
/* 00000250 00000284  EC 01 00 24 */	fdivs f0, f1, f0
/* 00000254 00000288  D0 01 00 AC */	stfs f0, 0xac(r1)
.L_00000258:
/* 00000258 0000028C  80 61 00 A8 */	lwz r3, 0xa8(r1)
/* 0000025C 00000290  80 81 00 AC */	lwz r4, 0xac(r1)
/* 00000260 00000294  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 00000264 00000298  CB E1 00 D8 */	lfd f31, 0xd8(r1)
/* 00000268 0000029C  CB C1 00 D0 */	lfd f30, 0xd0(r1)
/* 0000026C 000002A0  38 21 00 E0 */	addi r1, r1, 0xe0
/* 00000270 000002A4  7C 08 03 A6 */	mtlr r0
/* 00000274 000002A8  4E 80 00 20 */	blr
.endfn f3

# 0x00000000..0x00000020 | size: 0x20
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | size: 0x8
.obj "@3", local
	.4byte 0x00000000
	.4byte 0x00000000
.endobj "@3"

# .sdata2:0x8 | size: 0x4
.obj "@38", local
	.4byte 0x40000000
.endobj "@38"

# .sdata2:0xC | size: 0x4
.obj "@39", local
	.4byte 0x40800000
.endobj "@39"

# .sdata2:0x10 | size: 0x4
.obj "@40", local
	.4byte 0x00000000
.endobj "@40"
	.4byte 0x00000000

# .sdata2:0x18 | size: 0x8
.obj "@42", local
	.4byte 0x43300000
	.4byte 0x80000000
.endobj "@42"
