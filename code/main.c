#include <stdlib.h>
#include <stdio.h>
#include "myLib.h"
#include "livingroomsprites.h"
#include "livingroombg.h"
#include "livingroomcollisionmap.h"
#include "game.h"
#include "kitchensprites.h"
#include "kitchen.h"
#include "kitchenbg.h"

extern int mode;
// Prototypes
void initialize();

// State Prototypes
void goToStart();
void start();
void goToLivingRoom();
void livingRoom();
void goToKitchen();
void kitchen();
void goToPause();
void pause();
void goToWin();
void win();
void goToLose();
void lose();

// States
enum
{
    START,
    LIVING_ROOM,
    KITCHEN,
    PAUSE,
    WIN,
    LOSE
};
int state;

// Button Variables
unsigned short buttons;
unsigned short oldButtons;

// Shadow OAM
OBJ_ATTR shadowOAM[128];


int main() {
    initialize();

    while (1) {
        // Update button variables
        oldButtons = buttons;
        buttons = BUTTONS;

        // State Machine
        switch (state)
        {
        case START:
            start();
            break;
        case LIVING_ROOM:
            livingRoom();
            break;
        case KITCHEN:
            kitchen();
            break;
        case PAUSE:
            pause();
            break;
        case WIN:
            win();
            break;
        case LOSE:
            lose();
            break;
        }

        if (mode == 4) {
            REG_DISPCTL = MODE4 | BG2_ENABLE | DISP_BACKBUFFER;
            for (int i = 0; i < 240; i++) {
                for (int j = 0; j < 160; j++) {
                    if (checkCollisionMapColor(i + hOff, j + vOff) == 0) {
                        setPixel4(i, j, 0);
                    } else if (checkCollisionMapColor(i + hOff, j + vOff) == 0x07FFF) {
                        setPixel4(i, j, 1);
                    } else if (checkCollisionMapColor(i + hOff, j + vOff) == 0x7F60) {
                        setPixel4(i, j, 2);
                    } else {
                        setPixel4(i, j, 3);
                    }
                }
            } 
            waitForVBlank();
            flipPage();
        } else {
            waitForVBlank();
            REG_BG1HOFF = hOff;
            REG_BG1VOFF = vOff;
            DMANow(3, shadowOAM, OAM, 512);
        }

    }
}

// Sets up GBA
void initialize()
{
    
    REG_DISPCTL = MODE0 | BG1_ENABLE | SPRITE_ENABLE; 
    buttons = BUTTONS;
    oldButtons = 0;

    goToStart();
}

// Sets up the start state
void goToStart() {
    state = START;
    initGame();
}

// Runs every frame of the start state
void start() {
    goToKitchen();
}

// Sets up the game state
void goToLivingRoom() {
    state = LIVING_ROOM;
    loadLivingRoom();

    DMANow(3, livingroombgPal, PALETTE, 256);
    DMANow(3, livingroombgTiles, &CHARBLOCK[0], livingroombgTilesLen / 2);
    DMANow(3, livingroombgMap, &SCREENBLOCK[28], 1024 * 4);

    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_4BPP | BG_SIZE_LARGE;

    DMANow(3, livingroomspritesPal, SPRITEPALETTE, livingroomspritesPalLen / 2);
    DMANow(3, livingroomspritesTiles, &CHARBLOCK[4], livingroomspritesTilesLen / 2);

    hideSprites();
}

// Runs every frame of the game state
void livingRoom() {
    updateGame();
    checkLivingRoomCollide();
    drawGame();
}

void goToKitchen() {
    state = KITCHEN;
    loadKitchen();

    DMANow(3, kitchenbgPal, PALETTE, 256);
    DMANow(3, kitchenbgTiles, &CHARBLOCK[0], kitchenbgTilesLen / 2);
    DMANow(3, kitchenbgMap, &SCREENBLOCK[28], 1024 * 4);

    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_4BPP | BG_SIZE_SMALL;

    DMANow(3, kitchenspritesPal, SPRITEPALETTE, kitchenspritesPalLen / 2);
    DMANow(3, kitchenspritesTiles, &CHARBLOCK[4], kitchenspritesTilesLen / 2);

    hideSprites();
}

void kitchen() {
    updateGame();
    checkKitchenCollide();
    drawGame();
}

// Sets up the pause state
void goToPause() {}

// Runs every frame of the pause state
void pause() {}

// Sets up the win state
void goToWin() {}

// Runs every frame of the win state
void win() {}

// Sets up the lose state
void goToLose() {}

// Runs every frame of the lose state
void lose() {}
