s32 sqrt();                                         /* extern */
static M2C_UNK @3;                                  /* unable to generate initializer: unknown type; const */

void vec3_sub(void *arg0, void *arg1, void *arg2) {
    f32 sp1C;
    f32 sp18;
    f32 sp14;

    sp14 = M2C_FIELD(arg1, f32 *, 0) - M2C_FIELD(arg2, f32 *, 0);
    sp18 = M2C_FIELD(arg1, f32 *, 4) - M2C_FIELD(arg2, f32 *, 4);
    sp1C = M2C_FIELD(arg1, f32 *, 8) - M2C_FIELD(arg2, f32 *, 8);
    M2C_FIELD(arg0, f32 *, 0) = sp14;
    M2C_FIELD(arg0, f32 *, 4) = sp18;
    M2C_FIELD(arg0, f32 *, 8) = sp1C;
}

f32 vec3_dot(void *arg0, void *arg1) {
    return (M2C_FIELD(arg0, f32 *, 8) * M2C_FIELD(arg1, f32 *, 8)) + ((M2C_FIELD(arg0, f32 *, 0) * M2C_FIELD(arg1, f32 *, 0)) + (M2C_FIELD(arg0, f32 *, 4) * M2C_FIELD(arg1, f32 *, 4)));
}

s32 intersect_ray_sphere(void *arg0, void *arg1) {
    f32 spAC;
    s32 spA8;
    f32 spA4;
    f32 spA0;
    f32 sp9C;
    f32 sp98;
    f32 sp94;
    f32 sp90;
    f32 sp8C;
    f32 sp88;
    f32 sp84;
    f32 sp80;
    f32 sp7C;
    f32 sp78;
    f32 sp74;
    f32 sp70;
    f32 sp6C;
    f32 sp68;
    f32 sp64;
    f32 sp60;
    f32 sp5C;
    f32 sp58;
    f32 sp54;
    f32 sp50;
    f32 sp4C;
    f32 sp48;
    f32 sp44;
    f32 sp40;
    f32 sp3C;
    f32 sp18;
    f32 sp14;
    f32 sp10;
    f32 temp_f30;
    f32 temp_f31;
    f32 temp_f9;
    f32 temp_r3;

    spA8 = M2C_FIELD(&@3, s32 *, 0);
    spAC = M2C_FIELD(&@3, f32 *, 4);
    sp90 = M2C_FIELD(arg1, f32 *, 0);
    sp94 = M2C_FIELD(arg1, f32 *, 4);
    sp98 = M2C_FIELD(arg1, f32 *, 8);
    sp9C = M2C_FIELD(arg0, f32 *, 0);
    spA0 = M2C_FIELD(arg0, f32 *, 4);
    spA4 = M2C_FIELD(arg0, f32 *, 8);
    sp3C = sp9C - sp90;
    sp40 = spA0 - sp94;
    sp44 = spA4 - sp98;
    sp10 = M2C_FIELD(arg0, f32 *, 0xC);
    sp14 = M2C_FIELD(arg0, f32 *, 0x10);
    temp_r3 = M2C_FIELD(arg0, f32 *, 0x14);
    sp18 = temp_r3;
    sp78 = sp10;
    sp84 = sp10;
    sp7C = sp14;
    sp80 = temp_r3;
    sp88 = sp14;
    sp8C = temp_r3;
    sp48 = sp3C;
    sp54 = sp3C;
    sp4C = sp40;
    sp50 = sp44;
    sp58 = sp40;
    sp5C = sp44;
    temp_f31 = (sp8C * sp80) + ((sp84 * sp78) + (sp88 * sp7C));
    sp60 = sp10;
    sp6C = sp3C;
    sp64 = sp14;
    sp70 = sp40;
    sp68 = temp_r3;
    sp74 = sp44;
    temp_f9 = M2C_FIELD(arg1, f32 *, 0xC);
    temp_f30 = 2.0f * ((sp74 * sp68) + ((sp6C * sp60) + (sp70 * sp64)));
    M2C_ERROR(/* unknown instruction: cror eq, gt, eq */);
    if (((temp_f30 * temp_f30) - (4.0f * temp_f31 * (((sp5C * sp50) + ((sp54 * sp48) + (sp58 * sp4C))) - (temp_f9 * temp_f9)))) == 0.0f) {
        spA8 = 1;
        spAC = (-temp_f30 - (f32) sqrt()) / (2.0f * temp_f31);
    }
    return spA8;
}
