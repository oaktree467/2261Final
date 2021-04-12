# 1 "colddark.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "colddark.c"
# 1 "colddark.h" 1



extern int intervals[];
extern char (* activeMessage)[];
extern int nextRoomBool;

void initColdDark();
void introMessage();
void chapterIntro();
void updateHighlight();
void updateColdDark();
void loadColdMessage();
void loadMessageUnedited();
void printColdText();
void coldDarkInterruptHandler();
void setUpColdDarkInterrupts();
void timerWait(int start, int freq);
# 2 "colddark.c" 2
# 1 "blackbg.h" 1
# 22 "blackbg.h"
extern const unsigned short blackbgTiles[48];


extern unsigned short blackbgMap[1024];


extern const unsigned short blackbgPal[256];
# 3 "colddark.c" 2
# 1 "myLib.h" 1




typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
# 65 "myLib.h"
extern volatile unsigned short *videoBuffer;
# 86 "myLib.h"
typedef struct {
 u16 tileimg[8192];
} charblock;


typedef struct {
 u16 tilemap[1024];
} screenblock;



void setPixel3(int col, int row, unsigned short color);
void drawRect3(int col, int row, int width, int height, volatile unsigned short color);
void fillScreen3(volatile unsigned short color);
void drawImage3(int col, int row, int width, int height, const unsigned short *image);
void drawFullscreenImage3(const unsigned short *image);


void setPixel4(int col, int row, unsigned char colorIndex);
void drawRect4(int col, int row, int width, int height, volatile unsigned char colorIndex);
void fillScreen4(volatile unsigned char colorIndex);
void drawImage4(int col, int row, int width, int height, const unsigned short *image);
void drawFullscreenImage4(const unsigned short *image);


void waitForVBlank();
void flipPage();





typedef struct {
    unsigned short attr0;
    unsigned short attr1;
    unsigned short attr2;
    unsigned short fill;
} OBJ_ATTR;



extern OBJ_ATTR shadowOAM[];
# 158 "myLib.h"
void hideSprites();






typedef struct {
    int worldRow;
    int worldCol;
    int rdel;
    int cdel;
    int width;
    int height;
    int aniCounter;
    int aniState;
    int prevAniState;
    int curFrame;
    int numFrames;
    int hide;
} ANISPRITE;
# 199 "myLib.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
# 210 "myLib.h"
typedef volatile struct {
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;


extern DMA *dma;
# 250 "myLib.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);
# 286 "myLib.h"
typedef void (*ihp)(void);
# 307 "myLib.h"
int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB);
# 4 "colddark.c" 2
# 1 "colddarkmessagebg.h" 1
# 22 "colddarkmessagebg.h"
extern const unsigned short colddarkmessagebgTiles[2240];


extern unsigned short colddarkmessagebgMap[1024];


extern const unsigned short colddarkmessagebgPal[256];
# 5 "colddark.c" 2
# 1 "text.h" 1
extern int letterMap[95];
# 6 "colddark.c" 2

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
    setUpColdDarkInterrupts();

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
    for (int i = 0; i < 600; i++) {
        blackbgMap[i] = blackbgMap[642];
        if (i % 32 == 0) {
            DMANow(3, blackbgMap, &((screenblock *)0x6000000)[20], ((1 << 30) | (1024 * 4)));
        }
    }

    *(volatile unsigned short*)0x4000102 |= (0<<7);
    *(volatile unsigned short*)0x4000100 = 20000;
    *(volatile unsigned short*)0x4000102 |= 1 | (1<<7);
    while (*(volatile unsigned short*)0x4000100 < 65500);
    *(volatile unsigned short*)0x4000102 = (0<<7);

    for (int i = 0; i < 600; i++) {
        blackbgMap[i] = blackbgMap[706];
        if (i % 32 == 0) {
            DMANow(3, blackbgMap, &((screenblock *)0x6000000)[20], ((1 << 30) | (1024 * 4)));
        }
    }

    DMANow(3, colddarkmessagebgTiles, &((charblock *)0x6000000)[0], 4480 / 2);
    DMANow(3, colddarkmessagebgMap, &((screenblock *)0x6000000)[24], ((0 << 30) | (1024 * 4)));
    updateHighlight();

}


void updateColdDark() {
    if ((!(~(oldButtons)&((1<<7))) && (~buttons & ((1<<7))))) {
        cursor = (cursor + 1) % 3;
        updateHighlight();
    }

    if ((!(~(oldButtons)&((1<<6))) && (~buttons & ((1<<6))))) {
        if (cursor == 0) {
            cursor = 2;
        } else {
            cursor--;
        }

        updateHighlight();
    }

    if ((!(~(oldButtons)&((1<<0))) && (~buttons & ((1<<0))))) {
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
                blackbgMap[418 + (j * 32) + i] = blackbgMap[642];
            } else {
                blackbgMap[418 + (j * 32) + i] = blackbgMap[706];
            }
        }
    }

    DMANow(3, blackbgMap, &((screenblock *)0x6000000)[20], ((0 << 30) | (1024 * 4)));

}

void loadColdMessage() {
    coldMessageBool = 1;

    for (int i = 0; i < 25; i++) {
        for (int j = 0; j < 6; j++) {
            colddarkmessagebgMap[418 + i + (j * 32)] = colddarkmessagebgMap[748];
        }
    }
    DMANow(3, colddarkmessagebgMap, &((screenblock *)0x6000000)[24], 1024 * 4);

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
    DMANow(3, colddarkmessagebgMap, &((screenblock *)0x6000000)[24], 1024 * 4);
    coldMessageBool = 0;
}

void printColdText() {
    *(volatile unsigned short*)0x4000106 |= (0<<7);
    *(volatile unsigned short*)0x4000106 = 1;
    *(volatile unsigned short*)0x4000104 = 65536 - 11000;
    *(volatile unsigned short*)0x4000106 |= (1<<6) | (1<<7);
    timerI = 0;
    timerJ = 418;
    while ((*activeMessage)[timerI] != '\0') {

        if ((timerJ - 444) % 32 == 0) {
            timerJ += 6;
        }

        colddarkmessagebgMap[timerJ] = colddarkmessagebgMap[(letterMap[((*activeMessage)[timerI]) - 32])];

        DMANow(3, colddarkmessagebgMap, &((screenblock *)0x6000000)[24], 1024 * 4);


    }
    *(volatile unsigned short*)0x4000106 |= (0<<7);

}


void setUpColdDarkInterrupts() {
    *(unsigned short*)0x4000208 = 0;

    *((ihp*)0x03007FFC) = coldDarkInterruptHandler;

    *(unsigned short*)0x4000200 |= 1<<11 | 1<<4;
    *(unsigned short*)0x4000208 = 1;
}

void coldDarkInterruptHandler() {
    *(unsigned short*)0x4000208 = 0;

    if (*(volatile unsigned short*)0x4000202 & 1<<11) {
        *(volatile unsigned short*)0x4000102 |= (0<<7);
        *(volatile unsigned short*)0x4000100 = 30000;
        *(volatile unsigned short*)0x4000102 |= 1 | (1<<7);
        while (*(volatile unsigned short*)0x4000100 < 65500);
    }

    if (*(volatile unsigned short*)0x4000202 & 1<<4) {
        timerI++;
        timerJ++;
    }

    *(volatile unsigned short*)0x4000202 = *(volatile unsigned short*)0x4000202;

    *(unsigned short*)0x4000208 = 1;
}
