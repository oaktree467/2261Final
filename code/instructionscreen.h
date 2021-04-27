
//{{BLOCK(instructionscreen)

//======================================================================
//
//	instructionscreen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 320 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 10240 + 2048 = 12800
//
//	Time-stamp: 2021-04-26, 19:35:53
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_INSTRUCTIONSCREEN_H
#define GRIT_INSTRUCTIONSCREEN_H

#define instructionscreenTilesLen 10240
extern const unsigned short instructionscreenTiles[5120];

#define instructionscreenMapLen 2048
extern const unsigned short instructionscreenMap[1024];

#define instructionscreenPalLen 512
extern const unsigned short instructionscreenPal[256];

#endif // GRIT_INSTRUCTIONSCREEN_H

//}}BLOCK(instructionscreen)
