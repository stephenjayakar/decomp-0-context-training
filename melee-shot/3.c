static void (*on_create_fighter[0x10])(HSD_GObj *) = {
    ((void (*)(HSD_GObj *)) ftCo_800BECB0),
    ((void (*)(HSD_GObj *)) ftCo_800BED88),
    ((void (*)(HSD_GObj *)) ftCo_800BEF04),
    NULL,
    ((void (*)(HSD_GObj *)) ftCo_800BEFD4),
    ((void (*)(HSD_GObj *)) ftCo_800BF034),
    ((void (*)(HSD_GObj *)) ftCo_800BF108),
    ((void (*)(HSD_GObj *)) ftCo_800C6150),
    ((void (*)(HSD_GObj *)) ftCo_800C7070),
    ((void (*)(HSD_GObj *)) ftCo_800C70D0),
    ((void (*)(HSD_GObj *)) ftCo_800C7178),
    ((void (*)(HSD_GObj *)) ftCo_800C7220),
    ((void (*)(HSD_GObj *)) ftCo_800C7294),
    ((void (*)(HSD_GObj *)) ftCo_800C7308),
    ((void (*)(HSD_GObj *)) ftCo_800C739C),
    ((void (*)(HSD_GObj *)) ftCo_800C7434),
};

Fighter_GObj *ftDemo_CreateFighter(plAllocInfo2 *alloc_info) {
    s32 sp18;
    s32 sp14;
    u8 sp12;
    u8 sp10;
    s32 spC;
    Fighter *temp_r30;
    HSD_GObj *temp_r3;
    s32 temp_r3_2;
    void (*temp_r12)(HSD_GObj *);
    void (*temp_r12_2)(HSD_GObj *);

    temp_r3 = GObj_Create(4U, 8U, 0U);
    GObj_SetupGXLink(temp_r3, ftDrawCommon_80080E18, 5U, 0U);
    temp_r30 = HSD_ObjAlloc(&fighter_alloc_data);
    temp_r30->x2D8_specialAttributes2 = HSD_ObjAlloc(&Fighter_80458FFC);
    GObj_InitUserData(temp_r3, 4U, Fighter_Unload_8006DABC, temp_r30);
    ftData_8008572C(alloc_info->internal_id);
    spC = alloc_info->internal_id;
    sp10 = alloc_info->slot;
    sp12 = (sp12 & ~0x80) | ((M2C_FIELD(alloc_info, u8 *, 0xC) << 1) & 0x80);
    Fighter_UnkInitLoad_80068914((Fighter_GObj *) temp_r3, (struct S_TEMP1 *) &spC);
    temp_r30->x18 = 0xE;
    temp_r30->x1C_actionStateList = ftData_803C52A0;
    temp_r30->x20_actionStateList = ftData_UnkMotionStates0[temp_r30->kind];
    temp_r30->x24 = temp_r30->ft_data->x14;
    temp_r30->x28 = temp_r30->ft_data->x18;
    efAsync_8006737C((s8) (u8) ftData_UnkBytePerCharacter[temp_r30->kind]);
    if (!(((u8) M2C_FIELD(alloc_info, u8 *, 0xC) >> 7U) & 1)) {
        ftData_80085820(temp_r30->kind, (s32) temp_r30->x619_costume_id);
    } else {
        ftData_800858E4(temp_r30->kind, (s32) temp_r30->x619_costume_id);
    }
    Fighter_UnkUpdateCostumeJoint_800686E4((Fighter_GObj *) temp_r3);
    temp_r3_2 = alloc_info->unk8;
    if (temp_r3_2 >= 9) {
        ftData_UnkDemoCallbacks0[temp_r30->kind](temp_r3_2, &sp18, &sp14);
    } else if (temp_r3_2 >= 8) {
        sp14 = 0xD;
        sp18 = 0xD;
    } else if (temp_r3_2 >= 7) {
        sp14 = 0xC;
        sp18 = 0xC;
    } else if (temp_r3_2 >= 5) {
        sp18 = 0xA;
        sp14 = 0xB;
    } else {
        sp18 = 0;
        sp14 = 9;
    }
    ftData_80085B98(temp_r30, sp18, sp14);
    ftParts_80074E58(temp_r30);
    ftParts_SetupParts(temp_r3);
    ftAnim_80070308((Fighter_GObj *) temp_r3);
    ftCo_800C884C((Fighter_GObj *) temp_r3);
    Fighter_80068E64((Fighter_GObj *) temp_r3);
    ftParts_800749CC(temp_r3);
    ftAnim_8007077C((Fighter_GObj *) temp_r3);
    ftCo_8009CF84(temp_r30);
    ftAnim_8006FE48((Fighter_GObj *) temp_r3);
    Fighter_UnkUpdateVecFromBones_8006876C(temp_r30);
    ftCo_8009F578(temp_r30);
    temp_r12 = ftData_OnLoad[temp_r30->kind];
    if (temp_r12 != NULL) {
        temp_r12(temp_r3);
    }
    ftColl_8007B320((Fighter_GObj *) temp_r3);
    temp_r30->x890_cameraBox = Camera_80029020();
    lbShadow_8000ED54(&temp_r30->x20A4, (HSD_JObj *) temp_r3->hsd_obj);
    HSD_GObjProc_8038FD54(temp_r3, (void (*)(HSD_GObj *)) Fighter_8006A360, 1U);
    HSD_GObjProc_8038FD54(temp_r3, (void (*)(HSD_GObj *)) Fighter_procUpdate, 4U);
    HSD_GObjProc_8038FD54(temp_r3, (void (*)(HSD_GObj *)) Fighter_8006C27C, 5U);
    HSD_GObjProc_8038FD54(temp_r3, (void (*)(HSD_GObj *)) Fighter_8006C80C, 9U);
    HSD_GObjProc_8038FD54(temp_r3, (void (*)(HSD_GObj *)) Fighter_8006D9AC, 0x10U);
    Fighter_UnkProcessDeath_80068354((Fighter_GObj *) temp_r3);
    temp_r12_2 = on_create_fighter[alloc_info->unk8];
    if (temp_r12_2 != NULL) {
        temp_r12_2(temp_r3);
    }
    ftLib_800867E8(temp_r3);
    return (Fighter_GObj *) temp_r3;
}
