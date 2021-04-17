
//{{BLOCK(cloudsbg)

//======================================================================
//
//	cloudsbg, 512x256@4, 
//	+ palette 256 entries, not compressed
//	+ 155 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x32 
//	Total size: 512 + 4960 + 4096 = 9568
//
//	Time-stamp: 2021-04-16, 16:12:31
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_CLOUDSBG_H
#define GRIT_CLOUDSBG_H

#define cloudsbgTilesLen 4960
extern const unsigned short cloudsbgTiles[2480];

#define cloudsbgMapLen 4096
extern const unsigned short cloudsbgMap[2048];

#define cloudsbgPalLen 512
extern const unsigned short cloudsbgPal[256];

#endif // GRIT_CLOUDSBG_H

//}}BLOCK(cloudsbg)
