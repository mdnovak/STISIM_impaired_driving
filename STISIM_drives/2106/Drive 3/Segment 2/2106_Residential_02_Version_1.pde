
//
// by George Park
// 12-21-09
//
// Parameters:
//
// @1 - Leave blank for simple version, otherwise set to -
// @2 - Leave blank for difficult version, otherwise set to -
// @3 - Leave blank for difficult version, otherwise set to -
// @4 - Leave blank for distracted version, otherwise set to -
//

//
// Define any constants
//

//
// Data collection
//

0, Begin Block Save, 1, .01, Data Collection 5, 1, 6, 7, 23, 74, 75, 18, 63, 64, 46#5
1050, End Block Save
3100, Begin Block Save, 1, .01, Data Collection 6, 1, 6, 7, 23, 18, 74, 75, 61, 62, 46#6, 66, 2
3500, End Block Save
3500, Begin Block Save, 1, .01, Data Collection 7, 1, 6, 7, 23, 18, 74, 75, 61, 62, 46#7, 66, 2
4500, End Block Save
4500, Begin Block Save, 1, .01, Data Collection 8, 1, 6, 7, 23, 18, 74, 75, 61, 62, 46#8, 66, 2
5000, End Block Save

//
// Set what happens to the driven vehicle after a crash
//

0,Previously Defined Events,C:\STISIM3\Scenarios\PDEs\CrashSettings_Residential.pde

//
// Define the basic roadway
//

1700, Roadway, 18, 2, 1, 0, 1, 0, 0, 0, 0, 100, 0, , 255/255/255, 0, 0, 0, , 255/255/255, 0, 0, 0, 8, , 255/255/255, 8, 0, 0, 8, , 255/255/255, 8, 0, 0, 5, , 255/255/255, 0, 0, 0, 5, , 255/255/255, 0, 0, , 255/255/255, 12, 0, , 255/255/255, 12, 0, 0, , , , 0
4800, Roadway, 20, 2, 1, 1, 1, 10, 10, 0.4, 0.4, 100, 0, C:\STISIM3\Data\Textures\Road13.Jva, 255/255/255, 18, 0, 0, C:\STISIM3\Data\Textures\Road13.Jva, 255/255/255, 18, 0, 0, 8, C:\STISIM3\Data\Textures\CurbSidewalk_Left.Jva, 255/255/255, 8, 0, 0, 8, C:\STISIM3\Data\Textures\CurbSidewalk_Right.Jva, 255/255/255, 8, 0, 0, 20, C:\STISIM3\Data\Textures\Grass05.Jva, 255/255/255, 12, 0, 0, 20, C:\STISIM3\Data\Textures\Grass05.Jva, 255/255/255, 12, 0, C:\STISIM3\Data\Textures\Grass05.Jva, 255/255/255, 12, 0, C:\STISIM3\Data\Textures\Grass05.Jva, 255/255/255, 12, 0, 0, , , , 0

//
// Add horizontal curves
//

 500, Curve, 0, 500, 200, 500, -0.002
2400, Curve, 0, 150, 100, 150, -0.00074
3000, Curve, 0, 300, 250, 300, -0.00074
4000, Curve, 0, 200, 100, 200, -0.000746
4700, Curve, 0, 300, 700, 300, -0.000746

//
// Add our intersections

2000, Intersection, 0, 0, 1, 1, 1, 0
0, Sign, 7, -2000, 4, 0, 0, 0, 
1973, Sign, 100, 0, C:\Stisim3\Data\Signs\Street Signs\StreetSign.mesh, 0, 1, 0, 0
2027, Sign, 100, 0, C:\Stisim3\Data\Signs\Street Signs\StreetSign.mesh, 0, 0, 0, 0

2900, Intersection, 0, 0, 1, 0, 0, 0
2000, Sign, 7, -900, 2, 0, 0, 0,
2877, Sign, 100, 0, C:\Stisim3\Data\Signs\Street Signs\StreetSign.mesh, 0, 1, 0, 0
2923, Sign, 100, 0, C:\Stisim3\Data\Signs\Street Signs\StreetSign.mesh, 0, 0, 0, 0

3950, Intersection, 0, 0, 1, 0, 0, 0
3000, Sign, 7, -950, 2, 0, 0, 0,
3927, Sign, 100, 0, C:\Stisim3\Data\Signs\Street Signs\StreetSign.mesh, 0, 1, 0, 0
3973, Sign, 100, 0, C:\Stisim3\Data\Signs\Street Signs\StreetSign.mesh, 0, 0, 0, 0

4600, Intersection, 0, 0, 1, 1, 1, 0
3000, Sign, 7, -1600, 4, 0, 0
4573, Sign, 100, 0, C:\Stisim3\Data\Signs\Street Signs\StreetSign.mesh, 0, 1, 0, 0
4627, Sign, 100, 0, C:\Stisim3\Data\Signs\Street Signs\StreetSign.mesh, 0, 0, 0, 0
    
//
// Include are speed limits
//

2040, Sign, 100, 0, C:\STISIM3\Data\Signs\Speed Limit\Sp25Mph.mesh
2040, Speed Limit, 28, 0
4600, Speed Limit, 48, 0
4800, Sign, 100, 0, C:\STISIM3\Data\Signs\Speed Limit\Sp45Mph.mesh

//
// Include some foliage
//

1000, Tree Box, 0, 35{0}, 950, 150, 20
2150, Tree Box, 0, 50{0}, 2, 2, 1
2350, Tree Box, 0, 50{0}, 2, 2, 1
2550, Tree Box, 0, 50{0}, 2, 2, 1
2750, Tree Box, 0, 50{0}, 2, 2, 1
3050, Tree Box, 0, 50{0}, 2, 2, 1
3250, Tree Box, 0, 50{0}, 2, 2, 1
3450, Tree Box, 0, 50{0}, 2, 2, 1
3650, Tree Box, 0, 50{0}, 2, 2, 1
3850, Tree Box, 0, 50{0}, 2, 2, 1
4065, Tree Box, 0, 50{0}, 2, 2, 1
4310, Tree Box, 0, 50{0}, 2, 2, 1
4510, Tree Box, 0, 50{0}, 2, 2, 1
4660, Tree Box, 0, 35{1}, 1340, 200, 20

1000, Tree Box, 0, -35{0}, 950, -150, 20
2200, Tree Box, 0, -50{0}, 2, -2, 1
2400, Tree Box, 0, -50{0}, 2, -2, 1
2600, Tree Box, 0, -50{0}, 2, -2, 1
2800, Tree Box, 0, -50{0}, 2, -2, 1
3100, Tree Box, 0, -50{0}, 2, -2, 1
3300, Tree Box, 0, -50{0}, 2, -2, 1
3500, Tree Box, 0, -50{0}, 2, -2, 1
3700, Tree Box, 0, -50{0}, 2, -2, 1
4065, Tree Box, 0, -50{0}, 2, -2, 1
4260, Tree Box, 0, -50{0}, 2, -2, 1
4660, Tree Box, 0, -35{2}, 1340, -200, 20

//
// Add streetlights
//

 850, Static Object, 0, 5{1}, 0, 180, 0, 0, C:\Stisim3\Data\Miscellaneous\StreetLight_1.Mka
1050, Static Object, 0, 5{1}, 0, 180, 0, 0, C:\Stisim3\Data\Miscellaneous\StreetLight_1.Mka
1250, Static Object, 0, 5{1}, 0, 180, 0, 0, C:\Stisim3\Data\Miscellaneous\StreetLight_1.Mka
1450, Static Object, 0, 5{1}, 0, 180, 0, 0, C:\Stisim3\Data\Miscellaneous\StreetLight_1.Mka
1650, Static Object, 0, 5{1}, 0, 180, 0, 0, C:\Stisim3\Data\Miscellaneous\StreetLight_1.Mka
1850, Static Object, 0, 5{1}, 0, 180, 0, 0, C:\Stisim3\Data\Miscellaneous\StreetLight_1.Mka
2060, Static Object, 0, 5{1}, 0, 180, 0, 0, C:\Stisim3\Data\Miscellaneous\StreetLight_1.Mka
2260, Static Object, 0, 5{1}, 0, 180, 0, 0, C:\Stisim3\Data\Miscellaneous\StreetLight_1.Mka
2460, Static Object, 0, 5{1}, 0, 180, 0, 0, C:\Stisim3\Data\Miscellaneous\StreetLight_1.Mka
2660, Static Object, 0, 5{1}, 0, 180, 0, 0, C:\Stisim3\Data\Miscellaneous\StreetLight_1.Mka
2860, Static Object, 0, 5{1}, 0, 180, 0, 0, C:\Stisim3\Data\Miscellaneous\StreetLight_1.Mka
3060, Static Object, 0, 5{1}, 0, 180, 0, 0, C:\Stisim3\Data\Miscellaneous\StreetLight_1.Mka
3260, Static Object, 0, 5{1}, 0, 180, 0, 0, C:\Stisim3\Data\Miscellaneous\StreetLight_1.Mka
3460, Static Object, 0, 5{1}, 0, 180, 0, 0, C:\Stisim3\Data\Miscellaneous\StreetLight_1.Mka
3660, Static Object, 0, 5{1}, 0, 180, 0, 0, C:\Stisim3\Data\Miscellaneous\StreetLight_1.Mka
3860, Static Object, 0, 5{1}, 0, 180, 0, 0, C:\Stisim3\Data\Miscellaneous\StreetLight_1.Mka
4070, Static Object, 0, 5{1}, 0, 180, 0, 0, C:\Stisim3\Data\Miscellaneous\StreetLight_1.Mka
4270, Static Object, 0, 5{1}, 0, 180, 0, 0, C:\Stisim3\Data\Miscellaneous\StreetLight_1.Mka
4470, Static Object, 0, 5{1}, 0, 180, 0, 0, C:\Stisim3\Data\Miscellaneous\StreetLight_1.Mka
4670, Static Object, 0, 5{1}, 0, 180, 0, 0, C:\Stisim3\Data\Miscellaneous\StreetLight_1.Mka
4870, Static Object, 0, 5{1}, 0, 180, 0, 0, C:\Stisim3\Data\Miscellaneous\StreetLight_1.Mka

 750, Static Object, 0, -5{2}, 0, 0, 0, 0, C:\Stisim3\Data\Miscellaneous\StreetLight_1.Mka
 950, Static Object, 0, -5{2}, 0, 0, 0, 0, C:\Stisim3\Data\Miscellaneous\StreetLight_1.Mka
1150, Static Object, 0, -5{2}, 0, 0, 0, 0, C:\Stisim3\Data\Miscellaneous\StreetLight_1.Mka
1350, Static Object, 0, -5{2}, 0, 0, 0, 0, C:\Stisim3\Data\Miscellaneous\StreetLight_1.Mka
1550, Static Object, 0, -5{2}, 0, 0, 0, 0, C:\Stisim3\Data\Miscellaneous\StreetLight_1.Mka
1750, Static Object, 0, -5{2}, 0, 0, 0, 0, C:\Stisim3\Data\Miscellaneous\StreetLight_1.Mka
1950, Static Object, 0, -5{2}, 0, 0, 0, 0, C:\Stisim3\Data\Miscellaneous\StreetLight_1.Mka
2110, Static Object, 0, -5{2}, 0, 0, 0, 0, C:\Stisim3\Data\Miscellaneous\StreetLight_1.Mka
2310, Static Object, 0, -5{2}, 0, 0, 0, 0, C:\Stisim3\Data\Miscellaneous\StreetLight_1.Mka
2510, Static Object, 0, -5{2}, 0, 0, 0, 0, C:\Stisim3\Data\Miscellaneous\StreetLight_1.Mka
2710, Static Object, 0, -5{2}, 0, 0, 0, 0, C:\Stisim3\Data\Miscellaneous\StreetLight_1.Mka
3110, Static Object, 0, -5{2}, 0, 0, 0, 0, C:\Stisim3\Data\Miscellaneous\StreetLight_1.Mka
3310, Static Object, 0, -5{2}, 0, 0, 0, 0, C:\Stisim3\Data\Miscellaneous\StreetLight_1.Mka
3510, Static Object, 0, -5{2}, 0, 0, 0, 0, C:\Stisim3\Data\Miscellaneous\StreetLight_1.Mka
3710, Static Object, 0, -5{2}, 0, 0, 0, 0, C:\Stisim3\Data\Miscellaneous\StreetLight_1.Mka
3910, Static Object, 0, -5{2}, 0, 0, 0, 0, C:\Stisim3\Data\Miscellaneous\StreetLight_1.Mka
4170, Static Object, 0, -5{2}, 0, 0, 0, 0, C:\Stisim3\Data\Miscellaneous\StreetLight_1.Mka
4370, Static Object, 0, -5{2}, 0, 0, 0, 0, C:\Stisim3\Data\Miscellaneous\StreetLight_1.Mka
4570, Static Object, 0, -5{2}, 0, 0, 0, 0, C:\Stisim3\Data\Miscellaneous\StreetLight_1.Mka
4770, Static Object, 0, -5{2}, 0, 0, 0, 0, C:\Stisim3\Data\Miscellaneous\StreetLight_1.Mka

// Parked vehicles

2450, Vehicles, 0, -4{1}, 0{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
3053, Vehicles, 0, -4{1}, 0{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
3240, Vehicles, 0, -4{1}, 0{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
3410, Vehicles, 0, -4{1}, 0{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
4300, Vehicles, 0, -4{1}, 0{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
4360, Vehicles, 0, -4{1}, 0{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
4450, Vehicles, 0, -4{1}, 0{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
4660, Vehicles, 0, -4{1}, 0{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0

2360, Vehicles, 0, 4{2}, 0{0}, 3, F*1~56; S*1~53; T*1~28, 1, 0
2960, Vehicles, 0, 4{2}, 0{0}, 3, F*1~56; S*1~53; T*1~28, 1, 0
3200, Vehicles, 0, 4{2}, 0{0}, 3, F*1~56; S*1~53; T*1~28, 1, 0
3400, Vehicles, 0, 4{2}, 0{0}, 3, F*1~56; S*1~53; T*1~28, 1, 0
3640, Vehicles, 0, 4{2}, 0{0}, 3, F*1~56; S*1~53; T*1~28, 1, 0
4160, Vehicles, 0, 4{2}, 0{0}, 3, F*1~56; S*1~53; T*1~28, 1, 0
4340, Vehicles, 0, 4{2}, 0{0}, 3, F*1~56; S*1~53; T*1~28, 1, 0
4450, Vehicles, 0, 4{2}, 0{0}, 3, F*1~56; S*1~53; T*1~28, 1, 0
4550, Vehicles, 0, 4{2}, 0{0}, 3, F*1~56; S*1~53; T*1~28, 1, 0
4700, Vehicles, 0, 4{2}, 0{0}, 3, F*1~56; S*1~53; T*1~28, 1, 0

2887, Static Object, 0, -73{2}, 0, 90, 0, 0, C:\STISIM3\Data\Vehicles\Car_Block_4.mka
2887, Collision Block, 0, -77{2}, 6, 105, , , , 1

2887, Static Object, 0, 73{1}, 0, 90, 0, 0, C:\STISIM3\Data\Vehicles\Car_Block_4.mka
2887, Collision Block, 0, 69{1}, 6, 105, , , , 1

3000, Vehicles, 964, 57{0}, 0{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1

//
// Add houses on the right with driveways and the occasional vehicle in the driveway
//

2100, Building, 0, 60{0}, H2
2100, Block, 0, 0, 18{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva

2200, Building, 0, 60{0}, H5
2180, Block, 0, 0, 18{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva
2190, Vehicles, 0, 40{0}, 0{0}, 4, F*1~56; S*1~53; T*1~28, 1, 1

2300, Building, 0, 60{0}, H7
2285, Block, 0, 0, 18{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva

2400, Building, 0, 60{0}, H13
2405, Block, 0, 0, 18{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva

2500, Building, 0, 60{0}, H7
2485, Block, 0, 0, 18{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva

2600, Building, 0, 60{0}, H5
2580, Block, 0, 0, 18{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva

2700, Building, 0, 60{0}, H6
2710, Block, 0, 0, 18{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva
2720, Vehicles, 0, 40{0}, 0{0}, 4, F*1~56; S*1~53; T*1~28, 1, 1

2800, Building, 0, 60{0}, H4
2780, Block, 0, 0, 18{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva

3000, Building, 0, 60{0}, H2
3000, Block, 0, 0, 18{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva
3010, Vehicles, 0, 40{0}, 0{0}, 4, F*1~56; S*1~53; T*1~28, 1, 1

3100, Building, 0, 60{0}, H7
3085, Block, 0, 0, 18{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva

3200, Building, 0, 60{0}, H13
3205, Block, 0, 0, 18{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva

3300, Building, 0, 60{0}, H4
3280, Block, 0, 0, 18{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva
3290, Vehicles, 0, 36{0}, 0{0}, 4, F*1~56; S*1~53; T*1~28, 1, 1

3400, Building, 0, 60{0}, H5
3380, Block, 0, 0, 18{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva
3390, Vehicles, 0, 40{0}, 0{0}, 4, F*1~56; S*1~53; T*1~28, 1, 1

3500, Building, 0, 60{0}, H7
3485, Block, 0, 0, 18{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva
3495, Vehicles, 0, 40{0}, 0{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1

3600, Building, 0, 60{0}, H6
3610, Block, 0, 0, 18{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva

3700, Building, 0, 60{0}, H7
3685, Block, 0, 0, 18{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva

3800, Building, 0, 60{0}, H4
3780, Block, 0, 0, 18{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva
3790, Vehicles, 0, 40{0}, 0{0}, 4, F*1~56; S*1~53; T*1~28, 1, 1

3890, Building, 0, 60{0}, H5
3870, Block, 0, 0, 18{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva

4060, Building, 0, 60{0}, H4
4040, Block, 0, 0, 18{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva

4160, Building, 0, 60{0}, H7
4145, Block, 0, 0, 18{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva

4260, Building, 0, 60{0}, H7
4245, Block, 0, 0, 18{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva

4360, Building, 0, 60{0}, H5
4340, Block, 0, 0, 18{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva

4460, Building, 0, 60{0}, H4
4440, Block, 0, 0, 18{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva
4450, Vehicles, 0, 40{0}, 0{0}, 4, F*1~56; S*1~53; T*1~28, 1, 1

//
// Add houses on the left with driveways and the occasional vehicle in the driveway
//

2150, Building, 0, -60{0}, H4
2150, Block, 0, 0, -70{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva

2250, Building, 0, -60{0}, H6
2220, Block, 0, 0, -70{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva
2230, Vehicles, 0, -45{0}, 0{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1

2350, Building, 0, -60{0}, H13
2325, Block, 0, 0, -70{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva

2450, Building, 0, -60{0}, H6
2420, Block, 0, 0, -70{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva

2550, Building, 0, -60{0}, H5
2550, Block, 0, 0, -70{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva
2560, Vehicles, 0, -45{0}, 0{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1

2650, Building, 0, -60{0}, H2
2625, Block, 0, 0, -70{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva

2720, Building, 0, -60{0}, H4
2720, Block, 0, 0, -70{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva
2730, Vehicles, 0, -45{0}, 0{0}, 4, F*1~56; S*1~53; T*1~28, 1, 1

2810, Building, 0, -60{0}, H13
2795, Block, 0, 0, -70{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva

2960, Building, 0, -60{0}, H6
2930, Block, 0, 0, -70{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva

3050, Building, 0, -60{0}, H13
3025, Block, 0, 0, -70{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva

3150, Building, 0, -60{0}, H7
3150, Block, 0, 0, -70{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva
3160, Vehicles, 0, -45{0}, 0{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1

3250, Building, 0, -60{0}, H5
3250, Block, 0, 0, -70{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva

3350, Building, 0, -60{0}, H2
3325, Block, 0, 0, -70{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva
3335, Vehicles, 0, -45{0}, 0{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1

3450, Building, 0, -60{0}, H7
3450, Block, 0, 0, -70{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva
3460, Vehicles, 0, -45{0}, 0{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1

3550, Building, 0, -60{0}, H5
3550, Block, 0, 0, -70{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva

3650, Building, 0, -60{0}, H7
3650, Block, 0, 0, -70{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva

3750, Building, 0, -60{0}, H4
3750, Block, 0, 0, -70{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva
3760, Vehicles, 0, -45{0}, 0{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1

3840, Building, 0, -60{0}, H5
3840, Block, 0, 0, -70{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva

3890, Building, 0, -60{0}, H4
3875, Block, 0, 0, -70{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva

4020, Building, 0, -60{0}, H7
4020, Block, 0, 0, -70{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva

4110, Building, 0, -60{0}, H5
4110, Block, 0, 0, -70{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva
4120, Vehicles, 0, -45{0}, 0{0}, 4, F*1~56; S*1~53; T*1~28, 1, 1

4210, Building, 0, -60{0}, H13
4185, Block, 0, 0, -70{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva

4410, Building, 0, -60{0}, H4
4410, Block, 0, 0, -70{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva

//
// Critical Events
//

// Easy version

    // Vehicle backs from the left
    
//    @12430, Vehicles#2, 0, -36{0}, 0{0}, 2, F*1~7; F*13~21, 1, 0, 4{0}, 2, -17{0}, , , 2, {25}, 2, 0{0}, , , 2, 3{26}, 2, 20{0}, , , 2, {25}, 2, 0{0}, , , 2
    
    // Pedestrian walks
    
//    @14395, Vehicles, 0, -4{1}, 0{0}, 1, F22, 1, 1
//    @14415, Pedestrian#3, 0, 3; !30{4}, 3, 13{0}, R, 5

// Difficult version 1

    // Vehicles coming through unprotected intersections
    
//    @22600, Vehicles#6, 296, -294{0}, 0{1}, 4, *30;21;1;32;27, 1, 1
//    @23650, Vehicles#7, 306, 306{0}, 0{1}, 2, *30;21;1;32;27, 1, 1
    
    // Backing vehicle
    
//    @24420, Vehicles#8, 0, -36{0}, 0{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1, 5{0}, 2, -22{0}, , , 2, {25}, 2, 0{0}, , , 2, 2.5{26}, 7, 1, 13, {25}, 2, 35{0}, , , 4
    
    // Add some parked cars at the intersections
    
    @23937, Static Object, 0, -73{2}, 0, 90, 0, 0, C:\STISIM3\Data\Vehicles\Car_Block_4.mka
    @23937, Collision Block, 0, -77{2}, 6, 105, , , , 1
    
    @23937, Static Object, 0, 73{1}, 0, 90, 0, 0, C:\STISIM3\Data\Vehicles\Car_Block_4.mka
    @23937, Collision Block, 0, 69{1}, 6, 105, , , , 1
    
    @24587, Static Object, 0, -73{2}, 0, 90, 0, 0, C:\STISIM3\Data\Vehicles\Car_Block_4.mka
    @24587, Collision Block, 0, -77{2}, 6, 105, , , , 1
    
    @24587, Static Object, 0, 73{1}, 0, 90, 0, 0, C:\STISIM3\Data\Vehicles\Car_Block_4.mka
    @24587, Collision Block, 0, 69{1}, 6, 105, , , , 1
    
    // On coming traffic
    
    @20, Vehicles, 2000, -5.5{0}, 60{0}, 3, F*1~56; S*1~53; T*1~28, 1, 1
    @20, Vehicles, 2500, -5.5{0}, 60{0}, 3, F*1~56; S*1~53; T*1~28, 1, 1
    
   
    
    // Add some background pedestrians
    
    @22300, Pedestrian, 0, 20, 6, 7{1}, B, *1~5; 8; 12~16; 27~30; 35
    @23100, Pedestrian, 0, 10, 6, 9{1}, B, *1~3
   
    
    @25500, Pedestrian, 0, 10, 4, -2{2}, B, *1~3
    @25800, Pedestrian, 0, 10, 4.5, -4{2}, F, *1~5; 8; 12~16; 27~30; 35
    
    // Add some additional parked cars on the right
    
    @22550, Vehicles, 0, -4{1}, 0{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
    @22650, Vehicles, 0, -4{1}, 0{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
    @22850, Vehicles, 0, -4{1}, 0{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
    @23450, Vehicles, 0, -4{1}, 0{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
    @23570, Vehicles, 0, -4{1}, 0{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
    @23750, Vehicles, 0, -4{1}, 0{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
    @23900, Vehicles, 0, -4{1}, 0{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0

// Difficult version 2

    // Obscurred pedestrian walking into the roadway
    
//    @33600, Vehicles, 0, -14{0}, 0{0}, 3, T*1~28, 1, 0
//   @33615, Pedestrian#4, 0, 4; !30{4}, 4, 3{2}, L, 5

    // Vehicle backing into street
    
//    @34255, Vehicles#5, 0, 30{0}, 0{0}, 4, F*1~31; -11; -12, 1, 1, 5{0}, 2, -18{0}, , , 3, 2{26}, 7, 2, 13, 1{26}, 2, 0{0}, , , 1, 2{26}, 2, 35{0}, , , 4, 4400{15}, 3, 2, .5, 4565{15}, 7, 2, 35
//    @34140, Vehicles, 0, -4{1}, 0{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
//    @34180, Vehicles, 0, -4{1}, 0{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
    
    // Parked vehicle merging into traffic
    
//    @34700, Vehicles#6, 0, -5{1}, 0.04{0}, 1, F*1~56; S*1~53; T*1~28, 1, 1, 6{0}; !40{4}, 1, 0{7}, 20, 1, {25}, 2, -1{0}, , , 1, 3{0}; !30{4}, 1, -9{7}, 20, 2.5, {25}, 2, 20{0}, , , 2.5, -5{0}, 1, 0{7}, 20, 3, {25}, 2, 66{0}, , , 3, 6000{15}, 1, -5{1}, 20, 3, {25}, 2, 0{0}, , , 3
    
    // Add some bicycles to the roadway
    
//    @35300, Vehicles, 0, -7{0}, 0{0}, 3, SP16, 1, 0, 4000{20}, 2, 10{0}, , , 2
//    @35325, Vehicles, 0, -7{0}, 0{0}, 3, SP16, 1, 0, 4000{20}, 2, 10{0}, , , 2
//    @35350, Vehicles, 0, -7{0}, 0{0}, 3, SP16, 1, 0, 4000{20}, 2, 10{0}, , , 2
//    @35375, Vehicles, 0, -7{0}, 0{0}, 3, SP16, 1, 0, 4000{20}, 2, 10{0}, , , 2
    
    
    // Add some background pedestrians
    
//    @32300, Pedestrian, 0, 20, 6, 9{1}, B, *1~5; 8; 12~16; 27~30; 35
//    @32600, Pedestrian, 0, 40, 6.5, 11{1}, F, *1~5
   
    
//    @32700, Pedestrian, 0, 40, 6.5, -8{2}, F, *1~5; 8; 12~16; 27~30; 35
//    @32940, Pedestrian, 0, 10, 4, -6{2}, F, *9~11; 4; 5;22; 23; 24
//    @32940, Pedestrian, 0, 10, 4, -4{2}, F, *27~30; 8; 12; 13; 35
//    @33100, Pedestrian, 0, 10, 6, -9{2}, B, *1~3
    

// Distracted driving

// Blocking vehicles

    4370, Vehicles, 0, 4{2}, 0{0}, 3, F*1~56; S*1~53; T*1~28, 1, 0
    4395, Vehicles, 0, 4{2}, 0{0}, 3, F*1~56; S*1~53; T*1~28, 1, 0

    // Backing vehicle
    
//@44420, Vehicles#3, 0, -36{0}, 0{0}, 2, F*18~21; F*41~44, 1, 1, 5{0}, 2, -22{0}, , , 2, {25}, 2, 0{0}, , , 2, 2.5{26}, 7, 1, 13, {25}, 2, 35{0}, , , 4, 
    // Add some background pedestrians
    
//    @42300, Pedestrian, 0, 20, 6, 9{1}, B, *1~5; 8; 12~16; 27~30; 35
//    @42600, Pedestrian, 0, 40, 6, 11{1}, F, *1~5
   

//    @42700, Pedestrian, 0, 40, 6, -10{2}, F, 
//    @42940, Pedestrian, 0, 10, 4, -11{2}, F, *9~11; 4; 5; 22; 23; 24
//    @42940, Pedestrian, 0, 10, 4, -9{2}, F, *27~30; 8; 12; 13; 35
//    @43100, Pedestrian, 0, 10, 6, -11{2}, B, *1~3
//    @45500, Pedestrian, 0, 10, 4, -8{2}, B, *1~3
//    @45800, Pedestrian, 0, 10, 5, -6{2}, F, *1~5; 8; 12~16; 27~30; 35

//    @44500, Vehicles, 1500, -6{0}, 44{0}, 3, F*1~56; S*1~53; T*1~28, 1, 1
//    @44500, Vehicles, 1800, -6{0}, 44{0}, 3, F*1~56; S*1~53; T*1~28, 1, 1
//    @44500, Vehicles, 2200, -6{0}, 44{0}, 3, F*1~56; S*1~53; T*1~28, 1, 1
