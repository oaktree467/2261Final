#include "myLib.h"
#include "livingroomsprites.h"
#include "livingroomcollisionmap.h"
#include "game.h"
#include "livingroom.h"
#include "kitchen.h"
#include "kitchencollision.h"
#include "kitchenbg.h"


//global variables
PROTAGSPRITE protag;
STATIONARYSPRITE(* currSpriteArr)[];
int currSpriteArrCount;
const unsigned short (* currCollisionMap)[];
int spriteCollisionBool;

unsigned short hOff;
unsigned short vOff;
int mapWidth;
int mapHeight;

int mode;

void initGame(){
    spriteCollisionBool = 0;

    initProtagonist();
}

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
    updateProtagonist();
    updateSprites();
    checkSpriteCollision();
}

void drawGame() {
    drawProtagonist();
    drawSprites();
}

void updateProtagonist() {
    if (protag.aniState != PROTAGIDLE) {
        protag.prevAniState = protag.aniState;
        protag.aniState = PROTAGIDLE;
    }
    if (protag.aniCounter % 10 == 0) {
        protag.currFrame = ((protag.currFrame + 1) % protag.totalFrames);
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

void updateSprites() {
    for (int i = 0; i < currSpriteArrCount; i++) {
        (*currSpriteArr)[i].screenCol = (*currSpriteArr)[i].worldCol - hOff;
        (*currSpriteArr)[i].screenRow = (*currSpriteArr)[i].worldRow - vOff;
    }
}

void drawSprites() {
    for (int i = 0; i < currSpriteArrCount; i++) {
        if ((*currSpriteArr)[i].hide == 1) {
            shadowOAM[i + 1].attr0 = ATTR0_HIDE;
        } else {
            shadowOAM[i + 1].attr0 = ((*currSpriteArr)[i].screenRow | ATTR0_8BPP | (((*currSpriteArr)[i].attr0_shape) << 14));
            shadowOAM[i + 1].attr1 = ((*currSpriteArr)[i].screenCol | ((*currSpriteArr)[i].attr1_size) << 14);
            shadowOAM[i + 1].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((*currSpriteArr)[i].sheetCol * 2, (*currSpriteArr)[i].sheetRow);
        }
    }
}

void drawProtagonist() {
    shadowOAM[0].attr0 = (protag.screenRow | ATTR0_8BPP | ATTR0_SQUARE);
    shadowOAM[0].attr1 = (protag.screenCol | ATTR1_MEDIUM | (protag.sideOrientation << 12));
    shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(protag.aniState * 8, protag.currFrame * 4);
}

unsigned short checkCollisionMapColor(int x, int y) {
    return ((* currCollisionMap)[OFFSET(x, y, mapWidth)]);
}

void loadLivingRoom() {
    hOff = 0;
    vOff = 100;
    mapWidth = 512;
    mapHeight = 478;
    protag.worldRow = 170;
    protag.worldCol = 0;

    initLivingRoomSprites();
    currSpriteArrCount = LR_SPRITECOUNT;
    currSpriteArr = &livingRoomSpritesArr;
    currCollisionMap = &livingroomcollisionmapBitmap;

}

void loadKitchen() {
    protag.worldRow = 120;
    protag.worldCol = 30;
    mapWidth = 256;
    mapHeight = 160;
    hOff = 0;
    vOff = 0;

    initKitchenSprites();
    currSpriteArrCount = KITCHEN_SPRITECOUNT;
    currSpriteArr = &kitchenSpritesArr;
    currCollisionMap = &kitchencollisionBitmap;
}

void checkSpriteCollision() {
    if (spriteCollisionBool) {
        
    } else {

    }
}