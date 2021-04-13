# 1 "computer.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "computer.c"

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
# 3 "computer.c" 2
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
# 4 "computer.c" 2
# 1 "computer.h" 1



extern STATIONARYSPRITE computerSpritesArr[];
extern PROTAGSPRITE mouse;


void updateComputer();
void drawComputer();

void loadComputer();

void initComputerSprites();
void drawComputerSprites();
void checkComputerSpriteCollision();
void initMouse();
void drawMouse();
void updateMouse();
# 5 "computer.c" 2
# 1 "desktopcollision.h" 1
# 20 "desktopcollision.h"
extern const unsigned short desktopcollisionBitmap[65536];
# 6 "computer.c" 2

STATIONARYSPRITE computerSpritesArr[8];
PROTAGSPRITE mouse;


void loadComputer() {
    hOff = 0;
    vOff = 0;

    totalMapWidth = 256;
    totalMapHeight = 256;

    visMapWidth = 240;
    visMapHeight = 160;

    currCollisionMap = &desktopcollisionBitmap;

    initMouse();
    initComputerSprites();
}

void updateComputer() {
    updateMouse();
    checkComputerSpriteCollision();
}

void drawComputer() {
    drawMouse();
    drawComputerSprites();
}

void initMouse() {
    mouse.worldCol = 120;
    mouse.worldRow = 72;
    mouse.screenCol = mouse.worldCol;
    mouse.screenRow = mouse.worldRow;
    mouse.width = 8;
    mouse.height = 11;
}

void initComputerSprites() {


    computerSpritesArr[0].sheetCol = 0;
    computerSpritesArr[0].sheetRow = 2;
    computerSpritesArr[0].attr0_shape = 0;
    computerSpritesArr[0].attr1_size = 2;
    computerSpritesArr[0].worldCol = 5;
    computerSpritesArr[0].worldRow = 17;
    computerSpritesArr[0].hide = 1;
    computerSpritesArr[0].screenCol = computerSpritesArr[0].worldCol;
    computerSpritesArr[0].screenRow = computerSpritesArr[0].worldRow;
    computerSpritesArr[0].collisionColor = 0x03FF;


    computerSpritesArr[1].sheetCol = 0;
    computerSpritesArr[1].sheetRow = 6;
    computerSpritesArr[1].attr0_shape = 0;
    computerSpritesArr[1].attr1_size = 2;
    computerSpritesArr[1].worldCol = 3;
    computerSpritesArr[1].worldRow = 47;
    computerSpritesArr[1].hide = 0;
    computerSpritesArr[1].screenCol = computerSpritesArr[1].worldCol;
    computerSpritesArr[1].screenRow = computerSpritesArr[1].worldRow;
    computerSpritesArr[1].collisionColor = 0x7F60;


    computerSpritesArr[2].sheetCol = 4;
    computerSpritesArr[2].sheetRow = 0;
    computerSpritesArr[2].attr0_shape = 0;
    computerSpritesArr[2].attr1_size = 1;
    computerSpritesArr[2].worldCol = 120;
    computerSpritesArr[2].worldRow = 72;
    computerSpritesArr[2].hide = 1;
    computerSpritesArr[2].screenCol = computerSpritesArr[2].worldCol;
    computerSpritesArr[2].screenRow = computerSpritesArr[2].worldRow;
    computerSpritesArr[2].collisionColor = 0;


    computerSpritesArr[3].sheetCol = 6;
    computerSpritesArr[3].sheetRow = 0;
    computerSpritesArr[3].attr0_shape = 0;
    computerSpritesArr[3].attr1_size = 0;
    computerSpritesArr[3].worldCol = 120;
    computerSpritesArr[3].worldRow = 72;
    computerSpritesArr[3].hide = 1;
    computerSpritesArr[3].screenCol = computerSpritesArr[3].worldCol;
    computerSpritesArr[3].screenRow = computerSpritesArr[3].worldRow;
    computerSpritesArr[3].collisionColor = 0;


    computerSpritesArr[4].sheetCol = 4;
    computerSpritesArr[4].sheetRow = 2;
    computerSpritesArr[4].attr0_shape = 0;
    computerSpritesArr[4].attr1_size = 0;
    computerSpritesArr[4].worldCol = 120;
    computerSpritesArr[4].worldRow = 72;
    computerSpritesArr[4].hide = 1;
    computerSpritesArr[4].screenCol = computerSpritesArr[4].worldCol;
    computerSpritesArr[4].screenRow = computerSpritesArr[4].worldRow;
    computerSpritesArr[4].collisionColor = 0;


    computerSpritesArr[5].sheetCol = 4;
    computerSpritesArr[5].sheetRow = 2;
    computerSpritesArr[5].attr0_shape = 0;
    computerSpritesArr[5].attr1_size = 0;
    computerSpritesArr[5].worldCol = 120;
    computerSpritesArr[5].worldRow = 72;
    computerSpritesArr[5].hide = 1;
    computerSpritesArr[5].screenCol = computerSpritesArr[5].worldCol;
    computerSpritesArr[5].screenRow = computerSpritesArr[5].worldRow;
    computerSpritesArr[5].collisionColor = 0;


    computerSpritesArr[6].sheetCol = 6;
    computerSpritesArr[6].sheetRow = 2;
    computerSpritesArr[6].attr0_shape = 0;
    computerSpritesArr[6].attr1_size = 0;
    computerSpritesArr[6].worldCol = 120;
    computerSpritesArr[6].worldRow = 72;
    computerSpritesArr[6].hide = 1;
    computerSpritesArr[6].screenCol = computerSpritesArr[6].worldCol;
    computerSpritesArr[6].screenRow = computerSpritesArr[6].worldRow;
    computerSpritesArr[6].collisionColor = 0;


    computerSpritesArr[7].sheetCol = 4;
    computerSpritesArr[7].sheetRow = 4;
    computerSpritesArr[7].attr0_shape = 1;
    computerSpritesArr[7].attr1_size = 3;
    computerSpritesArr[7].worldCol = 120;
    computerSpritesArr[7].worldRow = 72;
    computerSpritesArr[7].hide = 1;
    computerSpritesArr[7].screenCol = computerSpritesArr[7].worldCol;
    computerSpritesArr[7].screenRow = computerSpritesArr[7].worldRow;
    computerSpritesArr[7].collisionColor = 0;
}

void drawMouse() {
    shadowOAM[0].attr0 = (mouse.screenRow | (1<<13) | (2<<14));
    shadowOAM[0].attr1 = (mouse.screenCol | (0<<14));
    shadowOAM[0].attr2 = ((0)<<12) | ((0)*32+(0)) | ((2)<<10);
}

void drawComputerSprites() {
    for (int i = 0; i < 8; i++) {
        if (computerSpritesArr[i].hide == 1) {
            shadowOAM[i + 1].attr0 = (2<<8);
        } else {
            shadowOAM[i + 1].attr0 = (computerSpritesArr[i].screenRow | (1<<13) | ((computerSpritesArr[i].attr0_shape) << 14));
            shadowOAM[i + 1].attr1 = (computerSpritesArr[i].screenCol | (computerSpritesArr[i].attr1_size) << 14);
            shadowOAM[i + 1].attr2 = ((0)<<12) | ((computerSpritesArr[i].sheetRow)*32+(computerSpritesArr[i].sheetCol * 2)) | ((2)<<10);
        }
    }
}

void updateMouse() {
    if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<6)))) {
        if (mouse.worldRow > 0) {
            mouse.worldRow--;
        }
    }

    if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<7)))) {
        if (mouse.worldRow + 1 < (visMapHeight - mouse.height)) {
            mouse.worldRow++;
        }
    }

    if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<5)))) {
        if (mouse.worldCol > 0) {
            mouse.worldCol--;
        }
    }

    if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<4)))) {
        if (mouse.worldCol + 1 < (visMapWidth - mouse.width)) {
            mouse.worldCol++;
        }
    }

    mouse.screenCol = mouse.worldCol - hOff;
    mouse.screenRow = mouse.worldRow - vOff;

}

void checkComputerSpriteCollision() {
    u16 currColor = 0;
    currColor = checkCollisionMapColor(mouse.worldCol, mouse.worldRow);

    if (currColor != 0) {
        for (int i = 0; i < 8; i++) {
            if (computerSpritesArr[i].collisionColor == currColor) {
                computerSpritesArr[i].hide = 0;
                activeSprite = &computerSpritesArr[i];
            } else {
                computerSpritesArr[i].hide = 1;
            }
        }
    }
}
