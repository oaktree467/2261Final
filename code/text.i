# 1 "text.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "text.c"
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
# 2 "text.c" 2
# 1 "text.h" 1
extern int letterMap[95];
# 3 "text.c" 2
# 1 "messagescreen.h" 1
# 22 "messagescreen.h"
extern const unsigned short messagescreenTiles[1328];


extern unsigned short messagescreenMap[1024];


extern const unsigned short messagescreenPal[256];
# 4 "text.c" 2


int letterMap[95] =
{

748, 777, 774,


0, 0, 0,


0, 776, 0,


0, 0, 0,


771, 0, 770,


0, 738, 739,


740, 741, 742,


743, 744, 745,


746, 747, 802,


773, 0, 0,


0, 772, 0,


674, 675, 676,


677, 678, 679,


680, 681, 682,


683, 684, 685,


686, 687, 688,


689, 690, 691,


692, 693, 694,


695, 696, 697,


698, 699, 0,


0, 0, 0,


0, 0, 706,


707, 708, 709,


710, 711, 712,


713, 714, 715,


716, 717, 718,


719, 720, 721,


722, 723, 724,


725, 726, 727,


728, 729, 730,


731 };
