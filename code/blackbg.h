
//{{BLOCK(blackbg)

//======================================================================
//
//	blackbg, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 3 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 96 + 2048 = 2656
//
//	Time-stamp: 2021-04-09, 15:36:20
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_BLACKBG_H
#define GRIT_BLACKBG_H

#define blackbgTilesLen 96
extern const unsigned short blackbgTiles[48];

#define blackbgMapLen 2048
extern unsigned short blackbgMap[1024];

#define blackbgPalLen 512
extern const unsigned short blackbgPal[256];

#endif // GRIT_BLACKBG_H

//}}BLOCK(blackbg)
