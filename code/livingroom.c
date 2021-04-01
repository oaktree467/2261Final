#include "game.h"
#include "livingroom.h"
STATIONARYSPRITE livingRoomSpritesArr[LR_SPRITECOUNT];

void initLivingRoomSprites() {
    //podium
    livingRoomSpritesArr[0].sheetCol = 12;
    livingRoomSpritesArr[0].sheetRow = 0;
    livingRoomSpritesArr[0].attr0_shape = SQUARESPRITE;
    livingRoomSpritesArr[0].attr1_size = MEDIUMSPRITE;
    livingRoomSpritesArr[0].worldRow = 355;
    livingRoomSpritesArr[0].worldCol = 312;
    livingRoomSpritesArr[0].hide = 1;
    livingRoomSpritesArr[0].collisionColor = 0x0C60;

    //record
    livingRoomSpritesArr[1].sheetCol = 12;
    livingRoomSpritesArr[1].sheetRow = 4;
    livingRoomSpritesArr[1].attr0_shape = TALLSPRITE;
    livingRoomSpritesArr[1].attr1_size = LARGESPRITE;
    livingRoomSpritesArr[1].worldRow = 107;
    livingRoomSpritesArr[1].worldCol = 189;
    livingRoomSpritesArr[1].hide = 1;
    livingRoomSpritesArr[1].collisionColor = 0x7F60;

    //tapestry
    livingRoomSpritesArr[2].sheetCol = 0;
    livingRoomSpritesArr[2].sheetRow = 12;
    livingRoomSpritesArr[2].attr0_shape = SQUARESPRITE;
    livingRoomSpritesArr[2].attr1_size = LARGESPRITE;
    livingRoomSpritesArr[2].worldRow = 70;
    livingRoomSpritesArr[2].worldCol = 59;
    livingRoomSpritesArr[2].hide = 1;
    livingRoomSpritesArr[2].collisionColor = 0x03FF;

    //painting
    livingRoomSpritesArr[3].sheetCol = 8;
    livingRoomSpritesArr[3].sheetRow = 12;
    livingRoomSpritesArr[3].attr0_shape = SQUARESPRITE;
    livingRoomSpritesArr[3].attr1_size = LARGESPRITE;
    livingRoomSpritesArr[3].worldRow = 277;
    livingRoomSpritesArr[3].worldCol = 150;
    livingRoomSpritesArr[3].hide = 1;
    livingRoomSpritesArr[3].collisionColor = 0x025F;

    //2001 poster
    livingRoomSpritesArr[4].sheetCol = 0;
    livingRoomSpritesArr[4].sheetRow = 20;
    livingRoomSpritesArr[4].attr0_shape = SQUARESPRITE;
    livingRoomSpritesArr[4].attr1_size = LARGESPRITE;
    livingRoomSpritesArr[4].worldRow = 101;
    livingRoomSpritesArr[4].worldCol = 287;
    livingRoomSpritesArr[4].hide = 1;
    livingRoomSpritesArr[4].collisionColor = 0x001F;

    //bookcase
    livingRoomSpritesArr[5].sheetCol = 8;
    livingRoomSpritesArr[5].sheetRow = 20;
    livingRoomSpritesArr[5].attr0_shape = WIDESPRITE;
    livingRoomSpritesArr[5].attr1_size = LARGESPRITE;
    livingRoomSpritesArr[5].worldRow = 113;
    livingRoomSpritesArr[5].worldCol = 342;
    livingRoomSpritesArr[5].hide = 1;
    livingRoomSpritesArr[5].collisionColor = 0x03E4;
}

void checkLivingRoomCollide() {
    for (int i = 0; i < LR_SPRITECOUNT; i++) {
        if (checkCollisionMapColor(protag.worldCol + (protag.width / 2), protag.worldRow)
            == livingRoomSpritesArr[i].collisionColor) {
            livingRoomSpritesArr[i].hide = 0;
            spriteCollisionBool = 1;
        } else {
            livingRoomSpritesArr[i].hide = 1;
            spriteCollisionBool = 0;
        }
    }
}
