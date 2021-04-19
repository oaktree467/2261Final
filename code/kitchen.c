#include "game.h"
#include "kitchen.h"
#include "kitchencollision.h"

STATIONARYSPRITE kitchenSpritesArr[KITCHEN_SPRITECOUNT];

char pictureFrame[] = "Your aunt, in her infinite wisdom, only ever 'updated' the kitchen.";
char refrigerator_0[] = "Not much in here but... wait, is that the phone ringing?";
char refrigerator_1[] = "It's the key you were looking for. You must have been distracted by the phone earlier. But why was it in the refrigerator?";
char refrigerator_2[] = "Not much in here but ice cream.";

//functions
void initKitchenSprites() {
    //picture frame
    kitchenSpritesArr[0].sheetCol = 0;
    kitchenSpritesArr[0].sheetRow = 12;
    kitchenSpritesArr[0].attr0_shape = SQUARESPRITE;
    kitchenSpritesArr[0].attr1_size = MEDIUMSPRITE;
    kitchenSpritesArr[0].worldRow = 53;
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
    kitchenSpritesArr[1].message = &refrigerator_0;

}

//load kitchen attributes
void loadKitchen() {
    if (priorState == LIVING_ROOM) {
        protag.worldRow = 120;
        protag.worldCol = 200;
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
        //if prior state is pause OR instructions (coming from pause)
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

void reassignRefrigeratorMessage() {
    if (kitchenSpritesArr[1].message == &refrigerator_0) {
        kitchenSpritesArr[1].message = &refrigerator_1;
    } else {
        kitchenSpritesArr[1].message = &refrigerator_2;
    }
}
