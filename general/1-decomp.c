// This doesn't compile
// https://decomp.me/scratch/6quZ2
extern ? ...bss.0;
extern s32 node_count;

void* createNode(s32 arg0) {
    s32 temp_r0;
    s32 temp_r0_2;

    if ((s32) node_count >= 0xA) {
        return NULL;
    }
    temp_r0_2 = node_count * 8;
    *(&...bss.0 + temp_r0_2) = arg0;
    (&...bss.0 + temp_r0_2)->unk4 = 0;
    temp_r0 = node_count * 8;
    node_count += 1;
    return &...bss.0 + temp_r0;
}

void append(void** arg0, s32 arg1) {
    s32 temp_r0;
    s32 temp_r0_2;
    void* var_r4;

    if ((s32) node_count >= 0xA) {
        var_r4 = NULL;
    } else {
        temp_r0 = node_count * 8;
        *(&...bss.0 + temp_r0) = arg1;
        (&...bss.0 + temp_r0)->unk4 = 0;
        temp_r0_2 = node_count * 8;
        node_count += 1;
        var_r4 = &...bss.0 + temp_r0_2;
    }
    if ((var_r4 != NULL) && ((void* ) *arg0 == NULL)) {
        *arg0 = var_r4;
    }
}

void processList(void* arg0) {
    s32 spC;
    void* var_r3;

    var_r3 = arg0;
loop_2:
    if (var_r3 != NULL) {
        spC = var_r3->unk0;
        var_r3 = var_r3->unk4;
        goto loop_2;
    }
}

s32 main(void) {
    s32 spC;
    s32 temp_r3;
    s32 temp_r3_2;
    s32 temp_r3_3;
    s32 temp_r4;
    s32 temp_r4_2;
    s32 temp_r4_3;
    void* var_r0;
    void* var_r3;
    void* var_r3_2;
    void* var_r3_3;
    void* var_r3_4;

    var_r0 = NULL;
    if ((s32) node_count >= 0xA) {
        var_r3 = NULL;
    } else {
        temp_r4 = node_count * 8;
        *(&...bss.0 + temp_r4) = 1;
        (&...bss.0 + temp_r4)->unk4 = 0;
        temp_r3 = node_count * 8;
        node_count += 1;
        var_r3 = &...bss.0 + temp_r3;
    }
    if (var_r3 != NULL) {
        var_r0 = var_r3;
    }
    if ((s32) node_count >= 0xA) {
        var_r3_2 = NULL;
    } else {
        temp_r4_2 = node_count * 8;
        *(&...bss.0 + temp_r4_2) = 2;
        (&...bss.0 + temp_r4_2)->unk4 = 0;
        temp_r3_2 = node_count * 8;
        node_count += 1;
        var_r3_2 = &...bss.0 + temp_r3_2;
    }
    if ((var_r3_2 != NULL) && (var_r0 == NULL)) {
        var_r0 = var_r3_2;
    }
    if ((s32) node_count >= 0xA) {
        var_r3_3 = NULL;
    } else {
        temp_r4_3 = node_count * 8;
        *(&...bss.0 + temp_r4_3) = 3;
        (&...bss.0 + temp_r4_3)->unk4 = 0;
        temp_r3_3 = node_count * 8;
        node_count += 1;
        var_r3_3 = &...bss.0 + temp_r3_3;
    }
    if ((var_r3_3 != NULL) && (var_r0 == NULL)) {
        var_r0 = var_r3_3;
    }
    var_r3_4 = var_r0;
loop_19:
    if (var_r3_4 != NULL) {
        spC = var_r3_4->unk0;
        var_r3_4 = var_r3_4->unk4;
        goto loop_19;
    }
    return 0;
}
