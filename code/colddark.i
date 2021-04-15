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
void chapterOneIntro();
void updateHighlight();
void updateColdDark();
void loadColdMessage();
void loadMessageUnedited();
void printColdText();
void coldDarkInterruptHandler();
void setUpColdDarkInterrupts();
void timerWait(int start, int freq);
void messagesNonInteractive();
void clearBoard();
void chapterOneOutro();
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
# 1 "game.h" 1
# 25 "game.h"
enum {PROTAGFRONT, PROTAGSIDE, PROTAGBACK, PROTAGIDLE};


enum {START, INSTRUCTIONS, INTRO, LIVING_ROOM, COMPUTER, KITCHEN, BEDROOM, SAFE, OUTRO, PAUSE, WIN, LOSE};
int state;




typedef struct {
    int worldRow;
    int worldCol;
    int screenRow;
    int screenCol;
    int width;
    int height;
    int aniCounter;
    int aniState;
    int prevAniState;
    int currFrame;
    int totalFrames;
    int sideOrientation;
} PROTAGSPRITE;


typedef struct {
    int worldRow;
    int worldCol;
    int screenRow;
    int screenCol;
    int width;
    int height;
    int sheetCol;
    int sheetRow;
    int attr0_shape;
    int attr1_size;
    int hide;
    unsigned short collisionColor;
    char (* message)[];
} STATIONARYSPRITE;



extern PROTAGSPRITE protag;
extern STATIONARYSPRITE (* currSpriteArr)[];
extern int currSpriteArrCount;
extern const unsigned short (* currCollisionMap)[];
extern unsigned short (* currMessageMap)[];
extern int spriteCollisionBool;
extern int messageActiveBool;
extern int nextRoomBool;
extern STATIONARYSPRITE *activeSprite;


extern unsigned short hOff;
extern unsigned short vOff;
extern unsigned short priorHoff;
extern unsigned short priorVoff;

extern int mode;

extern int priorState;

extern char keyFound;
extern char phoneRinging;
extern char openSafeBool;
extern char documentsUploaded;
extern char computerAccessBool;
extern char phoneAnswerBool;
extern int totalMapWidth;
extern int visMapWidth;
extern int totalMapHeight;
extern int visMapHeight;


void initGame();
void initProtagonist();
void updateGame();
void updateProtagonist();
void updateSprites();
void drawGame();
void drawProtagonist();
void drawSprites();
unsigned short checkCollisionMapColor(int x, int y);
void checkSpriteCollision();
void checkMoreInfo();
void checkThreshold();
void printText();
void clearMessage();
void setUpInterrupts();
void interruptHandler();
void timerWait();
# 5 "colddark.c" 2
# 1 "colddarkmessagebg.h" 1
# 22 "colddarkmessagebg.h"
extern const unsigned short colddarkmessagebgTiles[2240];


extern unsigned short colddarkmessagebgMap[1024];


extern const unsigned short colddarkmessagebgPal[256];
# 6 "colddark.c" 2
# 1 "text.h" 1
extern int letterMap[95];
# 7 "colddark.c" 2

int intervals[] = {418, 482, 546};
unsigned short messageUnedited[255];
int cursor;
int coldMessageBool;
int timerI;
int timerJ;
int stage;
int nonInteractText;

char (* activeMessage)[];
char sniff[] = "It only smells...         well, cold.";
char moveForward[] = "You can't move your arms, or your legs. Everything  feels rigid.";
char blink[] = "You can't blink. You can'teven tell if your eyes areopen or closed.";


int blinkBool;
int moveForwardBool;
int sniffBool;


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


void chapterOneIntro() {
    for (int i = 0; i < 600; i++) {
        blackbgMap[i] = blackbgMap[642];
        if (i % 32 == 0) {
            DMANow(3, blackbgMap, &((screenblock *)0x6000000)[20], ((1 << 30) | (1024 * 4)));
        }
    }

    timerWait(20000, 64);

    for (int i = 0; i < 600; i++) {
        blackbgMap[i] = blackbgMap[706];
        if (i % 32 == 0) {
            DMANow(3, blackbgMap, &((screenblock *)0x6000000)[20], ((1 << 30) | (1024 * 4)));
        }
    }


    DMANow(3, colddarkmessagebgTiles, &((charblock *)0x6000000)[0], 4480 / 2);
    DMANow(3, colddarkmessagebgMap, &((screenblock *)0x6000000)[24], ((0 << 30) | (1024 * 4)));
    messagesNonInteractive();

}

void updateColdDark() {
    if (stage != 1) {
        if ((!(~(oldButtons)&((1<<0))) && (~buttons & ((1<<0))))) {
            nonInteractText++;
            messagesNonInteractive();
        }
    } else {
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
                blackbgMap[418 + (j * 32) + i] = blackbgMap[642];
            } else {
                blackbgMap[418 + (j * 32) + i] = blackbgMap[706];
            }
        }
    }

    DMANow(3, blackbgMap, &((screenblock *)0x6000000)[20], ((0 << 30) | (1024 * 4)));

}

void messagesNonInteractive() {
    char cd_m0[] = "Oh, Lord...";
    char cd_m1[] = "It's cold. Dark. You can'tmove or see a thing.";
    char cd_m2[] = "Usually during an attack, you can at least see...";
    char cd_m3[] = "Are you...? No. No, you   can't be. Let's not think about that. There must be a way out.";
    char cd_m4[] = "Okay, calm down. You've   been taking preventative  measures against this     outcome for months.";
    char cd_m5[] = "Maybe you should just try to remember how you got   here, and then you can getout...";

    clearBoard();

    DMANow(3, colddarkmessagebgMap, &((screenblock *)0x6000000)[24], 1024 * 4);

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

void clearBoard() {

    for (int i = 0; i < 26; i++) {
        for (int j = 0; j < 6; j++) {
            colddarkmessagebgMap[418 + i + (j * 32)] = colddarkmessagebgMap[748];
        }
    }
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

void chapterOneOutro() {

    for (int i = 0; i < 700; i++) {
        blackbgMap[i] = blackbgMap[706];
        if (i % 32 == 0) {
            DMANow(3, blackbgMap, &((screenblock *)0x6000000)[20], (1024 * 4));
        }
    }

    for (int i = 0; i < 700; i++) {
        colddarkmessagebgMap[i] = colddarkmessagebgMap[0];
        if (i % 32 == 0) {
            DMANow(3, colddarkmessagebgMap, &((screenblock *)0x6000000)[24], ((1 << 30) | (1024 * 4)));
        }
    }

    timerWait(20000, 1024);

    nextRoomBool = 1;
}
