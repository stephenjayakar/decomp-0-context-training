
build/temp.o:     file format elf32-powerpc


Disassembly of section .text:

00000000 <createNode>:
   0:	80 00 00 00 	lwz     r0,0(0)
   4:	3c 80 00 00 	lis     r4,0
   8:	38 a4 00 00 	addi    r5,r4,0
   c:	2c 00 00 0a 	cmpwi   r0,10
  10:	41 80 00 0c 	blt     1c <createNode+0x1c>
  14:	38 60 00 00 	li      r3,0
  18:	4e 80 00 20 	blr
  1c:	54 00 18 38 	rlwinm  r0,r0,3,0,28
  20:	7c 65 01 2e 	stwx    r3,r5,r0
  24:	7c 65 02 14 	add     r3,r5,r0
  28:	38 00 00 00 	li      r0,0
  2c:	90 03 00 04 	stw     r0,4(r3)
  30:	80 80 00 00 	lwz     r4,0(0)
  34:	38 64 00 01 	addi    r3,r4,1
  38:	54 80 18 38 	rlwinm  r0,r4,3,0,28
  3c:	90 60 00 00 	stw     r3,0(0)
  40:	7c 65 02 14 	add     r3,r5,r0
  44:	4e 80 00 20 	blr

00000048 <append>:
  48:	80 00 00 00 	lwz     r0,0(0)
  4c:	3c a0 00 00 	lis     r5,0
  50:	38 c5 00 00 	addi    r6,r5,0
  54:	2c 00 00 0a 	cmpwi   r0,10
  58:	41 80 00 0c 	blt     64 <append+0x1c>
  5c:	38 80 00 00 	li      r4,0
  60:	48 00 00 2c 	b       8c <append+0x44>
  64:	54 00 18 38 	rlwinm  r0,r0,3,0,28
  68:	7c 86 01 2e 	stwx    r4,r6,r0
  6c:	7c 86 02 14 	add     r4,r6,r0
  70:	38 00 00 00 	li      r0,0
  74:	90 04 00 04 	stw     r0,4(r4)
  78:	80 a0 00 00 	lwz     r5,0(0)
  7c:	38 85 00 01 	addi    r4,r5,1
  80:	54 a0 18 38 	rlwinm  r0,r5,3,0,28
  84:	90 80 00 00 	stw     r4,0(0)
  88:	7c 86 02 14 	add     r4,r6,r0
  8c:	28 04 00 00 	cmplwi  r4,0
  90:	4d 82 00 20 	beqlr
  94:	80 03 00 00 	lwz     r0,0(r3)
  98:	28 00 00 00 	cmplwi  r0,0
  9c:	4c 82 00 20 	bnelr
  a0:	90 83 00 00 	stw     r4,0(r3)
  a4:	4e 80 00 20 	blr

000000a8 <processList>:
  a8:	94 21 ff f0 	stwu    r1,-16(r1)
  ac:	48 00 00 10 	b       bc <processList+0x14>
  b0:	80 03 00 00 	lwz     r0,0(r3)
  b4:	90 01 00 0c 	stw     r0,12(r1)
  b8:	80 63 00 04 	lwz     r3,4(r3)
  bc:	28 03 00 00 	cmplwi  r3,0
  c0:	40 82 ff f0 	bne     b0 <processList+0x8>
  c4:	38 21 00 10 	addi    r1,r1,16
  c8:	4e 80 00 20 	blr

000000cc <main>:
  cc:	94 21 ff e0 	stwu    r1,-32(r1)
  d0:	3c 60 00 00 	lis     r3,0
  d4:	38 a3 00 00 	addi    r5,r3,0
  d8:	80 80 00 00 	lwz     r4,0(0)
  dc:	38 00 00 00 	li      r0,0
  e0:	2c 04 00 0a 	cmpwi   r4,10
  e4:	41 80 00 0c 	blt     f0 <main+0x24>
  e8:	38 60 00 00 	li      r3,0
  ec:	48 00 00 30 	b       11c <main+0x50>
  f0:	54 84 18 38 	rlwinm  r4,r4,3,0,28
  f4:	38 60 00 01 	li      r3,1
  f8:	7c 65 21 2e 	stwx    r3,r5,r4
  fc:	7c 65 22 14 	add     r3,r5,r4
 100:	38 80 00 00 	li      r4,0
 104:	90 83 00 04 	stw     r4,4(r3)
 108:	80 60 00 00 	lwz     r3,0(0)
 10c:	38 83 00 01 	addi    r4,r3,1
 110:	54 63 18 38 	rlwinm  r3,r3,3,0,28
 114:	90 80 00 00 	stw     r4,0(0)
 118:	7c 65 1a 14 	add     r3,r5,r3
 11c:	28 03 00 00 	cmplwi  r3,0
 120:	41 82 00 08 	beq     128 <main+0x5c>
 124:	7c 60 1b 78 	mr      r0,r3
 128:	80 60 00 00 	lwz     r3,0(0)
 12c:	2c 03 00 0a 	cmpwi   r3,10
 130:	41 80 00 0c 	blt     13c <main+0x70>
 134:	38 60 00 00 	li      r3,0
 138:	48 00 00 30 	b       168 <main+0x9c>
 13c:	54 64 18 38 	rlwinm  r4,r3,3,0,28
 140:	38 60 00 02 	li      r3,2
 144:	7c 65 21 2e 	stwx    r3,r5,r4
 148:	7c 65 22 14 	add     r3,r5,r4
 14c:	38 80 00 00 	li      r4,0
 150:	90 83 00 04 	stw     r4,4(r3)
 154:	80 60 00 00 	lwz     r3,0(0)
 158:	38 83 00 01 	addi    r4,r3,1
 15c:	54 63 18 38 	rlwinm  r3,r3,3,0,28
 160:	90 80 00 00 	stw     r4,0(0)
 164:	7c 65 1a 14 	add     r3,r5,r3
 168:	28 03 00 00 	cmplwi  r3,0
 16c:	41 82 00 10 	beq     17c <main+0xb0>
 170:	28 00 00 00 	cmplwi  r0,0
 174:	40 82 00 08 	bne     17c <main+0xb0>
 178:	7c 60 1b 78 	mr      r0,r3
 17c:	80 60 00 00 	lwz     r3,0(0)
 180:	2c 03 00 0a 	cmpwi   r3,10
 184:	41 80 00 0c 	blt     190 <main+0xc4>
 188:	38 60 00 00 	li      r3,0
 18c:	48 00 00 30 	b       1bc <main+0xf0>
 190:	54 64 18 38 	rlwinm  r4,r3,3,0,28
 194:	38 60 00 03 	li      r3,3
 198:	7c 65 21 2e 	stwx    r3,r5,r4
 19c:	7c 65 22 14 	add     r3,r5,r4
 1a0:	38 80 00 00 	li      r4,0
 1a4:	90 83 00 04 	stw     r4,4(r3)
 1a8:	80 60 00 00 	lwz     r3,0(0)
 1ac:	38 83 00 01 	addi    r4,r3,1
 1b0:	54 63 18 38 	rlwinm  r3,r3,3,0,28
 1b4:	90 80 00 00 	stw     r4,0(0)
 1b8:	7c 65 1a 14 	add     r3,r5,r3
 1bc:	28 03 00 00 	cmplwi  r3,0
 1c0:	41 82 00 10 	beq     1d0 <main+0x104>
 1c4:	28 00 00 00 	cmplwi  r0,0
 1c8:	40 82 00 08 	bne     1d0 <main+0x104>
 1cc:	7c 60 1b 78 	mr      r0,r3
 1d0:	7c 03 03 78 	mr      r3,r0
 1d4:	48 00 00 10 	b       1e4 <main+0x118>
 1d8:	80 03 00 00 	lwz     r0,0(r3)
 1dc:	90 01 00 0c 	stw     r0,12(r1)
 1e0:	80 63 00 04 	lwz     r3,4(r3)
 1e4:	28 03 00 00 	cmplwi  r3,0
 1e8:	40 82 ff f0 	bne     1d8 <main+0x10c>
 1ec:	38 60 00 00 	li      r3,0
 1f0:	38 21 00 20 	addi    r1,r1,32
 1f4:	4e 80 00 20 	blr
