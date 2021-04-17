/*  
--------------- WHAT'S GOING ON HERE? ---------------
1) WHAT IS FINISHED SO FAR?
    - The Intro is complete.
    - All rooms inside the house are complete, and all objects that are meant to be interacted with,
        can be interacted with.
    - The game logic inside the house is complete.
    - SFX of accessing the phone and the safe.
    - Safe interface.
    - Computer interface.
2) WHAT NEEDS TO BE ADDED?
    - Music.
    - The outro state animation. There isn't any actual game logic for the outro, as the player has
        effectively won after reading all the emails available on the computer (hence in this version,
        reading the emails triggers the outro placeholder).
    - Affine backgrounds (I'm bailing on that XL background I talked about in M1. Sorry.)
    - The computer access puzzle. This logic is a relatively small part of, and distinct from,
        the rest of the game, so I held off for M3.
    - A message after the safe has been successfully accessed.
    - The cheat (probably something to do with the safe).
3) ANY BUGS?
    - The email notification icon hovers on the screen after access, obscuring some text.
    - I forgot to add ':' to the font, so it appears as a blank when used in text.
    - If the game is paused while the phone is ringing, the phone doesn't stop ringing.
4) HOW TO PLAY (OR SPEEDRUN, I GUESS)
    - Approaching an object and facing it will allow you to interact with it (Press A).
        - Objects you can interact with will glow when faced.
    - Interact with the refrigerator in the kitchen. This will cause the phone to ring.
    - Answer the phone.
    - Interact with the refrigerator again. You will find the key inside.
    - Go to the bedroom. In the sitting room, on the back wall to the left, there is a secret safe.
    - Access the safe.
    - The code is 2001 (like the poster in the living room).
    - Once opened, you will have found the documents.
    - Go back to the living room and access the computer.
    - Click 'Web' on the desktop and click 'Upload Documents.'
    - X out of the web.
    - Click 'Mail' on the desktop and read through both emails by clicking the green buttons.
    - When you leave the desktop to return to the living room (Press B), the outro state is triggered. You win!

    I'm also going to note here that while you can speedrun the game following the above instructions,
    actually getting the full story of the game requires interacting with as many 'extraneous' objects
    as possible.
5) OH WOW, HOW LONG DID ALL THIS TAKE YOU?
    I don't want to talk about it.
*/
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "myLib.h"
#include "livingroomsprites.h"
#include "livingroombg.h"
#include "livingroomcollisionmap.h"
#include "game.h"
#include "livingroom.h"
#include "kitchensprites.h"
#include "kitchen.h"
#include "kitchenbg.h"
#include "bedroombg.h"
#include "bedroomsprites.h"
#include "messagescreen.h"
#include "startscreen.h"
#include "safesprites.h"
#include "safebg.h"
#include "safe.h"
#include "instructionscreen.h"
#include "outroscreen.h"
#include "pausescreen.h"
#include "winscreen.h"
#include "chapter1bg.h"
#include "chapter2bg.h"
#include "colddarkmessagebg.h"
#include "colddark.h"
#include "blackbg.h"
#include "computerscreenbg.h"
#include "computersprites.h"
#include "computer.h"
#include "bedroom.h"
#include "sound.h"
#include "introdrone.h"

//extern int mode;
int priorState; 
void initialize();

// State Prototypes
void goToStart();
void start();
void goToInstructions();
void instructions();
void goToIntro();
void intro();
void goToLivingRoom();
void livingRoom();
void goToComputer();
void computer();
void goToKitchen();
void kitchen();
void goToBedroom();
void bedroom();
void goToSafe();
void safe();
void goToOutro();
void outro();
void goToPause();
void pause();
void goToWin();
void win();



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
        case INSTRUCTIONS: 
            instructions();
            break;
        case INTRO:
            intro();
            break;
        case LIVING_ROOM:
            livingRoom();
            break;
        case COMPUTER:
            computer();
            break;
        case KITCHEN:
            kitchen();
            break;
        case BEDROOM:
            bedroom();
            break;
        case SAFE:
            safe();
            break;
        case OUTRO:
            outro();
            break;
        case PAUSE:
            pause();
            break;
        case WIN:
            win();
            break;
        }
        

        //collision map viewer
        /*
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
        } else {  */
        
        waitForVBlank();
        REG_BG1HOFF = hOff;
        REG_BG1VOFF = vOff;
        DMANow(3, shadowOAM, OAM, 512);
        
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

    DMANow(3, startscreenPal, PALETTE, 256);
    DMANow(3, startscreenTiles, &CHARBLOCK[1], startscreenTilesLen / 2);
    DMANow(3, startscreenMap, &SCREENBLOCK[20], 1024 * 4);

    REG_BG1CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(20) | BG_4BPP | BG_SIZE_SMALL | BG_PRIORITY(1);

    REG_DISPCTL = MODE0 | BG1_ENABLE | SPRITE_ENABLE; 

    initGame();
}

// Runs every frame of the start state
void start() {
    
    if (BUTTON_PRESSED(BUTTON_A)){
        goToInstructions();
    }
    
}


//sets up the instruction state
void goToInstructions() {
    priorState = state;
    state = INSTRUCTIONS;
    DMANow(3, instructionscreenPal, PALETTE, 256);
    DMANow(3, instructionscreenTiles, &CHARBLOCK[1], instructionscreenTilesLen / 2);
    DMANow(3, instructionscreenMap, &SCREENBLOCK[20], 1024 * 4);

    REG_BG1CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(20) | BG_4BPP | BG_SIZE_SMALL | BG_PRIORITY(1);
    

}

//runs every frame of the instruction state
void instructions() {
    if (BUTTON_PRESSED(BUTTON_A)) {
        switch(priorState) {
            case START:
                goToIntro();
                break;
            case LIVING_ROOM:
                goToLivingRoom();
                break;
            case KITCHEN:
                goToKitchen();
                break;
            case BEDROOM:
                goToBedroom();
                break;
        }
    }
}

//sets up the intro state
void goToIntro() {
    state = INTRO;
    initColdDark();

    DMANow(3, blackbgPal, PALETTE, 256);
    DMANow(3, blackbgTiles, &CHARBLOCK[1], blackbgTilesLen / 2);
    DMANow(3, blackbgMap, &SCREENBLOCK[20], 1024 * 4);

    DMANow(3, chapter1bgTiles, &CHARBLOCK[0], chapter1bgTilesLen / 2);
    DMANow(3, chapter1bgMap, &SCREENBLOCK[24], 1024 * 4);

    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(24) | BG_4BPP | BG_SIZE_SMALL | BG_PRIORITY(0);
    REG_BG1CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(20) | BG_4BPP | BG_SIZE_SMALL | BG_PRIORITY(1);

    REG_DISPCTL = MODE0 | BG1_ENABLE | BG0_ENABLE | SPRITE_ENABLE; 

    chapterOneIntro();
    
}

//runs every frame of the intro state
void intro() {
    updateColdDark();
    if (nextRoomBool == 1) {
        goToLivingRoom();
    }
    
    
}

//sets up the game state
void goToLivingRoom() {
    
    nextRoomBool = 0;
    priorState = state;
    state = LIVING_ROOM;
    loadLivingRoom();

    if (priorState == INTRO) {
        DMANow(3, chapter2bgTiles, &CHARBLOCK[0], chapter2bgTilesLen / 2);
        DMANow(3, chapter2bgMap, &SCREENBLOCK[24], chapter2bgMapLen / 2);
    } else {
        DMANow(3, messagescreenTiles, &CHARBLOCK[0], messagescreenTilesLen / 2);
        DMANow(3, messagescreenMap, &SCREENBLOCK[24], messagescreenMapLen / 2);
    }

    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(24) | BG_4BPP | BG_SIZE_SMALL | BG_PRIORITY(0);

    DMANow(3, livingroombgPal, PALETTE, 256);
    DMANow(3, livingroombgTiles, &CHARBLOCK[1], livingroombgTilesLen / 2);
    DMANow(3, livingroombgMap, &SCREENBLOCK[20], livingroombgMapLen / 2);

    REG_BG1CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(20) | BG_4BPP | BG_SIZE_LARGE | BG_PRIORITY(1);

    DMANow(3, livingroomspritesPal, SPRITEPALETTE, livingroomspritesPalLen / 2);
    DMANow(3, livingroomspritesTiles, &CHARBLOCK[4], livingroomspritesTilesLen / 2);

    hideSprites();

    if (priorState == INTRO) {
        REG_DISPCTL = MODE0 | BG1_ENABLE | BG0_ENABLE | SPRITE_ENABLE; 
        chapterTwoIntro();
    } else {
        REG_DISPCTL = MODE0 | BG1_ENABLE | SPRITE_ENABLE; 
    }
}

// Runs every frame of the game state
void livingRoom() {
    updateGame();
    drawGame();

    if (BUTTON_PRESSED(BUTTON_START)) {
        mode = 4;
    }

    if (nextRoomBool) {
        goToKitchen();
    }

    if (computerAccessBool) {
        goToComputer();
    }

    if (allEmailsBool) {
        goToOutro();
    }

    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToPause();
    }
}

void goToComputer() {
    nextRoomBool = 0;
    priorState = state;
    state = COMPUTER;
    loadComputer();

    DMANow(3, computerscreenbgPal, PALETTE, 256);
    DMANow(3, computerscreenbgTiles, &CHARBLOCK[1], computerscreenbgTilesLen / 2);
    DMANow(3, computerscreenbgMap, &SCREENBLOCK[20], 1024 * 4);

    REG_BG1CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(20) | BG_4BPP | BG_SIZE_SMALL | BG_PRIORITY(1);

    DMANow(3, computerspritesPal, SPRITEPALETTE, computerspritesPalLen / 2);
    DMANow(3, computerspritesTiles, &CHARBLOCK[4], computerspritesTilesLen / 2);

    REG_DISPCTL = MODE0 | BG1_ENABLE | SPRITE_ENABLE; 

    hideSprites();

}

void computer() {
    updateComputer();
    drawComputer();

    if (BUTTON_PRESSED(BUTTON_B)) {
        computerAccessBool = 0;
        goToLivingRoom();
    }
}

//sets up the kitchen state
void goToKitchen() {
    nextRoomBool = 0;
    priorState = state;
    state = KITCHEN;
    loadKitchen();
    
    DMANow(3, kitchenbgPal, PALETTE, 256);
    DMANow(3, kitchenbgTiles, &CHARBLOCK[1], kitchenbgTilesLen / 2);
    DMANow(3, kitchenbgMap, &SCREENBLOCK[20], 1024 * 4);

    REG_BG1CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(20) | BG_4BPP | BG_SIZE_SMALL | BG_PRIORITY(1);

    DMANow(3, kitchenspritesPal, SPRITEPALETTE, kitchenspritesPalLen / 2);
    DMANow(3, kitchenspritesTiles, &CHARBLOCK[4], kitchenspritesTilesLen / 2);

    hideSprites();
}

//runs every frame of the kitchen state
void kitchen() {
    updateGame();
    drawGame();

    if (nextRoomBool == 1) {
        goToLivingRoom();
    } else if (nextRoomBool == 2) {
        goToBedroom();
    }

    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToPause();
    }

    /* temporary */
    if (BUTTON_PRESSED(BUTTON_R)) {
        goToOutro();
    }
}

void goToBedroom() {
    nextRoomBool = 0;
    priorState = state;
    state = BEDROOM;
    loadBedroom();
    
    DMANow(3, bedroombgPal, PALETTE, 256);
    DMANow(3, bedroombgTiles, &CHARBLOCK[1], bedroombgTilesLen / 2);
    DMANow(3, bedroombgMap, &SCREENBLOCK[20], 1024 * 4);

    REG_BG1CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(20) | BG_4BPP | BG_SIZE_WIDE | BG_PRIORITY(1);

    DMANow(3, bedroomspritesPal, SPRITEPALETTE, bedroomspritesPalLen / 2);
    DMANow(3, bedroomspritesTiles, &CHARBLOCK[4], bedroomspritesTilesLen / 2);

    hideSprites();

}

void bedroom() {
    updateGame();
    drawGame();

    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToPause();
    }

    if (nextRoomBool == 1) {
        goToKitchen();
    } else if (nextRoomBool == 2) {
        goToSafe();
    }

}

void goToSafe() {
    priorState = state;
    state = SAFE;
    priorHoff = hOff;
    priorVoff = vOff;
    loadSafe();

    DMANow(3, safebgPal, PALETTE, 256);
    DMANow(3, safebgTiles, &CHARBLOCK[1], safebgTilesLen / 2);
    DMANow(3, safebgMap, &SCREENBLOCK[20], 1024 * 4);

    REG_BG1CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(20) | BG_4BPP | BG_SIZE_SMALL | BG_PRIORITY(1);

    DMANow(3, safespritesPal, SPRITEPALETTE, safespritesPalLen / 2);
    DMANow(3, safespritesTiles, &CHARBLOCK[4], safespritesTilesLen / 2);

    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(24) | BG_4BPP | BG_SIZE_SMALL | BG_PRIORITY(0);

    REG_DISPCTL |= MODE0 | BG1_ENABLE | SPRITE_ENABLE; 

    hideSprites();

}

void safe() {
    updateCursor();
    drawSafeSprites();
    
    if (BUTTON_PRESSED(BUTTON_B) || openSafeBool) {
        if (openSafeBool) {
            REG_DISPCTL |= BG0_ENABLE;
        } else {
            REG_DISPCTL &= ~(BG0_ENABLE);
            messageActiveBool = 0;
        }
        goToBedroom();
    }
}

//sets up the outro state
void goToOutro() {
    vOff = 0;
    hOff = 0;
    state = OUTRO;
    hideSprites();
    
    DMANow(3, outroscreenPal, PALETTE, 256);
    DMANow(3, outroscreenTiles, &CHARBLOCK[1], outroscreenTilesLen / 2);
    DMANow(3, outroscreenMap, &SCREENBLOCK[26], 1024 * 4);

    REG_BG1CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(26) | BG_4BPP | BG_SIZE_SMALL | BG_PRIORITY(1);
}

//runs every frame of the outro state
void outro() {
    if (BUTTON_PRESSED(BUTTON_A)) {
        goToWin();
    }
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToPause();
    }

}

// Sets up the pause state
void goToPause() {
    priorState = state;
    state = PAUSE;
    priorVoff = vOff;
    priorHoff = hOff;
    vOff = 0;
    hOff = 0;
    hideSprites();

    DMANow(3, pausescreenPal, PALETTE, 256);
    DMANow(3, pausescreenTiles, &CHARBLOCK[1], pausescreenTilesLen / 2);
    DMANow(3, pausescreenMap, &SCREENBLOCK[26], 1024 * 4);

    REG_BG1CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(26) | BG_4BPP | BG_SIZE_SMALL | BG_PRIORITY(1);
}

// Runs every frame of the pause state
void pause() {
    
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        switch(priorState) {
            case INTRO:
                goToIntro();
                break;
            case LIVING_ROOM:
                goToLivingRoom();
                break;
            case KITCHEN:
                goToKitchen();
                break;
            case BEDROOM:
                goToBedroom();
                break;
            case OUTRO:
                goToOutro();
                break;
        }
    }
    
   
   if (BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
    }

    if (BUTTON_PRESSED(BUTTON_B)) {
        state = priorState;
        goToInstructions();
    }
    
    
}

// Sets up the win state
void goToWin() {
    state = WIN;

    hideSprites();

    DMANow(3, winscreenPal, PALETTE, 256);
    DMANow(3, winscreenTiles, &CHARBLOCK[1], winscreenTilesLen / 2);
    DMANow(3, winscreenMap, &SCREENBLOCK[26], 1024 * 4);

    REG_BG1CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(26) | BG_4BPP | BG_SIZE_SMALL | BG_PRIORITY(1);
}

// Runs every frame of the win state
void win() {
    if (BUTTON_PRESSED(BUTTON_A)) {
        goToStart();
    }
}
