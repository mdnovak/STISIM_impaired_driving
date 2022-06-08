//
// Set the initial speed limit
//

0, Roadway, 12, 2, 1, 2, 0.5, 10, 10, 0.4, 0.4, 0, -1, C:\STISIM3\Data\Textures\Road03.Jva, 255/255/255, 12, 0, -1, C:\STISIM3\Data\Textures\Road03.Jva, 255/255/255, 12, 0, -10, 5, C:\STISIM3\Data\Textures\RoadShoulder_Left.Jva, 255/255/255, 5, 0, -10, 5, C:\STISIM3\Data\Textures\RoadShoulder_Right.Jva, 255/255/255, 5, 0, 0, 100, C:\STISIM3\Data\Textures\Grass05.Jva, 255/255/255, 12, 0, 0, 100, C:\STISIM3\Data\Textures\Grass05.Jva, 255/255/255, 12, 0, C:\STISIM3\Data\Textures\Grass05.Jva, 255/255/255, 12, 0, C:\STISIM3\Data\Textures\Grass05.Jva, 255/255/255, 12, 0, 0, , , , 0


100, Play Recording, C:\STISIM3\Sound\new_DAT.wav, 1, 100

600, Begin Block Save, 1, .0995, Divided Attention Task, 1, 6, 7, 23
15000, End Block Save

0, Speed Limit, 65, 0
100, Sign, 100, 0, C:\STISIM3\Data\Signs\Speed Limit\Sp55Mph.mesh
2000, Sign, 100, 0, C:\STISIM3\Data\Signs\Speed Limit\Sp55Mph.mesh
4000, Sign, 100, 0, C:\STISIM3\Data\Signs\Speed Limit\Sp55Mph.mesh
6000, Sign, 100, 0, C:\STISIM3\Data\Signs\Speed Limit\Sp55Mph.mesh
8000, Sign, 100, 0, C:\STISIM3\Data\Signs\Speed Limit\Sp55Mph.mesh
10000, Sign, 100, 0, C:\STISIM3\Data\Signs\Speed Limit\Sp55Mph.mesh
12000, Sign, 100, 0, C:\STISIM3\Data\Signs\Speed Limit\Sp55Mph.mesh
14000, Sign, 100, 0, C:\STISIM3\Data\Signs\Speed Limit\Sp55Mph.mesh

//
// Add some background telephone poles
//

150, Static Object, 0, -15{2}, 0, 0, 0, 0, C:\Stisim3\Data\Miscellaneous\TelephonePole.Mka, 15600, 175
150, Static Object, 0, 15{1}, 0, 0, 0, 0, C:\Stisim3\Data\Miscellaneous\TelephonePole.Mka, 15600, 175


// Lower left

5100, Polygon, 0, .15, .05, 0, 0, C:\STISIM3\Data\Polygon_Files\DividedAttention.Pol, 1, 5, C:\STISIM3\Data\Textures\DividedAttention_Left.png, 1, 2
7200, Polygon, 0, .45, .45, 0, 0, C:\STISIM3\Data\Polygon_Files\DividedAttention.Pol, 1, 5, C:\STISIM3\Data\Textures\DividedAttention_Left.png, 1, 2
9300, Polygon, 0, .05, .25, 0, 0, C:\STISIM3\Data\Polygon_Files\DividedAttention.Pol, 1, 5, C:\STISIM3\Data\Textures\DividedAttention_Left.png, 1, 2
11400, Polygon, 0, .65, .05, 0, 0, C:\STISIM3\Data\Polygon_Files\DividedAttention.Pol, 1, 5, C:\STISIM3\Data\Textures\DividedAttention_Left.png, 1, 2
13500, Polygon, 0, .05, .45, 0, 0, C:\STISIM3\Data\Polygon_Files\DividedAttention.Pol, 1, 5, C:\STISIM3\Data\Textures\DividedAttention_Left.png, 1, 2


// Upper left
2300, Polygon, 0, .10, .85, 0, 0, C:\STISIM3\Data\Polygon_Files\DividedAttention.Pol, 1, 5, C:\STISIM3\Data\Textures\DividedAttention_Left.png, 1, 2
10000, Polygon, 0, .05, .60, 0, 0, C:\STISIM3\Data\Polygon_Files\DividedAttention.Pol, 1, 5, C:\STISIM3\Data\Textures\DividedAttention_Left.png, 1, 2
7900, Polygon, 0, .15, .80, 0, 0, C:\STISIM3\Data\Polygon_Files\DividedAttention.Pol, 1, 5, C:\STISIM3\Data\Textures\DividedAttention_Left.png, 1, 2
13100, Polygon, 0, .80, .60, 0, 0, C:\STISIM3\Data\Polygon_Files\DividedAttention.Pol, 1, 5, C:\STISIM3\Data\Textures\DividedAttention_Left.png, 1, 2
15600, Polygon, 0, .80, .15, 0, 0, C:\STISIM3\Data\Polygon_Files\DividedAttention.Pol, 1, 5, C:\STISIM3\Data\Textures\DividedAttention_Left.png, 1, 2

// Lower right

3700, Polygon, 0, .70, .10, 0, 0, C:\STISIM3\Data\Polygon_Files\DividedAttention.Pol, 1, 5, C:\STISIM3\Data\Textures\DividedAttention_Right.png, 2, 3
4400, Polygon, 0, .65, .35, 0, 0, C:\STISIM3\Data\Polygon_Files\DividedAttention.Pol, 1, 5, C:\STISIM3\Data\Textures\DividedAttention_Right.png, 2, 3
8600, Polygon, 0, .55, .10, 0, 0, C:\STISIM3\Data\Polygon_Files\DividedAttention.Pol, 1, 5, C:\STISIM3\Data\Textures\DividedAttention_Right.png, 2, 3
10700, Polygon, 0, .35, .35, 0, 0, C:\STISIM3\Data\Polygon_Files\DividedAttention.Pol, 1, 5, C:\STISIM3\Data\Textures\DividedAttention_Right.png, 2, 3
14200, Polygon, 0, .15, .60, 0, 0, C:\STISIM3\Data\Polygon_Files\DividedAttention.Pol, 1, 5, C:\STISIM3\Data\Textures\DividedAttention_Right.png, 2, 3

// Upper right
3000, Polygon, 0, .65, .85, 0, 0, C:\STISIM3\Data\Polygon_Files\DividedAttention.Pol, 1, 5, C:\STISIM3\Data\Textures\DividedAttention_Right.png, 2, 3
6600, Polygon, 0, .70, .90, 0, 0, C:\STISIM3\Data\Polygon_Files\DividedAttention.Pol, 1, 5, C:\STISIM3\Data\Textures\DividedAttention_Right.png, 2, 3
5800, Polygon, 0, .85, .65, 0, 0, C:\STISIM3\Data\Polygon_Files\DividedAttention.Pol, 1, 5, C:\STISIM3\Data\Textures\DividedAttention_Right.png, 2, 3
12800, Polygon, 0, .90, .75, 0, 0, C:\STISIM3\Data\Polygon_Files\DividedAttention.Pol, 1, 5, C:\STISIM3\Data\Textures\DividedAttention_Right.png, 2, 3
14900, Polygon, 0, .865, .85, 0, 0, C:\STISIM3\Data\Polygon_Files\DividedAttention.Pol, 1, 5, C:\STISIM3\Data\Textures\DividedAttention_Right.png, 2, 3

 700, Curve, 0, 200, 1000, 200, -0.001
2400, Curve, 0, 100, 400, 100, -0.0005
10000, Curve, 0, 200, 2000, 200, -0.001

//// This file is now 14800 ft long. 