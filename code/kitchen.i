# 1 "kitchen.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "kitchen.c"
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
extern char documentsFound;
extern char documentsUploaded;
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
# 2 "kitchen.c" 2
# 1 "kitchen.h" 1




extern STATIONARYSPRITE kitchenSpritesArr[];


void initKitchenSprites();
void loadKitchen();
# 3 "kitchen.c" 2
# 1 "kitchencollision.h" 1
# 20 "kitchencollision.h"
extern const unsigned short kitchencollisionBitmap[65536];
# 4 "kitchen.c" 2

STATIONARYSPRITE kitchenSpritesArr[2];

char pictureFrame[] = "Your aunt, in her infinitewisdom, only ever         'updated'the kitchen.";
char refrigerator[] = "It's the key you were     looking for... but why wasit in the refrigerator?";


void initKitchenSprites() {

    kitchenSpritesArr[0].sheetCol = 0;
    kitchenSpritesArr[0].sheetRow = 12;
    kitchenSpritesArr[0].attr0_shape = 1;
    kitchenSpritesArr[0].attr1_size = 2;
    kitchenSpritesArr[0].worldRow = 67;
    kitchenSpritesArr[0].worldCol = 84;
    kitchenSpritesArr[0].hide = 1;
    kitchenSpritesArr[0].collisionColor = 0x03FF;
    kitchenSpritesArr[0].message = &pictureFrame;


    kitchenSpritesArr[1].sheetCol = 4;
    kitchenSpritesArr[1].sheetRow = 12;
    kitchenSpritesArr[1].attr0_shape = 0;
    kitchenSpritesArr[1].attr1_size = 3;
    kitchenSpritesArr[1].worldRow = 67;
    kitchenSpritesArr[1].worldCol = 109;
    kitchenSpritesArr[1].hide = 1;
    kitchenSpritesArr[1].collisionColor = 0x7F60;
    kitchenSpritesArr[1].message = &refrigerator;

}


void loadKitchen() {
    if (priorState == LIVING_ROOM) {
        protag.worldRow = 120;
        protag.worldCol = 30;
        protag.aniState = PROTAGBACK;
        hOff = 0;
        vOff = 0;
    } else if (priorState == BEDROOM) {
        protag.worldRow = 75;
        protag.worldCol = 30;
        protag.aniState = PROTAGFRONT;
        hOff = 0;
        vOff = 0;
    } else {

        hOff = priorHoff;
        vOff = priorVoff;
    }

    totalMapWidth = 256;
    visMapWidth = 256;
    totalMapHeight = 256;
    visMapHeight = 160;

    initKitchenSprites();
    currSpriteArrCount = 2;
    currSpriteArr = &kitchenSpritesArr;
    currCollisionMap = &kitchencollisionBitmap;
}
