
//{{BLOCK(musicbg)

//======================================================================
//
//	musicbg, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 37 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 1184 + 2048 = 3744
//
//	Time-stamp: 2021-04-21, 22:55:17
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_MUSICBG_H
#define GRIT_MUSICBG_H

#define musicbgTilesLen 1184
extern const unsigned short musicbgTiles[592];

#define musicbgMapLen 2048
extern const unsigned short musicbgMap[1024];

#define musicbgPalLen 512
extern const unsigned short musicbgPal[256];

#endif // GRIT_MUSICBG_H

//}}BLOCK(musicbg)
