extern void* lbArchive_80016C64(char*, void**, ...);
extern void* Fighter_804D64FC;
extern void* Fighter_804D6500;
extern void* Fighter_804D6504;
extern void* Fighter_804D6508;
extern void* Fighter_804D650C;
extern void* Fighter_804D6510;
extern void* Fighter_804D6514;
extern void* Fighter_804D6518;
extern void* Fighter_804D651C;
extern void* Fighter_804D6520;
extern void* Fighter_804D6524;
extern void* Fighter_804D6528;
extern void* Fighter_804D652C;
extern void* Fighter_804D6530;
extern void* Fighter_804D6534;
extern void* Fighter_804D6538;
extern void* Fighter_804D653C;
extern void* Fighter_804D6540;
extern void* Fighter_804D6548;
extern void* Fighter_804D654C;
extern void* Fighter_804D6550;
extern void* ftPartsTable;
extern void* p_ftCommonData;

void Fighter_LoadCommonData(void) {
    void** sp8;
    lbArchive_80016C64("PlCo.dat", &sp8, "ftLoadCommonData", 0);

    // Assigning values from sp8 array to respective variables with inline casting
    p_ftCommonData = sp8[0];
    Fighter_804D6550 = (sp8)[1];
    Fighter_804D654C = (sp8)[2];
    Fighter_804D6548 = (sp8)[3];
    ftPartsTable = (sp8)[4];
    Fighter_804D6540 = (sp8)[5];
    Fighter_804D653C = (sp8)[6];
    Fighter_804D6538 = (sp8)[7];
    Fighter_804D6534 = (sp8)[8];
    Fighter_804D6530 = (sp8)[9];
    Fighter_804D652C = (sp8)[10];
    Fighter_804D6528 = (sp8)[11];
    Fighter_804D6524 = (sp8)[12];
    Fighter_804D6520 = (sp8)[13];
    Fighter_804D651C = (sp8)[14];
    Fighter_804D6518 = (sp8)[15];
    Fighter_804D6514 = (sp8)[16];
    Fighter_804D6510 = (sp8)[17];
    Fighter_804D650C = (sp8)[18];
    Fighter_804D6508 = (sp8)[19];
    Fighter_804D6504 = (sp8)[20];
    Fighter_804D6500 = (sp8)[21];
    Fighter_804D64FC = (sp8)[22];
}
