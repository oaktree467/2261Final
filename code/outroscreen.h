
//{{BLOCK(outroscreen)

//======================================================================
//
//	outroscreen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 94 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 3008 + 2048 = 5568
//
//	Time-stamp: 2021-04-01, 21:15:46
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_OUTROSCREEN_H
#define GRIT_OUTROSCREEN_H

#define outroscreenTilesLen 3008
extern const unsigned short outroscreenTiles[1504];

#define outroscreenMapLen 2048
extern const unsigned short outroscreenMap[1024];

#define outroscreenPalLen 512
extern const unsigned short outroscreenPal[256];

#endif // GRIT_OUTROSCREEN_H

//}}BLOCK(outroscreen)
