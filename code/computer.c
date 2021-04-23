
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
#include "inboxmars.h"
#include "inboxmaincollision.h"
#include "inboxmessagecollision.h"
#include "musiccollision.h"
#include "musicbg.h"
#include "sound.h"
#include "LastManOn8rth.h"



STATIONARYSPRITE computerSpritesArr[COMPUTER_SPRITECOUNT];
PROTAGSPRITE mouse;
extern int currSong;
extern char ruthEmailBool;
extern char marsEmailBool;
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
    computerSpritesArr[1].sheetRow = 5;
    computerSpritesArr[1].attr0_shape = SQUARESPRITE;
    computerSpritesArr[1].attr1_size = MEDIUMSPRITE;
    computerSpritesArr[1].worldCol = 3;
    computerSpritesArr[1].worldRow = 39;
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

    //Music highlight
    computerSpritesArr[7].sheetCol = 12;
    computerSpritesArr[7].sheetRow = 0;
    computerSpritesArr[7].attr0_shape = SQUARESPRITE;
    computerSpritesArr[7].attr1_size = MEDIUMSPRITE;
    computerSpritesArr[7].worldCol = 2;
    computerSpritesArr[7].worldRow = 72;
    computerSpritesArr[7].hide = 1;
    computerSpritesArr[7].screenCol = computerSpritesArr[7].worldCol;
    computerSpritesArr[7].screenRow = computerSpritesArr[7].worldRow;
    computerSpritesArr[7].collisionColor = PEACH_HIT;

    //Play Spettacolo highlight
    computerSpritesArr[8].sheetCol = 8;
    computerSpritesArr[8].sheetRow = 0;
    computerSpritesArr[8].attr0_shape = SQUARESPRITE;
    computerSpritesArr[8].attr1_size = TINYSPRITE;
    computerSpritesArr[8].worldCol = 131;
    computerSpritesArr[8].worldRow = 44;
    computerSpritesArr[8].hide = 1;
    computerSpritesArr[8].screenCol = computerSpritesArr[8].worldCol;
    computerSpritesArr[8].screenRow = computerSpritesArr[8].worldRow;
    computerSpritesArr[8].collisionColor = ORANGE_HIT;

    //Play Last Man on 8rth highlight
    computerSpritesArr[9].sheetCol = 8;
    computerSpritesArr[9].sheetRow = 0;
    computerSpritesArr[9].attr0_shape = SQUARESPRITE;
    computerSpritesArr[9].attr1_size = TINYSPRITE;
    computerSpritesArr[9].worldCol = 131;
    computerSpritesArr[9].worldRow = 56;
    computerSpritesArr[9].hide = 1;
    computerSpritesArr[9].screenCol = computerSpritesArr[9].worldCol;
    computerSpritesArr[9].screenRow = computerSpritesArr[9].worldRow;
    computerSpritesArr[9].collisionColor = OCEAN_HIT;

    // ~~~~ NON-INTERACTIVE SPRITES ~~~~

    //Email Notification
    computerSpritesArr[10].sheetCol = 6;
    computerSpritesArr[10].sheetRow = 2;
    computerSpritesArr[10].attr0_shape = SQUARESPRITE;
    computerSpritesArr[10].attr1_size = TINYSPRITE;
    computerSpritesArr[10].worldCol = 20;
    computerSpritesArr[10].worldRow = 45;
    computerSpritesArr[10].hide = 1;
    computerSpritesArr[10].screenCol = computerSpritesArr[10].worldCol;
    computerSpritesArr[10].screenRow = computerSpritesArr[10].worldRow;
    computerSpritesArr[10].collisionColor = 0;

    //TLMOE Album
    computerSpritesArr[11].sheetCol = 0;
    computerSpritesArr[11].sheetRow = 9;
    computerSpritesArr[11].attr0_shape = SQUARESPRITE;
    computerSpritesArr[11].attr1_size = LARGESPRITE;
    computerSpritesArr[11].worldCol = 55;
    computerSpritesArr[11].worldRow = 30;
    computerSpritesArr[11].hide = 1;
    computerSpritesArr[11].screenCol = computerSpritesArr[11].worldCol;
    computerSpritesArr[11].screenRow = computerSpritesArr[11].worldRow;
    computerSpritesArr[11].collisionColor = 0;

    //TLMOE Info
    computerSpritesArr[12].sheetCol = 0;
    computerSpritesArr[12].sheetRow = 17;
    computerSpritesArr[12].attr0_shape = SQUARESPRITE;
    computerSpritesArr[12].attr1_size = LARGESPRITE;
    computerSpritesArr[12].worldCol = 55;
    computerSpritesArr[12].worldRow = 86;
    computerSpritesArr[12].hide = 1;
    computerSpritesArr[12].screenCol = computerSpritesArr[12].worldCol;
    computerSpritesArr[12].screenRow = computerSpritesArr[12].worldRow;
    computerSpritesArr[12].collisionColor = 0;

    //Spettacolo Album
    computerSpritesArr[13].sheetCol = 8;
    computerSpritesArr[13].sheetRow = 9;
    computerSpritesArr[13].attr0_shape = SQUARESPRITE;
    computerSpritesArr[13].attr1_size = LARGESPRITE;
    computerSpritesArr[13].worldCol = 55;
    computerSpritesArr[13].worldRow = 30;
    computerSpritesArr[13].hide = 1;
    computerSpritesArr[13].screenCol = computerSpritesArr[13].worldCol;
    computerSpritesArr[13].screenRow = computerSpritesArr[13].worldRow;
    computerSpritesArr[13].collisionColor = 0;

    //Spettacolo Info
    computerSpritesArr[14].sheetCol = 8;
    computerSpritesArr[14].sheetRow = 17;
    computerSpritesArr[14].attr0_shape = SQUARESPRITE;
    computerSpritesArr[14].attr1_size = LARGESPRITE;
    computerSpritesArr[14].worldCol = 55;
    computerSpritesArr[14].worldRow = 86;
    computerSpritesArr[14].hide = 1;
    computerSpritesArr[14].screenCol = computerSpritesArr[14].worldCol;
    computerSpritesArr[14].screenRow = computerSpritesArr[14].worldRow;
    computerSpritesArr[14].collisionColor = 0;

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
        for (int i = 0; i < COMPUTER_SPRITECOUNT - 5; i++) {
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
        disableSprites();
        return;
    }


    if (activeSprite == &computerSpritesArr[0]) {
        //web desktop icon
        DMANow(3, websitebgTiles, &CHARBLOCK[0], websitebgTilesLen / 2);
        DMANow(3, websitebgMap, &SCREENBLOCK[24], websitebgMapLen / 2);

        //set exit sprite to proper position
        computerSpritesArr[3].worldCol = 38;
        computerSpritesArr[3].worldRow = 16;

        currCollisionMap = &websitecollisionBitmap;
    } else if (activeSprite == &computerSpritesArr[6]) {
        //upload document
        if (openSafeBool) {
            DMANow(3, webpagedocTiles, &CHARBLOCK[0], webpagedocTilesLen / 2);
            DMANow(3, webpagedocMap, &SCREENBLOCK[24], webpagedocMapLen / 2);
            documentsUploaded = 1;
            //enable email notification
            computerSpritesArr[10].hide = 0;
        }
    } else if (activeSprite == &computerSpritesArr[1] || activeSprite == &computerSpritesArr[2]) {
        //email desktop icon
        if (documentsUploaded) {
            DMANow(3, inboxfullTiles, &CHARBLOCK[0], inboxfullTilesLen / 2);
            DMANow(3, inboxfullMap, &SCREENBLOCK[24], inboxfullMapLen / 2);
        } else {
            DMANow(3, inboxemptyTiles, &CHARBLOCK[0], inboxemptyTilesLen / 2);
            DMANow(3, inboxemptyMap, &SCREENBLOCK[24], inboxemptyMapLen / 2);
        }
        currCollisionMap = &inboxmaincollisionBitmap;

        //set exit sprite to proper position
        computerSpritesArr[3].worldCol = 10;
        computerSpritesArr[3].worldRow = 14;
     } else if (activeSprite == &computerSpritesArr[7]) {
        //music desktop icon
        DMANow(3, musicbgTiles, &CHARBLOCK[0], musicbgTilesLen / 2);
        DMANow(3, musicbgMap, &SCREENBLOCK[24], musicbgMapLen / 2);
        //set exit sprite to proper position
        computerSpritesArr[3].worldCol = 38;
        computerSpritesArr[3].worldRow = 16;
        //show curr music sprites
        if (currSong == TLMOE) {
            tlmoeHide(0);
            spettacoloHide(1);
        } else {
            tlmoeHide(1);
            spettacoloHide(0);
        }
        currCollisionMap = &musiccollisionBitmap;
    } else if (activeSprite == &computerSpritesArr[8]) {
        //if spettacolo selected
        playSpettacolo();
    } else if (activeSprite == &computerSpritesArr[9]) {
        //if TLMOE selected
        playTLMOE();
    } else if (activeSprite == &computerSpritesArr[4]) {
        //ruth email
        DMANow(3, inboxruthTiles, &CHARBLOCK[0], inboxruthTilesLen / 2);
        DMANow(3, inboxruthMap, &SCREENBLOCK[24], inboxruthMapLen / 2);
        currCollisionMap = &inboxmessagecollisionBitmap;
        ruthEmailBool = 1;
    } else if (activeSprite == &computerSpritesArr[5]) {
        //mars email
        DMANow(3, inboxmarsTiles, &CHARBLOCK[0], inboxmarsTilesLen / 2);
        DMANow(3, inboxmarsMap, &SCREENBLOCK[24], inboxmarsMapLen / 2);
        currCollisionMap = &inboxmessagecollisionBitmap;
        marsEmailBool = 1;
    }

    if (ruthEmailBool && marsEmailBool) {
        allEmailsBool = 1;
    }

    computerSpritesArr[3].screenRow = computerSpritesArr[3].worldRow;
    computerSpritesArr[3].screenCol = computerSpritesArr[3].worldCol;

    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(24) | BG_4BPP | BG_SIZE_SMALL | BG_PRIORITY(0);
    REG_DISPCTL |= BG0_ENABLE;
}

void disableSprites() {
    for (int i = COMPUTER_SPRITECOUNT - 1; i > COMPUTER_SPRITECOUNT - 4; i--) {
        computerSpritesArr[i].hide = 1;
    }
}

void playSpettacolo() {
    spettacoloHide(0);
    tlmoeHide(1);
    currSong = SPETTACOLO;
    stopSound();
}

void playTLMOE() {
    spettacoloHide(1);
    tlmoeHide(0);
    currSong = TLMOE;
    playSoundA(LastManOn8rth_data, LastManOn8rth_length, 1);

}

void tlmoeHide(int i) {
    computerSpritesArr[11].hide = i;
    computerSpritesArr[12].hide = i;
}

void spettacoloHide(int i) {
    computerSpritesArr[13].hide = i;
    computerSpritesArr[14].hide = i;
}