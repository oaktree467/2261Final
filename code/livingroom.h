
#define LR_SPRITECOUNT 8
#define RING_SPRITECOUNT 4

//variables
extern STATIONARYSPRITE livingRoomSpritesArr[];
extern STATIONARYSPRITE phoneRingSpritesArr[];
extern int currRing;
extern int timerI;
extern int timerJ;

//functions
void initLivingRoomSprites();
void checkLivingRoomCollide();
void loadLivingRoom();
void ringerInterruptHandler();
void ringSettings();
void setUpRingerInterrupts();
void drawRing();
void updateRing();
void answerPhone();
void chapterTwoIntro();