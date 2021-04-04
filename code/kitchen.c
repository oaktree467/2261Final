#include "game.h"
#include "kitchen.h"

STATIONARYSPRITE kitchenSpritesArr[KITCHEN_SPRITECOUNT];

char pictureFrame[] = "Your aunt, in her infinite wisdom, only ever 'updated'the kitchen.";

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
    kitchenSpritesArr[0].collisionColor = 0x03FF;
    kitchenSpritesArr[0].message = &pictureFrame;

    //fridge
    kitchenSpritesArr[1].sheetCol = 4;
    kitchenSpritesArr[1].sheetRow = 12;
    kitchenSpritesArr[1].attr0_shape = SQUARESPRITE;
    kitchenSpritesArr[1].attr1_size = LARGESPRITE;
    kitchenSpritesArr[1].worldRow = 67;
    kitchenSpritesArr[1].worldCol = 109;
    kitchenSpritesArr[1].hide = 1;
    kitchenSpritesArr[1].collisionColor = 0x7F60;

}
