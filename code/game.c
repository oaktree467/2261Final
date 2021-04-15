#include "myLib.h"
#include "livingroomsprites.h"
#include "livingroomcollisionmap.h"
#include "game.h"
#include "livingroom.h"
#include "kitchen.h"
#include "kitchencollision.h"
#include "bedroomcollision.h"
#include "bedroom.h"
#include "kitchenbg.h"
#include "messagescreen.h"
#include "safebg.h"
#include "text.h"
#include "safe.h"
#include "sound.h"
#include "phonering.h"

//global variables
PROTAGSPRITE protag;
STATIONARYSPRITE(* currSpriteArr)[];
int currSpriteArrCount;
STATIONARYSPRITE *activeSprite;
const unsigned short (* currCollisionMap)[];
unsigned short (* currMessageMap)[];
int spriteCollisionBool;
int messageActiveBool;
int nextRoomBool;
char enableKeyFind;
char keyFound;
char documentsFound;
char phoneRinging;
char documentsUploaded;
char computerAccessBool;
char phoneAnswerBool;
char allEmailsBool;


unsigned short priorHoff;
unsigned short priorVoff;
unsigned short hOff;
unsigned short vOff;
int visMapWidth;
int totalMapWidth;
int visMapHeight;
int totalMapHeight;
int mode;


//int mode;
//initialize game
void initGame(){
    keyFound = 0;
    enableKeyFind = 0;
    phoneRinging = 0;
    documentsFound = 0;
    documentsUploaded = 0;
    spriteCollisionBool = 0;
    messageActiveBool = 0;
    nextRoomBool = 0;
    computerAccessBool = 0;
    allEmailsBool = 0;
    mode = 0;
    initProtagonist();
    setUpInterrupts();
    setupSounds();
}

//initialize protagonist
void initProtagonist() { 
    protag.width = 20;
    protag.height = 31;
    protag.aniCounter = 0;
    protag.aniState = PROTAGFRONT; //col location on spritesheet, in tiles
    protag.prevAniState = PROTAGFRONT; // location on spritesheet, in tiles
    protag.currFrame = 0; // row location on spritesheet
    protag.totalFrames = 3;
    protag.sideOrientation = LEFTORIENTATION; //tells OAM to flip side sprite or not
}

void updateGame() {
    checkThreshold();
    updateProtagonist();
    updateSprites();
    checkSpriteCollision();
}

void drawGame() {
    drawProtagonist();
    drawSprites();
}


//read in protagonist movements based on button presses
void updateProtagonist() {
    if (protag.aniState != PROTAGIDLE) {
        protag.prevAniState = protag.aniState;
        protag.aniState = PROTAGIDLE;
    }
    if (protag.aniCounter % 10 == 0) {
        protag.currFrame = ((protag.currFrame + 1) % protag.totalFrames);
    }

    if (phoneAnswerBool) {
        stopSoundB();
        answerPhone();
    } else if (messageActiveBool) {
        if (BUTTON_PRESSED(BUTTON_A)) {
            REG_DISPCTL = MODE0 | BG1_ENABLE | SPRITE_ENABLE;
            messageActiveBool = 0;
        }
    } else {
        if (BUTTON_PRESSED(BUTTON_A)) {
            checkMoreInfo();
        }
        if (BUTTON_HELD(BUTTON_UP)) {
            if ((checkCollisionMapColor(protag.worldCol, protag.worldRow - 1) != 0)
                && ((checkCollisionMapColor(protag.worldCol + protag.width, protag.worldRow - 1) != 0))) {
                    protag.worldRow--;
                if ((vOff - 1 > 0) && (protag.screenRow <= (SCREENHEIGHT / 2))) {
                    vOff--;
                }
            }
            protag.aniState = PROTAGBACK;
        }
        if (BUTTON_HELD(BUTTON_DOWN)) {
            if ((checkCollisionMapColor(protag.worldCol, protag.worldRow + protag.height + 1) != 0)
                && ((checkCollisionMapColor(protag.worldCol + protag.width, protag.worldRow + protag.height + 1) != 0))) {
            
                protag.worldRow++;
                
                
                if (((vOff + 1) < (visMapHeight - SCREENHEIGHT)) && (protag.screenRow >= (SCREENHEIGHT / 2))) {
                    vOff++;
                }  
                
            }
            protag.aniState = PROTAGFRONT;
        }

        if (BUTTON_HELD(BUTTON_RIGHT)) {
            if ((protag.worldCol + protag.width < visMapWidth) && (checkCollisionMapColor(protag.worldCol + protag.width + 1, protag.worldRow) != 0)
                && ((checkCollisionMapColor(protag.worldCol + protag.width + 1, protag.worldRow + protag.height - 1) != 0))) {
                protag.worldCol++;
                
                if (((hOff + 1) < (visMapWidth - SCREENWIDTH)) && protag.screenCol >= (SCREENWIDTH / 2)) {
                    hOff++;
                }
                
            }
            protag.aniState = PROTAGSIDE;

        }

        if (protag.aniState != PROTAGIDLE) {
            protag.sideOrientation = RIGHTORIENTATION;
        }

        if (BUTTON_HELD(BUTTON_LEFT)) {
            if ((protag.worldCol > 1) && (checkCollisionMapColor(protag.worldCol + 8, protag.worldRow) != 0)
                && ((checkCollisionMapColor(protag.worldCol + 8, protag.worldRow + protag.height - 1) != 0))) {
                protag.worldCol--;
                
                if (((hOff - 1) > 0) && protag.screenCol <= (SCREENWIDTH / 2)) {
                    hOff--;
                }
                
            }
            protag.aniState = PROTAGSIDE;
            protag.sideOrientation = LEFTORIENTATION;
            
        } 
    }

    if ((protag.aniState) == PROTAGIDLE) {
            protag.currFrame = 0;
            protag.aniState = protag.prevAniState;
            
        } else {
            protag.aniCounter += 1;
        }

        protag.screenCol = protag.worldCol - hOff;
        protag.screenRow = protag.worldRow - vOff;

    
    if (BUTTON_PRESSED(BUTTON_START)) {
        mode = 4;
    }
}

//update sprite columns
void updateSprites() {
    for (int i = 0; i < currSpriteArrCount; i++) {
        (*currSpriteArr)[i].screenCol = (*currSpriteArr)[i].worldCol - hOff;
        (*currSpriteArr)[i].screenRow = (*currSpriteArr)[i].worldRow - vOff;
    }

    if (phoneRinging) {
        updateRing();
    }
}

//draw sprites, if unhidden
void drawSprites() {
    for (int i = 0; i < currSpriteArrCount; i++) {
        if ((*currSpriteArr)[i].hide == 1) {
            shadowOAM[i + 1].attr0 = ATTR0_HIDE;
        } else {
            shadowOAM[i + 1].attr0 = ((*currSpriteArr)[i].screenRow | ATTR0_8BPP | (((*currSpriteArr)[i].attr0_shape) << 14));
            shadowOAM[i + 1].attr1 = ((*currSpriteArr)[i].screenCol | ((*currSpriteArr)[i].attr1_size) << 14);
            shadowOAM[i + 1].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((*currSpriteArr)[i].sheetCol * 2, (*currSpriteArr)[i].sheetRow) | ATTR2_PRIORITY(2);
        }
    }

    if (phoneRinging) {
        drawRing();
    }
}

//draw protagonist
void drawProtagonist() {
    shadowOAM[0].attr0 = (protag.screenRow | ATTR0_8BPP | ATTR0_SQUARE);
    shadowOAM[0].attr1 = (protag.screenCol | ATTR1_MEDIUM | (protag.sideOrientation << 12));
    shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(protag.aniState * 8, protag.currFrame * 4) | ATTR2_PRIORITY(2);
}

//check the collision map color to see if area is valid for movement
unsigned short checkCollisionMapColor(int x, int y) {
    return ((* currCollisionMap)[OFFSET(x, y, totalMapWidth)]);
}

//check if the player has collided with a sprite on the current map
void checkSpriteCollision() {
    u16 currColor = 0;
    spriteCollisionBool = 0;
    switch (protag.aniState) {
        case PROTAGBACK:
            currColor = checkCollisionMapColor((protag.worldCol + (protag.width / 2)), protag.worldRow);
            break;
        case PROTAGFRONT:
            currColor = checkCollisionMapColor(protag.worldCol + (protag.width / 2), protag.worldRow + protag.height);
            break;
        case PROTAGSIDE:
            if (protag.sideOrientation == LEFTORIENTATION) {
                currColor = checkCollisionMapColor(protag.worldCol, protag.worldRow + (protag.height / 2));
            } else {
                currColor = checkCollisionMapColor(protag.worldCol + protag.width, protag.worldRow + (protag.height / 2));
            }
            break;
    }

    if (currColor != 0) {
        for (int i = 0; i < currSpriteArrCount; i++) {
            if ((*currSpriteArr)[i].collisionColor == currColor) {
                (*currSpriteArr)[i].hide = 0;
                spriteCollisionBool = 1;
                activeSprite = &(*currSpriteArr)[i];
            } else {
                (*currSpriteArr)[i].hide = 1;
            }
        }
    }
}

void checkMoreInfo() {
    if (spriteCollisionBool) {
        //if protagonist is in the bedroom, and the safe has not yet been opened
        if (state == BEDROOM && activeSprite == &bedroomSpritesArr[3] && !openSafeBool) {
            nextRoomBool = 2;
        } else if (activeSprite == &livingRoomSpritesArr[6]) {
            //if the protagonist is accessing the computer
            computerAccessBool = 1;
        }  else if (activeSprite == &livingRoomSpritesArr[0] && phoneRinging) {
            //if the protagonist accesses the telephone while it is ringing
            phoneRinging = 0;
            ringSettings();
            phoneAnswerBool = 1;
            REG_DISPCTL = MODE0 | BG1_ENABLE | BG0_ENABLE | SPRITE_ENABLE; 
        } else {
            //if the protagonist finds the key
            if (activeSprite == &kitchenSpritesArr[1]) {
                if (!enableKeyFind) {
                    phoneRinging = 1;
                    playSoundB(phonering_data, phonering_length, 1);
                } else {
                    if (!keyFound){
                        keyFound = 1;
                    }
                    reassignRefrigeratorMessage();
                } 
            } 
            messageActiveBool = 1;
            printText();
            REG_DISPCTL = MODE0 | BG1_ENABLE | BG0_ENABLE | SPRITE_ENABLE; 
        }
    } else {
        REG_DISPCTL = MODE0 | BG1_ENABLE | SPRITE_ENABLE; 
    }
}

void checkThreshold() {
    if (state == LIVING_ROOM) {
        if (checkCollisionMapColor(protag.worldCol, protag.worldRow)
            == MAROON_HIT) {
            nextRoomBool = 1;
        }   
    } else if (state == KITCHEN) {
        if (checkCollisionMapColor(protag.worldCol + (protag.width / 2), protag.worldRow + protag.height)
            == LIME_HIT) {
            nextRoomBool = 1;
        } else if (checkCollisionMapColor(protag.worldCol, protag.worldRow)
            == RED_HIT){
            nextRoomBool = 2;
        }
    } else if (state == BEDROOM) {
        if (checkCollisionMapColor(protag.worldCol + (protag.width / 2), protag.worldRow + protag.height)
            == ORANGE_HIT) {
            nextRoomBool = 1;
        }
    }
}

void printText() {
    clearMessage();
    int i = 0;
    int j = 418;
    while ((*(activeSprite->message))[i] != '\0') {
        
        /*
        if ((j - 444) % 32 == 0) {
            j += 6;
        }*/

        if ((j - 444) % 32 == 0) {
            if ((*(activeSprite->message))[i] != ' ') {
                int k = 0;
                while ((*(activeSprite->message))[i] != ' ') {
                    messagescreenMap[j] = messagescreenMap[748];
                    i--;
                    j--;
                    k++;
                }
                j += k + 5;
            } else {
                i++;
                j += 6;
            }
        }
        
        messagescreenMap[j] = messagescreenMap[(letterMap[((*(activeSprite->message))[i]) - 32])];
        i++;
        j++;
    }

    DMANow(3, messagescreenMap, &SCREENBLOCK[24], 1024 * 4);
}

void clearMessage() {
    for (int i = 418; i < 604; i++) {
        if ((i - 444) % 32 == 0) {
            i += 6;
        }
        messagescreenMap[i] = messagescreenMap[748];
    }
    
}

void setUpInterrupts() {
    REG_IME = 0;

    REG_INTERRUPT = interruptHandler;
    REG_DISPSTAT |= INT_VBLANK_ENABLE;
    REG_IE |= INT_DMA3 | INT_TM0 | INT_TM1 | INT_TM2 | INT_TM3 | INT_VBLANK;
    REG_IME = 1;

}

void interruptHandler() {
    REG_IME = 0;
    
    if (REG_IF & INT_TM1) {
        if (state == INTRO) {
            timerI++;
            timerJ++;
        }
    }

    if (REG_IF & INT_TM2) {
        if (state == LIVING_ROOM) {
                phoneRingSpritesArr[currRing].hide = 1;
            if (currRing < RING_SPRITECOUNT) {
                currRing++;
                phoneRingSpritesArr[currRing].hide = 0;
            } else {
                currRing = 0;
                phoneRingSpritesArr[currRing].hide = 0;
            }
        } 
    }

    if (REG_IF & INT_DMA3) {
        REG_TM0CNT |= TIMER_OFF;
        REG_TM0D = 30000;
        REG_TM0CNT |= TM_FREQ_64 | TIMER_ON;
        while (REG_TM0D < 65500);
    }

    if(REG_IF & INT_VBLANK) {
        if (soundA.isPlaying) {
            soundA.vBlankCount++;
            if (soundA.vBlankCount >= soundA.duration) {
                if (soundA.loops) {
                    playSoundA(soundA.data, soundA.length, soundA.loops);
                } else {
                    soundA.isPlaying = 0;
                    dma[1].cnt = 0;
                    REG_TM2CNT = TIMER_OFF;
                }
            }
        }

        if (soundB.isPlaying) {
            soundB.vBlankCount++;
            if (soundB.vBlankCount >= soundB.duration) {
                if (soundB.loops) {
                    playSoundB(soundB.data, soundB.length, soundB.loops);
                } else {
                    soundB.isPlaying = 0;
                    dma[2].cnt = 0;
                    REG_TM3CNT = TIMER_OFF;
                }
            }

        }
        REG_IF = INT_VBLANK;
    }
    
    REG_IF = REG_IF;

    REG_IME = 1;

}

void timerWait(int start, int frequency) {
    REG_TM0CNT = TIMER_OFF;
    REG_TM0D = start;
    
    switch (frequency) {
        case 1:
            REG_TM0CNT |= TM_FREQ_1;
            break;
        case 64:
            REG_TM0CNT |= TM_FREQ_64;
            break;
        case 256:
            REG_TM0CNT |= TM_FREQ_256;
            break;
        case 1024:
            REG_TM0CNT |= TM_FREQ_1024;
            break;
    }

    REG_TM0CNT |= TIMER_ON;
    while (REG_TM0D < 65500);
    REG_TM0CNT = TIMER_OFF;

}