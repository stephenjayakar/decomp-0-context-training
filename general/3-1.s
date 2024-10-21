.include "macros.inc"
.file "temp.c"

# 0x00000000..0x00000140 | size: 0x140
.text
.balign 4

# .text:0x0 | size: 0x140
.fn f1, global
/* 00000000 00000034  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 00000004 00000038  38 00 00 00 */	li r0, 0x0
/* 00000008 0000003C  2C 04 00 00 */	cmpwi r4, 0x0
/* 0000000C 00000040  93 E1 00 24 */	stw r31, 0x24(r1)
/* 00000010 00000044  39 00 00 00 */	li r8, 0x0
/* 00000014 00000048  39 60 00 00 */	li r11, 0x0
/* 00000018 0000004C  90 07 00 00 */	stw r0, 0x0(r7)
/* 0000001C 00000050  38 00 00 00 */	li r0, 0x0
/* 00000020 00000054  40 81 00 98 */	ble .L_000000B8
/* 00000024 00000058  2C 04 00 08 */	cmpwi r4, 0x8
/* 00000028 0000005C  39 44 FF F8 */	subi r10, r4, 0x8
/* 0000002C 00000060  40 81 00 FC */	ble .L_00000128
/* 00000030 00000064  39 2A 00 07 */	addi r9, r10, 0x7
/* 00000034 00000068  55 29 E8 FE */	srwi r9, r9, 3
/* 00000038 0000006C  2C 0A 00 00 */	cmpwi r10, 0x0
/* 0000003C 00000070  7D 29 03 A6 */	mtctr r9
/* 00000040 00000074  39 43 00 00 */	addi r10, r3, 0x0
/* 00000044 00000078  40 81 00 E4 */	ble .L_00000128
.L_00000048:
/* 00000048 0000007C  81 2A 00 04 */	lwz r9, 0x4(r10)
/* 0000004C 00000080  39 6B 00 08 */	addi r11, r11, 0x8
/* 00000050 00000084  91 2A 00 08 */	stw r9, 0x8(r10)
/* 00000054 00000088  81 2A 00 10 */	lwz r9, 0x10(r10)
/* 00000058 0000008C  91 2A 00 14 */	stw r9, 0x14(r10)
/* 0000005C 00000090  81 2A 00 1C */	lwz r9, 0x1c(r10)
/* 00000060 00000094  91 2A 00 20 */	stw r9, 0x20(r10)
/* 00000064 00000098  81 2A 00 28 */	lwz r9, 0x28(r10)
/* 00000068 0000009C  91 2A 00 2C */	stw r9, 0x2c(r10)
/* 0000006C 000000A0  81 2A 00 34 */	lwz r9, 0x34(r10)
/* 00000070 000000A4  91 2A 00 38 */	stw r9, 0x38(r10)
/* 00000074 000000A8  81 2A 00 40 */	lwz r9, 0x40(r10)
/* 00000078 000000AC  91 2A 00 44 */	stw r9, 0x44(r10)
/* 0000007C 000000B0  81 2A 00 4C */	lwz r9, 0x4c(r10)
/* 00000080 000000B4  91 2A 00 50 */	stw r9, 0x50(r10)
/* 00000084 000000B8  81 2A 00 58 */	lwz r9, 0x58(r10)
/* 00000088 000000BC  91 2A 00 5C */	stw r9, 0x5c(r10)
/* 0000008C 000000C0  39 4A 00 60 */	addi r10, r10, 0x60
/* 00000090 000000C4  42 00 FF B8 */	bdnz .L_00000048
/* 00000094 000000C8  48 00 00 94 */	b .L_00000128
.L_00000098:
/* 00000098 000000CC  7D 2B 20 50 */	subf r9, r11, r4
/* 0000009C 000000D0  7C 0B 20 00 */	cmpw r11, r4
/* 000000A0 000000D4  7D 29 03 A6 */	mtctr r9
/* 000000A4 000000D8  40 80 00 14 */	bge .L_000000B8
.L_000000A8:
/* 000000A8 000000DC  81 2A 00 04 */	lwz r9, 0x4(r10)
/* 000000AC 000000E0  91 2A 00 08 */	stw r9, 0x8(r10)
/* 000000B0 000000E4  39 4A 00 0C */	addi r10, r10, 0xc
/* 000000B4 000000E8  42 00 FF F4 */	bdnz .L_000000A8
.L_000000B8:
/* 000000B8 000000EC  2C 04 00 00 */	cmpwi r4, 0x0
/* 000000BC 000000F0  7C 89 03 A6 */	mtctr r4
/* 000000C0 000000F4  39 63 00 00 */	addi r11, r3, 0x0
/* 000000C4 000000F8  3B E0 00 01 */	li r31, 0x1
/* 000000C8 000000FC  39 80 00 00 */	li r12, 0x0
/* 000000CC 00000100  40 81 00 4C */	ble .L_00000118
.L_000000D0:
/* 000000D0 00000104  81 2B 00 08 */	lwz r9, 0x8(r11)
/* 000000D4 00000108  2C 09 00 00 */	cmpwi r9, 0x0
/* 000000D8 0000010C  40 81 00 38 */	ble .L_00000110
/* 000000DC 00000110  7C 09 28 00 */	cmpw r9, r5
/* 000000E0 00000114  3B E0 00 00 */	li r31, 0x0
/* 000000E4 00000118  40 81 00 14 */	ble .L_000000F8
/* 000000E8 0000011C  7D 25 48 50 */	subf r9, r5, r9
/* 000000EC 00000120  91 2B 00 08 */	stw r9, 0x8(r11)
/* 000000F0 00000124  7C 00 2A 14 */	add r0, r0, r5
/* 000000F4 00000128  48 00 00 0C */	b .L_00000100
.L_000000F8:
/* 000000F8 0000012C  7C 00 4A 14 */	add r0, r0, r9
/* 000000FC 00000130  91 8B 00 08 */	stw r12, 0x8(r11)
.L_00000100:
/* 00000100 00000134  81 4B 00 00 */	lwz r10, 0x0(r11)
/* 00000104 00000138  55 09 10 3A */	slwi r9, r8, 2
/* 00000108 0000013C  39 08 00 01 */	addi r8, r8, 0x1
/* 0000010C 00000140  7D 46 49 2E */	stwx r10, r6, r9
.L_00000110:
/* 00000110 00000144  39 6B 00 0C */	addi r11, r11, 0xc
/* 00000114 00000148  42 00 FF BC */	bdnz .L_000000D0
.L_00000118:
/* 00000118 0000014C  2C 1F 00 00 */	cmpwi r31, 0x0
/* 0000011C 00000150  41 82 FF 9C */	beq .L_000000B8
/* 00000120 00000154  91 07 00 00 */	stw r8, 0x0(r7)
/* 00000124 00000158  48 00 00 10 */	b .L_00000134
.L_00000128:
/* 00000128 0000015C  1D 2B 00 0C */	mulli r9, r11, 0xc
/* 0000012C 00000160  7D 43 4A 14 */	add r10, r3, r9
/* 00000130 00000164  4B FF FF 68 */	b .L_00000098
.L_00000134:
/* 00000134 00000168  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 00000138 0000016C  38 21 00 28 */	addi r1, r1, 0x28
/* 0000013C 00000170  4E 80 00 20 */	blr
.endfn f1