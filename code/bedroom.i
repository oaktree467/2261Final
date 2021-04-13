# 1 "bedroom.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "bedroom.c"
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
# 2 "bedroom.c" 2
# 1 "bedroom.h" 1




extern STATIONARYSPRITE bedroomSpritesArr[];


void initBedroomSprites();
void loadBedroom ();
void safeOpenMessage();
# 3 "bedroom.c" 2
# 1 "bedroomcollision.h" 1
# 20 "bedroomcollision.h"
extern const unsigned short bedroomcollisionBitmap[131072];
# 4 "bedroom.c" 2

STATIONARYSPRITE bedroomSpritesArr[6];
char wallsafe[] = "The safe is empty.";


void initBedroomSprites() {

    bedroomSpritesArr[0].sheetCol = 0;
    bedroomSpritesArr[0].sheetRow = 12;
    bedroomSpritesArr[0].attr0_shape = 1;
    bedroomSpritesArr[0].attr1_size = 3;
    bedroomSpritesArr[0].worldCol = 21;
    bedroomSpritesArr[0].worldRow = 76;
    bedroomSpritesArr[0].hide = 1;
    bedroomSpritesArr[0].collisionColor = 0x03FF;



    bedroomSpritesArr[1].sheetCol = 0;
    bedroomSpritesArr[1].sheetRow = 16;
    bedroomSpritesArr[1].attr0_shape = 0;
    bedroomSpritesArr[1].attr1_size = 2;
    bedroomSpritesArr[1].worldCol = 84;
    bedroomSpritesArr[1].worldRow = 45;
    bedroomSpritesArr[1].hide = 1;
    bedroomSpritesArr[1].collisionColor = 0x7F60;



    bedroomSpritesArr[2].sheetCol = 8;
    bedroomSpritesArr[2].sheetRow = 12;
    bedroomSpritesArr[2].attr0_shape = 1;
    bedroomSpritesArr[2].attr1_size = 3;
    bedroomSpritesArr[2].worldCol = 130;
    bedroomSpritesArr[2].worldRow = 49;
    bedroomSpritesArr[2].hide = 1;
    bedroomSpritesArr[2].collisionColor = 0x0E47;



    bedroomSpritesArr[3].sheetCol = 12;
    bedroomSpritesArr[3].sheetRow = 10;
    bedroomSpritesArr[3].attr0_shape = 1;
    bedroomSpritesArr[3].attr1_size = 2;
    bedroomSpritesArr[3].worldCol = 198;
    bedroomSpritesArr[3].worldRow = 49;
    bedroomSpritesArr[3].hide = 1;
    bedroomSpritesArr[3].collisionColor = 0x001F;
    bedroomSpritesArr[3].message = &wallsafe;


    bedroomSpritesArr[4].sheetCol = 12;
    bedroomSpritesArr[4].sheetRow = 8;
    bedroomSpritesArr[4].attr0_shape = 1;
    bedroomSpritesArr[4].attr1_size = 2;
    bedroomSpritesArr[4].worldCol = 285;
    bedroomSpritesArr[4].worldRow = 60;
    bedroomSpritesArr[4].hide = 1;
    bedroomSpritesArr[4].collisionColor = 0x03E4;



    bedroomSpritesArr[5].sheetCol = 12;
    bedroomSpritesArr[5].sheetRow = 0;
    bedroomSpritesArr[5].attr0_shape = 2;
    bedroomSpritesArr[5].attr1_size = 3;
    bedroomSpritesArr[5].worldCol = 355;
    bedroomSpritesArr[5].worldRow = 60;
    bedroomSpritesArr[5].hide = 1;
    bedroomSpritesArr[5].collisionColor = 0x6C15;


}


void loadBedroom() {
    if (priorState != PAUSE && priorState != SAFE) {
        protag.worldRow = 120;
        protag.worldCol = 30;
        protag.aniState = PROTAGBACK;
        hOff = 0;
        vOff = 10;
    } else {
        hOff = priorHoff;
        vOff = priorVoff;
    }

    totalMapWidth = 512;
    visMapWidth = 388;
    totalMapHeight = 256;
    visMapHeight = 170;

    initBedroomSprites();
    currSpriteArrCount = 6;
    currSpriteArr = &bedroomSpritesArr;
    currCollisionMap = &bedroomcollisionBitmap;
}

void safeOpenMessage() {

}
