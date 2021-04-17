
#include "myLib.h"
#include "game.h"
#include "stddef.h"
#include "computer.h"
#include "desktopcollision.h"
#include "websitebg.h"
#include "webpagedoc.h"
#include "websitecollision.h"
#include "inboxempty.h"
#include "inboxfull.h"
#include "inboxruth.h"
#include "inboxmarley.h"
#include "inboxmaincollision.h"
#include "inboxmessagecollision.h"


STATIONARYSPRITE computerSpritesArr[COMPUTER_SPRITECOUNT];
PROTAGSPRITE mouse;
extern char ruthEmailBool;
extern char marleyEmailBool;
extern char allEmailsBool;

//load computer attributes
void loadComputer() {
    priorHoff = hOff;
    priorVoff = vOff;

    hOff = 0;
    vOff = 0;

    totalMapWidth = 256;
    totalMapHeight = 256;

    visMapWidth = 240;
    visMapHeight = 160;

    currCollisionMap = &desktopcollisionBitmap;

    initMouse();
    initComputerSprites();
}

void updateComputer() {
    updateMouse();
    checkComputerSpriteCollision();
}

void drawComputer() {
    drawMouse();
    drawComputerSprites();
}

void initMouse() {
    mouse.worldCol = 120;
    mouse.worldRow = 72;
    mouse.screenCol = mouse.worldCol;
    mouse.screenRow = mouse.worldRow;
    mouse.width = 8;
    mouse.height = 11;
}

void initComputerSprites() {

    //web highlight
    computerSpritesArr[0].sheetCol = 0;
    computerSpritesArr[0].sheetRow = 2;
    computerSpritesArr[0].attr0_shape = SQUARESPRITE;
    computerSpritesArr[0].attr1_size = MEDIUMSPRITE;
    computerSpritesArr[0].worldCol = 5;
    computerSpritesArr[0].worldRow = 17;
    computerSpritesArr[0].hide = 1;
    computerSpritesArr[0].screenCol = computerSpritesArr[0].worldCol;
    computerSpritesArr[0].screenRow = computerSpritesArr[0].worldRow;
    computerSpritesArr[0].collisionColor = YELLOW_HIT;

    //mail highlight
    computerSpritesArr[1].sheetCol = 0;
    computerSpritesArr[1].sheetRow = 6;
    computerSpritesArr[1].attr0_shape = SQUARESPRITE;
    computerSpritesArr[1].attr1_size = MEDIUMSPRITE;
    computerSpritesArr[1].worldCol = 3;
    computerSpritesArr[1].worldRow = 47;
    computerSpritesArr[1].hide = 0;
    computerSpritesArr[1].screenCol = computerSpritesArr[1].worldCol;
    computerSpritesArr[1].screenRow = computerSpritesArr[1].worldRow;
    computerSpritesArr[1].collisionColor = AQUA_HIT;

    //back highlight
    computerSpritesArr[2].sheetCol = 4;
    computerSpritesArr[2].sheetRow = 0;
    computerSpritesArr[2].attr0_shape = SQUARESPRITE;
    computerSpritesArr[2].attr1_size = SMALLSPRITE;
    computerSpritesArr[2].worldCol = 10;
    computerSpritesArr[2].worldRow = 14;
    computerSpritesArr[2].hide = 1;
    computerSpritesArr[2].screenCol = computerSpritesArr[2].worldCol;
    computerSpritesArr[2].screenRow = computerSpritesArr[2].worldRow;
    computerSpritesArr[2].collisionColor = MAROON_HIT;

    //X out highlight
    computerSpritesArr[3].sheetCol = 6;
    computerSpritesArr[3].sheetRow = 0;
    computerSpritesArr[3].attr0_shape = SQUARESPRITE;
    computerSpritesArr[3].attr1_size = TINYSPRITE;
    computerSpritesArr[3].worldCol = 38;
    computerSpritesArr[3].worldRow = 16;
    computerSpritesArr[3].hide = 1;
    computerSpritesArr[3].screenCol = computerSpritesArr[3].worldCol;
    computerSpritesArr[3].screenRow = computerSpritesArr[3].worldRow;
    computerSpritesArr[3].collisionColor = RED_HIT;

    //Email highlight 1
    computerSpritesArr[4].sheetCol = 4;
    computerSpritesArr[4].sheetRow = 2;
    computerSpritesArr[4].attr0_shape = SQUARESPRITE;
    computerSpritesArr[4].attr1_size = TINYSPRITE;
    computerSpritesArr[4].worldCol = 40;
    computerSpritesArr[4].worldRow = 53;
    computerSpritesArr[4].hide = 1;
    computerSpritesArr[4].screenCol = computerSpritesArr[4].worldCol;
    computerSpritesArr[4].screenRow = computerSpritesArr[4].worldRow;
    computerSpritesArr[4].collisionColor = FOREST_HIT;

    //Email highlight 2
    computerSpritesArr[5].sheetCol = 4;
    computerSpritesArr[5].sheetRow = 2;
    computerSpritesArr[5].attr0_shape = SQUARESPRITE;
    computerSpritesArr[5].attr1_size = TINYSPRITE;
    computerSpritesArr[5].worldCol = 40;
    computerSpritesArr[5].worldRow = 67;
    computerSpritesArr[5].hide = 1;
    computerSpritesArr[5].screenCol = computerSpritesArr[5].worldCol;
    computerSpritesArr[5].screenRow = computerSpritesArr[5].worldRow;
    computerSpritesArr[5].collisionColor = PURPLE_HIT;

    //document upload highlight
    computerSpritesArr[6].sheetCol = 4;
    computerSpritesArr[6].sheetRow = 4;
    computerSpritesArr[6].attr0_shape = WIDESPRITE;
    computerSpritesArr[6].attr1_size = LARGESPRITE;
    computerSpritesArr[6].worldCol = 169;
    computerSpritesArr[6].worldRow = 57;
    computerSpritesArr[6].hide = 1;
    computerSpritesArr[6].screenCol = computerSpritesArr[6].worldCol;
    computerSpritesArr[6].screenRow = computerSpritesArr[6].worldRow;
    computerSpritesArr[6].collisionColor = LIME_HIT;

    //Email Notification
    computerSpritesArr[7].sheetCol = 6;
    computerSpritesArr[7].sheetRow = 2;
    computerSpritesArr[7].attr0_shape = SQUARESPRITE;
    computerSpritesArr[7].attr1_size = TINYSPRITE;
    computerSpritesArr[7].worldCol = 20;
    computerSpritesArr[7].worldRow = 45;
    computerSpritesArr[7].hide = 1;
    computerSpritesArr[7].screenCol = computerSpritesArr[7].worldCol;
    computerSpritesArr[7].screenRow = computerSpritesArr[7].worldRow;
    computerSpritesArr[7].collisionColor = 0;
}

void drawMouse() {
    shadowOAM[0].attr0 = (mouse.screenRow | ATTR0_8BPP | ATTR0_TALL);
    shadowOAM[0].attr1 = (mouse.screenCol | ATTR1_TINY);
    shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0, 0) | ATTR2_PRIORITY(0);
}

void drawComputerSprites() {
    for (int i = 0; i < COMPUTER_SPRITECOUNT; i++) {
        if (computerSpritesArr[i].hide == 1) {
            shadowOAM[i + 1].attr0 = ATTR0_HIDE;
        } else {
            shadowOAM[i + 1].attr0 = (computerSpritesArr[i].screenRow | ATTR0_8BPP | ((computerSpritesArr[i].attr0_shape) << 14));
            shadowOAM[i + 1].attr1 = (computerSpritesArr[i].screenCol | (computerSpritesArr[i].attr1_size) << 14);
            shadowOAM[i + 1].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(computerSpritesArr[i].sheetCol * 2, computerSpritesArr[i].sheetRow) | ATTR2_PRIORITY(0);
        }
    }
}

void updateMouse() {
    if (BUTTON_HELD(BUTTON_UP)) {
        if (mouse.worldRow > 0) {
            mouse.worldRow--;
        }
    }

    if (BUTTON_HELD(BUTTON_DOWN)) {
        if (mouse.worldRow + 1 < (visMapHeight - mouse.height)) {
            mouse.worldRow++;
        }
    }

    if (BUTTON_HELD(BUTTON_LEFT)) {
        if (mouse.worldCol > 0) {
            mouse.worldCol--;
        }
    }

    if (BUTTON_HELD(BUTTON_RIGHT)) {
        if (mouse.worldCol + 1 < (visMapWidth - mouse.width)) {
            mouse.worldCol++;
        }
    }

    if (BUTTON_PRESSED(BUTTON_A)) {
        if (activeSprite != NULL) {
            loadSecondaryScreen();
        }
    }

    mouse.screenCol = mouse.worldCol - hOff;
    mouse.screenRow = mouse.worldRow - vOff;   
}

void checkComputerSpriteCollision() {
    u16 currColor = 0;
    currColor = checkCollisionMapColor(mouse.worldCol, mouse.worldRow);
    activeSprite = NULL;

    if (currColor != 0) {
        for (int i = 0; i < COMPUTER_SPRITECOUNT - 1; i++) {
            if (computerSpritesArr[i].collisionColor == currColor) {
                computerSpritesArr[i].hide = 0;
                activeSprite = &computerSpritesArr[i];
            } else {
                computerSpritesArr[i].hide = 1;
            }
        }
    }
}

void loadSecondaryScreen() {
    //exit to desktop
    if (activeSprite == &computerSpritesArr[3]) {
        REG_DISPCTL = MODE0 | BG1_ENABLE | SPRITE_ENABLE;
        currCollisionMap = &desktopcollisionBitmap;
        return;
    }


    if (activeSprite == &computerSpritesArr[0]) {
        //web desktop icon
        DMANow(3, websitebgTiles, &CHARBLOCK[0], websitebgTilesLen / 2);
        DMANow(3, websitebgMap, &SCREENBLOCK[24], 1024 * 4);
        computerSpritesArr[3].worldCol = 38;
        computerSpritesArr[3].worldRow = 16;
        currCollisionMap = &websitecollisionBitmap;
    } else if (activeSprite == &computerSpritesArr[6]) {
        //upload document
        if (openSafeBool) {
            DMANow(3, webpagedocTiles, &CHARBLOCK[0], webpagedocTilesLen / 2);
            DMANow(3, webpagedocMap, &SCREENBLOCK[24], 1024 * 4);
            documentsUploaded = 1;
            //enable email notification
            computerSpritesArr[7].hide = 0;
        }
    } else if (activeSprite == &computerSpritesArr[1] || activeSprite == &computerSpritesArr[2]) {
        //email desktop icon
        if (documentsUploaded) {
            DMANow(3, inboxfullTiles, &CHARBLOCK[0], inboxfullTilesLen / 2);
            DMANow(3, inboxfullMap, &SCREENBLOCK[24], 1024 * 4);
        } else {
            DMANow(3, inboxemptyTiles, &CHARBLOCK[0], inboxemptyTilesLen / 2);
            DMANow(3, inboxemptyMap, &SCREENBLOCK[24], 1024 * 4);
        }
        currCollisionMap = &inboxmaincollisionBitmap;

        computerSpritesArr[3].worldCol = 10;
        computerSpritesArr[3].worldRow = 14;
    } else if (activeSprite == &computerSpritesArr[4]) {
        //ruth email
        DMANow(3, inboxruthTiles, &CHARBLOCK[0], inboxruthTilesLen / 2);
        DMANow(3, inboxruthMap, &SCREENBLOCK[24], 1024 * 4);
        currCollisionMap = &inboxmessagecollisionBitmap;
        ruthEmailBool = 1;
    } else if (activeSprite == &computerSpritesArr[5]) {
        //marley email
        DMANow(3, inboxmarleyTiles, &CHARBLOCK[0], inboxmarleyTilesLen / 2);
        DMANow(3, inboxmarleyMap, &SCREENBLOCK[24], 1024 * 4);
        currCollisionMap = &inboxmessagecollisionBitmap;
        marleyEmailBool = 1;
    }

    if (ruthEmailBool && marleyEmailBool) {
        allEmailsBool = 1;
    }

    computerSpritesArr[3].screenRow = computerSpritesArr[3].worldRow;
    computerSpritesArr[3].screenCol = computerSpritesArr[3].worldCol;

    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(24) | BG_4BPP | BG_SIZE_SMALL | BG_PRIORITY(0);
    REG_DISPCTL |= BG0_ENABLE;
}