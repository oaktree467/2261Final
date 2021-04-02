
//{{BLOCK(pausescreen)

//======================================================================
//
//	pausescreen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 175 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 5600 + 2048 = 8160
//
//	Time-stamp: 2021-04-01, 21:14:33
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

const unsigned short pausescreenTiles[2800] __attribute__((aligned(4)))=
{
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x3321,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x3211,0x1111,0x0332,
	0x1111,0x0003,0x1111,0x0003,0x1111,0x0003,0x1111,0x0003,

	0x1111,0x1111,0x1111,0x1111,0x1233,0x1111,0x3300,0x1123,
	0x0000,0x2330,0x0000,0x3000,0x0000,0x0000,0x0000,0x0000,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1112,0x1111,0x1123,0x1111,0x1230,0x1111,
	0x2111,0x0033,0x3211,0x0000,0x0311,0x0000,0x0321,0x0000,
	0x0031,0x3000,0x0031,0x3000,0x0032,0x3000,0x0003,0x3000,
	0x2300,0x1111,0x3000,0x1111,0x3000,0x2112,0x0000,0x3213,
	0x0003,0x0323,0x0032,0x0030,0x0031,0x3330,0x0031,0x2130,

	0x1111,0x2111,0x3332,0x3123,0x0003,0x2230,0x0000,0x2300,
	0x0000,0x3000,0x0000,0x0000,0x0000,0x0000,0x3333,0x0003,
	0x1123,0x1111,0x1230,0x1111,0x2303,0x1111,0x3003,0x1111,
	0x3003,0x1111,0x3003,0x1112,0x0003,0x1113,0x0003,0x1113,
	0x1111,0x1111,0x1111,0x1232,0x3211,0x3303,0x0321,0x0000,
	0x0032,0x0000,0x0003,0x0000,0x0003,0x0330,0x0003,0x0000,
	0x1111,0x1111,0x1111,0x1111,0x1112,0x1111,0x1123,0x1111,
	0x1230,0x1111,0x1300,0x1111,0x2300,0x1111,0x3000,0x1111,

	0x1111,0x0032,0x1111,0x0031,0x1111,0x0031,0x1111,0x0031,
	0x1111,0x0031,0x1111,0x0031,0x1111,0x0031,0x1111,0x0031,
	0x3300,0x0003,0x1300,0x0003,0x1300,0x0032,0x1300,0x0031,
	0x1300,0x0031,0x1300,0x0032,0x1300,0x0003,0x2300,0x0003,
	0x1300,0x1111,0x2300,0x3211,0x3000,0x0321,0x3000,0x0032,
	0x3000,0x0003,0x3000,0x0000,0x3000,0x0033,0x3000,0x3321,
	0x1111,0x3211,0x2333,0x0311,0x3000,0x0312,0x0000,0x0323,
	0x0000,0x0030,0x0000,0x0000,0x0000,0x0000,0x0333,0x0000,

	0x1112,0x1111,0x1123,0x1111,0x1230,0x1111,0x1300,0x2332,
	0x1300,0x3003,0x1300,0x0003,0x1300,0x0003,0x1300,0x0003,
	0x1111,0x2321,0x2111,0x3033,0x3111,0x0000,0x3211,0x0000,
	0x0312,0x0000,0x0323,0x0000,0x0330,0x0000,0x0330,0x0000,
	0x1111,0x1111,0x1123,0x1111,0x2330,0x2111,0x3000,0x3211,
	0x2300,0x0321,0x3000,0x0032,0x0030,0x0033,0x3323,0x0030,
	0x1111,0x1111,0x2321,0x1111,0x3033,0x1123,0x0000,0x1230,
	0x0000,0x2300,0x0000,0x3000,0x3300,0x3000,0x0000,0x0000,

	0x1111,0x1111,0x1111,0x2111,0x1111,0x3111,0x1111,0x3111,
	0x1111,0x3111,0x1111,0x3111,0x1112,0x3111,0x1113,0x3111,
	0x1111,0x1111,0x1233,0x1111,0x2300,0x1111,0x3000,0x1111,
	0x3000,0x1112,0x0000,0x1113,0x0000,0x1113,0x0000,0x1113,
	0x0032,0x2300,0x0003,0x1300,0x0003,0x1300,0x0003,0x1300,
	0x0003,0x3300,0x0003,0x0300,0x0003,0x0330,0x0003,0x3230,
	0x0321,0x1130,0x0311,0x1123,0x3211,0x1112,0x3332,0x2112,
	0x0003,0x3233,0x0000,0x0300,0x0000,0x0000,0x0000,0x0000,

	0x1111,0x0003,0x3211,0x0003,0x0332,0x0000,0x0003,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x3000,0x0000,0x3300,0x0000,
	0x0000,0x1123,0x0003,0x3330,0x0003,0x0000,0x0033,0x0000,
	0x0033,0x0000,0x0033,0x0000,0x0033,0x0000,0x0033,0x0300,
	0x1111,0x1111,0x1123,0x1111,0x2330,0x1111,0x3000,0x1112,
	0x0000,0x1123,0x0000,0x1130,0x0000,0x1230,0x0000,0x1300,
	0x0003,0x0000,0x0003,0x0000,0x0003,0x0000,0x0003,0x0000,
	0x0003,0x0000,0x0003,0x3330,0x0003,0x3130,0x0003,0x3130,

	0x3000,0x1112,0x0000,0x1113,0x3000,0x1112,0x2300,0x1111,
	0x1233,0x1111,0x1303,0x1111,0x2300,0x1111,0x3000,0x1111,
	0x1111,0x0031,0x1111,0x0031,0x1111,0x0031,0x1111,0x0031,
	0x1111,0x0031,0x1111,0x0031,0x1111,0x0031,0x1111,0x0031,
	0x3000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x3000,0x0000,0x2330,0x0000,0x1123,
	0x3000,0x1111,0x2300,0x1111,0x1300,0x3211,0x1230,0x0321,
	0x1123,0x0032,0x3212,0x0003,0x0311,0x0000,0x0311,0x0000,

	0x0311,0x0000,0x0332,0x0300,0x0003,0x0300,0x0000,0x0300,
	0x0000,0x0300,0x0000,0x0300,0x0030,0x0300,0x0033,0x3300,
	0x2300,0x0003,0x3000,0x0003,0x3000,0x0003,0x3000,0x0003,
	0x0000,0x0003,0x0000,0x0003,0x0000,0x0033,0x0000,0x0033,
	0x0330,0x3000,0x0300,0x0000,0x3230,0x0000,0x2130,0x0003,
	0x1130,0x0032,0x1130,0x0031,0x1130,0x0321,0x3330,0x3212,
	0x2112,0x0033,0x1113,0x0031,0x1113,0x0031,0x1123,0x0031,
	0x1230,0x0031,0x2300,0x0031,0x3000,0x0031,0x3000,0x0032,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x3000,
	0x0000,0x2330,0x3300,0x3033,0x1300,0x3003,0x1300,0x0003,
	0x1123,0x3111,0x1130,0x3111,0x1123,0x3332,0x3212,0x0003,
	0x0321,0x0000,0x0031,0x3000,0x0032,0x3300,0x0033,0x3300,
	0x0000,0x1113,0x0000,0x1113,0x3000,0x1112,0x3000,0x1111,
	0x3000,0x1111,0x3000,0x1111,0x3000,0x1112,0x0000,0x1113,
	0x0003,0x2230,0x0003,0x2300,0x0032,0x3000,0x0031,0x3000,
	0x0321,0x0000,0x3211,0x0000,0x2111,0x0003,0x1111,0x0032,

	0x0033,0x0000,0x0031,0x0300,0x0031,0x3300,0x0033,0x2300,
	0x0000,0x3000,0x0000,0x3000,0x0000,0x3000,0x0000,0x3000,
	0x3000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0003,0x0000,
	0x0032,0x3000,0x3321,0x3000,0x3111,0x3000,0x2111,0x3003,
	0x0033,0x0330,0x0033,0x0300,0x0323,0x0300,0x0313,0x0300,
	0x0312,0x0300,0x0311,0x3300,0x3211,0x3300,0x2111,0x2303,
	0x0300,0x1300,0x3300,0x2300,0x3300,0x3000,0x2300,0x3003,
	0x2300,0x3003,0x3000,0x3003,0x3000,0x3032,0x2303,0x3031,

	0x0032,0x3230,0x0031,0x0330,0x0031,0x0000,0x0321,0x0000,
	0x3211,0x0000,0x2111,0x0033,0x1111,0x3321,0x1111,0x1111,
	0x3000,0x1111,0x3000,0x1111,0x3000,0x1111,0x3000,0x1111,
	0x3000,0x1111,0x2300,0x1111,0x1233,0x1111,0x1111,0x1111,
	0x1111,0x0031,0x1111,0x0031,0x1111,0x0031,0x1111,0x0031,
	0x1111,0x0031,0x1111,0x0321,0x1111,0x0311,0x1111,0x3211,
	0x3000,0x1112,0x3000,0x1111,0x2300,0x1111,0x2300,0x1111,
	0x3000,0x1111,0x3000,0x1111,0x3000,0x1111,0x3003,0x1111,

	0x3211,0x0000,0x2111,0x0003,0x1111,0x0032,0x1111,0x0321,
	0x1111,0x3211,0x1111,0x2111,0x1111,0x1111,0x1111,0x1111,
	0x0030,0x3300,0x0000,0x3300,0x0000,0x3300,0x0000,0x3300,
	0x0000,0x2230,0x0033,0x1130,0x0031,0x1130,0x0321,0x1130,
	0x0000,0x0033,0x0000,0x0003,0x0000,0x0003,0x0000,0x0000,
	0x0003,0x0000,0x0003,0x0000,0x0003,0x0000,0x3332,0x3333,
	0x0000,0x3123,0x0000,0x3230,0x0300,0x2300,0x3300,0x3000,
	0x2300,0x0003,0x1230,0x0032,0x1130,0x3321,0x1123,0x2111,

	0x0000,0x0323,0x0000,0x0330,0x0003,0x0330,0x0003,0x3230,
	0x0000,0x2300,0x0000,0x1300,0x0000,0x1230,0x0033,0x1123,
	0x2300,0x0003,0x3300,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0003,0x0000,0x0332,0x3000,0x3211,0x2333,0x1111,0x1111,
	0x0033,0x3300,0x0323,0x0000,0x3213,0x0000,0x2113,0x0003,
	0x1113,0x0332,0x1112,0x3211,0x1111,0x3111,0x1111,0x3111,
	0x0000,0x1113,0x0000,0x1113,0x0000,0x1113,0x0000,0x1113,
	0x0000,0x1113,0x0000,0x1113,0x0000,0x1113,0x0000,0x1113,

	0x1111,0x3321,0x1111,0x2111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x0000,0x3000,0x0333,0x3000,0x3211,0x3000,0x3111,0x3000,
	0x3111,0x3000,0x2111,0x2303,0x1111,0x1232,0x1111,0x1111,
	0x1111,0x2332,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1232,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,

	0x1232,0x2321,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x3211,0x1123,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x3321,0x1112,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x2111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,

	0x3333,0x1112,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x0000,0x1111,0x1110,0x1111,0x1110,
	0x1111,0x1110,0x1111,0x1110,0x1111,0x1110,0x1111,0x0000,
	0x1111,0x1111,0x1100,0x1111,0x1001,0x1111,0x1011,0x1111,
	0x1011,0x0011,0x1011,0x0011,0x1001,0x0011,0x1100,0x0011,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x0001,0x1110,0x1110,0x1111,0x1111,0x0111,0x1111,0x0111,

	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x0001,0x1100,0x1100,0x1001,0x1110,0x1011,0x0000,0x1000,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x0111,0x0000,0x1011,0x0111,0x1011,0x1111,0x0111,0x1100,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x0001,0x1111,0x1110,0x1111,0x1110,0x1111,0x0001,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1100,0x1111,0x1101,0x1111,0x1111,0x1111,0x1111,0x1111,

	0x1111,0x1111,0x0001,0x1100,0x1100,0x1001,0x1110,0x1111,
	0x1110,0x1111,0x1000,0x1111,0x0011,0x1110,0x1111,0x1000,
	0x1111,0x1111,0x0011,0x0000,0x1011,0x1111,0x1011,0x1111,
	0x1011,0x1111,0x1011,0x1111,0x0011,0x0000,0x1011,0x1111,
	0x1111,0x1111,0x1110,0x1100,0x1111,0x1100,0x1111,0x1100,
	0x1111,0x1100,0x1111,0x1100,0x1111,0x1100,0x1111,0x1100,
	0x1111,0x1111,0x1111,0x0011,0x1111,0x1011,0x1111,0x1011,
	0x1111,0x1011,0x1111,0x1011,0x1111,0x0011,0x1111,0x1011,

	0x1111,0x1111,0x0000,0x1110,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x0111,0x1111,0x0111,0x0000,0x0111,0x1111,0x0111,
	0x1111,0x1111,0x0011,0x1100,0x1100,0x1011,0x1110,0x1111,
	0x1110,0x1111,0x1110,0x1111,0x1110,0x1111,0x1110,0x1111,
	0x1111,0x1111,0x0001,0x0000,0x1111,0x1100,0x1111,0x1100,
	0x1111,0x1100,0x1111,0x1100,0x1111,0x1100,0x1111,0x1100,
	0x1111,0x1111,0x1110,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,

	0x1111,0x1110,0x1111,0x1110,0x1111,0x1110,0x1111,0x1110,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x0011,0x1111,0x0011,0x1111,0x0011,0x1111,0x0011,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x0111,0x1111,0x0111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1110,0x1111,0x1110,0x1111,0x1100,0x1101,0x0001,0x1000,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,

	0x1111,0x0011,0x1111,0x0111,0x1001,0x0111,0x0111,0x0000,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1110,0x1111,0x0110,0x1110,0x1111,0x0001,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1100,0x1111,0x1001,0x1111,0x1001,0x1111,0x1100,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x0111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,

	0x1111,0x1011,0x1111,0x1011,0x1110,0x1001,0x0001,0x1110,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1011,0x1111,0x1011,0x1111,0x1011,0x1111,0x0011,0x0000,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1100,0x1111,0x1100,0x1111,0x1100,0x1110,0x0000,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1011,0x1111,0x1011,0x1111,0x1011,0x1000,0x0011,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,

	0x1111,0x0111,0x1111,0x1111,0x1111,0x1111,0x0000,0x1110,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1110,0x1111,0x1110,0x1111,0x1100,0x1011,0x0011,0x1100,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1100,0x1111,0x1100,0x1111,0x1100,0x1111,0x1100,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1101,0x1111,0x1101,0x1111,0x1101,

	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x0001,0x1000,0x1101,0x0011,0x1101,0x0111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x0111,0x0000,0x0111,0x1111,0x0111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1100,0x0000,0x1111,0x0111,0x1111,0x0111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x0000,0x0011,0x1110,0x0011,0x1110,0x0011,

	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1100,0x1111,0x1100,0x1111,0x1100,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x0011,0x1111,0x0011,0x1110,0x0011,0x1110,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1100,0x1111,0x1100,0x1111,0x1100,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x0011,0x1111,0x1111,0x1111,0x1111,

	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x0000,0x1100,0x1001,0x1111,0x1001,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x0011,0x1100,0x1001,0x1011,0x1100,0x0011,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x0111,0x1111,0x1001,0x1111,0x1101,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1000,0x1111,0x0111,0x1111,0x1111,0x1111,

	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1001,0x1111,0x1001,0x1111,0x0100,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1100,0x0011,0x1100,0x0011,0x1010,0x0101,
	0x0011,0x0000,0x1111,0x1100,0x1111,0x1100,0x1111,0x1100,
	0x1111,0x1100,0x1111,0x1101,0x1111,0x1101,0x1111,0x0011,
	0x1100,0x0011,0x1111,0x1001,0x1111,0x1100,0x1111,0x1110,
	0x1111,0x1110,0x1111,0x1100,0x1111,0x1001,0x1100,0x0011,

	0x1100,0x1111,0x1011,0x1111,0x0011,0x1111,0x0111,0x1111,
	0x0111,0x1111,0x0011,0x1111,0x1011,0x1111,0x1100,0x1111,
	0x1101,0x0111,0x1101,0x0011,0x0001,0x1000,0x1101,0x1100,
	0x1101,0x1101,0x1101,0x1001,0x1101,0x0011,0x1101,0x0111,
	0x0111,0x1111,0x0111,0x1111,0x0111,0x0000,0x0111,0x1111,
	0x0111,0x1111,0x0111,0x1111,0x0111,0x1111,0x0111,0x0000,
	0x1111,0x0111,0x1111,0x0111,0x1110,0x0111,0x1111,0x0111,
	0x1111,0x0111,0x1111,0x0111,0x1111,0x0111,0x1100,0x0111,

	0x1110,0x0011,0x1110,0x0011,0x1110,0x0011,0x1110,0x0011,
	0x1110,0x0011,0x1110,0x0111,0x1110,0x0111,0x1110,0x1111,
	0x1111,0x1100,0x1111,0x1100,0x1111,0x1100,0x1111,0x1100,
	0x1111,0x1100,0x1111,0x1100,0x1110,0x1110,0x0000,0x1111,
	0x0011,0x1101,0x0011,0x1101,0x0011,0x1001,0x0011,0x1011,
	0x0011,0x0111,0x0011,0x0111,0x0011,0x0111,0x0011,0x1111,
	0x1100,0x1111,0x1100,0x1111,0x1100,0x1111,0x1100,0x1111,
	0x1100,0x1111,0x1101,0x1111,0x1101,0x1111,0x1100,0x1111,

	0x1001,0x1111,0x1001,0x1111,0x1001,0x1111,0x1001,0x1111,
	0x1001,0x1111,0x1001,0x1111,0x1001,0x1111,0x1001,0x1111,
	0x1100,0x0111,0x1110,0x0111,0x1110,0x0111,0x1110,0x0111,
	0x1100,0x0111,0x1100,0x0011,0x1001,0x1011,0x0011,0x1100,
	0x1111,0x1100,0x1111,0x1110,0x1111,0x1110,0x1111,0x1110,
	0x1111,0x1100,0x1111,0x1101,0x1111,0x1001,0x1111,0x0111,
	0x1111,0x1111,0x1111,0x1111,0x0001,0x0111,0x0111,0x0111,
	0x0111,0x0111,0x0111,0x0011,0x0011,0x0011,0x1000,0x1011,

	0x0110,0x1111,0x0110,0x1111,0x0110,0x1110,0x1110,0x1110,
	0x0000,0x1110,0x1111,0x1100,0x1111,0x1101,0x1111,0x1001,
	0x1000,0x0101,0x1000,0x0101,0x0100,0x0110,0x0100,0x0110,
	0x1100,0x0110,0x1100,0x0111,0x1100,0x0111,0x1100,0x0111,
	0x1111,0x1111,0x1111,0x1111,0x1110,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1100,0x1111,
	0x1111,0x1111,0x1111,0x0001,0x1111,0x1100,0x1111,0x1110,
	0x1111,0x1101,0x1111,0x0011,0x1111,0x1111,0x1111,0x1111,

	0x1111,0x1111,0x1110,0x0000,0x1100,0x1011,0x1111,0x1011,
	0x1111,0x1011,0x1110,0x1011,0x1100,0x1011,0x1101,0x1011,
	0x1111,0x1111,0x1100,0x0011,0x1111,0x0011,0x1111,0x0101,
	0x1111,0x1101,0x1111,0x1101,0x1111,0x0001,0x1111,0x1110,
	0x1111,0x1111,0x1111,0x0000,0x1111,0x1110,0x1111,0x1110,
	0x1110,0x1110,0x1110,0x0000,0x1110,0x0110,0x1101,0x1110,
	0x1111,0x1111,0x1110,0x0000,0x1101,0x1011,0x1101,0x1011,
	0x1100,0x1011,0x1110,0x1011,0x1111,0x1011,0x1110,0x1011,

	0x1111,0x1111,0x1100,0x1111,0x1111,0x1111,0x1111,0x0011,
	0x1111,0x0011,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x0111,0x1111,0x0111,0x1111,0x0111,
	0x1111,0x0111,0x1111,0x0111,0x1111,0x0111,0x1111,0x0111,
	0x1111,0x1111,0x0111,0x1110,0x0110,0x1110,0x0110,0x1110,
	0x1010,0x1110,0x1010,0x0110,0x1001,0x1110,0x1101,0x0110,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x0000,0x0111,0x0111,0x1110,0x0001,0x1110,0x1110,0x1110,

	0x1111,0x1111,0x1011,0x1111,0x1011,0x1111,0x1111,0x1111,
	0x1000,0x0111,0x1011,0x0111,0x1011,0x0111,0x1011,0x0111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x0001,0x1111,0x0110,0x1110,0x1111,0x1110,0x1111,0x1110,
	0x1111,0x1111,0x0111,0x1110,0x0110,0x1110,0x0110,0x1110,
	0x1010,0x1110,0x1010,0x0110,0x1001,0x0110,0x1101,0x0110,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x0000,0x0111,0x1111,0x0110,0x0000,0x0110,0x1111,0x0111,

	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x0001,0x0111,0x0110,0x0110,0x1111,0x0110,0x1111,0x0110,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x0111,0x1110,0x0111,0x1110,0x0111,0x1110,0x0111,0x1110,
	0x1111,0x1110,0x1111,0x0001,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1101,0x1011,0x1110,0x1011,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,

	0x1111,0x1110,0x0111,0x1110,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1101,0x1110,0x1101,0x1110,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1110,0x1011,0x1101,0x1011,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x0011,0x1111,0x0011,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,

	0x1111,0x0110,0x1111,0x1110,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x0111,0x1110,0x1000,0x1110,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1011,0x0111,0x1011,0x0111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1110,0x1111,0x1110,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,

	0x0110,0x0111,0x0000,0x0110,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x0000,0x1111,0x1110,0x1111,0x1110,0x1111,0x1110,
	0x1111,0x0000,0x1111,0x1110,0x1111,0x1110,0x1111,0x1110,
	0x1110,0x1111,0x1110,0x1111,0x1101,0x0011,0x1110,0x0011,
	0x1111,0x1111,0x1100,0x1111,0x1101,0x1111,0x1101,0x0011,
	0x1111,0x0111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,

	0x0000,0x1110,0x1101,0x1111,0x1101,0x1111,0x1101,0x0111,
	0x1101,0x0111,0x1101,0x0111,0x1101,0x0111,0x1101,0x0111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x0001,0x1111,
	0x0110,0x0110,0x1111,0x1110,0x1111,0x1110,0x1111,0x0110,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x0000,0x0111,
	0x0111,0x1111,0x1100,0x1111,0x0011,0x1110,0x1111,0x1110,
	0x1111,0x1111,0x1101,0x1111,0x1101,0x1111,0x0000,0x1110,
	0x1101,0x1111,0x1101,0x1111,0x1101,0x1111,0x1101,0x1111,

	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x0010,0x0110,
	0x1100,0x0111,0x1110,0x0111,0x1110,0x0111,0x1110,0x0111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x0111,0x1110,
	0x0111,0x0110,0x0111,0x0110,0x0111,0x0110,0x0111,0x0110,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x0001,0x0111,
	0x1110,0x1110,0x1111,0x1111,0x1111,0x1111,0x1110,0x1110,
	0x1111,0x1111,0x1101,0x1111,0x1101,0x1111,0x0000,0x0110,
	0x1101,0x1111,0x1101,0x1111,0x1101,0x1111,0x1101,0x1111,

	0x1011,0x1111,0x1011,0x1111,0x1111,0x1111,0x1000,0x1111,
	0x1011,0x0111,0x1011,0x0111,0x1011,0x0111,0x1011,0x0111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x0000,0x0111,
	0x0111,0x0110,0x1111,0x0110,0x1111,0x0110,0x0111,0x0110,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x0000,0x1111,
	0x0111,0x1111,0x1100,0x1111,0x0011,0x1110,0x1111,0x1110,
	0x1111,0x0000,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,

	0x1110,0x0011,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x0000,0x0110,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1110,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x0001,0x1110,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,

	0x1000,0x1110,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1011,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x0000,0x0111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
};

const unsigned short pausescreenMap[1024] __attribute__((aligned(4)))=
{
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0002,
	0x0402,0x0001,0x0001,0x0001,0x0001,0x0001,0x0003,0x0004,
	0x0005,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,

	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0006,
	0x0007,0x0008,0x0009,0x0001,0x000A,0x000B,0x000C,0x000D,
	0x000E,0x000F,0x0010,0x0011,0x0012,0x0013,0x0014,0x0015,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0016,
	0x0017,0x0018,0x0019,0x001A,0x001B,0x001C,0x001D,0x001E,
	0x001F,0x0020,0x0021,0x0022,0x0023,0x0024,0x0025,0x0026,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,

	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0027,
	0x0028,0x0029,0x002A,0x002B,0x002C,0x002D,0x002E,0x002F,
	0x0030,0x0031,0x0032,0x0033,0x0034,0x0035,0x0036,0x0037,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0038,
	0x0039,0x003A,0x003B,0x003C,0x0001,0x0001,0x0001,0x043A,
	0x0001,0x003D,0x0001,0x0001,0x003E,0x0001,0x003F,0x0040,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,

	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0041,
	0x0042,0x0043,0x0044,0x0045,0x0046,0x0047,0x0001,0x0048,
	0x0049,0x004A,0x004B,0x004C,0x004D,0x004E,0x004F,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,

	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0050,
	0x0051,0x0052,0x0053,0x0054,0x0055,0x0056,0x0057,0x0058,
	0x0059,0x005A,0x005B,0x005C,0x005D,0x005E,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,
	0x0001,0x0001,0x0001,0x0001,0x005F,0x0001,0x0001,0x0001,
	0x0060,0x0061,0x0062,0x0063,0x0064,0x0060,0x0065,0x0066,
	0x0067,0x0068,0x0069,0x0001,0x006A,0x006B,0x006C,0x006D,
	0x0061,0x0467,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,

	0x0001,0x0001,0x0001,0x0001,0x006E,0x006F,0x0070,0x0001,
	0x0071,0x0072,0x0073,0x0074,0x0075,0x0071,0x0076,0x0077,
	0x0001,0x0078,0x0079,0x0001,0x007A,0x007B,0x007C,0x007D,
	0x0072,0x007E,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,

	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x007F,0x0080,
	0x0081,0x0082,0x0083,0x0084,0x0085,0x0086,0x0087,0x0088,
	0x0089,0x0085,0x008A,0x008B,0x008C,0x008D,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,

	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x008E,0x008F,
	0x0090,0x0091,0x0092,0x0093,0x0052,0x0094,0x0095,0x0096,
	0x0097,0x0052,0x0094,0x0098,0x0094,0x0095,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0099,0x009A,0x009B,0x009C,0x009D,0x009E,
	0x009F,0x00A0,0x00A1,0x00A2,0x00A3,0x00A4,0x00A5,0x009D,
	0x00A6,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,

	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x00A7,0x00A8,0x009B,0x00A9,0x00AA,0x04A7,
	0x00AB,0x049B,0x00AC,0x04A7,0x00AB,0x00AD,0x00AE,0x00AA,
	0x04A7,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,

	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
};

const unsigned short pausescreenPal[256] __attribute__((aligned(4)))=
{
	0x0000,0x56B5,0x6F7B,0x7FFF,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
};

//}}BLOCK(pausescreen)
