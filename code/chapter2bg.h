
//{{BLOCK(chapter2bg)

//======================================================================
//
//	chapter2bg, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 135 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 4320 + 2048 = 6880
//
//	Time-stamp: 2021-04-14, 19:58:20
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_CHAPTER2BG_H
#define GRIT_CHAPTER2BG_H

#define chapter2bgTilesLen 4320
extern const unsigned short chapter2bgTiles[2160];

#define chapter2bgMapLen 2048
extern unsigned short chapter2bgMap[1024];

#define chapter2bgPalLen 512
extern const unsigned short chapter2bgPal[256];

#endif // GRIT_CHAPTER2BG_H

//}}BLOCK(chapter2bg)
