# 1 "game.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "game.c"
# 1 "myLib.h" 1




typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
# 64 "myLib.h"
extern volatile unsigned short *videoBuffer;
# 85 "myLib.h"
typedef struct
{
    u16 tileimg[8192];
} charblock;


typedef struct
{
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




typedef struct
{
    unsigned short attr0;
    unsigned short attr1;
    unsigned short attr2;
    unsigned short fill;
} OBJ_ATTR;



extern OBJ_ATTR shadowOAM[];
# 159 "myLib.h"
void hideSprites();






typedef struct
{
    int screenRow;
    int screenCol;
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
# 202 "myLib.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
# 212 "myLib.h"
typedef volatile struct
{
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;


extern DMA *dma;
# 253 "myLib.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);




int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB);
# 2 "game.c" 2
# 1 "livingroomsprites.h" 1
# 21 "livingroomsprites.h"
extern const unsigned short livingroomspritesTiles[16384];


extern const unsigned short livingroomspritesPal[256];
# 3 "game.c" 2
# 1 "livingroomcollisionmap.h" 1
# 20 "livingroomcollisionmap.h"
extern const unsigned short livingroomcollisionmapBitmap[262144];
# 4 "game.c" 2
# 1 "game.h" 1
# 15 "game.h"
enum {PROTAGFRONT, PROTAGSIDE, PROTAGBACK, PROTAGIDLE};


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
} STATIONARYSPRITE;




extern PROTAGSPRITE protag;

extern unsigned short hOff;
extern unsigned short vOff;
extern STATIONARYSPRITE (* currSpriteArr)[];
extern int currSpriteArrCount;
extern const unsigned short (* currCollisionMap)[];
extern int spriteCollisionBool;


void initGame();
void initProtagonist();
void updateGame();
void updateProtagonist();
void updateSprites();
void drawGame();
void drawProtagonist();
void drawSprites();
unsigned short checkCollisionMapColor(int x, int y);
void loadLivingRoom();
void loadKitchen();
# 5 "game.c" 2
# 1 "livingroom.h" 1




extern STATIONARYSPRITE livingRoomSpritesArr[];


void initLivingRoomSprites();
void checkLivingRoomCollide();
# 6 "game.c" 2
# 1 "kitchen.h" 1




extern STATIONARYSPRITE kitchenSpritesArr[];


void initKitchenSprites();
void checkKitchenCollide();
# 7 "game.c" 2
# 1 "kitchencollision.h" 1
# 20 "kitchencollision.h"
extern const unsigned short kitchencollisionBitmap[65536];
# 8 "game.c" 2
# 1 "kitchenbg.h" 1
# 22 "kitchenbg.h"
extern const unsigned short kitchenbgTiles[1872];


extern const unsigned short kitchenbgMap[1024];


extern const unsigned short kitchenbgPal[256];
# 9 "game.c" 2



PROTAGSPRITE protag;
STATIONARYSPRITE(* currSpriteArr)[];
int currSpriteArrCount;
const unsigned short (* currCollisionMap)[];
int spriteCollisionBool;

unsigned short hOff;
unsigned short vOff;
int mapWidth;
int mapHeight;

int mode;

void initGame(){
    spriteCollisionBool = 0;

    initProtagonist();
}

void initProtagonist() {
    protag.width = 20;
    protag.height = 31;
    protag.aniCounter = 0;
    protag.aniState = PROTAGFRONT;
    protag.prevAniState = PROTAGFRONT;
    protag.currFrame = 0;
    protag.totalFrames = 3;
    protag.sideOrientation = 1;
}

void updateGame() {
    updateProtagonist();
    updateSprites();
}

void drawGame() {
    drawProtagonist();
    drawSprites();
}

void updateProtagonist() {
    if (protag.aniState != PROTAGIDLE) {
        protag.prevAniState = protag.aniState;
        protag.aniState = PROTAGIDLE;
    }
    if (protag.aniCounter % 10 == 0) {
        protag.currFrame = ((protag.currFrame + 1) % protag.totalFrames);
    }

    if ((~((*(volatile unsigned short *)0x04000130)) & ((1 << 6)))) {
        if ((checkCollisionMapColor(protag.worldCol, protag.worldRow - 1) != 0)
            && ((checkCollisionMapColor(protag.worldCol + protag.width, protag.worldRow + protag.height - 1) != 0))) {
                protag.worldRow--;

            if ((vOff - 1 > 0) && (protag.screenRow <= (160 / 2))) {
                vOff--;
            }

        }
        protag.aniState = PROTAGBACK;
    }

    if ((~((*(volatile unsigned short *)0x04000130)) & ((1 << 7)))) {
        if ((checkCollisionMapColor(protag.worldCol, protag.worldRow + protag.height + 1) != 0)
            && ((checkCollisionMapColor(protag.worldCol + protag.width, protag.worldRow + protag.height + 1) != 0))) {

            protag.worldRow++;


            if (((vOff + 1) < (mapHeight - 160)) && (protag.screenRow >= (160 / 2))) {
                vOff++;
            }

        }
        protag.aniState = PROTAGFRONT;
    }

    if ((~((*(volatile unsigned short *)0x04000130)) & ((1 << 4)))) {
        if ((checkCollisionMapColor(protag.worldCol + protag.width + 1, protag.worldRow) != 0)
            && ((checkCollisionMapColor(protag.worldCol + protag.width + 1, protag.worldRow + protag.height) != 0))) {
            protag.worldCol++;

            if (((hOff + 1) < (mapWidth - 240)) && protag.screenCol >= (240 / 2)) {
                hOff++;
            }

        }
        protag.aniState = PROTAGSIDE;

    }

    if (protag.aniState != PROTAGIDLE) {
        protag.sideOrientation = 0;
    }

    if ((~((*(volatile unsigned short *)0x04000130)) & ((1 << 5)))) {
        if ((checkCollisionMapColor(protag.worldCol - 1, protag.worldRow) != 0)
            && ((checkCollisionMapColor(protag.worldCol - 1, protag.worldRow + protag.height) != 0))) {
            protag.worldCol--;

            if (((hOff - 1) > 0) && protag.screenCol <= (240 / 2)) {
                hOff--;
            }

        }
        protag.aniState = PROTAGSIDE;
        protag.sideOrientation = 1;

    }

    if ((protag.aniState) == PROTAGIDLE) {
        protag.currFrame = 0;
        protag.aniState = protag.prevAniState;

    } else {
        protag.aniCounter += 1;
    }


    protag.screenCol = protag.worldCol - hOff;
    protag.screenRow = protag.worldRow - vOff;

    if ((!(~(oldButtons) & ((1 << 3))) && (~buttons & ((1 << 3))))) {
        mode = 4;
    }
}

void updateSprites() {
    for (int i = 0; i < currSpriteArrCount; i++) {
        (*currSpriteArr)[i].screenCol = (*currSpriteArr)[i].worldCol - hOff;
        (*currSpriteArr)[i].screenRow = (*currSpriteArr)[i].worldRow - vOff;
    }
}

void drawSprites() {
    for (int i = 0; i < currSpriteArrCount; i++) {
        if ((*currSpriteArr)[i].hide == 1) {
            shadowOAM[i + 1].attr0 = (2 << 8);
        } else {
            shadowOAM[i + 1].attr0 = ((*currSpriteArr)[i].screenRow | (1 << 13) | (((*currSpriteArr)[i].attr0_shape) << 14));
            shadowOAM[i + 1].attr1 = ((*currSpriteArr)[i].screenCol | ((*currSpriteArr)[i].attr1_size) << 14);
            shadowOAM[i + 1].attr2 = ((0) << 12) | (((*currSpriteArr)[i].sheetRow)*32 + ((*currSpriteArr)[i].sheetCol * 2));
        }
    }
}

void drawProtagonist() {
    shadowOAM[0].attr0 = (protag.screenRow | (1 << 13) | (0 << 14));
    shadowOAM[0].attr1 = (protag.screenCol | (2 << 14) | (protag.sideOrientation << 12));
    shadowOAM[0].attr2 = ((0) << 12) | ((protag.currFrame * 4)*32 + (protag.aniState * 8));
}

unsigned short checkCollisionMapColor(int x, int y) {
    return ((* currCollisionMap)[((y) * (mapWidth) + (x))]);
}

void loadLivingRoom() {
    hOff = 0;
    vOff = 100;
    mapWidth = 512;
    mapHeight = 478;
    protag.worldRow = 170;
    protag.worldCol = 0;

    initLivingRoomSprites();
    currSpriteArrCount = 6;
    currSpriteArr = &livingRoomSpritesArr;
    currCollisionMap = &livingroomcollisionmapBitmap;

}

void loadKitchen() {
    protag.worldRow = 120;
    protag.worldCol = 30;
    mapWidth = 256;
    mapHeight = 160;
    hOff = 0;
    vOff = 0;

    initKitchenSprites();
    currSpriteArrCount = 2;
    currSpriteArr = &kitchenSpritesArr;
    currCollisionMap = &kitchencollisionBitmap;
}
