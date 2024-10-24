typedef int s32;
typedef char u8;
typedef char s8;
typedef s32 M2C_UNK;
#define NULL 0

#define M2C_FIELD(expr, type_ptr, offset) (*(type_ptr)((s8 *)(expr) + (offset)))

extern s32 Camera_80029020();                              /* extern */
extern M2C_UNK Fighter_80068E64(void *);                   /* extern */
extern M2C_UNK Fighter_UnkInitLoad_80068914(void *, s32 *, u8); /* extern */
extern M2C_UNK Fighter_UnkProcessDeath_80068354(void *);   /* extern */
extern M2C_UNK Fighter_UnkUpdateCostumeJoint_800686E4(void *); /* extern */
extern M2C_UNK Fighter_UnkUpdateVecFromBones_8006876C(void *); /* extern */
extern void *GObj_Create(M2C_UNK, M2C_UNK, M2C_UNK);       /* extern */
extern M2C_UNK GObj_InitUserData(void *, M2C_UNK, M2C_UNK *, void *); /* extern */
extern M2C_UNK GObj_SetupGXLink(M2C_UNK *, M2C_UNK, M2C_UNK); /* extern */
extern M2C_UNK HSD_GObjProc_8038FD54(void *, M2C_UNK *, M2C_UNK); /* extern */
extern void *HSD_ObjAlloc(M2C_UNK *);           /* extern */
extern M2C_UNK efAsync_8006737C(u8, M2C_UNK *, s32);       /* extern */
extern M2C_UNK ftAnim_8006FE48(void *);                    /* extern */
extern M2C_UNK ftAnim_80070308(void *);                    /* extern */
extern M2C_UNK ftAnim_8007077C(void *);                    /* extern */
extern M2C_UNK ftCo_8009CF84(void *);                      /* extern */
extern M2C_UNK ftCo_8009F578(void *);                      /* extern */
extern M2C_UNK ftCo_800C884C(void *);                      /* extern */
extern M2C_UNK ftColl_8007B320(void *);                    /* extern */
extern M2C_UNK ftData_8008572C(s32);                       /* extern */
extern M2C_UNK ftData_80085820(s32, u8);                   /* extern */
extern M2C_UNK ftData_800858E4(s32, u8);                   /* extern */
extern M2C_UNK ftData_80085B98(void *, s32, s32);          /* extern */
extern M2C_UNK ftLib_800867E8(void *);                     /* extern */
extern M2C_UNK ftParts_800749CC(void *);                   /* extern */
extern M2C_UNK ftParts_80074E58(void *);                   /* extern */
extern M2C_UNK ftParts_SetupParts(void *);                 /* extern */
extern M2C_UNK lbShadow_8000ED54(void *, s32);             /* extern */
extern M2C_UNK Fighter_8006A360;
extern M2C_UNK Fighter_8006C27C;
extern M2C_UNK Fighter_8006C80C;
extern M2C_UNK Fighter_8006D9AC;
extern M2C_UNK Fighter_80458FFC;
extern M2C_UNK Fighter_Unload_8006DABC;
extern M2C_UNK Fighter_procUpdate;
extern M2C_UNK fighter_alloc_data;
extern M2C_UNK ftData_803C52A0;
extern M2C_UNK ftData_OnLoad;
extern M2C_UNK ftData_UnkBytePerCharacter;
extern int (*ftData_UnkDemoCallbacks0[])(s32*, s32*);
extern M2C_UNK ftData_UnkMotionStates0;
extern M2C_UNK ftDrawCommon_80080E18;
extern M2C_UNK on_create_fighter;

void *ftDemo_CreateFighter(void *arg0) {
    s32 sp18;
    s32 sp14;
    u8 sp12 = 0;
    u8 sp10;
    s32 spC;
    int (*temp_r12)(void *);
    int (*temp_r12_2)(void *);
    s32 temp_r3;
    s32 temp_r5_2;
    u8 temp_r5;
    void *temp_r30;
    void *temp_r31;

    temp_r31 = GObj_Create(4, 8, 0);
    GObj_SetupGXLink(&ftDrawCommon_80080E18, 5, 0);
    temp_r30 = HSD_ObjAlloc(&fighter_alloc_data);
    M2C_FIELD(temp_r30, void **, 0x2D8) = HSD_ObjAlloc(&Fighter_80458FFC);
    GObj_InitUserData(temp_r31, 4, &Fighter_Unload_8006DABC, temp_r30);
    ftData_8008572C(M2C_FIELD(arg0, s32 *, 0));
    spC = M2C_FIELD(arg0, s32 *, 0);
    sp10 = M2C_FIELD(arg0, u8 *, 4);
    temp_r5 = M2C_FIELD(arg0, u8 *, 0xC);
    sp12 = (sp12 & ~0x80) | ((temp_r5 << 1) & 0x80);
    Fighter_UnkInitLoad_80068914(temp_r31, &spC, temp_r5);
    M2C_FIELD(temp_r30, s32 *, 0x18) = 0xE;
    M2C_FIELD(temp_r30, M2C_UNK **, 0x1C) = &ftData_803C52A0;
    temp_r5_2 = M2C_FIELD(temp_r30, s32 *, 4);
    M2C_FIELD(temp_r30, s32 *, 0x20) = (s32) *(&ftData_UnkMotionStates0 + (temp_r5_2 * 4));
    M2C_FIELD(temp_r30, s32 *, 0x24) = (s32) M2C_FIELD(M2C_FIELD(temp_r30, void **, 0x10C), s32 *, 0x14);
    M2C_FIELD(temp_r30, s32 *, 0x28) = (s32) M2C_FIELD(M2C_FIELD(temp_r30, void **, 0x10C), s32 *, 0x18);
    efAsync_8006737C(*(&ftData_UnkBytePerCharacter + M2C_FIELD(temp_r30, s32 *, 4)), &ftData_UnkMotionStates0, temp_r5_2);
    if (!(((u8) M2C_FIELD(arg0, u8 *, 0xC) >> 7U) & 1)) {
        ftData_80085820(M2C_FIELD(temp_r30, s32 *, 4), M2C_FIELD(temp_r30, u8 *, 0x619));
    } else {
        ftData_800858E4(M2C_FIELD(temp_r30, s32 *, 4), M2C_FIELD(temp_r30, u8 *, 0x619));
    }
    Fighter_UnkUpdateCostumeJoint_800686E4(temp_r31);
    temp_r3 = M2C_FIELD(arg0, s32 *, 8);
    if (temp_r3 >= 9) {
      ftData_UnkDemoCallbacks0[M2C_FIELD(temp_r30, s32 *, 4)](&sp18, &sp14);
    } else if (temp_r3 >= 8) {
        sp14 = 0xD;
        sp18 = 0xD;
    } else if (temp_r3 >= 7) {
        sp14 = 0xC;
        sp18 = 0xC;
    } else if (temp_r3 >= 5) {
        sp18 = 0xA;
        sp14 = 0xB;
    } else {
        sp18 = 0;
        sp14 = 9;
    }
    ftData_80085B98(temp_r30, sp18, sp14);
    ftParts_80074E58(temp_r30);
    ftParts_SetupParts(temp_r31);
    ftAnim_80070308(temp_r31);
    ftCo_800C884C(temp_r31);
    Fighter_80068E64(temp_r31);
    ftParts_800749CC(temp_r31);
    ftAnim_8007077C(temp_r31);
    ftCo_8009CF84(temp_r30);
    ftAnim_8006FE48(temp_r31);
    Fighter_UnkUpdateVecFromBones_8006876C(temp_r30);
    ftCo_8009F578(temp_r30);
    temp_r12 = (int (*)(void *)) *(&ftData_OnLoad + (M2C_FIELD(temp_r30, s32 *, 4) * 4));
    if (temp_r12 != NULL) {
        temp_r12(temp_r31);
    }
    ftColl_8007B320(temp_r31);
    M2C_FIELD(temp_r30, s32 *, 0x890) = Camera_80029020();
    lbShadow_8000ED54((char *)temp_r30 + 0x20A4, M2C_FIELD(temp_r31, s32 *, 0x28));
    HSD_GObjProc_8038FD54(temp_r31, &Fighter_8006A360, 1);
    HSD_GObjProc_8038FD54(temp_r31, &Fighter_procUpdate, 4);
    HSD_GObjProc_8038FD54(temp_r31, &Fighter_8006C27C, 5);
    HSD_GObjProc_8038FD54(temp_r31, &Fighter_8006C80C, 9);
    HSD_GObjProc_8038FD54(temp_r31, &Fighter_8006D9AC, 0x10);
    Fighter_UnkProcessDeath_80068354(temp_r31);
    temp_r12_2 = (int (*)(void *)) *(&on_create_fighter + (M2C_FIELD(arg0, s32 *, 8) * 4));
    if (temp_r12_2 != NULL) {
        temp_r12_2(temp_r31);
    }
    ftLib_800867E8(temp_r31);
    return temp_r31;
}
