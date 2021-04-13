#define Y_HIGHLIGHT 642
#define B_HIGHLIGHT 706

extern int intervals[];
extern char (* activeMessage)[];
extern int nextRoomBool;

void initColdDark();
void introMessage();
void chapterOneIntro();
void updateHighlight();
void updateColdDark();
void loadColdMessage();
void loadMessageUnedited();
void printColdText();
void coldDarkInterruptHandler();
void setUpColdDarkInterrupts();
void timerWait(int start, int freq);