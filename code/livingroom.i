# 1 "livingroom.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "livingroom.c"
# 1 "game.h" 1
# 25 "game.h"
enum {PROTAGFRONT, PROTAGSIDE, PROTAGBACK, PROTAGIDLE};


enum {START, INSTRUCTIONS, INTRO, LIVING_ROOM, COMPUTER, KITCHEN, BEDROOM, SAFE, OUTRO, PAUSE, WIN, LOSE};
int state;




typedef struct {
    int worldRow;
    int worldCol;
    int screenRow;
    int screenCol;
    int width;
    int height;
    int aniCounter;
    int aniState;
    int prevAniState;
    int currFrame;
    int totalFrames;
    int sideOrientation;
} PROTAGSPRITE;


typedef struct {
    int worldRow;
    int worldCol;
    int screenRow;
    int screenCol;
    int width;
    int height;
    int sheetCol;
    int sheetRow;
    int attr0_shape;
    int attr1_size;
    int hide;
    unsigned short collisionColor;
    char (* message)[];
} STATIONARYSPRITE;



extern PROTAGSPRITE protag;
extern STATIONARYSPRITE (* currSpriteArr)[];
extern int currSpriteArrCount;
extern const unsigned short (* currCollisionMap)[];
extern unsigned short (* currMessageMap)[];
extern int spriteCollisionBool;
extern int messageActiveBool;
extern int nextRoomBool;
extern STATIONARYSPRITE *activeSprite;


extern unsigned short hOff;
extern unsigned short vOff;
extern unsigned short priorHoff;
extern unsigned short priorVoff;

extern int mode;

extern int priorState;

extern char keyFound;
extern char enableKeyFind;
extern char phoneRinging;
extern char openSafeBool;
extern char documentsUploaded;
extern char computerAccessBool;
extern char phoneAnswerBool;
extern int totalMapWidth;
extern int visMapWidth;
extern int totalMapHeight;
extern int visMapHeight;


void initGame();
void initProtagonist();
void updateGame();
void updateProtagonist();
void updateSprites();
void drawGame();
void drawProtagonist();
void drawSprites();
unsigned short checkCollisionMapColor(int x, int y);
void checkSpriteCollision();
void checkMoreInfo();
void checkThreshold();
void printText();
void clearMessage();
void setUpInterrupts();
void interruptHandler();
void timerWait();
# 2 "livingroom.c" 2
# 1 "livingroom.h" 1





extern STATIONARYSPRITE livingRoomSpritesArr[];
extern STATIONARYSPRITE phoneRingSpritesArr[];
extern int currRing;
extern int timerI;
extern int timerJ;


void initLivingRoomSprites();
void checkLivingRoomCollide();
void loadLivingRoom();
void ringerInterruptHandler();
void ringSettings();
void setUpRingerInterrupts();
void drawRing();
void updateRing();
void answerPhone();
void chapterTwoIntro();
# 3 "livingroom.c" 2
# 1 "livingroomcollisionmap.h" 1
# 20 "livingroomcollisionmap.h"
extern const unsigned short livingroomcollisionmapBitmap[262144];
# 4 "livingroom.c" 2
# 1 "mylib.h" 1




typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
# 65 "mylib.h"
extern volatile unsigned short *videoBuffer;
# 86 "mylib.h"
typedef struct {
 u16 tileimg[8192];
} charblock;


typedef struct {
 u16 tilemap[1024];
} screenblock;



void setPixel3(int col, int row, unsigned short color);
void drawRect3(int col, int row, int width, int height, volatile unsigned short color);
void fillScreen3(volatile unsigned short color);
void drawImage3(int col, int row, int width, int height, const unsigned short *image);
void drawFullscreenImage3(const unsigned short *image);


void setPixel4(int col, int row, unsigned char colorIndex);
void drawRect4(int col, int row, int width, int height, volatile unsigned char colorIndex);
void fillScreen4(volatile unsigned char colorIndex);
void drawImage4(int col, int row, int width, int height, const unsigned short *image);
void drawFullscreenImage4(const unsigned short *image);


void waitForVBlank();
void flipPage();





typedef struct {
    unsigned short attr0;
    unsigned short attr1;
    unsigned short attr2;
    unsigned short fill;
} OBJ_ATTR;



extern OBJ_ATTR shadowOAM[];
# 158 "mylib.h"
void hideSprites();






typedef struct {
    int worldRow;
    int worldCol;
    int rdel;
    int cdel;
    int width;
    int height;
    int aniCounter;
    int aniState;
    int prevAniState;
    int curFrame;
    int numFrames;
    int hide;
} ANISPRITE;
# 199 "mylib.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
# 210 "mylib.h"
typedef volatile struct {
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;


extern DMA *dma;
# 250 "mylib.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);
# 286 "mylib.h"
typedef void (*ihp)(void);
# 307 "mylib.h"
int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB);
# 5 "livingroom.c" 2
# 1 "chapter2bg.h" 1
# 22 "chapter2bg.h"
extern const unsigned short chapter2bgTiles[2160];


extern unsigned short chapter2bgMap[1024];


extern const unsigned short chapter2bgPal[256];
# 6 "livingroom.c" 2
# 1 "messagescreen.h" 1
# 22 "messagescreen.h"
extern const unsigned short messagescreenTiles[1280];


extern unsigned short messagescreenMap[1024];


extern const unsigned short messagescreenPal[256];
# 7 "livingroom.c" 2

STATIONARYSPRITE livingRoomSpritesArr[8];
STATIONARYSPRITE phoneRingSpritesArr[4];

int currRing;
int phoneMessageIndex;


char record[] = "A commemorative 50th anniversary gold record of 'Toxic' by Britney Spears. Just a little touch you added to the room.";
char tapestry[] = "You never really understood this tapestry, but when your aunt passed and left you the house, you kept it up in her memory.";
char painting[] = "A painting of an unidentified woman. You wonder how much it could be worth?";
char poster[] = "'2001: A Space Odyssey.' Suspended animation, the question of sentience... this movie haunts you.";
char bookcase[] = "Multiple copies of every Jane Austen text. Do you think your aunt had a favorite author?";
char computerScreen[] = "";
char TV[] = "Some show about being buried alive... you can't bear to watch this.";
char telephone[] = "You might be the only person you know who doesn't have a mobile phone.";


void initLivingRoomSprites() {

    livingRoomSpritesArr[0].sheetCol = 12;
    livingRoomSpritesArr[0].sheetRow = 0;
    livingRoomSpritesArr[0].attr0_shape = 0;
    livingRoomSpritesArr[0].attr1_size = 1;
    livingRoomSpritesArr[0].worldCol = 322;
    livingRoomSpritesArr[0].worldRow = 360;
    livingRoomSpritesArr[0].hide = 1;
    livingRoomSpritesArr[0].collisionColor = 0x7CC0;
    livingRoomSpritesArr[0].message = &telephone;


    livingRoomSpritesArr[1].sheetCol = 12;
    livingRoomSpritesArr[1].sheetRow = 4;
    livingRoomSpritesArr[1].attr0_shape = 2;
    livingRoomSpritesArr[1].attr1_size = 3;
    livingRoomSpritesArr[1].worldCol = 189;
    livingRoomSpritesArr[1].worldRow = 107;
    livingRoomSpritesArr[1].hide = 1;
    livingRoomSpritesArr[1].collisionColor = 0x7F60;
    livingRoomSpritesArr[1].message = &record;


    livingRoomSpritesArr[2].sheetCol = 0;
    livingRoomSpritesArr[2].sheetRow = 12;
    livingRoomSpritesArr[2].attr0_shape = 0;
    livingRoomSpritesArr[2].attr1_size = 3;
    livingRoomSpritesArr[2].worldCol = 59;
    livingRoomSpritesArr[2].worldRow = 70;
    livingRoomSpritesArr[2].hide = 1;
    livingRoomSpritesArr[2].collisionColor = 0x03FF;
    livingRoomSpritesArr[2].message = &tapestry;


    livingRoomSpritesArr[3].sheetCol = 8;
    livingRoomSpritesArr[3].sheetRow = 12;
    livingRoomSpritesArr[3].attr0_shape = 0;
    livingRoomSpritesArr[3].attr1_size = 3;
    livingRoomSpritesArr[3].worldCol = 132;
    livingRoomSpritesArr[3].worldRow = 285;
    livingRoomSpritesArr[3].hide = 1;
    livingRoomSpritesArr[3].collisionColor = 0x025F;
    livingRoomSpritesArr[3].message = &painting;


    livingRoomSpritesArr[4].sheetCol = 0;
    livingRoomSpritesArr[4].sheetRow = 20;
    livingRoomSpritesArr[4].attr0_shape = 0;
    livingRoomSpritesArr[4].attr1_size = 3;
    livingRoomSpritesArr[4].worldCol = 287;
    livingRoomSpritesArr[4].worldRow = 101;
    livingRoomSpritesArr[4].hide = 1;
    livingRoomSpritesArr[4].collisionColor = 0x001F;
    livingRoomSpritesArr[4].message = &poster;


    livingRoomSpritesArr[5].sheetCol = 8;
    livingRoomSpritesArr[5].sheetRow = 20;
    livingRoomSpritesArr[5].attr0_shape = 1;
    livingRoomSpritesArr[5].attr1_size = 3;
    livingRoomSpritesArr[5].worldCol = 342;
    livingRoomSpritesArr[5].worldRow = 113;
    livingRoomSpritesArr[5].hide = 1;
    livingRoomSpritesArr[5].collisionColor = 0x03E4;
    livingRoomSpritesArr[5].message = &bookcase;



    livingRoomSpritesArr[6].sheetCol = 0;
    livingRoomSpritesArr[6].sheetRow = 28;
    livingRoomSpritesArr[6].attr0_shape = 0;
    livingRoomSpritesArr[6].attr1_size = 1;
    livingRoomSpritesArr[6].worldCol = 454;
    livingRoomSpritesArr[6].worldRow = 137;
    livingRoomSpritesArr[6].hide = 1;
    livingRoomSpritesArr[6].collisionColor = 0x6C15;
    livingRoomSpritesArr[6].message = &computerScreen;


    livingRoomSpritesArr[7].sheetCol = 4;
    livingRoomSpritesArr[7].sheetRow = 28;
    livingRoomSpritesArr[7].attr0_shape = 2;
    livingRoomSpritesArr[7].attr1_size = 1;
    livingRoomSpritesArr[7].worldCol = 235;
    livingRoomSpritesArr[7].worldRow = 135;
    livingRoomSpritesArr[7].hide = 1;
    livingRoomSpritesArr[7].collisionColor = 0x0E47;
    livingRoomSpritesArr[7].message = &TV;




    phoneRingSpritesArr[0].sheetCol = 8;
    phoneRingSpritesArr[0].sheetRow = 27;
    phoneRingSpritesArr[0].worldCol = 323;
    phoneRingSpritesArr[0].worldRow = 350;
    phoneRingSpritesArr[0].hide = 1;


    phoneRingSpritesArr[1].sheetCol = 8;
    phoneRingSpritesArr[1].sheetRow = 26;
    phoneRingSpritesArr[1].worldCol = 323;
    phoneRingSpritesArr[1].worldRow = 350;
    phoneRingSpritesArr[1].hide = 1;


    phoneRingSpritesArr[2].sheetCol = 8;
    phoneRingSpritesArr[2].sheetRow = 25;
    phoneRingSpritesArr[2].worldCol = 323;
    phoneRingSpritesArr[2].worldRow = 350;
    phoneRingSpritesArr[2].hide = 1;


    phoneRingSpritesArr[3].sheetCol = 8;
    phoneRingSpritesArr[3].sheetRow = 24;
    phoneRingSpritesArr[3].worldCol = 323;
    phoneRingSpritesArr[3].worldRow = 350;
    phoneRingSpritesArr[3].hide = 1;


}


void loadLivingRoom() {
    visMapWidth = 512;
    totalMapWidth = 512;
    visMapHeight = 478;
    totalMapHeight = 512;

    if (priorState != PAUSE && priorState != COMPUTER) {

        if (priorState == KITCHEN) {
            protag.worldRow = 370;
            protag.worldCol = 450;

            hOff = (visMapWidth - 240);
            vOff = (visMapHeight - 160);

        } else {

            protag.worldRow = 140;
            protag.worldCol = 30;
            protag.aniState = PROTAGFRONT;

            hOff = 0;
            vOff = 40;
            waitForVBlank();
            (*(volatile unsigned short *)0x04000014) = hOff;
            (*(volatile unsigned short *)0x04000016) = vOff;
        }

    } else {
        hOff = priorHoff;
        vOff = priorVoff;
    }

    initLivingRoomSprites();
    currSpriteArrCount = 8;
    currSpriteArr = &livingRoomSpritesArr;
    currCollisionMap = &livingroomcollisionmapBitmap;

    currRing = 0;
    phoneMessageIndex = 1;
    ringSettings();
}

void ringSettings() {
    if (phoneRinging) {
        *(volatile unsigned short*)0x400010A |= (0<<7);
        *(volatile unsigned short*)0x400010A = 2;
        *(volatile unsigned short*)0x4000108 = 65536 - 20000;
        *(volatile unsigned short*)0x400010A |= (1<<6) | (1<<7);
    } else {
        for (int i = 0; i < 4; i++) {
            shadowOAM[(i + 8 + 1)].attr0 = (2<<8);
        }
        *(volatile unsigned short*)0x400010A = (0<<7);
    }
}

void updateRing() {
    for (int i = 0; i < 4; i++) {
        phoneRingSpritesArr[i].screenCol = phoneRingSpritesArr[i].worldCol - hOff;
        phoneRingSpritesArr[i].screenRow = phoneRingSpritesArr[i].worldRow - vOff;
    }
}

void drawRing() {
    for (int i = 0; i < 4; i++) {
        if (phoneRingSpritesArr[i].hide == 1) {
            shadowOAM[(i + 8 + 1)].attr0 = (2<<8);
        } else {
            shadowOAM[i + 8 + 1].attr0 = (phoneRingSpritesArr[i].screenRow | (1<<13) | ((1<<14)));
            shadowOAM[i + 8 + 1].attr1 = (phoneRingSpritesArr[i].screenCol | (0<<14));
            shadowOAM[i + 8 + 1].attr2 = ((0)<<12) | ((phoneRingSpritesArr[i].sheetRow)*32+(phoneRingSpritesArr[i].sheetCol * 2)) | ((2)<<10);
        }
    }

}


void answerPhone() {
    char phone1[] = "\"This is an automated message from POE CRYONICS.\"";
    char phone2[] = "\"Our records indicate you have not yet uploaded your life insurance documents.\"";
    char phone3[] = "\"Please upload your documents today, to be ready for your appointment next week.\"";
    char phone4[] = "Ah, that's right... you need to upload your documents, which are in the SAFE.";

    if ((!(~(oldButtons)&((1<<0))) && (~buttons & ((1<<0))))) {
        phoneMessageIndex++;
    }
    switch (phoneMessageIndex) {
        case 1:
            livingRoomSpritesArr[0].message = &phone1;
            printText();
            break;
        case 2:
            livingRoomSpritesArr[0].message = &phone2;
            printText();
            break;
        case 3:
            livingRoomSpritesArr[0].message = &phone3;
            printText();
            break;
        case 4:
            livingRoomSpritesArr[0].message = &phone4;
            printText();
            break;
        default:
            livingRoomSpritesArr[0].message = &telephone;
            phoneAnswerBool = 0;
            enableKeyFind = 1;
            (*(volatile unsigned short *)0x4000000) = 0 | (1<<9) | (1<<12);
    }
}

void chapterTwoIntro() {
    timerWait(0, 256);

    for (int i = 0; i < 700; i++) {
        chapter2bgMap[i] = chapter2bgMap[701];
        if (i % 32 == 0) {
            DMANow(3, chapter2bgMap, &((screenblock *)0x6000000)[24], ((1 << 30) | (1024 * 4)));
        }
    }

    (*(volatile unsigned short *)0x4000000) = 0 | (1<<9) | (1<<12);

    DMANow(3, messagescreenTiles, &((charblock *)0x6000000)[0], 2560 / 2);
    DMANow(3, messagescreenMap, &((screenblock *)0x6000000)[24], 2048 / 2);


}
