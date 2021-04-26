
//{{BLOCK(finscreen)

//======================================================================
//
//	finscreen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 127 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 4064 + 2048 = 6624
//
//	Time-stamp: 2021-04-23, 14:35:49
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_FINSCREEN_H
#define GRIT_FINSCREEN_H

#define finscreenTilesLen 4064
extern const unsigned short finscreenTiles[2032];

#define finscreenMapLen 2048
extern const unsigned short finscreenMap[1024];

#define finscreenPalLen 512
extern const unsigned short finscreenPal[256];

#endif // GRIT_FINSCREEN_H

//}}BLOCK(finscreen)
