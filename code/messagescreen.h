
//{{BLOCK(messagescreen)

//======================================================================
//
//	messagescreen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 83 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 2656 + 2048 = 5216
//
//	Time-stamp: 2021-04-22, 20:58:19
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_MESSAGESCREEN_H
#define GRIT_MESSAGESCREEN_H

#define messagescreenTilesLen 2656
extern const unsigned short messagescreenTiles[1328];

#define messagescreenMapLen 2048
extern unsigned short messagescreenMap[1024];

#define messagescreenPalLen 512
extern const unsigned short messagescreenPal[256];

#endif // GRIT_MESSAGESCREEN_H

//}}BLOCK(messagescreen)
