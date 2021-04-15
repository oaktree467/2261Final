#include "game.h"
#include "livingroom.h"
#include "livingroomcollisionmap.h"
#include "mylib.h"
#include <string.h>
#include "chapter2bg.h"
#include "messagescreen.h"

STATIONARYSPRITE livingRoomSpritesArr[LR_SPRITECOUNT];
STATIONARYSPRITE phoneRingSpritesArr[RING_SPRITECOUNT];

int currRing;
int phoneMessageIndex;

//message arrays
char record[] = "A commemorative 50th anniversary gold record of 'Toxic' by Britney Spears. Just a little touch you added to the room.";
char tapestry[] = "You never really understood this tapestry, but when your aunt passed and left you the house, you kept it up in her memory.";
char painting[] = "A painting of an unidentified woman. You wonder how much it could be worth?";
char poster[] = "'2001: A Space Odyssey.' Suspended animation, the question of sentience... this movie haunts you.";
char bookcase[] = "Multiple copies of every Jane Austen text. Do you think your aunt had a favorite author?"; 
char computerScreen[] = "";
char TV[] = "Some show about being buried alive... you can't bear to watch this.";
char telephone[] = "You might be the only person you know who doesn't have a mobile phone.";

//initialize living room sprites
void initLivingRoomSprites() {
    //telephone
    livingRoomSpritesArr[0].sheetCol = 12;
    livingRoomSpritesArr[0].sheetRow = 0;
    livingRoomSpritesArr[0].attr0_shape = SQUARESPRITE;
    livingRoomSpritesArr[0].attr1_size = SMALLSPRITE;
    livingRoomSpritesArr[0].worldCol = 322;
    livingRoomSpritesArr[0].worldRow = 360;
    livingRoomSpritesArr[0].hide = 1;
    livingRoomSpritesArr[0].collisionColor = OCEAN_HIT;
    livingRoomSpritesArr[0].message = &telephone;

    //record
    livingRoomSpritesArr[1].sheetCol = 12;
    livingRoomSpritesArr[1].sheetRow = 4;
    livingRoomSpritesArr[1].attr0_shape = TALLSPRITE;
    livingRoomSpritesArr[1].attr1_size = LARGESPRITE;
    livingRoomSpritesArr[1].worldCol = 189;
    livingRoomSpritesArr[1].worldRow = 107;
    livingRoomSpritesArr[1].hide = 1;
    livingRoomSpritesArr[1].collisionColor = AQUA_HIT;
    livingRoomSpritesArr[1].message = &record;

    //tapestry
    livingRoomSpritesArr[2].sheetCol = 0;
    livingRoomSpritesArr[2].sheetRow = 12;
    livingRoomSpritesArr[2].attr0_shape = SQUARESPRITE;
    livingRoomSpritesArr[2].attr1_size = LARGESPRITE;
    livingRoomSpritesArr[2].worldCol = 59;
    livingRoomSpritesArr[2].worldRow = 70;
    livingRoomSpritesArr[2].hide = 1;
    livingRoomSpritesArr[2].collisionColor = YELLOW_HIT;
    livingRoomSpritesArr[2].message = &tapestry;

    //painting
    livingRoomSpritesArr[3].sheetCol = 8;
    livingRoomSpritesArr[3].sheetRow = 12;
    livingRoomSpritesArr[3].attr0_shape = SQUARESPRITE;
    livingRoomSpritesArr[3].attr1_size = LARGESPRITE;
    livingRoomSpritesArr[3].worldCol = 132;
    livingRoomSpritesArr[3].worldRow = 285;
    livingRoomSpritesArr[3].hide = 1;
    livingRoomSpritesArr[3].collisionColor = ORANGE_HIT;
    livingRoomSpritesArr[3].message = &painting;

    //2001 poster
    livingRoomSpritesArr[4].sheetCol = 0;
    livingRoomSpritesArr[4].sheetRow = 20;
    livingRoomSpritesArr[4].attr0_shape = SQUARESPRITE;
    livingRoomSpritesArr[4].attr1_size = LARGESPRITE;
    livingRoomSpritesArr[4].worldCol = 287;
    livingRoomSpritesArr[4].worldRow = 101;
    livingRoomSpritesArr[4].hide = 1;
    livingRoomSpritesArr[4].collisionColor = RED_HIT;
    livingRoomSpritesArr[4].message = &poster;

    //bookcase
    livingRoomSpritesArr[5].sheetCol = 8;
    livingRoomSpritesArr[5].sheetRow = 20;
    livingRoomSpritesArr[5].attr0_shape = WIDESPRITE;
    livingRoomSpritesArr[5].attr1_size = LARGESPRITE;
    livingRoomSpritesArr[5].worldCol = 342;
    livingRoomSpritesArr[5].worldRow = 113;
    livingRoomSpritesArr[5].hide = 1;
    livingRoomSpritesArr[5].collisionColor = LIME_HIT;
    livingRoomSpritesArr[5].message = &bookcase;


    //computer screen
    livingRoomSpritesArr[6].sheetCol = 0;
    livingRoomSpritesArr[6].sheetRow = 28;
    livingRoomSpritesArr[6].attr0_shape = SQUARESPRITE;
    livingRoomSpritesArr[6].attr1_size = SMALLSPRITE;
    livingRoomSpritesArr[6].worldCol = 454;
    livingRoomSpritesArr[6].worldRow = 137;
    livingRoomSpritesArr[6].hide = 1;
    livingRoomSpritesArr[6].collisionColor = PURPLE_HIT;
    livingRoomSpritesArr[6].message = &computerScreen;
 
    //television screen
    livingRoomSpritesArr[7].sheetCol = 4;
    livingRoomSpritesArr[7].sheetRow = 28;
    livingRoomSpritesArr[7].attr0_shape = TALLSPRITE;
    livingRoomSpritesArr[7].attr1_size = SMALLSPRITE;
    livingRoomSpritesArr[7].worldCol = 235;
    livingRoomSpritesArr[7].worldRow = 135;
    livingRoomSpritesArr[7].hide = 1;
    livingRoomSpritesArr[7].collisionColor = FOREST_HIT;
    livingRoomSpritesArr[7].message = &TV;

    //Phone Ring Sprites

    //ring 100%
    phoneRingSpritesArr[0].sheetCol = 8;
    phoneRingSpritesArr[0].sheetRow = 27;
    phoneRingSpritesArr[0].worldCol = 323;
    phoneRingSpritesArr[0].worldRow = 350;
    phoneRingSpritesArr[0].hide = 1;

    //ring 75%
    phoneRingSpritesArr[1].sheetCol = 8;
    phoneRingSpritesArr[1].sheetRow = 26;
    phoneRingSpritesArr[1].worldCol = 323;
    phoneRingSpritesArr[1].worldRow = 350;
    phoneRingSpritesArr[1].hide = 1;

    //ring 50%
    phoneRingSpritesArr[2].sheetCol = 8;
    phoneRingSpritesArr[2].sheetRow = 25;
    phoneRingSpritesArr[2].worldCol = 323;
    phoneRingSpritesArr[2].worldRow = 350;
    phoneRingSpritesArr[2].hide = 1;

        //ring 25%
    phoneRingSpritesArr[3].sheetCol = 8;
    phoneRingSpritesArr[3].sheetRow = 24;
    phoneRingSpritesArr[3].worldCol = 323;
    phoneRingSpritesArr[3].worldRow = 350;
    phoneRingSpritesArr[3].hide = 1;

    
}

//load living room attributes
void loadLivingRoom() {
    visMapWidth = 512;
    totalMapWidth = 512;
    visMapHeight = 478;
    totalMapHeight = 512;
    
    if (priorState != PAUSE && priorState != COMPUTER && priorState != INSTRUCTIONS) {
        //entering living room from kitchen
        if (priorState == KITCHEN) {
            protag.worldRow = 370;
            protag.worldCol = 450;

            hOff = (visMapWidth - SCREENWIDTH);
            vOff = (visMapHeight - SCREENHEIGHT);

        } else {
            //starting position
            protag.worldRow = 140;
            protag.worldCol = 30;
            protag.aniState = PROTAGFRONT;
        
            hOff = 0;
            vOff = 40;
            waitForVBlank();
            REG_BG1HOFF = hOff;
            REG_BG1VOFF = vOff;
        }

    } else {
        hOff = priorHoff;
        vOff = priorVoff;
    }

    initLivingRoomSprites();
    currSpriteArrCount = LR_SPRITECOUNT;
    currSpriteArr = &livingRoomSpritesArr;
    currCollisionMap = &livingroomcollisionmapBitmap;

    currRing = 0;
    phoneMessageIndex = 1;
    ringSettings();
}

void ringSettings() {
    if (phoneRinging) {
        REG_TM2CNT |= TIMER_OFF;
        REG_TM2CNT = TM_FREQ_256;
        REG_TM2D = 65536 - 20000;
        REG_TM2CNT |= TM_IRQ | TIMER_ON;
    } else {
        for (int i = 0; i < RING_SPRITECOUNT; i++) {
            shadowOAM[(i + LR_SPRITECOUNT + 1)].attr0 = ATTR0_HIDE;
        }
        REG_TM2CNT = TIMER_OFF;
    }
}

void updateRing() {
    for (int i = 0; i < RING_SPRITECOUNT; i++) {
        phoneRingSpritesArr[i].screenCol = phoneRingSpritesArr[i].worldCol - hOff;
        phoneRingSpritesArr[i].screenRow = phoneRingSpritesArr[i].worldRow - vOff;
    }
}

void drawRing() {
    for (int i = 0; i < RING_SPRITECOUNT; i++) {
        if (phoneRingSpritesArr[i].hide == 1) {
            shadowOAM[(i + LR_SPRITECOUNT + 1)].attr0 = ATTR0_HIDE;
        } else {
            shadowOAM[i + LR_SPRITECOUNT + 1].attr0 = (phoneRingSpritesArr[i].screenRow | ATTR0_8BPP | (ATTR0_WIDE));
            shadowOAM[i + LR_SPRITECOUNT + 1].attr1 = (phoneRingSpritesArr[i].screenCol | ATTR1_TINY);
            shadowOAM[i + LR_SPRITECOUNT + 1].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(phoneRingSpritesArr[i].sheetCol * 2, phoneRingSpritesArr[i].sheetRow) | ATTR2_PRIORITY(2);
        }
    }

}


void answerPhone() {
    char phone1[] = "\"This is an automated message from POE CRYONICS.\"";
    char phone2[] = "\"Our records indicate you have not yet uploaded your life insurance documents.\"";
    char phone3[] = "\"Please upload your documents today, to be ready for your appointment next week.\"";
    char phone4[] = "Ah, that's right... you need to upload your documents, which are in the SAFE.";

    if (BUTTON_PRESSED(BUTTON_A)) {
        phoneMessageIndex++;
    }
    switch (phoneMessageIndex) {
        case 1:
            livingRoomSpritesArr[0].message = &phone1;
            printText();
            break;
        case 2:
            livingRoomSpritesArr[0].message = &phone2;
            printText();
            break;
        case 3:
            livingRoomSpritesArr[0].message = &phone3;
            printText();
            break;
        case 4:
            livingRoomSpritesArr[0].message = &phone4;
            printText();
            break; 
        default:
            livingRoomSpritesArr[0].message = &telephone;
            phoneAnswerBool = 0;
            enableKeyFind = 1;
            REG_DISPCTL = MODE0 | BG1_ENABLE | SPRITE_ENABLE;
    }
}

void chapterTwoIntro() {
    timerWait(0, 256);

    unsigned short chapter2bgMapCopy[chapter2bgMapLen];
    memcpy (chapter2bgMapCopy, chapter2bgMap, chapter2bgMapLen);
    
    for (int i = 0; i < 700; i++) {
        chapter2bgMapCopy[i] = chapter2bgMap[701];
        if (i % 32 == 0) {
            DMANow(3, chapter2bgMapCopy, &SCREENBLOCK[24], ((1 << 30) | (1024 * 4)));
        }
    }

    REG_DISPCTL = MODE0 | BG1_ENABLE | SPRITE_ENABLE; 

    DMANow(3, messagescreenTiles, &CHARBLOCK[0], messagescreenTilesLen / 2);
    DMANow(3, messagescreenMap, &SCREENBLOCK[24], messagescreenMapLen / 2);

}



 

