
//{{BLOCK(finalebg)

//======================================================================
//
//	finalebg, 512x256@4, 
//	+ palette 256 entries, not compressed
//	+ 192 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x32 
//	Total size: 512 + 6144 + 4096 = 10752
//
//	Time-stamp: 2021-04-22, 14:56:10
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_FINALEBG_H
#define GRIT_FINALEBG_H

#define finalebgTilesLen 6144
extern const unsigned short finalebgTiles[3072];

#define finalebgMapLen 4096
extern const unsigned short finalebgMap[2048];

#define finalebgPalLen 512
extern const unsigned short finalebgPal[256];

#endif // GRIT_FINALEBG_H

//}}BLOCK(finalebg)
