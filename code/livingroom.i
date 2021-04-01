# 1 "livingroom.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "livingroom.c"
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
# 2 "livingroom.c" 2
# 1 "livingroom.h" 1




extern STATIONARYSPRITE livingRoomSpritesArr[];


void initLivingRoomSprites();
void checkLivingRoomCollide();
# 3 "livingroom.c" 2
STATIONARYSPRITE livingRoomSpritesArr[6];

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
    livingRoomSpritesArr[3].worldRow = 277;
    livingRoomSpritesArr[3].worldCol = 150;
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
}

void checkLivingRoomCollide() {
    for (int i = 0; i < 6; i++) {
        if (checkCollisionMapColor(protag.worldCol + (protag.width / 2), protag.worldRow)
            == livingRoomSpritesArr[i].collisionColor) {
            livingRoomSpritesArr[i].hide = 0;
        } else {
            livingRoomSpritesArr[i].hide = 1;
        }
    }
}
