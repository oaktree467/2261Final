
//{{BLOCK(safebg)

//======================================================================
//
//	safebg, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 30 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 960 + 2048 = 3520
//
//	Time-stamp: 2021-04-09, 00:50:31
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_SAFEBG_H
#define GRIT_SAFEBG_H

#define safebgTilesLen 960
extern const unsigned short safebgTiles[480];

#define safebgMapLen 2048
extern const unsigned short safebgMap[1024];

#define safebgPalLen 512
extern const unsigned short safebgPal[256];

#endif // GRIT_SAFEBG_H

//}}BLOCK(safebg)
