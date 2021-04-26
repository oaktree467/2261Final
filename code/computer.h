#define COMPUTER_SPRITECOUNT 15

//variables
extern STATIONARYSPRITE computerSpritesArr[];
extern PROTAGSPRITE mouse;


//functions
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