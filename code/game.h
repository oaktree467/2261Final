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


enum {PROTAGFRONT, PROTAGSIDE, PROTAGBACK, PROTAGIDLE};

//structs
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
    unsigned short collisionColor;
} STATIONARYSPRITE;



//global variables
extern PROTAGSPRITE protag;
//horizontal and vertical offsets
extern unsigned short hOff;
extern unsigned short vOff;
extern STATIONARYSPRITE (* currSpriteArr)[];
extern int currSpriteArrCount;
extern const unsigned short (* currCollisionMap)[];
extern int spriteCollisionBool;

//methods
void initGame();
void initProtagonist();
void updateGame();
void updateProtagonist();
void updateSprites();
void drawGame();
void drawProtagonist();
void drawSprites();
unsigned short checkCollisionMapColor(int x, int y);
void loadLivingRoom();
void loadKitchen();
void checkSpriteCollision();
