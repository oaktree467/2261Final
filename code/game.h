//macros
#define LEFTORIENTATION 1
#define RIGHTORIENTATION 0
//sprite sizes
#define TINYSPRITE 0
#define SMALLSPRITE 1
#define MEDIUMSPRITE 2
#define LARGESPRITE 3
//sprite shape
#define SQUARESPRITE 0
#define WIDESPRITE 1 
#define TALLSPRITE 2
//collision map colors
#define YELLOW_HIT 0x03FF
#define AQUA_HIT 0x7F60
#define FOREST_HIT 0x0E47
#define RED_HIT 0x001F
#define LIME_HIT 0x03E4
#define PURPLE_HIT 0x6C15
#define ORANGE_HIT 0x025F
#define OCEAN_HIT 0x7CC0
#define MAROON_HIT 0x0C6F
#define PEACH_HIT 0x3E1F

//Orientations
enum {PROTAGFRONT, PROTAGSIDE, PROTAGBACK, PROTAGIDLE};
enum {MARSFRONT, MARSSIDE, MARSBACK, MARSIDLE};

// States
enum {START, INSTRUCTIONS, INTRO, LIVING_ROOM, COMPUTER, KITCHEN, BEDROOM, SAFE, LR_OUTRO, PAUSE, WIN, LOSE};
int state;


/* ----- STRUCTS ----- */
//struct for protagonist
typedef struct {
    int worldRow; //location in world, in pixels
    int worldCol; //location in world, in pixels
    int screenRow; //location on screen, in pixels
    int screenCol;  //location on screen, in pixels
    int width;  //width, in pixels
    int height; //height, in pixels
    int aniCounter;
    int aniState;
    int prevAniState;
    int currFrame;
    int totalFrames;
    int sideOrientation;
} PROTAGSPRITE;

//stationary objects
typedef struct {
    int worldRow; //location in world, in pixels
    int worldCol; //location in world, in pixels
    int screenRow; //location on screen, in pixels
    int screenCol; //location on screen, in pixels
    int width; //width, in pixels
    int height; //height, in pixels
    int sheetCol; //col location on spritesheet, in tiles
    int sheetRow; //row location on spritesheet, intiles
    int attr0_shape;
    int attr1_size;
    int hide;
    unsigned short collisionColor; //color on collision map
    char (* message)[];
} STATIONARYSPRITE;


/* -- GLOBAL VARIABLES -- */
extern PROTAGSPRITE protag;
extern STATIONARYSPRITE (* currSpriteArr)[]; //array of current sprites, depending on map
extern int currSpriteArrCount;
extern const unsigned short (* currCollisionMap)[]; //current collision map, depending on the map
extern unsigned short (* currMessageMap)[];
extern int spriteCollisionBool; //is the character currently in contact with a sprite?
extern int messageActiveBool; //is a message active on screen?
extern int nextRoomBool; //is the player moving to the next room?
extern STATIONARYSPRITE *activeSprite;

//horizontal and vertical offsets
extern unsigned short hOff;
extern unsigned short vOff;
extern unsigned short priorHoff;
extern unsigned short priorVoff;

extern int mode;

extern int priorState; //necessary for placement of protagonist if returning from pause

extern char keyFound; //true if player has accessed refrigerator when enableKeyFind is true
extern char enableKeyFind; //CAN the key be found? (true if the player has accessed the ringing telephone)
extern char phoneRinging; // boolean -- is the phone ringing?
extern char openSafeBool; //true if player has obtained docs from safe
extern char documentsUploaded; // true if player has uploaded docs
extern char computerAccessBool; //true if player is accessing computer in living room
extern char allEmailsBool; // true if both emails in the player's inbox have been read
extern char livingRoomOutroBool; //true when allEmailsBool is true and player has crossed the outro threshold
extern char phoneAnswerBool;
extern int totalMapWidth;
extern int visMapWidth;
extern int totalMapHeight;
extern int visMapHeight;

/* METHODS */
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
