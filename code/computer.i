# 1 "computer.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "computer.c"

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
# 3 "computer.c" 2
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
# 4 "computer.c" 2
# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 1 3 4
# 143 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 3 4

# 143 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 209 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 3 4
typedef unsigned int size_t;
# 321 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 3 4
typedef unsigned int wchar_t;
# 5 "computer.c" 2
# 1 "computer.h" 1




# 4 "computer.h"
extern STATIONARYSPRITE computerSpritesArr[];
extern PROTAGSPRITE mouse;



void updateComputer();
void drawComputer();

void loadComputer();

void initComputerSprites();
void drawComputerSprites();
void checkComputerSpriteCollision();
void initMouse();
void drawMouse();
void updateMouse();
void loadSecondaryScreen();
void disableSprites();

void playSpettacolo();
void playTLMOE();
void tlmoeHide(int i);
void spettacoloHide(int i);
# 6 "computer.c" 2
# 1 "desktopcollision.h" 1
# 20 "desktopcollision.h"
extern const unsigned short desktopcollisionBitmap[65536];
# 7 "computer.c" 2
# 1 "websitebg.h" 1
# 22 "websitebg.h"
extern const unsigned short websitebgTiles[4032];


extern const unsigned short websitebgMap[1024];


extern const unsigned short websitebgPal[256];
# 8 "computer.c" 2
# 1 "webpagedoc.h" 1
# 22 "webpagedoc.h"
extern const unsigned short webpagedocTiles[4336];


extern const unsigned short webpagedocMap[1024];


extern const unsigned short webpagedocPal[256];
# 9 "computer.c" 2
# 1 "websitecollision.h" 1
# 20 "websitecollision.h"
extern const unsigned short websitecollisionBitmap[65536];
# 10 "computer.c" 2
# 1 "inboxempty.h" 1
# 22 "inboxempty.h"
extern const unsigned short inboxemptyTiles[768];


extern const unsigned short inboxemptyMap[1024];


extern const unsigned short inboxemptyPal[256];
# 11 "computer.c" 2
# 1 "inboxfull.h" 1
# 22 "inboxfull.h"
extern const unsigned short inboxfullTiles[1584];


extern const unsigned short inboxfullMap[1024];


extern const unsigned short inboxfullPal[256];
# 12 "computer.c" 2
# 1 "inboxruth.h" 1
# 22 "inboxruth.h"
extern const unsigned short inboxruthTiles[5136];


extern const unsigned short inboxruthMap[1024];


extern const unsigned short inboxruthPal[256];
# 13 "computer.c" 2
# 1 "inboxmars.h" 1
# 22 "inboxmars.h"
extern const unsigned short inboxmarsTiles[3952];


extern const unsigned short inboxmarsMap[1024];


extern const unsigned short inboxmarsPal[256];
# 14 "computer.c" 2
# 1 "inboxmaincollision.h" 1
# 20 "inboxmaincollision.h"
extern const unsigned short inboxmaincollisionBitmap[65536];
# 15 "computer.c" 2
# 1 "inboxmessagecollision.h" 1
# 20 "inboxmessagecollision.h"
extern const unsigned short inboxmessagecollisionBitmap[65536];
# 16 "computer.c" 2
# 1 "musiccollision.h" 1
# 20 "musiccollision.h"
extern const unsigned short musiccollisionBitmap[65536];
# 17 "computer.c" 2
# 1 "musicbg.h" 1
# 22 "musicbg.h"
extern const unsigned short musicbgTiles[592];


extern const unsigned short musicbgMap[1024];


extern const unsigned short musicbgPal[256];
# 18 "computer.c" 2
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
# 19 "computer.c" 2
# 1 "LastManOn8rth.h" 1


extern const unsigned int LastManOn8rth_sampleRate;
extern const unsigned int LastManOn8rth_length;
extern const signed char LastManOn8rth_data[];
# 20 "computer.c" 2


STATIONARYSPRITE computerSpritesArr[15];
PROTAGSPRITE mouse;
extern int currSong;
extern char ruthEmailBool;
extern char marsEmailBool;
extern char allEmailsBool;


void loadComputer() {
    priorHoff = hOff;
    priorVoff = vOff;

    hOff = 0;
    vOff = 0;

    totalMapWidth = 256;
    totalMapHeight = 256;

    visMapWidth = 240;
    visMapHeight = 160;

    currCollisionMap = &desktopcollisionBitmap;

    initMouse();
    initComputerSprites();
}

void updateComputer() {
    updateMouse();
    checkComputerSpriteCollision();
}

void drawComputer() {
    drawMouse();
    drawComputerSprites();
}

void initMouse() {
    mouse.worldCol = 120;
    mouse.worldRow = 72;
    mouse.screenCol = mouse.worldCol;
    mouse.screenRow = mouse.worldRow;
    mouse.width = 8;
    mouse.height = 11;
}

void initComputerSprites() {


    computerSpritesArr[0].sheetCol = 0;
    computerSpritesArr[0].sheetRow = 2;
    computerSpritesArr[0].attr0_shape = 0;
    computerSpritesArr[0].attr1_size = 2;
    computerSpritesArr[0].worldCol = 5;
    computerSpritesArr[0].worldRow = 17;
    computerSpritesArr[0].hide = 1;
    computerSpritesArr[0].screenCol = computerSpritesArr[0].worldCol;
    computerSpritesArr[0].screenRow = computerSpritesArr[0].worldRow;
    computerSpritesArr[0].collisionColor = 0x03FF;


    computerSpritesArr[1].sheetCol = 0;
    computerSpritesArr[1].sheetRow = 5;
    computerSpritesArr[1].attr0_shape = 0;
    computerSpritesArr[1].attr1_size = 2;
    computerSpritesArr[1].worldCol = 3;
    computerSpritesArr[1].worldRow = 39;
    computerSpritesArr[1].hide = 0;
    computerSpritesArr[1].screenCol = computerSpritesArr[1].worldCol;
    computerSpritesArr[1].screenRow = computerSpritesArr[1].worldRow;
    computerSpritesArr[1].collisionColor = 0x7F60;


    computerSpritesArr[2].sheetCol = 4;
    computerSpritesArr[2].sheetRow = 0;
    computerSpritesArr[2].attr0_shape = 0;
    computerSpritesArr[2].attr1_size = 1;
    computerSpritesArr[2].worldCol = 10;
    computerSpritesArr[2].worldRow = 14;
    computerSpritesArr[2].hide = 1;
    computerSpritesArr[2].screenCol = computerSpritesArr[2].worldCol;
    computerSpritesArr[2].screenRow = computerSpritesArr[2].worldRow;
    computerSpritesArr[2].collisionColor = 0x0C6F;


    computerSpritesArr[3].sheetCol = 6;
    computerSpritesArr[3].sheetRow = 0;
    computerSpritesArr[3].attr0_shape = 0;
    computerSpritesArr[3].attr1_size = 0;
    computerSpritesArr[3].worldCol = 38;
    computerSpritesArr[3].worldRow = 16;
    computerSpritesArr[3].hide = 1;
    computerSpritesArr[3].screenCol = computerSpritesArr[3].worldCol;
    computerSpritesArr[3].screenRow = computerSpritesArr[3].worldRow;
    computerSpritesArr[3].collisionColor = 0x001F;


    computerSpritesArr[4].sheetCol = 4;
    computerSpritesArr[4].sheetRow = 2;
    computerSpritesArr[4].attr0_shape = 0;
    computerSpritesArr[4].attr1_size = 0;
    computerSpritesArr[4].worldCol = 40;
    computerSpritesArr[4].worldRow = 53;
    computerSpritesArr[4].hide = 1;
    computerSpritesArr[4].screenCol = computerSpritesArr[4].worldCol;
    computerSpritesArr[4].screenRow = computerSpritesArr[4].worldRow;
    computerSpritesArr[4].collisionColor = 0x0E47;


    computerSpritesArr[5].sheetCol = 4;
    computerSpritesArr[5].sheetRow = 2;
    computerSpritesArr[5].attr0_shape = 0;
    computerSpritesArr[5].attr1_size = 0;
    computerSpritesArr[5].worldCol = 40;
    computerSpritesArr[5].worldRow = 67;
    computerSpritesArr[5].hide = 1;
    computerSpritesArr[5].screenCol = computerSpritesArr[5].worldCol;
    computerSpritesArr[5].screenRow = computerSpritesArr[5].worldRow;
    computerSpritesArr[5].collisionColor = 0x6C15;


    computerSpritesArr[6].sheetCol = 4;
    computerSpritesArr[6].sheetRow = 4;
    computerSpritesArr[6].attr0_shape = 1;
    computerSpritesArr[6].attr1_size = 3;
    computerSpritesArr[6].worldCol = 169;
    computerSpritesArr[6].worldRow = 57;
    computerSpritesArr[6].hide = 1;
    computerSpritesArr[6].screenCol = computerSpritesArr[6].worldCol;
    computerSpritesArr[6].screenRow = computerSpritesArr[6].worldRow;
    computerSpritesArr[6].collisionColor = 0x03E4;


    computerSpritesArr[7].sheetCol = 12;
    computerSpritesArr[7].sheetRow = 0;
    computerSpritesArr[7].attr0_shape = 0;
    computerSpritesArr[7].attr1_size = 2;
    computerSpritesArr[7].worldCol = 2;
    computerSpritesArr[7].worldRow = 72;
    computerSpritesArr[7].hide = 1;
    computerSpritesArr[7].screenCol = computerSpritesArr[7].worldCol;
    computerSpritesArr[7].screenRow = computerSpritesArr[7].worldRow;
    computerSpritesArr[7].collisionColor = 0x3E1F;


    computerSpritesArr[8].sheetCol = 8;
    computerSpritesArr[8].sheetRow = 0;
    computerSpritesArr[8].attr0_shape = 0;
    computerSpritesArr[8].attr1_size = 0;
    computerSpritesArr[8].worldCol = 131;
    computerSpritesArr[8].worldRow = 44;
    computerSpritesArr[8].hide = 1;
    computerSpritesArr[8].screenCol = computerSpritesArr[8].worldCol;
    computerSpritesArr[8].screenRow = computerSpritesArr[8].worldRow;
    computerSpritesArr[8].collisionColor = 0x025F;


    computerSpritesArr[9].sheetCol = 8;
    computerSpritesArr[9].sheetRow = 0;
    computerSpritesArr[9].attr0_shape = 0;
    computerSpritesArr[9].attr1_size = 0;
    computerSpritesArr[9].worldCol = 131;
    computerSpritesArr[9].worldRow = 56;
    computerSpritesArr[9].hide = 1;
    computerSpritesArr[9].screenCol = computerSpritesArr[9].worldCol;
    computerSpritesArr[9].screenRow = computerSpritesArr[9].worldRow;
    computerSpritesArr[9].collisionColor = 0x7CC0;




    computerSpritesArr[10].sheetCol = 6;
    computerSpritesArr[10].sheetRow = 2;
    computerSpritesArr[10].attr0_shape = 0;
    computerSpritesArr[10].attr1_size = 0;
    computerSpritesArr[10].worldCol = 20;
    computerSpritesArr[10].worldRow = 45;
    computerSpritesArr[10].hide = 1;
    computerSpritesArr[10].screenCol = computerSpritesArr[10].worldCol;
    computerSpritesArr[10].screenRow = computerSpritesArr[10].worldRow;
    computerSpritesArr[10].collisionColor = 0;


    computerSpritesArr[11].sheetCol = 0;
    computerSpritesArr[11].sheetRow = 9;
    computerSpritesArr[11].attr0_shape = 0;
    computerSpritesArr[11].attr1_size = 3;
    computerSpritesArr[11].worldCol = 55;
    computerSpritesArr[11].worldRow = 30;
    computerSpritesArr[11].hide = 1;
    computerSpritesArr[11].screenCol = computerSpritesArr[11].worldCol;
    computerSpritesArr[11].screenRow = computerSpritesArr[11].worldRow;
    computerSpritesArr[11].collisionColor = 0;


    computerSpritesArr[12].sheetCol = 0;
    computerSpritesArr[12].sheetRow = 17;
    computerSpritesArr[12].attr0_shape = 0;
    computerSpritesArr[12].attr1_size = 3;
    computerSpritesArr[12].worldCol = 55;
    computerSpritesArr[12].worldRow = 86;
    computerSpritesArr[12].hide = 1;
    computerSpritesArr[12].screenCol = computerSpritesArr[12].worldCol;
    computerSpritesArr[12].screenRow = computerSpritesArr[12].worldRow;
    computerSpritesArr[12].collisionColor = 0;


    computerSpritesArr[13].sheetCol = 8;
    computerSpritesArr[13].sheetRow = 9;
    computerSpritesArr[13].attr0_shape = 0;
    computerSpritesArr[13].attr1_size = 3;
    computerSpritesArr[13].worldCol = 55;
    computerSpritesArr[13].worldRow = 30;
    computerSpritesArr[13].hide = 1;
    computerSpritesArr[13].screenCol = computerSpritesArr[13].worldCol;
    computerSpritesArr[13].screenRow = computerSpritesArr[13].worldRow;
    computerSpritesArr[13].collisionColor = 0;


    computerSpritesArr[14].sheetCol = 8;
    computerSpritesArr[14].sheetRow = 17;
    computerSpritesArr[14].attr0_shape = 0;
    computerSpritesArr[14].attr1_size = 3;
    computerSpritesArr[14].worldCol = 55;
    computerSpritesArr[14].worldRow = 86;
    computerSpritesArr[14].hide = 1;
    computerSpritesArr[14].screenCol = computerSpritesArr[14].worldCol;
    computerSpritesArr[14].screenRow = computerSpritesArr[14].worldRow;
    computerSpritesArr[14].collisionColor = 0;

}

void drawMouse() {
    shadowOAM[0].attr0 = (mouse.screenRow | (1<<13) | (2<<14));
    shadowOAM[0].attr1 = (mouse.screenCol | (0<<14));
    shadowOAM[0].attr2 = ((0)<<12) | ((0)*32+(0)) | ((0)<<10);
}

void drawComputerSprites() {
    for (int i = 0; i < 15; i++) {
        if (computerSpritesArr[i].hide == 1) {
            shadowOAM[i + 1].attr0 = (2<<8);
        } else {
            shadowOAM[i + 1].attr0 = (computerSpritesArr[i].screenRow | (1<<13) | ((computerSpritesArr[i].attr0_shape) << 14));
            shadowOAM[i + 1].attr1 = (computerSpritesArr[i].screenCol | (computerSpritesArr[i].attr1_size) << 14);
            shadowOAM[i + 1].attr2 = ((0)<<12) | ((computerSpritesArr[i].sheetRow)*32+(computerSpritesArr[i].sheetCol * 2)) | ((0)<<10);
        }
    }
}

void updateMouse() {
    if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<6)))) {
        if (mouse.worldRow > 0) {
            mouse.worldRow--;
        }
    }

    if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<7)))) {
        if (mouse.worldRow + 1 < (visMapHeight - mouse.height)) {
            mouse.worldRow++;
        }
    }

    if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<5)))) {
        if (mouse.worldCol > 0) {
            mouse.worldCol--;
        }
    }

    if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<4)))) {
        if (mouse.worldCol + 1 < (visMapWidth - mouse.width)) {
            mouse.worldCol++;
        }
    }

    if ((!(~(oldButtons)&((1<<0))) && (~buttons & ((1<<0))))) {
        if (activeSprite != 
# 298 "computer.c" 3 4
                           ((void *)0)
# 298 "computer.c"
                               ) {
            loadSecondaryScreen();
        }
    }

    mouse.screenCol = mouse.worldCol - hOff;
    mouse.screenRow = mouse.worldRow - vOff;
}

void checkComputerSpriteCollision() {
    u16 currColor = 0;
    currColor = checkCollisionMapColor(mouse.worldCol, mouse.worldRow);
    activeSprite = 
# 310 "computer.c" 3 4
                  ((void *)0)
# 310 "computer.c"
                      ;

    if (currColor != 0) {
        for (int i = 0; i < 15 - 5; i++) {
            if (computerSpritesArr[i].collisionColor == currColor) {
                computerSpritesArr[i].hide = 0;
                activeSprite = &computerSpritesArr[i];
            } else {
                computerSpritesArr[i].hide = 1;
            }
        }
    }
}

void loadSecondaryScreen() {

    if (activeSprite == &computerSpritesArr[3]) {
        (*(volatile unsigned short *)0x4000000) = 0 | (1<<9) | (1<<12);
        currCollisionMap = &desktopcollisionBitmap;
        disableSprites();
        return;
    }


    if (activeSprite == &computerSpritesArr[0]) {

        DMANow(3, websitebgTiles, &((charblock *)0x6000000)[0], 8064 / 2);
        DMANow(3, websitebgMap, &((screenblock *)0x6000000)[24], 2048 / 2);


        computerSpritesArr[3].worldCol = 38;
        computerSpritesArr[3].worldRow = 16;

        currCollisionMap = &websitecollisionBitmap;
    } else if (activeSprite == &computerSpritesArr[6]) {

        if (openSafeBool) {
            DMANow(3, webpagedocTiles, &((charblock *)0x6000000)[0], 8672 / 2);
            DMANow(3, webpagedocMap, &((screenblock *)0x6000000)[24], 2048 / 2);
            documentsUploaded = 1;

            computerSpritesArr[7].hide = 0;
        }
    } else if (activeSprite == &computerSpritesArr[1] || activeSprite == &computerSpritesArr[2]) {

        if (documentsUploaded) {
            DMANow(3, inboxfullTiles, &((charblock *)0x6000000)[0], 3168 / 2);
            DMANow(3, inboxfullMap, &((screenblock *)0x6000000)[24], 2048 / 2);
        } else {
            DMANow(3, inboxemptyTiles, &((charblock *)0x6000000)[0], 1536 / 2);
            DMANow(3, inboxemptyMap, &((screenblock *)0x6000000)[24], 2048 / 2);
        }
        currCollisionMap = &inboxmaincollisionBitmap;


        computerSpritesArr[3].worldCol = 10;
        computerSpritesArr[3].worldRow = 14;
     } else if (activeSprite == &computerSpritesArr[7]) {

        DMANow(3, musicbgTiles, &((charblock *)0x6000000)[0], 1184 / 2);
        DMANow(3, musicbgMap, &((screenblock *)0x6000000)[24], 2048 / 2);

        computerSpritesArr[3].worldCol = 38;
        computerSpritesArr[3].worldRow = 16;

        if (currSong == TLMOE) {
            tlmoeHide(0);
            spettacoloHide(1);
        } else {
            tlmoeHide(1);
            spettacoloHide(0);
        }
        currCollisionMap = &musiccollisionBitmap;
    } else if (activeSprite == &computerSpritesArr[8]) {

        playSpettacolo();
    } else if (activeSprite == &computerSpritesArr[9]) {

        playTLMOE();
    } else if (activeSprite == &computerSpritesArr[4]) {

        DMANow(3, inboxruthTiles, &((charblock *)0x6000000)[0], 10272 / 2);
        DMANow(3, inboxruthMap, &((screenblock *)0x6000000)[24], 2048 / 2);
        currCollisionMap = &inboxmessagecollisionBitmap;
        ruthEmailBool = 1;
    } else if (activeSprite == &computerSpritesArr[5]) {

        DMANow(3, inboxmarsTiles, &((charblock *)0x6000000)[0], 7904 / 2);
        DMANow(3, inboxmarsMap, &((screenblock *)0x6000000)[24], 2048 / 2);
        currCollisionMap = &inboxmessagecollisionBitmap;
        marsEmailBool = 1;
    }

    if (ruthEmailBool && marsEmailBool) {
        allEmailsBool = 1;
    }

    computerSpritesArr[3].screenRow = computerSpritesArr[3].worldRow;
    computerSpritesArr[3].screenCol = computerSpritesArr[3].worldCol;

    (*(volatile unsigned short*)0x4000008) = ((0)<<2) | ((24)<<8) | (0<<7) | (0<<14) | ((0)<<1);
    (*(volatile unsigned short *)0x4000000) |= (1<<8);
}

void disableSprites() {
    for (int i = 15 - 1; i > 15 - 6; i--) {
        computerSpritesArr[i].hide = 1;
    }
}

void playSpettacolo() {
    spettacoloHide(0);
    tlmoeHide(1);
    currSong = SPETTACOLO;
    stopSound();
}

void playTLMOE() {
    spettacoloHide(1);
    tlmoeHide(0);
    currSong = TLMOE;
    playSoundA(LastManOn8rth_data, LastManOn8rth_length, 1);

}

void tlmoeHide(int i) {
    computerSpritesArr[11].hide = i;
    computerSpritesArr[12].hide = i;
}

void spettacoloHide(int i) {
    computerSpritesArr[13].hide = i;
    computerSpritesArr[14].hide = i;
}
