#include "livingroomoutro.h"
#include "game.h"
#include "myLib.h"
#include "messagescreen.h"
#include "text.h"
#include "sound.h"
#include "frontdoor.h"
#include "blackbg.h"
#include "colddarkmessagebg.h"

PROTAGSPRITE mars;
char outroSequenceStage;
int timerI;
int timerJ;
char ot_1[] = "Something shifts in your  gut. A warning.An oncomingepisode.                  You don't...                feel so good...";
char ot_2[] = "That's all you remember.  ...                       ...                       ... But wait.";
char ot_3[] = "Didn't someone knock?";
char liftProtagonistBool;
int frame = 0;

void printOutroText();

void initLivingRoomOutro() {
    initMarsOutro();
    initProtagonistOutro();
    initMessageOutro();
}

void initMarsOutro() {
    mars.width = 20;
    mars.height = 31;
    mars.aniCounter = 0;
    mars.aniState = PROTAGFRONT; //col location on spritesheet, in tiles
    mars.prevAniState = PROTAGFRONT; // location on spritesheet, in tiles
    mars.currFrame = 4; // row location on spritesheet, in tiles
    mars.totalFrames = 3; 
    mars.sideOrientation = LEFTORIENTATION; //tells OAM to flip side sprite or not
    mars.screenCol = 200;
    mars.screenRow = -100;

}

void initProtagonistOutro() {
    protag.sideOrientation = RIGHTORIENTATION;
    protag.aniState = PROTAGFRONT;
    protag.currFrame = 3;
}

void initMessageOutro() {
    clearMessage();
    outroSequenceStage = 0;
    REG_DISPCTL |= BG0_ENABLE;
    printOutroText(&ot_1);
}

void waitForKeyPress() {
    //trigger first step of outro animation
    if (BUTTON_PRESSED(BUTTON_A)) {
        REG_DISPCTL &= ~(BG0_ENABLE);
        protag.aniState = PROTAGSIDE;
        protag.currFrame = 3;
        timerWait(20000, 1024);
        drawOutroSprites();

        DMANow(3, blackbgTiles, &CHARBLOCK[1], blackbgTilesLen / 2);
        DMANow(3, blackbgMap, &SCREENBLOCK[28], 1024 * 4);

        REG_BG1CNT |= BG_SIZE_SMALL;

        vOff = 0;
        hOff = 0;

        outroSequenceStage = 1;
    }

}

//animation
void updateOutro() {
    if (outroSequenceStage == 0) {
        waitForKeyPress();
    } else if (outroSequenceStage == 1) {
        if (frame % 2 == 0) {
            if (protag.screenRow > 40) {
                protag.screenRow--;
            } else if (protag.screenCol > (SCREENWIDTH / 2) - protag.height) {
                protag.screenCol--;
            } else {
                outroSequenceStage = 2;
                timerWait(20000, 1024);
                clearMessage();
                REG_DISPCTL |= BG0_ENABLE;
                printOutroText(&ot_2);
            }
        }
        frame = (frame + 1) % 101;
    } else if (outroSequenceStage == 2) {
        if (BUTTON_PRESSED(BUTTON_A)) {
            clearMessage();
            printOutroText(&ot_3);
            playSoundB(frontdoor_data, frontdoor_length, 0);
            timerWait(0, 1024);
            frame = 0;
            outroSequenceStage = 3;
        }
    } else if (outroSequenceStage == 3) {
        if (frame % 2 == 0) {

            if (frame % 16 == 0) {
                mars.currFrame++;
                if (mars.currFrame == 7) {
                    mars.currFrame = 4;
                }
            }

            if (mars.screenRow < 40) {
                mars.screenRow++;
            } else if (mars.screenCol > (SCREENWIDTH / 2)) {
                if (mars.aniState != PROTAGSIDE) {
                    mars.aniState = PROTAGSIDE;
                    mars.sideOrientation = LEFTORIENTATION;
                }
                mars.screenCol--;
            } else {
                outroSequenceStage++;
                mars.currFrame = 4;
            }
        }
        frame = (frame + 1) % 101;

    }

}

void drawOutroSprites() {
    //draw protagonist
    shadowOAM[0].attr0 = (protag.screenRow | ATTR0_8BPP | ATTR0_SQUARE);
    shadowOAM[0].attr1 = (protag.screenCol | ATTR1_MEDIUM | (protag.sideOrientation << 12));
    shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(protag.aniState * 8, protag.currFrame * 4) | ATTR2_PRIORITY(2);

    
    //draw Mars
    shadowOAM[1].attr0 = (mars.screenRow | ATTR0_8BPP | ATTR0_SQUARE);
    shadowOAM[1].attr1 = (mars.screenCol | ATTR1_MEDIUM | (mars.sideOrientation << 12));
    shadowOAM[1].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(mars.aniState * 8, mars.currFrame * 4) | ATTR2_PRIORITY(2);
    

}

void printOutroText(char (* msg)[]) {
    REG_TM2CNT |= TIMER_OFF;
    REG_TM2CNT = TM_FREQ_64;
    REG_TM2D = 65536 - 11000;
    REG_TM2CNT |= TM_IRQ | TIMER_ON;
    timerI = 0;
    timerJ = 418;
    while ((* msg)[timerI] != '\0') {
        
        if ((timerJ - 444) % 32 == 0) {
            timerJ += 6;
        }
        
        messagescreenMap[timerJ] = messagescreenMap[(letterMap[((* msg)[timerI]) - 32])];

        DMANow(3, messagescreenMap, &SCREENBLOCK[24], 1024 * 4);
        
    }
    REG_TM2CNT |= TIMER_OFF;

}
