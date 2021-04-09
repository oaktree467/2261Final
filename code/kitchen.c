#include "game.h"
#include "kitchen.h"
#include "kitchencollision.h"

STATIONARYSPRITE kitchenSpritesArr[KITCHEN_SPRITECOUNT];

char pictureFrame[] = "Your aunt, in her infinitewisdom, only ever         'updated'the kitchen.";
char refrigerator[] = "It's the key you were     looking for... but why wasit in the refrigerator?";

//functions
void initKitchenSprites() {
    //picture frame
    kitchenSpritesArr[0].sheetCol = 0;
    kitchenSpritesArr[0].sheetRow = 12;
    kitchenSpritesArr[0].attr0_shape = WIDESPRITE;
    kitchenSpritesArr[0].attr1_size = MEDIUMSPRITE;
    kitchenSpritesArr[0].worldRow = 67;
    kitchenSpritesArr[0].worldCol = 84;
    kitchenSpritesArr[0].hide = 1;
    kitchenSpritesArr[0].collisionColor = YELLOW_HIT;
    kitchenSpritesArr[0].message = &pictureFrame;

    //fridge
    kitchenSpritesArr[1].sheetCol = 4;
    kitchenSpritesArr[1].sheetRow = 12;
    kitchenSpritesArr[1].attr0_shape = SQUARESPRITE;
    kitchenSpritesArr[1].attr1_size = LARGESPRITE;
    kitchenSpritesArr[1].worldRow = 67;
    kitchenSpritesArr[1].worldCol = 109;
    kitchenSpritesArr[1].hide = 1;
    kitchenSpritesArr[1].collisionColor = AQUA_HIT;
    kitchenSpritesArr[1].message = &refrigerator;

}

//load kitchen attributes
void loadKitchen() {
    if (priorState != PAUSE) {
        protag.worldRow = 120;
        protag.worldCol = 30;
        protag.aniState = PROTAGBACK;
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
    currSpriteArrCount = KITCHEN_SPRITECOUNT;
    currSpriteArr = &kitchenSpritesArr;
    currCollisionMap = &kitchencollisionBitmap;
}
