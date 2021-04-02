# 1 "kitchen.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "kitchen.c"
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
extern int messageActiveBool;
extern int nextRoomBool;


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
void checkSpriteCollision();
# 2 "kitchen.c" 2
# 1 "kitchen.h" 1




extern STATIONARYSPRITE kitchenSpritesArr[];


void initKitchenSprites();
void checkKitchenCollide();
# 3 "kitchen.c" 2

STATIONARYSPRITE kitchenSpritesArr[2];


void initKitchenSprites() {

    kitchenSpritesArr[0].sheetCol = 0;
    kitchenSpritesArr[0].sheetRow = 12;
    kitchenSpritesArr[0].attr0_shape = 1;
    kitchenSpritesArr[0].attr1_size = 2;
    kitchenSpritesArr[0].worldRow = 67;
    kitchenSpritesArr[0].worldCol = 84;
    kitchenSpritesArr[0].hide = 1;
    kitchenSpritesArr[0].collisionColor = 0x03FF;


    kitchenSpritesArr[1].sheetCol = 4;
    kitchenSpritesArr[1].sheetRow = 12;
    kitchenSpritesArr[1].attr0_shape = 0;
    kitchenSpritesArr[1].attr1_size = 3;
    kitchenSpritesArr[1].worldRow = 67;
    kitchenSpritesArr[1].worldCol = 109;
    kitchenSpritesArr[1].hide = 1;
    kitchenSpritesArr[1].collisionColor = 0x7F60;

}

void checkKitchenCollide() {
    spriteCollisionBool = 0;
    for (int i = 0; i < 2; i++) {
        if (checkCollisionMapColor(protag.worldCol + (protag.width / 2), protag.worldRow)
            == kitchenSpritesArr[i].collisionColor) {
            kitchenSpritesArr[i].hide = 0;
            spriteCollisionBool = 1;
        } else {
            kitchenSpritesArr[i].hide = 1;
        }
    }


    if (checkCollisionMapColor(protag.worldCol + (protag.width / 2), protag.worldRow)
        == 0x001F) {
        nextRoomBool = 1;
    }

}
