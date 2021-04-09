# 1 "livingroom.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "livingroom.c"
# 1 "game.h" 1
# 25 "game.h"
enum {PROTAGFRONT, PROTAGSIDE, PROTAGBACK, PROTAGIDLE};


enum {START, INSTRUCTIONS, INTRO, LIVING_ROOM, KITCHEN, BEDROOM, OUTRO, PAUSE, WIN, LOSE};
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
void checkDoorway();
void loadLivingRoom();
void loadKitchen();
void loadBedroom();
void printText();
void clearMessage();
# 2 "livingroom.c" 2
# 1 "livingroom.h" 1




extern STATIONARYSPRITE livingRoomSpritesArr[];


void initLivingRoomSprites();
void checkLivingRoomCollide();
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
# 160 "mylib.h"
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
# 203 "mylib.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
# 213 "mylib.h"
typedef volatile struct
{
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;


extern DMA *dma;
# 254 "mylib.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);




int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB);
# 5 "livingroom.c" 2

STATIONARYSPRITE livingRoomSpritesArr[8];


char record[] = "A commemorative 50th      anniversary gold record of'MMMBop' by Hansen. Just alittle touch you added to the room.";
char tapestry[] = "You never really          understood this tapestry, but when your aunt passed and left you the house,   you kept it up in her     memory.";
char painting[] = "";
char poster[] = "";
char bookcase[] = "";

char TV[] = "Some show about being     buried alive... you can't bear to watch this.";


void initLivingRoomSprites() {

    livingRoomSpritesArr[0].sheetCol = 12;
    livingRoomSpritesArr[0].sheetRow = 0;
    livingRoomSpritesArr[0].attr0_shape = 0;
    livingRoomSpritesArr[0].attr1_size = 2;
    livingRoomSpritesArr[0].worldRow = 355;
    livingRoomSpritesArr[0].worldCol = 312;
    livingRoomSpritesArr[0].hide = 1;
    livingRoomSpritesArr[0].collisionColor = 0x0C60;
    livingRoomSpritesArr[0].message = &record;


    livingRoomSpritesArr[1].sheetCol = 12;
    livingRoomSpritesArr[1].sheetRow = 4;
    livingRoomSpritesArr[1].attr0_shape = 2;
    livingRoomSpritesArr[1].attr1_size = 3;
    livingRoomSpritesArr[1].worldRow = 107;
    livingRoomSpritesArr[1].worldCol = 189;
    livingRoomSpritesArr[1].hide = 1;
    livingRoomSpritesArr[1].collisionColor = 0x7F60;
    livingRoomSpritesArr[1].message = &record;


    livingRoomSpritesArr[2].sheetCol = 0;
    livingRoomSpritesArr[2].sheetRow = 12;
    livingRoomSpritesArr[2].attr0_shape = 0;
    livingRoomSpritesArr[2].attr1_size = 3;
    livingRoomSpritesArr[2].worldRow = 70;
    livingRoomSpritesArr[2].worldCol = 59;
    livingRoomSpritesArr[2].hide = 1;
    livingRoomSpritesArr[2].collisionColor = 0x03FF;
    livingRoomSpritesArr[2].message = &tapestry;


    livingRoomSpritesArr[3].sheetCol = 8;
    livingRoomSpritesArr[3].sheetRow = 12;
    livingRoomSpritesArr[3].attr0_shape = 0;
    livingRoomSpritesArr[3].attr1_size = 3;
    livingRoomSpritesArr[3].worldRow = 285;
    livingRoomSpritesArr[3].worldCol = 132;
    livingRoomSpritesArr[3].hide = 1;
    livingRoomSpritesArr[3].collisionColor = 0x025F;


    livingRoomSpritesArr[4].sheetCol = 0;
    livingRoomSpritesArr[4].sheetRow = 20;
    livingRoomSpritesArr[4].attr0_shape = 0;
    livingRoomSpritesArr[4].attr1_size = 3;
    livingRoomSpritesArr[4].worldRow = 101;
    livingRoomSpritesArr[4].worldCol = 287;
    livingRoomSpritesArr[4].hide = 1;
    livingRoomSpritesArr[4].collisionColor = 0x001F;


    livingRoomSpritesArr[5].sheetCol = 8;
    livingRoomSpritesArr[5].sheetRow = 20;
    livingRoomSpritesArr[5].attr0_shape = 1;
    livingRoomSpritesArr[5].attr1_size = 3;
    livingRoomSpritesArr[5].worldRow = 113;
    livingRoomSpritesArr[5].worldCol = 342;
    livingRoomSpritesArr[5].hide = 1;
    livingRoomSpritesArr[5].collisionColor = 0x03E4;


    livingRoomSpritesArr[6].sheetCol = 0;
    livingRoomSpritesArr[6].sheetRow = 28;
    livingRoomSpritesArr[6].attr0_shape = 0;
    livingRoomSpritesArr[6].attr1_size = 1;
    livingRoomSpritesArr[6].worldRow = 137;
    livingRoomSpritesArr[6].worldCol = 454;
    livingRoomSpritesArr[6].hide = 1;
    livingRoomSpritesArr[6].collisionColor = 0x6C15;


    livingRoomSpritesArr[7].sheetCol = 4;
    livingRoomSpritesArr[7].sheetRow = 28;
    livingRoomSpritesArr[7].attr0_shape = 2;
    livingRoomSpritesArr[7].attr1_size = 1;
    livingRoomSpritesArr[7].worldRow = 135;
    livingRoomSpritesArr[7].worldCol = 235;
    livingRoomSpritesArr[7].hide = 1;
    livingRoomSpritesArr[7].collisionColor = 0x0E47;
    livingRoomSpritesArr[7].message = &TV;

}


void loadLivingRoom() {
    visMapWidth = 512;
    totalMapWidth = 512;
    visMapHeight = 478;
    totalMapHeight = 512;

    if (priorState != PAUSE) {
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
        }

    } else {
        hOff = priorHoff;
        vOff = priorVoff;
    }

    initLivingRoomSprites();
    currSpriteArrCount = 8;
    currSpriteArr = &livingRoomSpritesArr;
    currCollisionMap = &livingroomcollisionmapBitmap;
}
