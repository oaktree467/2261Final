#include "game.h"
#include "myLib.h"
#include "messagescreen.h"
#include "safe.h"
#include "text.h"

STATIONARYSPRITE safeSpritesArr[SAFE_SPRITECOUNT];
STATIONARYSPRITE * upArrows[4];
STATIONARYSPRITE * downArrows[4];
STATIONARYSPRITE * codeNumbers[4];
STATIONARYSPRITE * middleHighlight[5];
int cursor;
int answerCode[4] = {2, 0, 0, 1};
int enteredCode[4] = {0, 0, 0, 0};
char sm_1[] = "Your secret safe. It lookslike you need your key anda code." ;
char openSafeBool;
char introMessageBool;
extern char keyFound;

//load bedroom attributes
void loadSafe() {
    hOff = 0;
    vOff = 0;
    cursor = 0;
    openSafeBool = 0;
    if (!keyFound) {
        safeText();
        REG_DISPCTL |= BG0_ENABLE;
        introMessageBool = 0;
    } else {
        introMessageBool = 1;
    }

    initSafeSprites();
}


void initSafeSprites() {
    //numbers
    for (int i = 0; i < 4; i++) {
        safeSpritesArr[i].sheetCol = 0;
        safeSpritesArr[i].sheetRow = 0;
        safeSpritesArr[i].attr0_shape = SQUARESPRITE;
        safeSpritesArr[i].attr1_size = SMALLSPRITE;
        safeSpritesArr[i].worldCol = 48 + (24 * i);
        safeSpritesArr[i].worldRow = 72;
        safeSpritesArr[i].hide = 0;
        safeSpritesArr[i].screenCol = safeSpritesArr[i].worldCol;
        safeSpritesArr[i].screenRow = safeSpritesArr[i].worldRow;
        codeNumbers[i] = &safeSpritesArr[i];
    }

    //number highlights
    for (int i = 4; i < 8; i++) {
        safeSpritesArr[i].sheetCol = 8;
        safeSpritesArr[i].sheetRow = 0;
        safeSpritesArr[i].attr0_shape = TALLSPRITE;
        safeSpritesArr[i].attr1_size = LARGESPRITE;
        safeSpritesArr[i].worldCol = 47 + (24 * (i - 4));
        safeSpritesArr[i].worldRow = 63;
        safeSpritesArr[i].hide = 1;
        safeSpritesArr[i].screenCol = safeSpritesArr[i].worldCol;
        safeSpritesArr[i].screenRow = safeSpritesArr[i].worldRow;
        middleHighlight[i - 4] = &safeSpritesArr[i];
    }
    safeSpritesArr[4].hide = 0;

    //upper arrows
    for (int i = 8; i < 12; i++) {
        safeSpritesArr[i].sheetCol = 4;
        safeSpritesArr[i].sheetRow = 0;
        safeSpritesArr[i].attr0_shape = WIDESPRITE;
        safeSpritesArr[i].attr1_size = TINYSPRITE;
        safeSpritesArr[i].worldCol = 48 + (24 * (i - 8));
        safeSpritesArr[i].worldRow = 53;
        safeSpritesArr[i].hide = 1;
        safeSpritesArr[i].screenCol = safeSpritesArr[i].worldCol;
        safeSpritesArr[i].screenRow = safeSpritesArr[i].worldRow;
        upArrows[i - 8] = &safeSpritesArr[i];
    }

    //lower arrows
    for (int i = 12; i < 16; i++) {
        safeSpritesArr[i].sheetCol = 4;
        safeSpritesArr[i].sheetRow = 1;
        safeSpritesArr[i].attr0_shape = WIDESPRITE;
        safeSpritesArr[i].attr1_size = TINYSPRITE;
        safeSpritesArr[i].worldCol = 48 + (24 * (i - 12));
        safeSpritesArr[i].worldRow = 99;
        safeSpritesArr[i].hide = 1;
        safeSpritesArr[i].screenCol = safeSpritesArr[i].worldCol;
        safeSpritesArr[i].screenRow = safeSpritesArr[i].worldRow;
        downArrows[i - 12] = &safeSpritesArr[i];
    }

    //handle
    safeSpritesArr[16].sheetCol = 4;
    safeSpritesArr[16].sheetRow = 8;
    safeSpritesArr[16].attr0_shape = TALLSPRITE;
    safeSpritesArr[16].attr1_size = LARGESPRITE;
    safeSpritesArr[16].worldCol = 150;
    safeSpritesArr[16].worldRow = 60;
    safeSpritesArr[16].hide = 0;
    safeSpritesArr[16].screenCol = safeSpritesArr[16].worldCol;
    safeSpritesArr[16].screenRow = safeSpritesArr[16].worldRow;

    //handle glow
    safeSpritesArr[17].sheetCol = 12;
    safeSpritesArr[17].sheetRow = 0;
    safeSpritesArr[17].attr0_shape = TALLSPRITE;
    safeSpritesArr[17].attr1_size = LARGESPRITE;
    safeSpritesArr[17].worldCol = 150;
    safeSpritesArr[17].worldRow = 60;
    safeSpritesArr[17].hide = 1;
    safeSpritesArr[17].screenCol = safeSpritesArr[17].worldCol;
    safeSpritesArr[17].screenRow = safeSpritesArr[17].worldRow;
    middleHighlight[4] = &safeSpritesArr[17];
    
    //key
    safeSpritesArr[18].sheetCol = 4;
    safeSpritesArr[18].sheetRow = 4;
    safeSpritesArr[18].attr0_shape = SQUARESPRITE;
    safeSpritesArr[18].attr1_size = MEDIUMSPRITE;
    safeSpritesArr[18].worldCol = 199;
    safeSpritesArr[18].worldRow = 32;
    safeSpritesArr[18].hide = !(keyFound);
    safeSpritesArr[18].screenCol = safeSpritesArr[18].worldCol;
    safeSpritesArr[18].screenRow = safeSpritesArr[18].worldRow;
}

void drawSafeSprites() {
    for (int i = 0; i < SAFE_SPRITECOUNT; i++) {
        if (safeSpritesArr[i].hide == 1) {
            shadowOAM[i].attr0 = ATTR0_HIDE;
        } else {
            shadowOAM[i].attr0 = (safeSpritesArr[i].screenRow | ATTR0_8BPP | ((safeSpritesArr[i].attr0_shape) << 14));
            shadowOAM[i].attr1 = (safeSpritesArr[i].screenCol | (safeSpritesArr[i].attr1_size) << 14);
            shadowOAM[i].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(safeSpritesArr[i].sheetCol * 2, safeSpritesArr[i].sheetRow) | ATTR2_PRIORITY(2);
        }
    }
}

void updateCursor() {
    if (!introMessageBool) {
        if (BUTTON_PRESSED(BUTTON_A)) {
            introMessageBool = 1;
            REG_DISPCTL = MODE0 | BG1_ENABLE | SPRITE_ENABLE; 
        }
    } else {
        if (BUTTON_PRESSED(BUTTON_RIGHT)) {
            middleHighlight[cursor]->hide = 1;
            cursor = (cursor + 1) % 5;
            middleHighlight[cursor]->hide = 0;
        }

        if (BUTTON_PRESSED(BUTTON_LEFT)) {
            middleHighlight[cursor]->hide = 1;
            if (cursor == 0) {
                cursor = 4;
            } else {
                cursor--;
            }
            middleHighlight[cursor]->hide = 0;
        }

        if (BUTTON_PRESSED(BUTTON_UP)) {
            if (cursor < 4) {
                upArrows[cursor]->hide = 0;
                codeNumbers[cursor]->sheetRow = (codeNumbers[cursor]->sheetRow + 2) % 20;
                enteredCode[cursor] = (codeNumbers[cursor]->sheetRow / 2);
            }
        } else {
            upArrows[cursor]->hide = 1;
        }

        if (BUTTON_PRESSED(BUTTON_DOWN)) {
            if (cursor < 4) {
                downArrows[cursor]->hide = 0;
                if (codeNumbers[cursor]->sheetRow == 0) {
                    codeNumbers[cursor]->sheetRow = 18;
                } else {
                    codeNumbers[cursor]->sheetRow -= 2;
                }
                enteredCode[cursor] = (codeNumbers[cursor]->sheetRow / 2);
            }
        } else {
            downArrows[cursor]->hide = 1;
        }

        if (BUTTON_PRESSED(BUTTON_A) && cursor == 4) {
            if (checkCode() && keyFound) {
                openSafeBool = 1;
            } else {
                for (int i = 0; i < 4; i++) {
                    codeNumbers[i]->sheetRow = 0;
                    enteredCode[i] = 0;
                }
                middleHighlight[4]->hide = 1;
                cursor = 0;
                middleHighlight[0]->hide = 0;
            }
        }
    }

}

int checkCode() {
    for (int i = 0; i < 4; i++) {
        if (enteredCode[i] != answerCode[i]) {
            return 0;
        }
    }
    return 1;
}

void safeText() {
    clearSafeMessage();
    int i = 0;
    int j = 418;
    while (sm_1[i] != '\0') {
        
        if ((j - 444) % 32 == 0) {
            j += 6;
        }
        
        messagescreenMap[j] = messagescreenMap[(letterMap[((sm_1[i]) - 32)])];
        i++;
        j++;
    }

    DMANow(3, messagescreenMap, &SCREENBLOCK[24], 1024 * 4);
}

void clearSafeMessage() {
    for (int i = 418; i < 604; i++) {
        if ((i - 444) % 32 == 0) {
            i += 6;
        }
        messagescreenMap[i] = messagescreenMap[748];
    }
    
}
