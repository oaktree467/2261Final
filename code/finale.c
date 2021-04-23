#include "myLib.h"
#include "game.h"
#include "finale.h"
#include "finalecollision.h"
#include "messagescreen.h"
#include "chapter3bg.h"
#include <stdlib.h>
#include <string.h>

char marsInteractBool;
char replyBool; // if the character has reply options
char replyNum; //which reply to choose
char checkOneBool; // if player has accessed Mars' first message
char checkTwoBool; // if player has accessed Mars' second message
char checkThreeBool; // if player has accessed Mars' third message
char messageNum; // which message to play
extern char activateDoorBool;


char mars_1[] = "\"Oh, you're up! Are you feeling okay?\"";
char mars_2[] = " What happened?             Where are we?              What now?";
char mars_3[] = "\"I came by to pick you up, but you were having a cataleptic episode. You recovered, but once we got here, you had another.\"";
char mars_4[] = "\"I rented us a cabin! You've been so paranoid about EVERYTHING lately. And you haven't left your house in weeks.\"";
char mars_5[] = "\"It's up to you, but personally? I think you should get some fresh air. That is, if you can bring yourself to go outside.\"";
char door[] = "Fear crawls up your spine. You've been so scared of being interned alive, you haven't gone outside in weeks.";

STATIONARYSPRITE finaleSpritesArr[5];



void loadFinale() {
    visMapWidth = 336;
    totalMapWidth = 512;
    visMapHeight = 160;
    totalMapHeight = 256;

    protag.worldRow = 90;
    protag.worldCol = 300;
    protag.currFrame = 3;

    hOff = (visMapWidth - SCREENWIDTH);
    vOff = (visMapHeight - SCREENHEIGHT);
    
    if (priorState != PAUSE && priorState != INSTRUCTIONS) {
            hOff = (visMapWidth - SCREENWIDTH);
            vOff = (visMapHeight - SCREENHEIGHT);
            marsInteractBool = 0;
            messageNum = 0;
            replyBool = 0;
            replyNum = 0;

            checkOneBool = 0;
            checkTwoBool = 0;
            checkThreeBool = 0;
    } else {
        hOff = priorHoff;
        vOff = priorVoff;
    }

    initFinaleSprites();
    currSpriteArrCount = FINALE_SPRITECOUNT;
    currSpriteArr = &finaleSpritesArr;
    currCollisionMap = &finalecollisionBitmap;

    REG_TM2CNT = TIMER_OFF;
    REG_TM2D = 65536 - 20000;
    REG_TM2CNT |= TM_FREQ_256 | TM_IRQ;
    REG_TM2CNT |= TIMER_ON;

}




void initFinaleSprites() {
        //Door
    finaleSpritesArr[0].sheetCol = 8;
    finaleSpritesArr[0].sheetRow = 12;
    finaleSpritesArr[0].attr0_shape = SQUARESPRITE;
    finaleSpritesArr[0].attr1_size = LARGESPRITE;
    finaleSpritesArr[0].worldCol = 15;
    finaleSpritesArr[0].worldRow = 29;
    finaleSpritesArr[0].hide = 0;
    finaleSpritesArr[0].collisionColor = AQUA_HIT;
    finaleSpritesArr[0].message = &door;


    //Press A
    finaleSpritesArr[1].sheetCol = 12;
    finaleSpritesArr[1].sheetRow = 4;
    finaleSpritesArr[1].attr0_shape = WIDESPRITE;
    finaleSpritesArr[1].attr1_size = MEDIUMSPRITE;
    finaleSpritesArr[1].worldCol = 66;
    finaleSpritesArr[1].worldRow = 48;
    finaleSpritesArr[1].hide = 0;
    finaleSpritesArr[1].collisionColor = YELLOW_HIT;

    //persistent sprites

    //Fireplace
    finaleSpritesArr[2].sheetCol = 12;
    finaleSpritesArr[2].sheetRow = 0;
    finaleSpritesArr[2].attr0_shape = SQUARESPRITE;
    finaleSpritesArr[2].attr1_size = SMALLSPRITE;
    finaleSpritesArr[2].worldCol = 117;
    finaleSpritesArr[2].worldRow = 55;
    finaleSpritesArr[2].hide = 0;

    //Mars
    finaleSpritesArr[3].sheetCol = 0;
    finaleSpritesArr[3].sheetRow = 16;
    finaleSpritesArr[3].attr0_shape = SQUARESPRITE;
    finaleSpritesArr[3].attr1_size = MEDIUMSPRITE;
    finaleSpritesArr[3].worldCol = 63;
    finaleSpritesArr[3].worldRow = 56;
    finaleSpritesArr[3].hide = 0;

    //Chair Front
    finaleSpritesArr[4].sheetCol = 0;
    finaleSpritesArr[4].sheetRow = 28;
    finaleSpritesArr[4].attr0_shape = SQUARESPRITE;
    finaleSpritesArr[4].attr1_size = MEDIUMSPRITE;
    finaleSpritesArr[4].worldCol = 66;
    finaleSpritesArr[4].worldRow = 70;
    finaleSpritesArr[4].hide = 0;
}

void updatePersistentSprites() {
    //update screencol and row
    for (int i = 2; i < 5; i++) {
        finaleSpritesArr[i].screenCol = finaleSpritesArr[i].worldCol - hOff; 
        finaleSpritesArr[i].screenRow = finaleSpritesArr[i].worldRow - vOff;
    }
}

void drawPersistentSprites() {
    for (int i = 2; i < 5; i++) {
        shadowOAM[i + 3].attr0 = ((finaleSpritesArr[i].screenRow & ROWMASK) | ATTR0_8BPP | ((finaleSpritesArr[i].attr0_shape) << 14));
        shadowOAM[i + 3].attr1 = ((finaleSpritesArr[i].screenCol & COLMASK)| (finaleSpritesArr[i].attr1_size) << 14);
        shadowOAM[i + 3].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(finaleSpritesArr[i].sheetCol * 2, finaleSpritesArr[i].sheetRow) | ATTR2_PRIORITY(2);
    }
}


void updateFinale() {
    if (BUTTON_PRESSED(BUTTON_A)) {
        marsSpeaks();
    }

    if (BUTTON_PRESSED(BUTTON_B)) {
        marsInteractBool = 0;
        messageNum = 0;
        replyNum = 0;
        REG_DISPCTL &= ~(BG0_ENABLE);
        return;
    }

    if (replyBool) {
        if (BUTTON_PRESSED(BUTTON_UP)) {
            if (replyNum == 1) {
                replyNum = 3;
            } else {
                replyNum--;
            }

            selectArrow();

        }

        if (BUTTON_PRESSED(BUTTON_DOWN)) {
            if (replyNum == 3) {
                replyNum = 1;
            } else {
                replyNum++;
            }
            selectArrow();
        }

    }

}

void marsSpeaks() {
    char selection = messageNum + replyNum;
    switch (selection) {
        case 0:
            finaleSpritesArr[1].message = &mars_1;
            messageNum++;
            printText();
            break;
        case 1:
            finaleSpritesArr[1].message = &mars_2;
            replyBool = 1;
            replyNum = 1;
            printText();
            selectArrow();
            break;
        case 2:
            finaleSpritesArr[1].message = &mars_3;
            checkOneBool = 1;
            replyBool = 0;
            printText();
            messageNum = 1;
            replyNum = 0;
            break;
        case 3:
            finaleSpritesArr[1].message = &mars_4;
            checkTwoBool = 1;
            replyBool = 0;
            printText();
            messageNum = 1;
            replyNum = 0;
            break;
        case 4:
            finaleSpritesArr[1].message = &mars_5;
            checkThreeBool = 1;
            replyBool = 0;
            printText();
            messageNum = 1;
            replyNum = 0;
            break;
    }

    if (checkOneBool && checkTwoBool && checkThreeBool) {
        activateDoorBool = 1;
    }
}

void selectArrow() {
    int intervalOne = 418;
    int intervalTwo = 450;
    int intervalThree = 482;

    //clear current intervals using space character
    messagescreenMap[intervalOne] = messagescreenMap[748];
    messagescreenMap[intervalTwo] = messagescreenMap[748];
    messagescreenMap[intervalThree] = messagescreenMap[748];

    switch (replyNum) {
        case (1):
            messagescreenMap[intervalOne] = messagescreenMap[ARROW_SELECT];
            break;
        case (2):
            messagescreenMap[intervalTwo] = messagescreenMap[ARROW_SELECT];
            break;
        case (3):
            messagescreenMap[intervalThree] = messagescreenMap[ARROW_SELECT];
            break;
    }

    DMANow(3, messagescreenMap, &SCREENBLOCK[24], messagescreenMapLen / 2);
}

void chapterThreeIntro() {
    timerWait(0, 256);

    unsigned short chapter3bgMapCopy[chapter3bgMapLen];
    memcpy(chapter3bgMapCopy, chapter3bgMap, chapter3bgMapLen);
    
    for (int i = 0; i < 700; i++) {
        chapter3bgMapCopy[i] = chapter3bgMap[701];
        if (i % 32 == 0) {
            DMANow(3, chapter3bgMapCopy, &SCREENBLOCK[24], ((1 << 30) | (chapter3bgMapLen / 2)));
        }
    }

    REG_DISPCTL &= ~(BG0_ENABLE);

    DMANow(3, messagescreenTiles, &CHARBLOCK[0], messagescreenTilesLen / 2);
    DMANow(3, messagescreenMap, &SCREENBLOCK[24], messagescreenMapLen / 2);

}