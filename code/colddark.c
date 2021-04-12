#include "colddark.h"
#include "blackbg.h"
#include "myLib.h"
#include "colddarkmessagebg.h"
#include "text.h"

int intervals[] = {418, 482, 546};
unsigned short messageUnedited[255];
int cursor;
int coldMessageBool;
char (* activeMessage)[];
char sniff[] = "It only smells...         well, cold.";
char moveForward[] = "You can't move your arms, or your legs. Everything  feels rigid.";
char blink[] = "You can't blink. You can'teven tell if your eyes areopen or closed.";
int timerI;
int timerJ;

int blinkBool;
int moveForwardBool;
int sniffBool;

void initColdDark() {
    cursor = 0;
    coldMessageBool = 0;
    blinkBool = 0;
    moveForwardBool = 0;
    sniffBool = 0;

    for (int i = 0; i < 255; i++) {
        messageUnedited[i] = colddarkmessagebgMap[384 + i];
    }
    
}

void chapterIntro() {
    setUpColdDarkInterrupts();

    for (int i = 0; i < 600; i++) {
        blackbgMap[i] = blackbgMap[642];
        if (i % 32 == 0) {
            DMANow(3, blackbgMap, &SCREENBLOCK[20], ((1 << 30) | (1024 * 4)));
        }
    }

    REG_TM0CNT |= TIMER_OFF;
    REG_TM0D = 20000;
    REG_TM0CNT |= TM_FREQ_64 | TIMER_ON;
    while (REG_TM0D < 65500);
    REG_TM0CNT = TIMER_OFF;

    for (int i = 0; i < 600; i++) {
        blackbgMap[i] = blackbgMap[706];
        if (i % 32 == 0) {
            DMANow(3, blackbgMap, &SCREENBLOCK[20], ((1 << 30) | (1024 * 4)));
        }
    }

    DMANow(3, colddarkmessagebgTiles, &CHARBLOCK[0], colddarkmessagebgTilesLen / 2);
    DMANow(3, colddarkmessagebgMap, &SCREENBLOCK[24], ((0 << 30) | (1024 * 4)));
    updateHighlight();

}

void introMessage() {
    char intro_m1 = "Where... where am I?";
    
}


void updateColdDark() {
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
        if (!coldMessageBool) {
            loadColdMessage();
        } else {
            loadMessageUnedited();
        }
    }

    if (blinkBool && moveForwardBool && sniffBool) {
        nextRoomBool = 1;
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

void loadColdMessage() {
    coldMessageBool = 1;
    //clear board
    for (int i = 0; i < 25; i++) {
        for (int j = 0; j < 6; j++) {
            colddarkmessagebgMap[418 + i + (j * 32)] = colddarkmessagebgMap[748];
        }
    }
    DMANow(3, colddarkmessagebgMap, &SCREENBLOCK[24], 1024 * 4);

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
    printColdText();
}

void loadMessageUnedited() {
    for (int i = 0; i < 255; i++) {
        colddarkmessagebgMap[384 + i] = messageUnedited[i];
    }
    DMANow(3, colddarkmessagebgMap, &SCREENBLOCK[24], 1024 * 4);
    coldMessageBool = 0;
}

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


void setUpColdDarkInterrupts() {
    REG_IME = 0;

    REG_INTERRUPT = coldDarkInterruptHandler;

    REG_IE |= INT_DMA3 | INT_TM1;
    REG_IME = 1;
}

void coldDarkInterruptHandler() {
    REG_IME = 0;
    
    if (REG_IF & INT_DMA3) {
        REG_TM0CNT |= TIMER_OFF;
        REG_TM0D = 30000;
        REG_TM0CNT |= TM_FREQ_64 | TIMER_ON;
        while (REG_TM0D < 65500);
    }
    
    if (REG_IF & INT_TM1) {
        timerI++;
        timerJ++;
    }
    
    REG_IF = REG_IF;

    REG_IME = 1;
}
