
//{{BLOCK(startscreen)

//======================================================================
//
//	startscreen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 497 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 15904 + 2048 = 18464
//
//	Time-stamp: 2021-04-27, 00:36:41
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_STARTSCREEN_H
#define GRIT_STARTSCREEN_H

#define startscreenTilesLen 15904
extern const unsigned short startscreenTiles[7952];

#define startscreenMapLen 2048
extern const unsigned short startscreenMap[1024];

#define startscreenPalLen 512
extern const unsigned short startscreenPal[256];

#endif // GRIT_STARTSCREEN_H

//}}BLOCK(startscreen)
