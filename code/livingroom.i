# 1 "livingroom.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "livingroom.c"
# 1 "game.h" 1
# 25 "game.h"
enum {PROTAGFRONT, PROTAGSIDE, PROTAGBACK, PROTAGIDLE};


enum {START, INSTRUCTIONS, INTRO, LIVING_ROOM, KITCHEN, OUTRO, PAUSE, WIN, LOSE};
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
    int movementDirection;
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
extern STATIONARYSPRITE (* currSpriteArr)[];
extern int currSpriteArrCount;
extern const unsigned short (* currCollisionMap)[];
extern int spriteCollisionBool;
extern int messageActiveBool;
extern int nextRoomBool;


extern unsigned short hOff;
extern unsigned short vOff;
extern unsigned short priorHoff;
extern unsigned short priorVoff;

extern int priorState;

extern char keyFound;


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
# 2 "livingroom.c" 2
# 1 "livingroom.h" 1




extern STATIONARYSPRITE livingRoomSpritesArr[];


void initLivingRoomSprites();
void checkLivingRoomCollide();
# 3 "livingroom.c" 2
STATIONARYSPRITE livingRoomSpritesArr[8];



void initLivingRoomSprites() {

    livingRoomSpritesArr[0].sheetCol = 12;
    livingRoomSpritesArr[0].sheetRow = 0;
    livingRoomSpritesArr[0].attr0_shape = 0;
    livingRoomSpritesArr[0].attr1_size = 2;
    livingRoomSpritesArr[0].worldRow = 355;
    livingRoomSpritesArr[0].worldCol = 312;
    livingRoomSpritesArr[0].hide = 1;
    livingRoomSpritesArr[0].collisionColor = 0x0C60;


    livingRoomSpritesArr[1].sheetCol = 12;
    livingRoomSpritesArr[1].sheetRow = 4;
    livingRoomSpritesArr[1].attr0_shape = 2;
    livingRoomSpritesArr[1].attr1_size = 3;
    livingRoomSpritesArr[1].worldRow = 107;
    livingRoomSpritesArr[1].worldCol = 189;
    livingRoomSpritesArr[1].hide = 1;
    livingRoomSpritesArr[1].collisionColor = 0x7F60;


    livingRoomSpritesArr[2].sheetCol = 0;
    livingRoomSpritesArr[2].sheetRow = 12;
    livingRoomSpritesArr[2].attr0_shape = 0;
    livingRoomSpritesArr[2].attr1_size = 3;
    livingRoomSpritesArr[2].worldRow = 70;
    livingRoomSpritesArr[2].worldCol = 59;
    livingRoomSpritesArr[2].hide = 1;
    livingRoomSpritesArr[2].collisionColor = 0x03FF;


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
}
