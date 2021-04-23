#define FINALE_SPRITECOUNT 2
#define ARROW_SELECT 749

extern STATIONARYSPRITE finaleSpritesArr[];
extern char marsInteractBool;

void loadFinale();
void initFinaleSprites();
void updatePersistentSprites();
void drawPersistentSprites();
void updateFinale();
void marsSpeaks();
void selectArrow();
void chapterThreeIntro();