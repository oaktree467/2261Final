#include "game.h"
#include "livingroom.h"
STATIONARYSPRITE livingRoomSpritesArr[LR_SPRITECOUNT];

//message arrays
char record[] = "A commemorative 50th       anniversary gold record of MMMBop by Hansen. Just a   little touch you added.";
char tapestry[] = "";
char painting[] = "";
char poster[] = "";
char bookcase[] = ""; 
//char computerScreen[] = 
char TV[] = "Some show about being buried prematurely... you can't bear to watch this."; 

//initialize living room sprites
void initLivingRoomSprites() {
    //podium
    livingRoomSpritesArr[0].sheetCol = 12;
    livingRoomSpritesArr[0].sheetRow = 0;
    livingRoomSpritesArr[0].attr0_shape = SQUARESPRITE;
    livingRoomSpritesArr[0].attr1_size = MEDIUMSPRITE;
    livingRoomSpritesArr[0].worldRow = 355;
    livingRoomSpritesArr[0].worldCol = 312;
    livingRoomSpritesArr[0].hide = 1;
    livingRoomSpritesArr[0].collisionColor = OCEAN_HIT;
    livingRoomSpritesArr[0].message = &record;

    //record
    livingRoomSpritesArr[1].sheetCol = 12;
    livingRoomSpritesArr[1].sheetRow = 4;
    livingRoomSpritesArr[1].attr0_shape = TALLSPRITE;
    livingRoomSpritesArr[1].attr1_size = LARGESPRITE;
    livingRoomSpritesArr[1].worldRow = 107;
    livingRoomSpritesArr[1].worldCol = 189;
    livingRoomSpritesArr[1].hide = 1;
    livingRoomSpritesArr[1].collisionColor = AQUA_HIT;
    livingRoomSpritesArr[1].message = &record;

    //tapestry
    livingRoomSpritesArr[2].sheetCol = 0;
    livingRoomSpritesArr[2].sheetRow = 12;
    livingRoomSpritesArr[2].attr0_shape = SQUARESPRITE;
    livingRoomSpritesArr[2].attr1_size = LARGESPRITE;
    livingRoomSpritesArr[2].worldRow = 70;
    livingRoomSpritesArr[2].worldCol = 59;
    livingRoomSpritesArr[2].hide = 1;
    livingRoomSpritesArr[2].collisionColor = YELLOW_HIT;

    //painting
    livingRoomSpritesArr[3].sheetCol = 8;
    livingRoomSpritesArr[3].sheetRow = 12;
    livingRoomSpritesArr[3].attr0_shape = SQUARESPRITE;
    livingRoomSpritesArr[3].attr1_size = LARGESPRITE;
    livingRoomSpritesArr[3].worldRow = 285;
    livingRoomSpritesArr[3].worldCol = 132;
    livingRoomSpritesArr[3].hide = 1;
    livingRoomSpritesArr[3].collisionColor = ORANGE_HIT;

    //2001 poster
    livingRoomSpritesArr[4].sheetCol = 0;
    livingRoomSpritesArr[4].sheetRow = 20;
    livingRoomSpritesArr[4].attr0_shape = SQUARESPRITE;
    livingRoomSpritesArr[4].attr1_size = LARGESPRITE;
    livingRoomSpritesArr[4].worldRow = 101;
    livingRoomSpritesArr[4].worldCol = 287;
    livingRoomSpritesArr[4].hide = 1;
    livingRoomSpritesArr[4].collisionColor = RED_HIT;

    //bookcase
    livingRoomSpritesArr[5].sheetCol = 8;
    livingRoomSpritesArr[5].sheetRow = 20;
    livingRoomSpritesArr[5].attr0_shape = WIDESPRITE;
    livingRoomSpritesArr[5].attr1_size = LARGESPRITE;
    livingRoomSpritesArr[5].worldRow = 113;
    livingRoomSpritesArr[5].worldCol = 342;
    livingRoomSpritesArr[5].hide = 1;
    livingRoomSpritesArr[5].collisionColor = LIME_HIT;

    //computer screen
    livingRoomSpritesArr[6].sheetCol = 0;
    livingRoomSpritesArr[6].sheetRow = 28;
    livingRoomSpritesArr[6].attr0_shape = SQUARESPRITE;
    livingRoomSpritesArr[6].attr1_size = SMALLSPRITE;
    livingRoomSpritesArr[6].worldRow = 137;
    livingRoomSpritesArr[6].worldCol = 454;
    livingRoomSpritesArr[6].hide = 1;
    livingRoomSpritesArr[6].collisionColor = PURPLE_HIT;
 
    //television screen
    livingRoomSpritesArr[7].sheetCol = 4;
    livingRoomSpritesArr[7].sheetRow = 28;
    livingRoomSpritesArr[7].attr0_shape = TALLSPRITE;
    livingRoomSpritesArr[7].attr1_size = SMALLSPRITE;
    livingRoomSpritesArr[7].worldRow = 135;
    livingRoomSpritesArr[7].worldCol = 235;
    livingRoomSpritesArr[7].hide = 1;
    livingRoomSpritesArr[7].collisionColor = FOREST_HIT;
}




 

