# 1 "bedroom.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "bedroom.c"
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
# 2 "bedroom.c" 2
# 1 "bedroom.h" 1




extern STATIONARYSPRITE bedroomSpritesArr[];


void initBedroomSprites();
void loadBedroom();
void safeOpenMessage();
# 3 "bedroom.c" 2
# 1 "bedroomcollision.h" 1
# 20 "bedroomcollision.h"
extern const unsigned short bedroomcollisionBitmap[131072];
# 4 "bedroom.c" 2

STATIONARYSPRITE bedroomSpritesArr[6];
char wallsafe[] = "The safe is empty.";
char bedFrame[] = "God only knows how old this bedframe is, but you DID just buy the mattress last year.";
char wardrobe[] = "If you spend too long with your head stuck in the wardrobe, it begins to feel like one of your attacks...";
char vanity[] = "Your aunt's vanity. When you first inherited it, far more of the family jewelry remained in the drawers.";
char chair[] = "A beautiful chair that is also, unfortunately, not terribly comfortable.";
char bookshelfTwo[] = "Your aunt couldn't fool you with all those Jane Austen novels. This shelf is packed with vampire bestsellers.";


void initBedroomSprites() {

    bedroomSpritesArr[0].sheetCol = 0;
    bedroomSpritesArr[0].sheetRow = 12;
    bedroomSpritesArr[0].attr0_shape = 1;
    bedroomSpritesArr[0].attr1_size = 3;
    bedroomSpritesArr[0].worldCol = 21;
    bedroomSpritesArr[0].worldRow = 76;
    bedroomSpritesArr[0].hide = 1;
    bedroomSpritesArr[0].collisionColor = 0x03FF;
    bedroomSpritesArr[0].message = &bedFrame;


    bedroomSpritesArr[1].sheetCol = 0;
    bedroomSpritesArr[1].sheetRow = 16;
    bedroomSpritesArr[1].attr0_shape = 0;
    bedroomSpritesArr[1].attr1_size = 2;
    bedroomSpritesArr[1].worldCol = 84;
    bedroomSpritesArr[1].worldRow = 45;
    bedroomSpritesArr[1].hide = 1;
    bedroomSpritesArr[1].collisionColor = 0x7F60;
    bedroomSpritesArr[1].message = &wardrobe;


    bedroomSpritesArr[2].sheetCol = 8;
    bedroomSpritesArr[2].sheetRow = 12;
    bedroomSpritesArr[2].attr0_shape = 1;
    bedroomSpritesArr[2].attr1_size = 3;
    bedroomSpritesArr[2].worldCol = 130;
    bedroomSpritesArr[2].worldRow = 49;
    bedroomSpritesArr[2].hide = 1;
    bedroomSpritesArr[2].collisionColor = 0x0E47;
    bedroomSpritesArr[2].message = &vanity;


    bedroomSpritesArr[3].sheetCol = 12;
    bedroomSpritesArr[3].sheetRow = 10;
    bedroomSpritesArr[3].attr0_shape = 1;
    bedroomSpritesArr[3].attr1_size = 2;
    bedroomSpritesArr[3].worldCol = 198;
    bedroomSpritesArr[3].worldRow = 49;
    bedroomSpritesArr[3].hide = 1;
    bedroomSpritesArr[3].collisionColor = 0x001F;
    bedroomSpritesArr[3].message = &wallsafe;


    bedroomSpritesArr[4].sheetCol = 12;
    bedroomSpritesArr[4].sheetRow = 8;
    bedroomSpritesArr[4].attr0_shape = 1;
    bedroomSpritesArr[4].attr1_size = 2;
    bedroomSpritesArr[4].worldCol = 285;
    bedroomSpritesArr[4].worldRow = 60;
    bedroomSpritesArr[4].hide = 1;
    bedroomSpritesArr[4].collisionColor = 0x03E4;
    bedroomSpritesArr[4].message = &chair;


    bedroomSpritesArr[5].sheetCol = 12;
    bedroomSpritesArr[5].sheetRow = 0;
    bedroomSpritesArr[5].attr0_shape = 2;
    bedroomSpritesArr[5].attr1_size = 3;
    bedroomSpritesArr[5].worldCol = 355;
    bedroomSpritesArr[5].worldRow = 60;
    bedroomSpritesArr[5].hide = 1;
    bedroomSpritesArr[5].collisionColor = 0x6C15;
    bedroomSpritesArr[5].message = &bookshelfTwo;

}


void loadBedroom() {
    if (priorState != PAUSE && priorState != SAFE && priorState != INSTRUCTIONS) {
        protag.worldRow = 120;
        protag.worldCol = 30;
        protag.aniState = PROTAGBACK;
        hOff = 0;
        vOff = 10;
    } else {
        hOff = priorHoff;
        vOff = priorVoff;
    }

    totalMapWidth = 512;
    visMapWidth = 388;
    totalMapHeight = 256;
    visMapHeight = 170;

    initBedroomSprites();
    currSpriteArrCount = 6;
    currSpriteArr = &bedroomSpritesArr;
    currCollisionMap = &bedroomcollisionBitmap;
}
