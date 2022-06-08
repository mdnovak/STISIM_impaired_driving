
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

//3300, Begin Block Save, 1, .0995, Vehicle Control, 1, 6, 7, 4, 23
//32000, End Block Save

//
// Include some speed limit sign
//

0, Speed Limit, 100
100, Sign, 100, 0, C:\STISIM3\Data\Signs\Speed Limit\Sp70Mph.mesh
1000, Sign, 100, 0, C:\STISIM3\Data\Signs\Speed Limit\Sp70Mph.mesh
2000, Sign, 100, 0, C:\STISIM3\Data\Signs\Speed Limit\Sp70Mph.mesh
4000, Sign, 100, 0, C:\STISIM3\Data\Signs\Speed Limit\Sp70Mph.mesh
6000, Sign, 100, 0, C:\STISIM3\Data\Signs\Speed Limit\Sp70Mph.mesh
8000, Sign, 100, 0, C:\STISIM3\Data\Signs\Speed Limit\Sp70Mph.mesh
10000, Sign, 100, 0, C:\STISIM3\Data\Signs\Speed Limit\Sp70Mph.mesh
12000, Sign, 100, 0, C:\STISIM3\Data\Signs\Speed Limit\Sp70Mph.mesh

3500, Speed Limit, 100


//
// Add a lead vehicle following task
//

1000, Play Recording, C:\STISIM3\Sound\FLLWInstructions.wav, 0, 100
1500, Vehicle Following, 90, 300, 6{0}, T6, 15, 10, 120, C:\STISIM3\Data\Wind_and_Speed_Profiles\CarFollowSine.sin, 1, 243, 100

//
// Define the main roadway
//

0, Roadway, 12, 2, 1, 2, 0.5, 10, 10, 0.4, 0.4, 0, -1, C:\STISIM3\Data\Textures\Road03.Jva, 255/255/255, 12, 0, -1, C:\STISIM3\Data\Textures\Road03.Jva, 255/255/255, 12, 0, -10, 5, C:\STISIM3\Data\Textures\RoadShoulder_Left.Jva, 255/255/255, 5, 0, -10, 5, C:\STISIM3\Data\Textures\RoadShoulder_Right.Jva, 255/255/255, 5, 0, 0, 100, C:\STISIM3\Data\Textures\Grass05.Jva, 255/255/255, 12, 0, 0, 100, C:\STISIM3\Data\Textures\Grass05.Jva, 255/255/255, 12, 0, C:\STISIM3\Data\Textures\Grass05.Jva, 255/255/255, 12, 0, C:\STISIM3\Data\Textures\Grass05.Jva, 255/255/255, 12, 0, 0, , , , 0


//
// Add some hills so they have to control speed
//


//
// Define any hills
//
//
// Add horizontal curves
//

 700, Curve, 0, 200, 1000, 200, -0.001
2400, Curve, 0, 100, 400, 100, -0.0005
8400, Curve, 0, 200, 200, 150, -0.0015




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

