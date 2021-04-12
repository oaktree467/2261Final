#include "game.h"
#include "bedroom.h"
#include "bedroomcollision.h"

STATIONARYSPRITE bedroomSpritesArr[BEDROOM_SPRITECOUNT];
char wallsafe[] = "The safe is empty.";

//functions
void initBedroomSprites() {
    //bed
    bedroomSpritesArr[0].sheetCol = 0;
    bedroomSpritesArr[0].sheetRow = 12;
    bedroomSpritesArr[0].attr0_shape = WIDESPRITE;
    bedroomSpritesArr[0].attr1_size = LARGESPRITE;
    bedroomSpritesArr[0].worldCol = 21;
    bedroomSpritesArr[0].worldRow = 76;
    bedroomSpritesArr[0].hide = 1;
    bedroomSpritesArr[0].collisionColor = YELLOW_HIT;
    //bedroomSpritesArr[0].message 

    //wardrobe
    bedroomSpritesArr[1].sheetCol = 0;
    bedroomSpritesArr[1].sheetRow = 16;
    bedroomSpritesArr[1].attr0_shape = SQUARESPRITE;
    bedroomSpritesArr[1].attr1_size = MEDIUMSPRITE;
    bedroomSpritesArr[1].worldCol = 84;
    bedroomSpritesArr[1].worldRow = 45;
    bedroomSpritesArr[1].hide = 1;
    bedroomSpritesArr[1].collisionColor = AQUA_HIT;
    //bedroomSpritesArr[1].message 

    //vanity
    bedroomSpritesArr[2].sheetCol = 8;
    bedroomSpritesArr[2].sheetRow = 12;
    bedroomSpritesArr[2].attr0_shape = WIDESPRITE;
    bedroomSpritesArr[2].attr1_size = LARGESPRITE;
    bedroomSpritesArr[2].worldCol = 130;
    bedroomSpritesArr[2].worldRow = 49;
    bedroomSpritesArr[2].hide = 1;
    bedroomSpritesArr[2].collisionColor = FOREST_HIT;
    //bedroomSpritesArr[2].message 

    //safe
    bedroomSpritesArr[3].sheetCol = 12;
    bedroomSpritesArr[3].sheetRow = 10;
    bedroomSpritesArr[3].attr0_shape = WIDESPRITE;
    bedroomSpritesArr[3].attr1_size = MEDIUMSPRITE;
    bedroomSpritesArr[3].worldCol = 198;
    bedroomSpritesArr[3].worldRow = 49;
    bedroomSpritesArr[3].hide = 1;
    bedroomSpritesArr[3].collisionColor = RED_HIT;
    bedroomSpritesArr[3].message = &wallsafe;

    //chair
    bedroomSpritesArr[4].sheetCol = 12;
    bedroomSpritesArr[4].sheetRow = 8;
    bedroomSpritesArr[4].attr0_shape = WIDESPRITE;
    bedroomSpritesArr[4].attr1_size = MEDIUMSPRITE;
    bedroomSpritesArr[4].worldCol = 285;
    bedroomSpritesArr[4].worldRow = 60;
    bedroomSpritesArr[4].hide = 1;
    bedroomSpritesArr[4].collisionColor = LIME_HIT;
    //bedroomSpritesArr[4].message 

    //bookshelf
    bedroomSpritesArr[5].sheetCol = 12;
    bedroomSpritesArr[5].sheetRow = 0;
    bedroomSpritesArr[5].attr0_shape = TALLSPRITE;
    bedroomSpritesArr[5].attr1_size = LARGESPRITE;
    bedroomSpritesArr[5].worldCol = 355;
    bedroomSpritesArr[5].worldRow = 60;
    bedroomSpritesArr[5].hide = 1;
    bedroomSpritesArr[5].collisionColor = PURPLE_HIT;
    //bedroomSpritesArr[5].message 

}

//load bedroom attributes
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
    currSpriteArrCount = BEDROOM_SPRITECOUNT;
    currSpriteArr = &bedroomSpritesArr;
    currCollisionMap = &bedroomcollisionBitmap;
}

void safeOpenMessage() {

}
