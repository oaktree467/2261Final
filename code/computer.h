#define COMPUTER_SPRITECOUNT 8

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