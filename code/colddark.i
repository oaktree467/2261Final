# 1 "colddark.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "colddark.c"
# 1 "colddark.h" 1



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
void messagesNonInteractive();
void clearBoard();
void chapterOneOutro();
# 2 "colddark.c" 2
# 1 "blackbg.h" 1
# 22 "blackbg.h"
extern const unsigned short blackbgTiles[48];


extern unsigned short blackbgMap[1024];


extern const unsigned short blackbgPal[256];
# 3 "colddark.c" 2
# 1 "myLib.h" 1




typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
# 65 "myLib.h"
extern volatile unsigned short *videoBuffer;
# 86 "myLib.h"
typedef struct {
 u16 tileimg[8192];
} charblock;


typedef struct {
 u16 tilemap[1024];
} screenblock;



void setPixel3(int col, int row, unsigned short color);
void drawRect3(int col, int row, int width, int height, volatile unsigned short color);
void fillScreen3(volatile unsigned short color);
void drawImage3(int col, int row, int width, int height, const unsigned short *image);
void drawFullscreenImage3(const unsigned short *image);


void setPixel4(int col, int row, unsigned char colorIndex);
void drawRect4(int col, int row, int width, int height, volatile unsigned char colorIndex);
void fillScreen4(volatile unsigned char colorIndex);
void drawImage4(int col, int row, int width, int height, const unsigned short *image);
void drawFullscreenImage4(const unsigned short *image);


void waitForVBlank();
void flipPage();





typedef struct {
    unsigned short attr0;
    unsigned short attr1;
    unsigned short attr2;
    unsigned short fill;
} OBJ_ATTR;



extern OBJ_ATTR shadowOAM[];
# 158 "myLib.h"
void hideSprites();






typedef struct {
    int worldRow;
    int worldCol;
    int rdel;
    int cdel;
    int width;
    int height;
    int aniCounter;
    int aniState;
    int prevAniState;
    int curFrame;
    int numFrames;
    int hide;
} ANISPRITE;
# 199 "myLib.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
# 210 "myLib.h"
typedef volatile struct {
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;


extern DMA *dma;
# 250 "myLib.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);
# 286 "myLib.h"
typedef void (*ihp)(void);
# 307 "myLib.h"
int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB);
# 4 "colddark.c" 2
# 1 "game.h" 1
# 25 "game.h"
enum {PROTAGFRONT, PROTAGSIDE, PROTAGBACK, PROTAGIDLE};


enum {START, INSTRUCTIONS, INTRO, LIVING_ROOM, COMPUTER, KITCHEN, BEDROOM, SAFE, OUTRO, PAUSE, WIN, LOSE};
int state;




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
extern char phoneAnswerBool;
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
# 5 "colddark.c" 2
# 1 "colddarkmessagebg.h" 1
# 22 "colddarkmessagebg.h"
extern const unsigned short colddarkmessagebgTiles[2240];


extern unsigned short colddarkmessagebgMap[1024];


extern const unsigned short colddarkmessagebgPal[256];
# 6 "colddark.c" 2
# 1 "text.h" 1
extern int letterMap[95];
# 7 "colddark.c" 2
# 1 "sound.h" 1
void setupSounds();
void playSoundA(const signed char* sound, int length, int loops);
void playSoundB(const signed char* sound, int length, int loops);

void setupInterrupts();
void interruptHandler();

void pauseSound();
void unpauseSound();
void stopSound();
void stopSoundA();
void stopSoundB();
# 51 "sound.h"
typedef struct{
    const signed char* data;
    int length;
    int frequency;
    int isPlaying;
    int loops;
    int duration;
    int priority;
    int vBlankCount;
} SOUND;

SOUND soundA;
SOUND soundB;
# 8 "colddark.c" 2
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/string.h" 1 3
# 10 "/opt/devkitpro/devkitARM/arm-none-eabi/include/string.h" 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_ansi.h" 1 3
# 10 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_ansi.h" 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/newlib.h" 1 3
# 14 "/opt/devkitpro/devkitARM/arm-none-eabi/include/newlib.h" 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_newlib_version.h" 1 3
# 15 "/opt/devkitpro/devkitARM/arm-none-eabi/include/newlib.h" 2 3
# 11 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_ansi.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/config.h" 1 3



# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/ieeefp.h" 1 3
# 5 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/config.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 1 3
# 6 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/config.h" 2 3
# 12 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_ansi.h" 2 3
# 11 "/opt/devkitpro/devkitARM/arm-none-eabi/include/string.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 1 3
# 13 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_ansi.h" 1 3
# 14 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 2 3
# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 1 3 4
# 143 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 3 4

# 143 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 209 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 3 4
typedef unsigned int size_t;
# 321 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 3 4
typedef unsigned int wchar_t;
# 15 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 1 3
# 24 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_types.h" 1 3



# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 1 3
# 41 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 55 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 77 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef long int __int32_t;

typedef long unsigned int __uint32_t;
# 103 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 134 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 160 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 182 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;
# 200 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 214 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef long long int __intmax_t;







typedef long long unsigned int __uintmax_t;







typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 5 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_types.h" 2 3


typedef __int64_t _off_t;


typedef __int64_t _fpos_t;


typedef __uint32_t __ino_t;


typedef __uint32_t __dev_t;
# 25 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/lock.h" 1 3




# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 1 3 4
# 9 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 1 3 4
# 13 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 1 3 4
# 35 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 187 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 14 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 1 3 4
# 20 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 3 4
typedef __int8_t int8_t ;



typedef __uint8_t uint8_t ;







typedef __int16_t int16_t ;



typedef __uint16_t uint16_t ;







typedef __int32_t int32_t ;



typedef __uint32_t uint32_t ;







typedef __int64_t int64_t ;



typedef __uint64_t uint64_t ;






typedef __intmax_t intmax_t;




typedef __uintmax_t uintmax_t;




typedef __intptr_t intptr_t;




typedef __uintptr_t uintptr_t;
# 15 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4






typedef __int_least8_t int_least8_t;
typedef __uint_least8_t uint_least8_t;




typedef __int_least16_t int_least16_t;
typedef __uint_least16_t uint_least16_t;




typedef __int_least32_t int_least32_t;
typedef __uint_least32_t uint_least32_t;




typedef __int_least64_t int_least64_t;
typedef __uint_least64_t uint_least64_t;
# 51 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast8_t;
  typedef unsigned int uint_fast8_t;
# 61 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast16_t;
  typedef unsigned int uint_fast16_t;
# 71 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 81 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef long long int int_fast64_t;
  typedef long long unsigned int uint_fast64_t;
# 10 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 2 3 4
# 6 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/lock.h" 2 3

typedef int32_t _LOCK_T;

struct __lock_t {
 _LOCK_T lock;
 uint32_t thread_tag;
 uint32_t counter;
};

typedef struct __lock_t _LOCK_RECURSIVE_T;

extern void __libc_lock_init(_LOCK_T *lock);
extern void __libc_lock_init_recursive(_LOCK_RECURSIVE_T *lock);
extern void __libc_lock_close(_LOCK_T *lock);
extern void __libc_lock_close_recursive(_LOCK_RECURSIVE_T *lock);
extern void __libc_lock_acquire(_LOCK_T *lock);
extern void __libc_lock_acquire_recursive(_LOCK_RECURSIVE_T *lock);
extern void __libc_lock_release(_LOCK_T *lock);
extern void __libc_lock_release_recursive(_LOCK_RECURSIVE_T *lock);


extern int __libc_lock_try_acquire(_LOCK_T *lock);
extern int __libc_lock_try_acquire_recursive(_LOCK_RECURSIVE_T *lock);
# 26 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 2 3


typedef long __blkcnt_t;



typedef long __blksize_t;



typedef __uint64_t __fsblkcnt_t;



typedef __uint32_t __fsfilcnt_t;
# 50 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 3
typedef int __pid_t;







typedef unsigned short __uid_t;


typedef unsigned short __gid_t;



typedef __uint32_t __id_t;
# 88 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 3
typedef __uint32_t __mode_t;





__extension__ typedef long long _off64_t;





typedef _off_t __off_t;


typedef _off64_t __loff_t;


typedef long __key_t;
# 129 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 3
typedef unsigned int __size_t;
# 145 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 3
typedef signed int _ssize_t;
# 156 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 3
typedef _ssize_t __ssize_t;


# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 1 3 4
# 350 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 3 4
typedef unsigned int wint_t;
# 160 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 2 3



typedef struct
{
  int __count;
  union
  {
    wint_t __wch;
    unsigned char __wchb[4];
  } __value;
} _mbstate_t;



typedef _LOCK_RECURSIVE_T _flock_t;




typedef void *_iconv_t;






typedef unsigned long __clock_t;






typedef __int_least64_t __time_t;





typedef unsigned long __clockid_t;


typedef unsigned long __timer_t;


typedef __uint8_t __sa_family_t;



typedef __uint32_t __socklen_t;


typedef int __nl_item;
typedef unsigned short __nlink_t;
typedef long __suseconds_t;
typedef unsigned long __useconds_t;




typedef char * __va_list;
# 16 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 2 3






typedef unsigned long __ULong;
# 38 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct _reent;

struct __locale_t;






struct _Bigint
{
  struct _Bigint *_next;
  int _k, _maxwds, _sign, _wds;
  __ULong _x[1];
};


struct __tm
{
  int __tm_sec;
  int __tm_min;
  int __tm_hour;
  int __tm_mday;
  int __tm_mon;
  int __tm_year;
  int __tm_wday;
  int __tm_yday;
  int __tm_isdst;
};







struct _on_exit_args {
 void * _fnargs[32];
 void * _dso_handle[32];

 __ULong _fntypes;


 __ULong _is_cxa;
};
# 93 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct _atexit {
 struct _atexit *_next;
 int _ind;

 void (*_fns[32])(void);
        struct _on_exit_args _on_exit_args;
};
# 117 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct __sbuf {
 unsigned char *_base;
 int _size;
};
# 181 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct __sFILE {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;






  void * _cookie;

  int (*_read) (struct _reent *, void *,
        char *, int);
  int (*_write) (struct _reent *, void *,
         const char *,
         int);
  _fpos_t (*_seek) (struct _reent *, void *, _fpos_t, int);
  int (*_close) (struct _reent *, void *);


  struct __sbuf _ub;
  unsigned char *_up;
  int _ur;


  unsigned char _ubuf[3];
  unsigned char _nbuf[1];


  struct __sbuf _lb;


  int _blksize;
  _off_t _offset;


  struct _reent *_data;



  _flock_t _lock;

  _mbstate_t _mbstate;
  int _flags2;
};
# 287 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
typedef struct __sFILE __FILE;



struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 319 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;




};
# 610 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct _reent
{
  int _errno;




  __FILE *_stdin, *_stdout, *_stderr;

  int _inc;
  char _emergency[25];


  int _unspecified_locale_info;
  struct __locale_t *_locale;

  int __sdidinit;

  void (*__cleanup) (struct _reent *);


  struct _Bigint *_result;
  int _result_k;
  struct _Bigint *_p5s;
  struct _Bigint **_freelist;


  int _cvtlen;
  char *_cvtbuf;

  union
    {
      struct
        {
          unsigned int _unused_rand;
          char * _strtok_last;
          char _asctime_buf[26];
          struct __tm _localtime_buf;
          int _gamma_signgam;
          __extension__ unsigned long long _rand_next;
          struct _rand48 _r48;
          _mbstate_t _mblen_state;
          _mbstate_t _mbtowc_state;
          _mbstate_t _wctomb_state;
          char _l64a_buf[8];
          char _signal_buf[24];
          int _getdate_err;
          _mbstate_t _mbrlen_state;
          _mbstate_t _mbrtowc_state;
          _mbstate_t _mbsrtowcs_state;
          _mbstate_t _wcrtomb_state;
          _mbstate_t _wcsrtombs_state;
   int _h_errno;
        } _reent;



      struct
        {

          unsigned char * _nextf[30];
          unsigned int _nmalloc[30];
        } _unused;
    } _new;



  struct _atexit *_atexit;
  struct _atexit _atexit0;



  void (**(_sig_func))(int);




  struct _glue __sglue;

  __FILE __sf[3];

  void *deviceData;
};
# 817 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
extern struct _reent *_impure_ptr ;
extern struct _reent *const _global_impure_ptr ;

void _reclaim_reent (struct _reent *);





  struct _reent * __getreent (void);
# 12 "/opt/devkitpro/devkitARM/arm-none-eabi/include/string.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h" 1 3
# 47 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h" 3
# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 1 3 4
# 48 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h" 2 3
# 13 "/opt/devkitpro/devkitARM/arm-none-eabi/include/string.h" 2 3




# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 1 3 4
# 18 "/opt/devkitpro/devkitARM/arm-none-eabi/include/string.h" 2 3
# 27 "/opt/devkitpro/devkitARM/arm-none-eabi/include/string.h" 3


void * memchr (const void *, int, size_t);
int memcmp (const void *, const void *, size_t);
void * memcpy (void *restrict, const void *restrict, size_t);
void * memmove (void *, const void *, size_t);
void * memset (void *, int, size_t);
char *strcat (char *restrict, const char *restrict);
char *strchr (const char *, int);
int strcmp (const char *, const char *);
int strcoll (const char *, const char *);
char *strcpy (char *restrict, const char *restrict);
size_t strcspn (const char *, const char *);
char *strerror (int);
size_t strlen (const char *);
char *strncat (char *restrict, const char *restrict, size_t);
int strncmp (const char *, const char *, size_t);
char *strncpy (char *restrict, const char *restrict, size_t);
char *strpbrk (const char *, const char *);
char *strrchr (const char *, int);
size_t strspn (const char *, const char *);
char *strstr (const char *, const char *);

char *strtok (char *restrict, const char *restrict);

size_t strxfrm (char *restrict, const char *restrict, size_t);
# 86 "/opt/devkitpro/devkitARM/arm-none-eabi/include/string.h" 3
char *_strdup_r (struct _reent *, const char *);



char *_strndup_r (struct _reent *, const char *, size_t);
# 112 "/opt/devkitpro/devkitARM/arm-none-eabi/include/string.h" 3
char * _strerror_r (struct _reent *, int, int, int *);
# 134 "/opt/devkitpro/devkitARM/arm-none-eabi/include/string.h" 3
char *strsignal (int __signo);
# 175 "/opt/devkitpro/devkitARM/arm-none-eabi/include/string.h" 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/string.h" 1 3
# 176 "/opt/devkitpro/devkitARM/arm-none-eabi/include/string.h" 2 3


# 9 "colddark.c" 2
# 1 "introdrone.h" 1



# 3 "introdrone.h"
extern const unsigned int introdrone_sampleRate;
extern const unsigned int introdrone_length;
extern const signed char introdrone_data[];
# 10 "colddark.c" 2

int intervals[] = {418, 482, 546};
unsigned short messageUnedited[255];
unsigned short cdmessageMapCopy[2048];
int cursor;
int coldMessageBool;
int timerI;
int timerJ;
int stage;
int nonInteractText;

char (* activeMessage)[];
char sniff[] = "It only smells...         well, cold.";
char moveForward[] = "You can't move your arms, or your legs. Everything  feels rigid.";
char blink[] = "You can't blink. You can'teven tell if your eyes areopen or closed.";


int blinkBool;
int moveForwardBool;
int sniffBool;


void initColdDark() {
    memcpy(cdmessageMapCopy, colddarkmessagebgMap, 2048);

    cursor = 0;
    coldMessageBool = 0;
    blinkBool = 0;
    moveForwardBool = 0;
    sniffBool = 0;
    stage = 0;
    nonInteractText = 0;

    for (int i = 0; i < 255; i++) {
        messageUnedited[i] = cdmessageMapCopy[384 + i];
    }

}


void chapterOneIntro() {

    playSoundA(introdrone_data, introdrone_length, 1);
    for (int i = 0; i < 600; i++) {
        blackbgMap[i] = blackbgMap[642];
        if (i % 32 == 0) {
            DMANow(3, blackbgMap, &((screenblock *)0x6000000)[20], ((1 << 30) | (1024 * 4)));
        }
    }

    timerWait(20000, 64);

    for (int i = 0; i < 600; i++) {
        blackbgMap[i] = blackbgMap[706];
        if (i % 32 == 0) {
            DMANow(3, blackbgMap, &((screenblock *)0x6000000)[20], ((1 << 30) | (1024 * 4)));
        }
    }


    DMANow(3, colddarkmessagebgTiles, &((charblock *)0x6000000)[0], 4480 / 2);
    DMANow(3, cdmessageMapCopy, &((screenblock *)0x6000000)[24], ((0 << 30) | (1024 * 4)));
    messagesNonInteractive();

}

void updateColdDark() {
    if (stage != 1) {
        if ((!(~(oldButtons)&((1<<0))) && (~buttons & ((1<<0))))) {
            nonInteractText++;
            messagesNonInteractive();
        }
    } else {
        if ((!(~(oldButtons)&((1<<7))) && (~buttons & ((1<<7))))) {
            cursor = (cursor + 1) % 3;
            updateHighlight();
        }

        if ((!(~(oldButtons)&((1<<6))) && (~buttons & ((1<<6))))) {
            if (cursor == 0) {
                cursor = 2;
            } else {
                cursor--;
            }
            updateHighlight();
        }

        if ((!(~(oldButtons)&((1<<0))) && (~buttons & ((1<<0))))) {
            if (blinkBool && moveForwardBool && sniffBool) {
                nonInteractText = 5;
                stage = 2;
                messagesNonInteractive();
            } else if (!coldMessageBool) {
                loadColdMessage();
            } else {
                loadMessageUnedited();
            }
        }
    }
}

void updateHighlight() {
    for (int i = 0; i < 14; i++) {
        for (int j = 0; j < 6; j++){
            if (((418 + (j * 32) + i) >= intervals[cursor])
            && ((418 + (j * 32) + i) <= (intervals[cursor] + 45))) {
                blackbgMap[418 + (j * 32) + i] = blackbgMap[642];
            } else {
                blackbgMap[418 + (j * 32) + i] = blackbgMap[706];
            }
        }
    }

    DMANow(3, blackbgMap, &((screenblock *)0x6000000)[20], ((0 << 30) | (1024 * 4)));

}

void messagesNonInteractive() {
    char cd_m0[] = "Oh, Lord...";
    char cd_m1[] = "It's cold. Dark. You can'tmove or see a thing.";
    char cd_m2[] = "Usually during an attack, you can at least see...";
    char cd_m3[] = "Are you...? No. No, you   can't be. Let's not think about that. There must be a way out.";
    char cd_m4[] = "Okay, calm down. You've   been taking preventative  measures against this     outcome for months.";
    char cd_m5[] = "Maybe you should just try to remember how you got   here, and then you can getout...";

    clearBoard();

    DMANow(3, cdmessageMapCopy, &((screenblock *)0x6000000)[24], 1024 * 4);

    switch (nonInteractText) {
        case 0:
            activeMessage = &cd_m0;
            printColdText();
            break;
        case 1:
            activeMessage = &cd_m1;
            printColdText();
            break;
        case 2:
            activeMessage = &cd_m2;
            printColdText();
            break;
        case 3:
            activeMessage = &cd_m3;
            printColdText();
            break;
        case 4:
            updateHighlight();
            loadMessageUnedited();
            stage = 1;
            break;
        case 5:
            activeMessage = &cd_m4;
            printColdText();
            break;
        case 6:
            activeMessage = &cd_m5;
            printColdText();
            break;
        case 7:
            chapterOneOutro();
            break;
    }
}

void loadColdMessage() {
    coldMessageBool = 1;

    clearBoard();

    DMANow(3, cdmessageMapCopy, &((screenblock *)0x6000000)[24], 1024 * 4);


    switch (cursor) {
        case 0:
            activeMessage = &sniff;
            sniffBool = 1;
            break;
        case 1:
            activeMessage = &moveForward;
            moveForwardBool = 1;
            break;
        case 2:
            activeMessage = &blink;
            blinkBool = 1;
            break;
    }

    printColdText();
}

void clearBoard() {

    for (int i = 0; i < 26; i++) {
        for (int j = 0; j < 6; j++) {
            cdmessageMapCopy[418 + i + (j * 32)] = cdmessageMapCopy[748];
        }
    }
}



void loadMessageUnedited() {
    for (int i = 0; i < 255; i++) {
        cdmessageMapCopy[384 + i] = messageUnedited[i];
    }
    DMANow(3, cdmessageMapCopy, &((screenblock *)0x6000000)[24], 1024 * 4);
    coldMessageBool = 0;
}



void printColdText() {
    *(volatile unsigned short*)0x400010A |= (0<<7);
    *(volatile unsigned short*)0x400010A = 1;
    *(volatile unsigned short*)0x4000108 = 65536 - 11000;
    *(volatile unsigned short*)0x400010A |= (1<<6) | (1<<7);
    timerI = 0;
    timerJ = 418;
    while ((*activeMessage)[timerI] != '\0') {

        if ((timerJ - 444) % 32 == 0) {
            timerJ += 6;
        }

        cdmessageMapCopy[timerJ] = cdmessageMapCopy[(letterMap[((*activeMessage)[timerI]) - 32])];

        DMANow(3, cdmessageMapCopy, &((screenblock *)0x6000000)[24], 1024 * 4);

    }
    *(volatile unsigned short*)0x400010A |= (0<<7);

}

void chapterOneOutro() {

    for (int i = 0; i < 640; i++) {
        blackbgMap[i] = blackbgMap[706];
        if (i % 32 == 0) {
            DMANow(3, blackbgMap, &((screenblock *)0x6000000)[20], (1024 * 4));
        }
    }

    for (int i = 0; i < 700; i++) {
        cdmessageMapCopy[i] = cdmessageMapCopy[0];
        if (i % 32 == 0) {
            DMANow(3, cdmessageMapCopy, &((screenblock *)0x6000000)[24], ((1 << 30) | (1024 * 4)));
        }
    }
    stopSoundA();
    timerWait(20000, 1024);


    nextRoomBool = 1;
}
