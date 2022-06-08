//
// Set the initial speed limit
//

0, Roadway, 12, 2, 1, 2, 0.5, 10, 10, 0.4, 0.4, 0, -1, C:\STISIM3\Data\Textures\Road03.Jva, 255/255/255, 12, 0, -1, C:\STISIM3\Data\Textures\Road03.Jva, 255/255/255, 12, 0, -10, 5, C:\STISIM3\Data\Textures\RoadShoulder_Left.Jva, 255/255/255, 5, 0, -10, 5, C:\STISIM3\Data\Textures\RoadShoulder_Right.Jva, 255/255/255, 5, 0, 0, 100, C:\STISIM3\Data\Textures\Grass05.Jva, 255/255/255, 12, 0, 0, 100, C:\STISIM3\Data\Textures\Grass05.Jva, 255/255/255, 12, 0, C:\STISIM3\Data\Textures\Grass05.Jva, 255/255/255, 12, 0, C:\STISIM3\Data\Textures\Grass05.Jva, 255/255/255, 12, 0, 0, , , , 0


0, Play Recording, C:\STISIM3\Sound\new_DAT.wav, 1, 100

300, Begin Block Save, 1, .0995, Divided Attention Task, 1, 6, 7, 4, 23
8000, End Block Save

0, Speed Limit, 65, 0
100, Sign, 100, 0, C:\STISIM3\Data\Signs\Speed Limit\Sp55Mph.mesh
1000, Sign, 100, 0, C:\STISIM3\Data\Signs\Speed Limit\Sp55Mph.mesh
2000, Sign, 100, 0, C:\STISIM3\Data\Signs\Speed Limit\Sp55Mph.mesh
4000, Sign, 100, 0, C:\STISIM3\Data\Signs\Speed Limit\Sp55Mph.mesh
6000, Sign, 100, 0, C:\STISIM3\Data\Signs\Speed Limit\Sp55Mph.mesh
8000, Sign, 100, 0, C:\STISIM3\Data\Signs\Speed Limit\Sp55Mph.mesh

//
// Add some background telephone poles
//

150, Static Object, 0, -15{2}, 0, 0, 0, 0, C:\Stisim3\Data\Miscellaneous\TelephonePole.Mka, 9000, 175
150, Static Object, 0, 15{1}, 0, 0, 0, 0, C:\Stisim3\Data\Miscellaneous\TelephonePole.Mka, 9000, 175


300, Trees, 100, 0, *2; 5; 6; 9; 12; 16; 18, 100{0}, 160{0}, 0 


// Lower left

 800, Polygon, 0, .15, .05, 0, 0, C:\STISIM3\Data\Polygon_Files\DividedAttention.Pol, 1, 5, C:\STISIM3\Data\Textures\DividedAttention_Left.png, 1, 2
5700, Polygon, 0, .45, .45, 0, 0, C:\STISIM3\Data\Polygon_Files\DividedAttention.Pol, 1, 5, C:\STISIM3\Data\Textures\DividedAttention_Left.png, 1, 2
6400, Polygon, 0, .05, .25, 0, 0, C:\STISIM3\Data\Polygon_Files\DividedAttention.Pol, 1, 5, C:\STISIM3\Data\Textures\DividedAttention_Left.png, 1, 2

// Upper left
2200, Polygon, 0, .10, .85, 0, 0, C:\STISIM3\Data\Polygon_Files\DividedAttention.Pol, 1, 5, C:\STISIM3\Data\Textures\DividedAttention_Left.png, 1, 2
5100, Polygon, 0, .05, .60, 0, 0, C:\STISIM3\Data\Polygon_Files\DividedAttention.Pol, 1, 5, C:\STISIM3\Data\Textures\DividedAttention_Left.png, 1, 2
7100, Polygon, 0, .15, .80, 0, 0, C:\STISIM3\Data\Polygon_Files\DividedAttention.Pol, 1, 5, C:\STISIM3\Data\Textures\DividedAttention_Left.png, 1, 2

// Lower right

3600, Polygon, 0, .70, .10, 0, 0, C:\STISIM3\Data\Polygon_Files\DividedAttention.Pol, 1, 5, C:\STISIM3\Data\Textures\DividedAttention_Right.png, 2, 3
8500, Polygon, 0, .65, .35, 0, 0, C:\STISIM3\Data\Polygon_Files\DividedAttention.Pol, 1, 5, C:\STISIM3\Data\Textures\DividedAttention_Right.png, 2, 3

// Upper right
1500, Polygon, 0, .65, .85, 0, 0, C:\STISIM3\Data\Polygon_Files\DividedAttention.Pol, 1, 5, C:\STISIM3\Data\Textures\DividedAttention_Right.png, 2, 3
2900, Polygon, 0, .70, .90, 0, 0, C:\STISIM3\Data\Polygon_Files\DividedAttention.Pol, 1, 5, C:\STISIM3\Data\Textures\DividedAttention_Right.png, 2, 3

 700, Curve, 0, 200, 1000, 200, -0.001
2400, Curve, 0, 100, 400, 100, -0.0005

//// This file is now 14800 ft long. 