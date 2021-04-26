#include "game.h"
#include "text.h"
#include "messagescreen.h"

//char - 32
int letterMap[95] =
{
// SPACE     !      "
748,         777,        774,

//NULL       NULL       NULL        
0,           0,         0,

//NULL       '          NULL
0,           776,       0,

//NULL       NULL       NULL        
0,           0,         0,

// ,         NULL       .       
771,         0,         770, 

//NULL       0          1
0,           738,       739,

//2          3          4
740,         741,       742,

//5          6          7
743,         744,       745,

//8          9          :
746,         747,       802,

//;          null       null
773,         0,         0,

//null       ?          null
0,           772,       0,

//A          B          C                     
674,         675,       676,

//D          E          F
677,         678,       679,

//G          H          I
680,         681,       682,

//J          K          L
683,         684,       685,

//M          N          O
686,         687,       688,

//P          Q          R
689,         690,       691,

//S          T          U
692,         693,        694,

//V          W          X
695,         696,       697,

//Y          Z          null
698,         699,       0,

//null       null       null
0,           0,         0,

//null       null       a
0,           0,         706,

//b          c          d
707,         708,       709,

//e          f          g
710,         711,       712,

//h          i          j
713,         714,       715,

//k          l          m
716,         717,       718,

//n          o          p
719,         720,       721,

//q          r          s
722,         723,       724,

//t          u          v
725,         726,       727,

//w          x          y
728,         729,       730,

//z
731 };
