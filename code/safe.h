#define SAFE_SPRITECOUNT 19

//variables
extern STATIONARYSPRITE safeSpritesArr[];
extern int enteredCode[4];
extern int answerCode[4];
extern char openSafeBool;



//functions
void initSafeSprites();
void loadSafe();
void drawSafeSprites();
void updateCursor();
int checkCode();
void clearSafeMessage();
void safeText();