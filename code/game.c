#include "myLib.h"
#include "livingroomsprites.h"
#include "livingroomcollisionmap.h"
#include "game.h"
#include "livingroom.h"
#include "kitchen.h"
#include "kitchencollision.h"
#include "kitchenbg.h"
#include "messagescreen.h"
#include "text.h"


//global variables
PROTAGSPRITE protag;
STATIONARYSPRITE(* currSpriteArr)[];
int currSpriteArrCount;
STATIONARYSPRITE *activeSprite;
const unsigned short (* currCollisionMap)[];
int spriteCollisionBool;
int messageActiveBool;
int nextRoomBool;
char keyFound;

unsigned short priorHoff;
unsigned short priorVoff;
unsigned short hOff;
unsigned short vOff;
int mapWidth;
int mapHeight;


//int mode;

//initialize game
void initGame(){
    spriteCollisionBool = 0;
    messageActiveBool = 0;
    nextRoomBool = 0;
    initProtagonist();
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
    checkDoorway();
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

    if (messageActiveBool) {
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
                && ((checkCollisionMapColor(protag.worldCol + protag.width, protag.worldRow + protag.height - 1) != 0))) {
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
                
                
                if (((vOff + 1) < (mapHeight - SCREENHEIGHT)) && (protag.screenRow >= (SCREENHEIGHT / 2))) {
                    vOff++;
                }  
                
            }
            protag.aniState = PROTAGFRONT;
        }

        if (BUTTON_HELD(BUTTON_RIGHT)) {
            if ((checkCollisionMapColor(protag.worldCol + protag.width + 1, protag.worldRow) != 0)
                && ((checkCollisionMapColor(protag.worldCol + protag.width + 1, protag.worldRow + protag.height) != 0))) {
                protag.worldCol++;
                
                if (((hOff + 1) < (mapWidth - SCREENWIDTH)) && protag.screenCol >= (SCREENWIDTH / 2)) {
                    hOff++;
                }
                
            }
            protag.aniState = PROTAGSIDE;

        }

        if (protag.aniState != PROTAGIDLE) {
            protag.sideOrientation = RIGHTORIENTATION;
        }

        if (BUTTON_HELD(BUTTON_LEFT)) {
            if ((checkCollisionMapColor(protag.worldCol - 1, protag.worldRow) != 0)
                && ((checkCollisionMapColor(protag.worldCol - 1, protag.worldRow + protag.height) != 0))) {
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

    /*
    if (BUTTON_PRESSED(BUTTON_START)) {
        mode = 4;
    } */
}



//update sprite columns
void updateSprites() {
    for (int i = 0; i < currSpriteArrCount; i++) {
        (*currSpriteArr)[i].screenCol = (*currSpriteArr)[i].worldCol - hOff;
        (*currSpriteArr)[i].screenRow = (*currSpriteArr)[i].worldRow - vOff;
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
}

//draw protagonist
void drawProtagonist() {
    shadowOAM[0].attr0 = (protag.screenRow | ATTR0_8BPP | ATTR0_SQUARE);
    shadowOAM[0].attr1 = (protag.screenCol | ATTR1_MEDIUM | (protag.sideOrientation << 12));
    shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(protag.aniState * 8, protag.currFrame * 4) | ATTR2_PRIORITY(2);
}

//check the collision map color to see if area is valid for movement
unsigned short checkCollisionMapColor(int x, int y) {
    return ((* currCollisionMap)[OFFSET(x, y, mapWidth)]);
}

//load living room attributes
void loadLivingRoom() {
    if (priorState != PAUSE) {
        protag.worldRow = 365;
        protag.worldCol = 412;
        protag.aniState = PROTAGFRONT;
        
        hOff = 272;
        vOff = 300;

    } else {
        hOff = priorHoff;
        vOff = priorVoff;
    }

    mapWidth = 512;
    mapHeight = 478;

    initLivingRoomSprites();
    currSpriteArrCount = LR_SPRITECOUNT;
    currSpriteArr = &livingRoomSpritesArr;
    currCollisionMap = &livingroomcollisionmapBitmap;

}

//load kitchen attributes
void loadKitchen() {
    if (priorState != PAUSE) {
        protag.worldRow = 120;
        protag.worldCol = 30;
        protag.aniState = PROTAGFRONT;
        hOff = 0;
        vOff = 0;
    } else {
        hOff = priorHoff;
        vOff = priorVoff;
    }

    mapWidth = 256;
    mapHeight = 160;

    initKitchenSprites();
    currSpriteArrCount = KITCHEN_SPRITECOUNT;
    currSpriteArr = &kitchenSpritesArr;
    currCollisionMap = &kitchencollisionBitmap;
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
        messageActiveBool = 1;
        printText();
        REG_DISPCTL = MODE0 | BG1_ENABLE | BG0_ENABLE | SPRITE_ENABLE; 
    } else {
        REG_DISPCTL = MODE0 | BG1_ENABLE | SPRITE_ENABLE; 
    }
}

void checkDoorway() {
    if (state == LIVING_ROOM) {
        if (checkCollisionMapColor(protag.worldCol, protag.worldRow)
            == MAROON_HIT) {
            nextRoomBool = 1;
        }   
    } else if (state == KITCHEN) {
        if (checkCollisionMapColor(protag.worldCol + (protag.width / 2), protag.worldRow + protag.height)
            == LIME_HIT) {
            nextRoomBool = 1;
        } 
    }
}

void printText() {
    clearMessage();
    int i = 0;
    int j = 450;
    while ((*(activeSprite->message))[i] != '\0') {
        
        if ((j - 477) % 32 == 0) {
            j += 5;
        }
        
        messagescreenMap[j] = *(letterMap[((*(activeSprite->message))[i]) - 32]);
        i++;
        j++;
    }

    DMANow(3, messagescreenMap, &SCREENBLOCK[24], 1024 * 4);
}

void clearMessage() {
    for (int i = 450; i < 604; i++) {
        if ((i - 477) % 32 == 0) {
            i += 5;
        }
        messagescreenMap[i] = messagescreenMap[748];
    }
    
}