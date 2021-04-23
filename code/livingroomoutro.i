# 1 "livingroomoutro.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "livingroomoutro.c"
# 1 "livingroomoutro.h" 1
void drawOutroSprites();
void updateOutroSprites();
void updateOutro();
void waitForKeyPress();
void initLivingRoomOutro();
void initMessageOutro();
void initProtagonistOutro();
void initMarsOutro();
# 2 "livingroomoutro.c" 2
# 1 "game.h" 1
# 26 "game.h"
enum {PROTAGFRONT, PROTAGSIDE, PROTAGBACK, PROTAGIDLE};
enum {MARSFRONT, MARSSIDE, MARSBACK, MARSIDLE};


enum {START, INSTRUCTIONS, INTRO, LIVING_ROOM, COMPUTER, KITCHEN, BEDROOM, SAFE, LR_OUTRO, FINALE, PAUSE, WIN};
int state;


enum {TLMOE, SPETTACOLO};
int currSong;




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
extern char enableKeyFind;
extern char phoneRinging;
extern char openSafeBool;
extern char documentsUploaded;
extern char computerAccessBool;
extern char allEmailsBool;
extern char livingRoomOutroBool;
extern char phoneAnswerBool;
extern char activateDoorBool;
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
# 3 "livingroomoutro.c" 2
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
# 4 "livingroomoutro.c" 2
# 1 "messagescreen.h" 1
# 22 "messagescreen.h"
extern const unsigned short messagescreenTiles[1328];


extern unsigned short messagescreenMap[1024];


extern const unsigned short messagescreenPal[256];
# 5 "livingroomoutro.c" 2
# 1 "text.h" 1
extern int letterMap[95];
# 6 "livingroomoutro.c" 2
# 1 "sound.h" 1
void setupSounds();
void playSoundA(const signed char* sound, int length, int loops);
void playSoundB(const signed char* sound, int length, int loops);

void setupInterrupts();
void interruptHandler();

void pauseSound();
void unpauseSound();
void stopSound();
void stopSoundA();
void stopSoundB();
# 51 "sound.h"
typedef struct{
    const signed char* data;
    int length;
    int frequency;
    int isPlaying;
    int loops;
    int duration;
    int priority;
    int vBlankCount;
} SOUND;

SOUND soundA;
SOUND soundB;
# 7 "livingroomoutro.c" 2
# 1 "frontdoor.h" 1


extern const unsigned int frontdoor_sampleRate;
extern const unsigned int frontdoor_length;
extern const signed char frontdoor_data[];
# 8 "livingroomoutro.c" 2
# 1 "blackbg.h" 1
# 22 "blackbg.h"
extern const unsigned short blackbgTiles[48];


extern unsigned short blackbgMap[1024];


extern const unsigned short blackbgPal[256];
# 9 "livingroomoutro.c" 2
# 1 "colddarkmessagebg.h" 1
# 22 "colddarkmessagebg.h"
extern const unsigned short colddarkmessagebgTiles[2240];


extern unsigned short colddarkmessagebgMap[1024];


extern const unsigned short colddarkmessagebgPal[256];
# 10 "livingroomoutro.c" 2
# 1 "introdrone.h" 1


extern const unsigned int introdrone_sampleRate;
extern const unsigned int introdrone_length;
extern const signed char introdrone_data[];
# 11 "livingroomoutro.c" 2

PROTAGSPRITE mars;
char outroSequenceStage;
int timerI;
int timerJ;
char ot_1[] = "Something shifts in your  gut. A warning.An oncomingepisode.                  You don't...                feel so good...";
char ot_2[] = "That's all you remember.  ...                       ...                       ... But wait.";
char ot_3[] = "Didn't someone knock?";
char liftProtagonistBool;
int frame = 0;

void printOutroText();

void initLivingRoomOutro() {
    initMarsOutro();
    initProtagonistOutro();
    initMessageOutro();
}

void initMarsOutro() {
    mars.width = 20;
    mars.height = 31;
    mars.aniCounter = 0;
    mars.aniState = PROTAGFRONT;
    mars.prevAniState = PROTAGFRONT;
    mars.currFrame = 4;
    mars.totalFrames = 3;
    mars.sideOrientation = 1;
    mars.screenCol = 200;
    mars.screenRow = -100;

}

void initProtagonistOutro() {
    protag.sideOrientation = 0;
    protag.aniState = PROTAGFRONT;
    protag.currFrame = 3;
}

void initMessageOutro() {
    clearMessage();
    outroSequenceStage = 0;
    (*(volatile unsigned short *)0x4000000) |= (1<<8);
    printOutroText(&ot_1);
}

void waitForKeyPress() {

    if ((!(~(oldButtons)&((1<<0))) && (~buttons & ((1<<0))))) {
        playSoundA(introdrone_data, introdrone_length, 1);
        (*(volatile unsigned short *)0x4000000) &= ~((1<<8));
        protag.aniState = PROTAGSIDE;
        protag.currFrame = 3;
        timerWait(20000, 1024);
        drawOutroSprites();

        DMANow(3, blackbgTiles, &((charblock *)0x6000000)[1], 96 / 2);
        DMANow(3, blackbgMap, &((screenblock *)0x6000000)[28], 1024 * 4);

        (*(volatile unsigned short*)0x400000A) |= (0<<14);

        vOff = 0;
        hOff = 0;

        outroSequenceStage = 1;
    }

}


void updateOutro() {
    if (outroSequenceStage == 0) {
        waitForKeyPress();
    } else if (outroSequenceStage == 1) {
        if (frame % 2 == 0) {
            if (protag.screenRow > 40) {
                protag.screenRow--;
            } else if (protag.screenCol > (240 / 2) - protag.height) {
                protag.screenCol--;
            } else {
                outroSequenceStage = 2;
                timerWait(20000, 1024);
                clearMessage();
                (*(volatile unsigned short *)0x4000000) |= (1<<8);
                printOutroText(&ot_2);
            }
        }
        frame = (frame + 1) % 101;
    } else if (outroSequenceStage == 2) {
        if ((!(~(oldButtons)&((1<<0))) && (~buttons & ((1<<0))))) {
            clearMessage();
            printOutroText(&ot_3);
            playSoundB(frontdoor_data, frontdoor_length, 0);
            timerWait(0, 1024);
            frame = 0;
            outroSequenceStage = 3;
        }
    } else if (outroSequenceStage == 3) {
        if (frame % 2 == 0) {

            if (frame % 16 == 0) {
                mars.currFrame++;
                if (mars.currFrame == 7) {
                    mars.currFrame = 4;
                }
            }

            if (mars.screenRow < 40) {
                mars.screenRow++;
            } else if (mars.screenCol > (240 / 2)) {
                if (mars.aniState != PROTAGSIDE) {
                    mars.aniState = PROTAGSIDE;
                    mars.sideOrientation = 1;
                }
                mars.screenCol--;
            } else {
                outroSequenceStage++;
                mars.currFrame = 4;
            }
        }
        frame = (frame + 1) % 101;
    } else if (outroSequenceStage == 4) {
        if ((!(~(oldButtons)&((1<<0))) && (~buttons & ((1<<0))))) {
            nextRoomBool = 1;
        }
    }

}

void drawOutroSprites() {

    shadowOAM[0].attr0 = (protag.screenRow | (1<<13) | (0<<14));
    shadowOAM[0].attr1 = (protag.screenCol | (2<<14) | (protag.sideOrientation << 12));
    shadowOAM[0].attr2 = ((0)<<12) | ((protag.currFrame * 4)*32+(protag.aniState * 8)) | ((2)<<10);



    shadowOAM[1].attr0 = (mars.screenRow | (1<<13) | (0<<14));
    shadowOAM[1].attr1 = (mars.screenCol | (2<<14) | (mars.sideOrientation << 12));
    shadowOAM[1].attr2 = ((0)<<12) | ((mars.currFrame * 4)*32+(mars.aniState * 8)) | ((2)<<10);


}

void printOutroText(char (* msg)[]) {
    *(volatile unsigned short*)0x400010A |= (0<<7);
    *(volatile unsigned short*)0x400010A = 1;
    *(volatile unsigned short*)0x4000108 = 65536 - 11000;
    *(volatile unsigned short*)0x400010A |= (1<<6) | (1<<7);
    timerI = 0;
    timerJ = 418;
    while ((* msg)[timerI] != '\0') {

        if ((timerJ - 444) % 32 == 0) {
            timerJ += 6;
        }

        messagescreenMap[timerJ] = messagescreenMap[(letterMap[((* msg)[timerI]) - 32])];

        DMANow(3, messagescreenMap, &((screenblock *)0x6000000)[24], 1024 * 4);

    }
    *(volatile unsigned short*)0x400010A |= (0<<7);

}
