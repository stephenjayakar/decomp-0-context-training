import unittest
from labels import get_funcs

src = """
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
"""

class TestLabels(unittest.TestCase):
    def test_get_funcs(self):
        f = get_funcs(src.split('\n'))
        self.assertEqual(f[0].func_name, 'createNode')
        self.assertEqual(f[0].addr, 0)
        self.assertEqual(f[1].func_name, 'append')
        self.assertEqual(f[1].addr, 72)
