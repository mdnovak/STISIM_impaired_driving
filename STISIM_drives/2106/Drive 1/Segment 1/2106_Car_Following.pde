
//
// by George Park
//

//
// Define some constants
//


//
// Override any specific configuration settings
//

Config_LoadingMessage = C:\STISIM3\Scenarios\Instructions\Instructions_CarFollowing.txt
Config_Start_Instructions = C:\STISIM3\Scenarios\Instructions\Instructions_CarFollowing.txt

//
// Data collection
//

3300, Begin Block Save, 1, .0995, Vehicle Control, 1, 6, 7, 23
32000, End Block Save
32000, Begin Block Save, 1, .0995, Baseline SDLP Measure, 1, 6, 7, 23
42000, End Block Save
//
// Include some speed limit sign
//

0, Speed Limit, 55
 500, Sign, 100, 0, C:\STISIM3\Data\Signs\Speed Limit\Sp45Mph.mesh
1500, Sign, 100, 0, C:\STISIM3\Data\Signs\Speed Limit\Sp45Mph.mesh
2500, Sign, 100, 0, C:\STISIM3\Data\Signs\Speed Limit\Sp45Mph.mesh
3200, Speed Limit, 100
4800, Sign, 100, 0, C:\STISIM3\Data\Signs\Speed Limit\Sp70Mph.mesh
6800, Sign, 100, 0, C:\STISIM3\Data\Signs\Speed Limit\Sp70Mph.mesh
8800, Sign, 100, 0, C:\STISIM3\Data\Signs\Speed Limit\Sp70Mph.mesh
10800, Sign, 100, 0, C:\STISIM3\Data\Signs\Speed Limit\Sp70Mph.mesh
12800, Sign, 100, 0, C:\STISIM3\Data\Signs\Speed Limit\Sp70Mph.mesh
14800, Sign, 100, 0, C:\STISIM3\Data\Signs\Speed Limit\Sp70Mph.mesh
16800, Sign, 100, 0, C:\STISIM3\Data\Signs\Speed Limit\Sp70Mph.mesh
18800, Sign, 100, 0, C:\STISIM3\Data\Signs\Speed Limit\Sp70Mph.mesh
20800, Sign, 100, 0, C:\STISIM3\Data\Signs\Speed Limit\Sp70Mph.mesh
22800, Sign, 100, 0, C:\STISIM3\Data\Signs\Speed Limit\Sp70Mph.mesh
24800, Sign, 100, 0, C:\STISIM3\Data\Signs\Speed Limit\Sp70Mph.mesh

26800, Sign, 100, 0, C:\STISIM3\Data\Signs\Speed Limit\Sp70Mph.mesh
28800, Sign, 100, 0, C:\STISIM3\Data\Signs\Speed Limit\Sp70Mph.mesh
30800, Sign, 100, 0, C:\STISIM3\Data\Signs\Speed Limit\Sp70Mph.mesh
32800, Sign, 100, 0, C:\STISIM3\Data\Signs\Speed Limit\Sp70Mph.mesh
34800, Sign, 100, 0, C:\STISIM3\Data\Signs\Speed Limit\Sp70Mph.mesh
36800, Sign, 100, 0, C:\STISIM3\Data\Signs\Speed Limit\Sp70Mph.mesh
38800, Sign, 100, 0, C:\STISIM3\Data\Signs\Speed Limit\Sp70Mph.mesh

//
// Add a lead vehicle following task
//

2600, Play Recording, C:\STISIM3\Sound\FLLWInstructions.wav, 0, 100
3300, Vehicle Following, 90, 300, 6{0}, T6, 15, 10, 300, C:\STISIM3\Data\Wind_and_Speed_Profiles\CarFollowSine.sin, 1, 300, 100

//
// Define the main roadway
//

0, Roadway, 12, 2, 1, 2, 0.5, 10, 10, 0.4, 0.4, 0, -1, C:\STISIM3\Data\Textures\Road03.Jva, 255/255/255, 12, 0, -1, C:\STISIM3\Data\Textures\Road03.Jva, 255/255/255, 12, 0, -10, 5, C:\STISIM3\Data\Textures\RoadShoulder_Left.Jva, 255/255/255, 5, 0, -10, 5, C:\STISIM3\Data\Textures\RoadShoulder_Right.Jva, 255/255/255, 5, 0, 0, 100, C:\STISIM3\Data\Textures\Grass05.Jva, 255/255/255, 12, 0, 0, 100, C:\STISIM3\Data\Textures\Grass05.Jva, 255/255/255, 12, 0, C:\STISIM3\Data\Textures\Grass05.Jva, 255/255/255, 12, 0, C:\STISIM3\Data\Textures\Grass05.Jva, 255/255/255, 12, 0, 0, , , , 0


//
// Add some hills so they have to control speed
//

1000, Hill, 300, 0.007
1300, Hill, 300, -0.007
3000, Hill, 300, -0.007
3300, Hill, 300, 0.007
6000, Hill, 300, 0.004
6300, Hill, 300, -0.004
8000, Hill, 300, -0.004
12300, Hill, 300, 0.004

//
// Define any hills
//

 400, Hill, 500, 0.0075
2000, Hill, 500, -0.0075
2600, Hill, 500, 0.0075

//
// Add horizontal curves
//

 700, Curve, 0, 200, 1000, 200, -0.001
2400, Curve, 0, 100, 400, 100, -0.0005
8400, Curve, 0, 200, 200, 150, -0.0015
16000, Curve, 0, 100, 1000, 100, -0.001

// Curves in baseline SDLP
33000, Curve, 0, 200, 1000, 200, -0.001
40000, Curve, 0, 100, 400, 100, -0.0005





//
// Add some foliage to make it look better
//

0, Tree, 250, 0, *2; 5; 6; 9; 12; 16; 18, 100{0}, 160{0}, 0

//
// Throw in some buidlings to make it less boring
//

3000, Building, 0, 170{0}, H*3~9;10;11;13
3500, Building, 0, -170{0}, H*3~9;10;11;13
4000, Building, 0, 170{0}, H*3~9;10;11;13
4500, Building, 0, -170{0}, H*3~9;10;11;13
5000, Building, 0, 170{0}, H*3~9;10;11;13
5500, Building, 0, -170{0}, H*3~9;10;11;13
6000, Building, 0, 170{0}, H*3~9;10;11;13
6500, Building, 0, -170{0}, H*3~9;10;11;13
7000, Building, 0, 170{0}, H*3~9;10;11;13
7500, Building, 0, -170{0}, H*3~9;10;11;13

//
// Include some oncoming traffic
//

 3000, Vehicles, 0, -6{0}, 60{0}, 3, F*1~56;S*1~53;T*1~30, 1, 0
 3500, Vehicles, 0, -6{0}, 60{0}, 3, F*1~56;S*1~53;T*1~30, 1, 0
 4000, Vehicles, 0, -6{0}, 60{0}, 3, F*1~56;S*1~53;T*1~30, 1, 0
 4500, Vehicles, 0, -6{0}, 60{0}, 3, F*1~56;S*1~53;T*1~30, 1, 0
 4800, Vehicles, 0, -6{0}, 60{0}, 3, F*1~56;S*1~53;T*1~30, 1, 0
 5000, Vehicles, 0, -6{0}, 60{0}, 3, F*1~56;S*1~53;T*1~30, 1, 0
 6000, Vehicles, 0, -6{0}, 60{0}, 3, F*1~56;S*1~53;T*1~30, 1, 0
 6500, Vehicles, 0, -6{0}, 60{0}, 3, F*1~56;S*1~53;T*1~30, 1, 0
 7000, Vehicles, 0, -6{0}, 60{0}, 3, F*1~56;S*1~53;T*1~30, 1, 0
 7500, Vehicles, 0, -6{0}, 60{0}, 3, F*1~56;S*1~53;T*1~30, 1, 0
 7800, Vehicles, 0, -6{0}, 60{0}, 3, F*1~56;S*1~53;T*1~30, 1, 0
 8000, Vehicles, 0, -6{0}, 60{0}, 3, F*1~56;S*1~53;T*1~30, 1, 0
 9000, Vehicles, 0, -6{0}, 60{0}, 3, F*1~56;S*1~53;T*1~30, 1, 0
 9500, Vehicles, 0, -6{0}, 60{0}, 3, F*1~56;S*1~53;T*1~30, 1, 0
 9800, Vehicles, 0, -6{0}, 60{0}, 3, F*1~56;S*1~53;T*1~30, 1, 0
10000, Vehicles, 0, -6{0}, 60{0}, 3, F*1~56;S*1~53;T*1~30, 1, 0
10200, Vehicles, 0, -6{0}, 60{0}, 3, F*1~56;S*1~53;T*1~30, 1, 0
10600, Vehicles, 0, -6{0}, 60{0}, 3, F*1~56;S*1~53;T*1~30, 1, 0
10800, Vehicles, 0, -6{0}, 60{0}, 3, F*1~56;S*1~53;T*1~30, 1, 0
13000, Vehicles, 0, -6{0}, 60{0}, 3, F*1~56;S*1~53;T*1~30, 1, 0
15500, Vehicles, 0, -6{0}, 60{0}, 3, F*1~56;S*1~53;T*1~30, 1, 0
17000, Vehicles, 0, -6{0}, 60{0}, 3, F*1~56;S*1~53;T*1~30, 1, 0
18500, Vehicles, 0, -6{0}, 60{0}, 3, F*1~56;S*1~53;T*1~30, 1, 0
20800, Vehicles, 0, -6{0}, 60{0}, 3, F*1~56;S*1~53;T*1~30, 1, 0
21000, Vehicles, 0, -6{0}, 60{0}, 3, F*1~56;S*1~53;T*1~30, 1, 0
23000, Vehicles, 0, -6{0}, 60{0}, 3, F*1~56;S*1~53;T*1~30, 1, 0
25500, Vehicles, 0, -6{0}, 60{0}, 3, F*1~56;S*1~53;T*1~30, 1, 0
26000, Vehicles, 0, -6{0}, 60{0}, 3, F*1~56;S*1~53;T*1~30, 1, 0
27500, Vehicles, 0, -6{0}, 60{0}, 3, F*1~56;S*1~53;T*1~30, 1, 0
27800, Vehicles, 0, -6{0}, 60{0}, 3, F*1~56;S*1~53;T*1~30, 1, 0
30000, Vehicles, 0, -6{0}, 60{0}, 3, F*1~56;S*1~53;T*1~30, 1, 0
31000, Vehicles, 0, -6{0}, 60{0}, 3, F*1~56;S*1~53;T*1~30, 1, 0
31500, Vehicles, 0, -6{0}, 60{0}, 3, F*1~56;S*1~53;T*1~30, 1, 0


