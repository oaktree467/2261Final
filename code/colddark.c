#include "colddark.h"
#include "blackbg.h"
#include "myLib.h"
#include "game.h"
#include "colddarkmessagebg.h"
#include "text.h"

int intervals[] = {418, 482, 546};
unsigned short messageUnedited[255];
int cursor;
int coldMessageBool;
int timerI;
int timerJ;
int stage; //what stage the text is in (interactive or not)
int nonInteractText; //if the text is non-interactive, which text is it?

char (* activeMessage)[];
char sniff[] = "It only smells...         well, cold.";
char moveForward[] = "You can't move your arms, or your legs. Everything  feels rigid.";
char blink[] = "You can't blink. You can'teven tell if your eyes areopen or closed.";

//check if all options have been selected
int blinkBool;
int moveForwardBool;
int sniffBool;

//initialize state settings
void initColdDark() {

    cursor = 0;
    coldMessageBool = 0;
    blinkBool = 0;
    moveForwardBool = 0;
    sniffBool = 0;
    stage = 0;
    nonInteractText = 0;

    for (int i = 0; i < 255; i++) {
        messageUnedited[i] = colddarkmessagebgMap[384 + i];
    }
    
}

//CHAPTER 1: THE COLD DARK
void chapterOneIntro() {
    for (int i = 0; i < 600; i++) {
        blackbgMap[i] = blackbgMap[642];
        if (i % 32 == 0) {
            DMANow(3, blackbgMap, &SCREENBLOCK[20], ((1 << 30) | (1024 * 4)));
        }
    }

    timerWait(20000, 64);

    for (int i = 0; i < 600; i++) {
        blackbgMap[i] = blackbgMap[706];
        if (i % 32 == 0) {
            DMANow(3, blackbgMap, &SCREENBLOCK[20], ((1 << 30) | (1024 * 4)));
        }
    }

    //switch BG0 to message box
    DMANow(3, colddarkmessagebgTiles, &CHARBLOCK[0], colddarkmessagebgTilesLen / 2);
    DMANow(3, colddarkmessagebgMap, &SCREENBLOCK[24], ((0 << 30) | (1024 * 4)));
    messagesNonInteractive();

}

void updateColdDark() {
    if (stage != 1) {
        if (BUTTON_PRESSED(BUTTON_A)) {
            nonInteractText++;
            messagesNonInteractive();
        }
    } else {
        if (BUTTON_PRESSED(BUTTON_DOWN)) {
            cursor = (cursor + 1) % 3;
            updateHighlight();
        }

        if (BUTTON_PRESSED(BUTTON_UP)) {
            if (cursor == 0) {
                cursor = 2;
            } else {
                cursor--;
            }
            updateHighlight();
        }

        if (BUTTON_PRESSED(BUTTON_A)) {
            if (blinkBool && moveForwardBool && sniffBool) {
                nonInteractText = 5;
                stage = 2;
                messagesNonInteractive();
            } else if (!coldMessageBool) {
                loadColdMessage();
            } else {
                loadMessageUnedited();
            }   
        }
    }
}

void updateHighlight() {
    for (int i = 0; i < 14; i++) {
        for (int j = 0; j < 6; j++){
            if (((418 + (j * 32) + i) >= intervals[cursor]) 
            && ((418 + (j * 32) + i) <= (intervals[cursor] + 45))) {
                blackbgMap[418 + (j * 32) + i] = blackbgMap[Y_HIGHLIGHT];
            } else {
                blackbgMap[418 + (j * 32) + i] = blackbgMap[B_HIGHLIGHT];
            }
        }
    }

    DMANow(3, blackbgMap, &SCREENBLOCK[20], ((0 << 30) | (1024 * 4)));

}

void messagesNonInteractive() {
    char cd_m0[] = "Oh, Lord...";
    char cd_m1[] = "It's cold. Dark. You can'tmove or see a thing.";
    char cd_m2[] = "Usually during an attack, you can at least see...";
    char cd_m3[] = "Are you...? No. No, you   can't be. Let's not think about that. There must be a way out.";
    char cd_m4[] = "Okay, calm down. You've   been taking preventative  measures against this     outcome for months.";
    char cd_m5[] = "Maybe you should just try to remember how you got   here, and then you can getout...";

    clearBoard();
    //DMA in the clear board
    DMANow(3, colddarkmessagebgMap, &SCREENBLOCK[24], 1024 * 4);

    switch (nonInteractText) {
        case 0:
            activeMessage = &cd_m0;
            printColdText();
            break;
        case 1:
            activeMessage = &cd_m1;
            printColdText();
            break;
        case 2:
            activeMessage = &cd_m2;
            printColdText();
            break;
        case 3:
            activeMessage = &cd_m3;
            printColdText();
            break;
        case 4:
            updateHighlight();
            loadMessageUnedited();
            stage = 1;
            break;
        case 5:
            activeMessage = &cd_m4;
            printColdText();
            break;
        case 6:
            activeMessage = &cd_m5;
            printColdText();
            break;
        case 7:
            chapterOneOutro();
            break;
    }
}

void loadColdMessage() {
    coldMessageBool = 1;
    
    clearBoard();
    //DMA in the clear board
    DMANow(3, colddarkmessagebgMap, &SCREENBLOCK[24], 1024 * 4);

    //determine cursor position
    switch (cursor) {
        case 0:
            activeMessage = &sniff;
            sniffBool = 1;
            break;
        case 1:
            activeMessage = &moveForward;
            moveForwardBool = 1;
            break;
        case 2:
            activeMessage = &blink;
            blinkBool = 1;
            break;
    }
    //now print the text
    printColdText();
}

void clearBoard() {
    //clear board
    for (int i = 0; i < 26; i++) {
        for (int j = 0; j < 6; j++) {
            colddarkmessagebgMap[418 + i + (j * 32)] = colddarkmessagebgMap[748];
        }
    }
}


//reset the message bg
void loadMessageUnedited() {
    for (int i = 0; i < 255; i++) {
        colddarkmessagebgMap[384 + i] = messageUnedited[i];
    }
    DMANow(3, colddarkmessagebgMap, &SCREENBLOCK[24], 1024 * 4);
    coldMessageBool = 0;
}


//print the selected text
void printColdText() {
    REG_TM1CNT |= TIMER_OFF;
    REG_TM1CNT = TM_FREQ_64;
    REG_TM1D = 65536 - 11000;
    REG_TM1CNT |= TM_IRQ | TIMER_ON;
    timerI = 0;
    timerJ = 418;
    while ((*activeMessage)[timerI] != '\0') {
        
        if ((timerJ - 444) % 32 == 0) {
            timerJ += 6;
        }
        
        colddarkmessagebgMap[timerJ] = colddarkmessagebgMap[(letterMap[((*activeMessage)[timerI]) - 32])];

        DMANow(3, colddarkmessagebgMap, &SCREENBLOCK[24], 1024 * 4);
        
    }
    REG_TM1CNT |= TIMER_OFF;

}

void chapterOneOutro() {

    for (int i = 0; i < 700; i++) {
        blackbgMap[i] = blackbgMap[706];
        if (i % 32 == 0) {
            DMANow(3, blackbgMap, &SCREENBLOCK[20], (1024 * 4));
        }
    }

    for (int i = 0; i < 700; i++) {
        colddarkmessagebgMap[i] = colddarkmessagebgMap[0];
        if (i % 32 == 0) {
            DMANow(3, colddarkmessagebgMap, &SCREENBLOCK[24], ((1 << 30) | (1024 * 4)));
        }
    }

    timerWait(20000, 1024);

    nextRoomBool = 1;
}


