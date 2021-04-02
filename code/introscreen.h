
//{{BLOCK(introscreen)

//======================================================================
//
//	introscreen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 94 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 3008 + 2048 = 5568
//
//	Time-stamp: 2021-04-01, 21:12:34
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_INTROSCREEN_H
#define GRIT_INTROSCREEN_H

#define introscreenTilesLen 3008
extern const unsigned short introscreenTiles[1504];

#define introscreenMapLen 2048
extern const unsigned short introscreenMap[1024];

#define introscreenPalLen 512
extern const unsigned short introscreenPal[256];

#endif // GRIT_INTROSCREEN_H

//}}BLOCK(introscreen)
