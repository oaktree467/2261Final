# 1 "safe.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "safe.c"
# 1 "game.h" 1
# 25 "game.h"
enum {PROTAGFRONT, PROTAGSIDE, PROTAGBACK, PROTAGIDLE};


enum {START, INSTRUCTIONS, INTRO, LIVING_ROOM, KITCHEN, BEDROOM, SAFE, OUTRO, PAUSE, WIN, LOSE};
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
void loadLivingRoom();
void loadKitchen();
void loadBedroom();
void printText();
void clearMessage();
# 2 "safe.c" 2
# 1 "myLib.h" 1




typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
# 65 "myLib.h"
extern volatile unsigned short *videoBuffer;
# 86 "myLib.h"
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
# 158 "myLib.h"
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
# 199 "myLib.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
# 210 "myLib.h"
typedef volatile struct {
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;


extern DMA *dma;
# 250 "myLib.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);
# 286 "myLib.h"
typedef void (*ihp)(void);
# 307 "myLib.h"
int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB);
# 3 "safe.c" 2
# 1 "messagescreen.h" 1
# 22 "messagescreen.h"
extern const unsigned short messagescreenTiles[1280];


extern unsigned short messagescreenMap[1024];


extern const unsigned short messagescreenPal[256];
# 4 "safe.c" 2
# 1 "safe.h" 1



extern STATIONARYSPRITE safeSpritesArr[];
extern int enteredCode[4];
extern int answerCode[4];
extern char openSafeBool;




void initSafeSprites();
void loadSafe();
void drawSafeSprites();
void updateCursor();
int checkCode();
void clearSafeMessage();
void safeText();
# 5 "safe.c" 2
# 1 "text.h" 1
extern int letterMap[95];
# 6 "safe.c" 2

STATIONARYSPRITE safeSpritesArr[19];
STATIONARYSPRITE * upArrows[4];
STATIONARYSPRITE * downArrows[4];
STATIONARYSPRITE * codeNumbers[4];
STATIONARYSPRITE * middleHighlight[5];
int cursor;
int answerCode[4] = {2, 0, 0, 1};
int enteredCode[4] = {0, 0, 0, 0};
char sm_1[] = "Your secret safe. It lookslike you need your key anda code." ;
char openSafeBool;
char introMessageBool;
extern char keyFound;


void loadSafe() {
    hOff = 0;
    vOff = 0;
    cursor = 0;
    openSafeBool = 0;
    if (!keyFound) {
        safeText();
        (*(volatile unsigned short *)0x4000000) |= (1<<8);
        introMessageBool = 0;
    } else {
        introMessageBool = 1;
    }

    initSafeSprites();
}


void initSafeSprites() {

    for (int i = 0; i < 4; i++) {
        safeSpritesArr[i].sheetCol = 0;
        safeSpritesArr[i].sheetRow = 0;
        safeSpritesArr[i].attr0_shape = 0;
        safeSpritesArr[i].attr1_size = 1;
        safeSpritesArr[i].worldCol = 48 + (24 * i);
        safeSpritesArr[i].worldRow = 72;
        safeSpritesArr[i].hide = 0;
        safeSpritesArr[i].screenCol = safeSpritesArr[i].worldCol;
        safeSpritesArr[i].screenRow = safeSpritesArr[i].worldRow;
        codeNumbers[i] = &safeSpritesArr[i];
    }


    for (int i = 4; i < 8; i++) {
        safeSpritesArr[i].sheetCol = 8;
        safeSpritesArr[i].sheetRow = 0;
        safeSpritesArr[i].attr0_shape = 2;
        safeSpritesArr[i].attr1_size = 3;
        safeSpritesArr[i].worldCol = 47 + (24 * (i - 4));
        safeSpritesArr[i].worldRow = 63;
        safeSpritesArr[i].hide = 1;
        safeSpritesArr[i].screenCol = safeSpritesArr[i].worldCol;
        safeSpritesArr[i].screenRow = safeSpritesArr[i].worldRow;
        middleHighlight[i - 4] = &safeSpritesArr[i];
    }
    safeSpritesArr[4].hide = 0;


    for (int i = 8; i < 12; i++) {
        safeSpritesArr[i].sheetCol = 4;
        safeSpritesArr[i].sheetRow = 0;
        safeSpritesArr[i].attr0_shape = 1;
        safeSpritesArr[i].attr1_size = 0;
        safeSpritesArr[i].worldCol = 48 + (24 * (i - 8));
        safeSpritesArr[i].worldRow = 53;
        safeSpritesArr[i].hide = 1;
        safeSpritesArr[i].screenCol = safeSpritesArr[i].worldCol;
        safeSpritesArr[i].screenRow = safeSpritesArr[i].worldRow;
        upArrows[i - 8] = &safeSpritesArr[i];
    }


    for (int i = 12; i < 16; i++) {
        safeSpritesArr[i].sheetCol = 4;
        safeSpritesArr[i].sheetRow = 1;
        safeSpritesArr[i].attr0_shape = 1;
        safeSpritesArr[i].attr1_size = 0;
        safeSpritesArr[i].worldCol = 48 + (24 * (i - 12));
        safeSpritesArr[i].worldRow = 99;
        safeSpritesArr[i].hide = 1;
        safeSpritesArr[i].screenCol = safeSpritesArr[i].worldCol;
        safeSpritesArr[i].screenRow = safeSpritesArr[i].worldRow;
        downArrows[i - 12] = &safeSpritesArr[i];
    }


    safeSpritesArr[16].sheetCol = 4;
    safeSpritesArr[16].sheetRow = 8;
    safeSpritesArr[16].attr0_shape = 2;
    safeSpritesArr[16].attr1_size = 3;
    safeSpritesArr[16].worldCol = 150;
    safeSpritesArr[16].worldRow = 60;
    safeSpritesArr[16].hide = 0;
    safeSpritesArr[16].screenCol = safeSpritesArr[16].worldCol;
    safeSpritesArr[16].screenRow = safeSpritesArr[16].worldRow;


    safeSpritesArr[17].sheetCol = 12;
    safeSpritesArr[17].sheetRow = 0;
    safeSpritesArr[17].attr0_shape = 2;
    safeSpritesArr[17].attr1_size = 3;
    safeSpritesArr[17].worldCol = 150;
    safeSpritesArr[17].worldRow = 60;
    safeSpritesArr[17].hide = 1;
    safeSpritesArr[17].screenCol = safeSpritesArr[17].worldCol;
    safeSpritesArr[17].screenRow = safeSpritesArr[17].worldRow;
    middleHighlight[4] = &safeSpritesArr[17];


    safeSpritesArr[18].sheetCol = 4;
    safeSpritesArr[18].sheetRow = 4;
    safeSpritesArr[18].attr0_shape = 0;
    safeSpritesArr[18].attr1_size = 2;
    safeSpritesArr[18].worldCol = 199;
    safeSpritesArr[18].worldRow = 32;
    safeSpritesArr[18].hide = !(keyFound);
    safeSpritesArr[18].screenCol = safeSpritesArr[18].worldCol;
    safeSpritesArr[18].screenRow = safeSpritesArr[18].worldRow;
}

void drawSafeSprites() {
    for (int i = 0; i < 19; i++) {
        if (safeSpritesArr[i].hide == 1) {
            shadowOAM[i].attr0 = (2<<8);
        } else {
            shadowOAM[i].attr0 = (safeSpritesArr[i].screenRow | (1<<13) | ((safeSpritesArr[i].attr0_shape) << 14));
            shadowOAM[i].attr1 = (safeSpritesArr[i].screenCol | (safeSpritesArr[i].attr1_size) << 14);
            shadowOAM[i].attr2 = ((0)<<12) | ((safeSpritesArr[i].sheetRow)*32+(safeSpritesArr[i].sheetCol * 2)) | ((2)<<10);
        }
    }
}

void updateCursor() {
    if (!introMessageBool) {
        if ((!(~(oldButtons)&((1<<0))) && (~buttons & ((1<<0))))) {
            introMessageBool = 1;
            (*(volatile unsigned short *)0x4000000) = 0 | (1<<9) | (1<<12);
        }
    } else {
        if ((!(~(oldButtons)&((1<<4))) && (~buttons & ((1<<4))))) {
            middleHighlight[cursor]->hide = 1;
            cursor = (cursor + 1) % 5;
            middleHighlight[cursor]->hide = 0;
        }

        if ((!(~(oldButtons)&((1<<5))) && (~buttons & ((1<<5))))) {
            middleHighlight[cursor]->hide = 1;
            if (cursor == 0) {
                cursor = 4;
            } else {
                cursor--;
            }
            middleHighlight[cursor]->hide = 0;
        }

        if ((!(~(oldButtons)&((1<<6))) && (~buttons & ((1<<6))))) {
            if (cursor < 4) {
                upArrows[cursor]->hide = 0;
                codeNumbers[cursor]->sheetRow = (codeNumbers[cursor]->sheetRow + 2) % 20;
                enteredCode[cursor] = (codeNumbers[cursor]->sheetRow / 2);
            }
        } else {
            upArrows[cursor]->hide = 1;
        }

        if ((!(~(oldButtons)&((1<<7))) && (~buttons & ((1<<7))))) {
            if (cursor < 4) {
                downArrows[cursor]->hide = 0;
                if (codeNumbers[cursor]->sheetRow == 0) {
                    codeNumbers[cursor]->sheetRow = 18;
                } else {
                    codeNumbers[cursor]->sheetRow -= 2;
                }
                enteredCode[cursor] = (codeNumbers[cursor]->sheetRow / 2);
            }
        } else {
            downArrows[cursor]->hide = 1;
        }

        if ((!(~(oldButtons)&((1<<0))) && (~buttons & ((1<<0)))) && cursor == 4) {
            if (checkCode() && keyFound) {
                openSafeBool = 1;
            } else {
                for (int i = 0; i < 4; i++) {
                    codeNumbers[i]->sheetRow = 0;
                    enteredCode[i] = 0;
                }
                middleHighlight[4]->hide = 1;
                cursor = 0;
                middleHighlight[0]->hide = 0;
            }
        }
    }

}

int checkCode() {
    for (int i = 0; i < 4; i++) {
        if (enteredCode[i] != answerCode[i]) {
            return 0;
        }
    }
    return 1;
}

void safeText() {
    clearSafeMessage();
    int i = 0;
    int j = 418;
    while (sm_1[i] != '\0') {

        if ((j - 444) % 32 == 0) {
            j += 6;
        }

        messagescreenMap[j] = messagescreenMap[(letterMap[((sm_1[i]) - 32)])];
        i++;
        j++;
    }

    DMANow(3, messagescreenMap, &((screenblock *)0x6000000)[24], 1024 * 4);
}

void clearSafeMessage() {
    for (int i = 418; i < 604; i++) {
        if ((i - 444) % 32 == 0) {
            i += 6;
        }
        messagescreenMap[i] = messagescreenMap[748];
    }

}
