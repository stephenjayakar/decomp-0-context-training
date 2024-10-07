.fn createNode, global
lwz     r0,0(0)
lis     r4,0
addi    r5,r4,0
cmpwi   r0,10
blt     1c <createNode+0x1c>
li      r3,0
blr
rlwinm  r0,r0,3,0,28
stwx    r3,r5,r0
add     r3,r5,r0
li      r0,0
stw     r0,4(r3)
lwz     r4,0(0)
addi    r3,r4,1
rlwinm  r0,r4,3,0,28
stw     r3,0(0)
add     r3,r5,r0
blr

.fn append, global
lwz     r0,0(0)
lis     r5,0
addi    r6,r5,0
cmpwi   r0,10
blt     64 <append+0x1c>
li      r4,0
b       8c <append+0x44>
rlwinm  r0,r0,3,0,28
stwx    r4,r6,r0
add     r4,r6,r0
li      r0,0
stw     r0,4(r4)
lwz     r5,0(0)
addi    r4,r5,1
rlwinm  r0,r5,3,0,28
stw     r4,0(0)
add     r4,r6,r0
cmplwi  r4,0
beqlr
lwz     r0,0(r3)
cmplwi  r0,0
bnelr
stw     r4,0(r3)
blr

.fn processList, global
stwu    r1,-16(r1)
b       bc <processList+0x14>
lwz     r0,0(r3)
stw     r0,12(r1)
lwz     r3,4(r3)
cmplwi  r3,0
bne     b0 <processList+0x8>
addi    r1,r1,16
blr

.fn main, global
stwu    r1,-32(r1)
lis     r3,0
addi    r5,r3,0
lwz     r4,0(0)
li      r0,0
cmpwi   r4,10
blt     f0 <main+0x24>
li      r3,0
b       11c <main+0x50>
rlwinm  r4,r4,3,0,28
li      r3,1
stwx    r3,r5,r4
add     r3,r5,r4
li      r4,0
stw     r4,4(r3)
lwz     r3,0(0)
addi    r4,r3,1
rlwinm  r3,r3,3,0,28
stw     r4,0(0)
add     r3,r5,r3
cmplwi  r3,0
beq     128 <main+0x5c>
mr      r0,r3
lwz     r3,0(0)
cmpwi   r3,10
blt     13c <main+0x70>
li      r3,0
b       168 <main+0x9c>
rlwinm  r4,r3,3,0,28
li      r3,2
stwx    r3,r5,r4
add     r3,r5,r4
li      r4,0
stw     r4,4(r3)
lwz     r3,0(0)
addi    r4,r3,1
rlwinm  r3,r3,3,0,28
stw     r4,0(0)
add     r3,r5,r3
cmplwi  r3,0
beq     17c <main+0xb0>
cmplwi  r0,0
bne     17c <main+0xb0>
mr      r0,r3
lwz     r3,0(0)
cmpwi   r3,10
blt     190 <main+0xc4>
li      r3,0
b       1bc <main+0xf0>
rlwinm  r4,r3,3,0,28
li      r3,3
stwx    r3,r5,r4
add     r3,r5,r4
li      r4,0
stw     r4,4(r3)
lwz     r3,0(0)
addi    r4,r3,1
rlwinm  r3,r3,3,0,28
stw     r4,0(0)
add     r3,r5,r3
cmplwi  r3,0
beq     1d0 <main+0x104>
cmplwi  r0,0
bne     1d0 <main+0x104>
mr      r0,r3
mr      r3,r0
b       1e4 <main+0x118>
lwz     r0,0(r3)
stw     r0,12(r1)
lwz     r3,4(r3)
cmplwi  r3,0
bne     1d8 <main+0x10c>
li      r3,0
addi    r1,r1,32
blr
