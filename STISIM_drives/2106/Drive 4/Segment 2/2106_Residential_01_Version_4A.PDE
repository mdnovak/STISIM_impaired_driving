
//
// by George Park
//
// Parameters:
//
// @1 - Leave blank for simple version, otherwise set to -
// @2 - Leave blank for difficult version 1, otherwise set to -
// @3 - Leave blank for difficult version 2, otherwise set to -
// @4 - Leave blank for distracted driving 1, otherwise set to -
// @5 - Leave blank for distracted driving 2, otherwise set to -
//

//
// Data collection
//



//
// Define any constants
//


//
// Set what happens to the driven vehicle after a crash
//

0,Previously Defined Events,C:\STISIM3\Scenarios\PDEs\CrashSettings_Residential.pde

//
// Define sections of the roadway
//

   0, Roadway, 18, 2, 1, 2, 1, 10, 10, 0.4, 0, 100, 0, C:\STISIM3\Data\Textures\Road13.Jva, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Road13.Jva, 255/255/255, 0, 0, 0, 8, C:\STISIM3\Data\Textures\CurbGrass_Left.Jva, 255/255/255, 8, 0, 0, 8, C:\STISIM3\Data\Textures\CurbGrass_Right.Jva, 255/255/255, 8, 0, 0, 5, C:\STISIM3\Data\Textures\Concrete3.Jva, 255/255/255, 5, 0, 0, 5, C:\STISIM3\Data\Textures\Concrete3.Jva, 255/255/255, 5, 0, C:\STISIM3\Data\Textures\Grass05.Jva, 255/255/255, 10, 0, C:\STISIM3\Data\Textures\Grass05.Jva, 255/255/255, 10, 0, 0, , , , 0
1700, Roadway, 18, 2, 1, 0, 1, 0, 0, 0, 0, 100, 0, C:\STISIM3\Data\Textures\Road13.Jva, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Road13.Jva, 255/255/255, 0, 0, 0, 8, C:\STISIM3\Data\Textures\CurbGrass_Left.Jva, 255/255/255, 8, 0, 0, 8, C:\STISIM3\Data\Textures\CurbGrass_Right.Jva, 255/255/255, 8, 0, 0, 5, C:\STISIM3\Data\Textures\Concrete3.Jva, 255/255/255, 5, 0, 0, 5, C:\STISIM3\Data\Textures\Concrete3.Jva, 255/255/255, 5, 0, C:\STISIM3\Data\Textures\Grass05.Jva, 255/255/255, 10, 0, C:\STISIM3\Data\Textures\Grass05.Jva, 255/255/255, 10, 0, 0, , , , 0
4800, Roadway, 18, 2, 1, 1, 1, 10, 10, 0.4, 0, 100, 0, C:\STISIM3\Data\Textures\Road13.Jva, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Road13.Jva, 255/255/255, 0, 0, 0, 8, C:\STISIM3\Data\Textures\CurbGrass_Left.Jva, 255/255/255, 8, 0, 0, 8, C:\STISIM3\Data\Textures\CurbGrass_Right.Jva, 255/255/255, 8, 0, 0, 5, C:\STISIM3\Data\Textures\Concrete3.Jva, 255/255/255, 5, 0, 0, 5, C:\STISIM3\Data\Textures\Concrete3.Jva, 255/255/255, 5, 0, C:\STISIM3\Data\Textures\Grass05.Jva, 255/255/255, 10, 0, C:\STISIM3\Data\Textures\Grass05.Jva, 255/255/255, 10, 0, 0, , , , 0

//
// Add any horizontal curves
//

 500, Curve, 0, 500, 200, 500, -0.002
2400, Curve, 0, 150, 100, 150, -0.000746
3000, Curve, 0, 300, 250, 300, -0.003

//
// Add our intersections
//

2000, Intersection, 0, 0, 1, 1, 1, 0
0, Sign, 7, -2000, 4, 0, 0, 0, 
1973, Sign, 100, 0, C:\Stisim3\Data\Signs\Street Signs\StreetSign.mesh, 0, 1, 0, 0
2027, Sign, 100, 0, C:\Stisim3\Data\Signs\Street Signs\StreetSign.mesh, 0, 0, 0, 0

2900, Intersection, 0, 0, 1, 0, 0, 0
2877, Sign, 100, 0, C:\Stisim3\Data\Signs\Street Signs\StreetSign.mesh, 0, 1, 0, 0
2923, Sign, 100, 0, C:\Stisim3\Data\Signs\Street Signs\StreetSign.mesh, 0, 0, 0, 0

3950, Intersection, 0, 0, 1, 0, 0, 0
3927, Sign, 100, 0, C:\Stisim3\Data\Signs\Street Signs\StreetSign.mesh, 0, 1, 0, 0
3973, Sign, 100, 0, C:\Stisim3\Data\Signs\Street Signs\StreetSign.mesh, 0, 0, 0, 0

4600, Intersection, 0, 0, 1, 1, 1, 0
3000, Sign, 7, -1600, 4, 0, 0
4573, Sign, 100, 0, C:\Stisim3\Data\Signs\Street Signs\StreetSign.mesh, 0, 1, 0, 0
4627, Sign, 100, 0, C:\Stisim3\Data\Signs\Street Signs\StreetSign.mesh, 0, 0, 0, 0

//
// Display speed limits
//

300, Sign, 100, 0, C:\STISIM3\Data\Signs\Speed Limit\Sp45Mph.mesh
0, Speed Limit, 55, 0
2040, Sign, 100, 0, C:\STISIM3\Data\Signs\Speed Limit\Sp35Mph.mesh
2240, Speed Limit, 45, 0
2910, Sign, 100, 0, C:\STISIM3\Data\Signs\Speed Limit\Sp35Mph.mesh
4000, Sign, 100, 0, C:\STISIM3\Data\Signs\Speed Limit\Sp35Mph.mesh
4600, Speed Limit, 45, 0
4800, Sign, 100, 0, C:\STISIM3\Data\Signs\Speed Limit\Sp35Mph.mesh

//
// Add our foliage
//

   0, Tree, 0, 0, *2; 5; 6; 9; 12; 16; 18, 0{0}, 0{0}, 0

   0, Tree Box, 0, 35{0}, 1950, 150, 25
2050, Tree Box, 0, 50{0}, 2, 2, 1
2150, Tree Box, 0, 50{0}, 2, 2, 1
2250, Tree Box, 0, 50{0}, 2, 2, 1
2350, Tree Box, 0, 50{0}, 2, 2, 1
2450, Tree Box, 0, 50{0}, 2, 2, 1
2550, Tree Box, 0, 50{0}, 2, 2, 1
2650, Tree Box, 0, 50{0}, 2, 2, 1
2750, Tree Box, 0, 50{0}, 2, 2, 1
2850, Tree Box, 0, 50{0}, 2, 2, 1
2950, Tree Box, 0, 50{0}, 2, 2, 1
3050, Tree Box, 0, 50{0}, 2, 2, 1
3150, Tree Box, 0, 50{0}, 2, 2, 1
3250, Tree Box, 0, 50{0}, 2, 2, 1
3350, Tree Box, 0, 50{0}, 2, 2, 1
3450, Tree Box, 0, 50{0}, 2, 2, 1
3550, Tree Box, 0, 50{0}, 2, 2, 1
3650, Tree Box, 0, 50{0}, 2, 2, 1
3750, Tree Box, 0, 50{0}, 2, 2, 1
3850, Tree Box, 0, 50{0}, 2, 2, 1
4065, Tree Box, 0, 50{0}, 2, 2, 1
4210, Tree Box, 0, 50{0}, 2, 2, 1
4310, Tree Box, 0, 50{0}, 2, 2, 1
4410, Tree Box, 0, 50{0}, 2, 2, 1
4510, Tree Box, 0, 50{0}, 2, 2, 1
4660, Tree Box, 0, 40{0}, 2300, 200, 60
 
   0, Tree Box, 0, -35{0}, 1950, -150, 25
2100, Tree Box, 0, -50{0}, 2, -2, 1
2200, Tree Box, 0, -50{0}, 2, -2, 1
2300, Tree Box, 0, -50{0}, 2, -2, 1
2400, Tree Box, 0, -50{0}, 2, -2, 1
2500, Tree Box, 0, -50{0}, 2, -2, 1
2600, Tree Box, 0, -50{0}, 2, -2, 1
2700, Tree Box, 0, -50{0}, 2, -2, 1
2800, Tree Box, 0, -50{0}, 2, -2, 1
3000, Tree Box, 0, -50{0}, 2, -2, 1
3100, Tree Box, 0, -50{0}, 2, -2, 1
3200, Tree Box, 0, -50{0}, 2, -2, 1
3300, Tree Box, 0, -50{0}, 2, -2, 1
3400, Tree Box, 0, -50{0}, 2, -2, 1
3500, Tree Box, 0, -50{0}, 2, -2, 1
3600, Tree Box, 0, -50{0}, 2, -2, 1
3700, Tree Box, 0, -50{0}, 2, -2, 1
3800, Tree Box, 0, -50{0}, 2, -2, 1
4065, Tree Box, 0, -50{0}, 2, -2, 1
4160, Tree Box, 0, -50{0}, 2, -2, 1
4260, Tree Box, 0, -50{0}, 2, -2, 1
4360, Tree Box, 0, -50{0}, 2, -2, 1
4660, Tree Box, 0, -50{0}, 2300, -200, 60

//
// Add the street lights
//

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
4070, Static Object, 0, 5{1}, 0, 180, 0, 0, C:\Stisim3\Data\Miscellaneous\StreetLight_1.Mka, 1200, 200

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
4170, Static Object, 0, -5{2}, 0, 0, 0, 0, C:\Stisim3\Data\Miscellaneous\StreetLight_1.Mka, 1200, 200

//
// Add parked vehicles
//

2320, Vehicles, 0, -4{1}, 0{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
2450, Vehicles, 0, -4{1}, 0{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
2610, Vehicles, 0, -4{1}, 0{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
2815, Vehicles, 0, -4{1}, 0{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
3070, Vehicles, 0, -4{1}, 0{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
3365, Vehicles, 0, -4{1}, 0{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
3595, Vehicles, 0, -4{1}, 0{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
3725, Vehicles, 0, -4{1}, 0{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
3870, Vehicles, 0, -4{1}, 0{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
4110, Vehicles, 0, -4{1}, 0{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
4410, Vehicles, 0, -4{1}, 0{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
4660, Vehicles, 0, -4{1}, 0{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0

2960, Vehicles, 0, 4{2}, 0{0}, 3, F*1~56; S*1~53; T*1~28, 1, 0
3100, Vehicles, 0, 4{2}, 0{0}, 3, F*1~56; S*1~53; T*1~28, 1, 0
3310, Vehicles, 0, 4{2}, 0{0}, 3, F*1~56; S*1~53; T*1~28, 1, 0
3400, Vehicles, 0, 4{2}, 0{0}, 3, F*1~56; S*1~53; T*1~28, 1, 0
3500, Vehicles, 0, 4{2}, 0{0}, 3, F*1~56; S*1~53; T*1~28, 1, 0
3580, Vehicles, 0, 4{2}, 0{0}, 3, F*1~56; S*1~53; T*1~28, 1, 0
3680, Vehicles, 0, 4{2}, 0{0}, 3, F*1~56; S*1~53; T*1~28, 1, 0
3780, Vehicles, 0, 4{2}, 0{0}, 3, F*1~56; S*1~53; T*1~28, 1, 0
3830, Vehicles, 0, 4{2}, 0{0}, 3, F*1~56; S*1~53; T*1~28, 1, 0
3980, Vehicles, 0, 4{2}, 0{0}, 3, F*1~56; S*1~53; T*1~28, 1, 0
4240, Vehicles, 0, 4{2}, 0{0}, 3, F*1~56; S*1~53; T*1~28, 1, 0
4380, Vehicles, 0, 4{2}, 0{0}, 3, F*1~56; S*1~53; T*1~28, 1, 0
4660, Vehicles, 0, 4{2}, 0{0}, 3, F*1~56; S*1~53; T*1~28, 1, 0

2014, Vehicles, 0, 65{0}, 0{0}, 2, E*2; 4; 5; 9, 1, 1
3964, Vehicles, 0, 57{0}, 0{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1
3935, Vehicles, 0, 50{0}, 0{0}, 4, F*1~56; S*1~53; T*1~28, 1, 1

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

3790, Building, 0, 60{0}, H4
3770, Block, 0, 0, 18{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva
3790, Vehicles, 0, 40{0}, 0{0}, 4, F*1~56; S*1~53; T*1~28, 1, 1

3880, Building, 0, 60{0}, H5
3860, Block, 0, 0, 18{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva

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
4450, Vehicles, 0, 25{0}, 0{0}, 4, F*1~56; S*1~53; T*1~28, 1, 1

//
// Add houses on the left with driveways and the occasional vehicle in the driveway
//

2150, Building, 0, -60{0}, H4
2150, Block, 0, 0, -70{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva

2250, Building, 0, -60{0}, H6
2220, Block, 0, 0, -70{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva
2230, Vehicles, 0, -40{0}, 0{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1

2350, Building, 0, -60{0}, H13
2325, Block, 0, 0, -70{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva

2450, Building, 0, -60{0}, H6
2420, Block, 0, 0, -70{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva
2430, Vehicles, 0, -36{0}, 0{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1

2550, Building, 0, -60{0}, H5
2550, Block, 0, 0, -70{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva
2560, Vehicles, 0, -40{0}, 0{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1

2650, Building, 0, -60{0}, H2
2625, Block, 0, 0, -70{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva

2730, Building, 0, -60{0}, H4
2730, Block, 0, 0, -70{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva
2740, Vehicles, 0, -40{0}, 0{0}, 4, F*1~56; S*1~53; T*1~28, 1, 1

2815, Building, 0, -60{0}, H13
2790, Block, 0, 0, -70{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva

2960, Building, 0, -60{0}, H6
2930, Block, 0, 0, -70{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva

3050, Building, 0, -60{0}, H13
3025, Block, 0, 0, -70{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva

3150, Building, 0, -60{0}, H7
3150, Block, 0, 0, -70{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva
3160, Vehicles, 0, -36{0}, 0{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1

3250, Building, 0, -60{0}, H5
3250, Block, 0, 0, -70{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva

3350, Building, 0, -60{0}, H2
3325, Block, 0, 0, -70{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva
3335, Vehicles, 0, -40{0}, 0{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1

3450, Building, 0, -60{0}, H7
3450, Block, 0, 0, -70{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva
3460, Vehicles, 0, -40{0}, 0{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1

3550, Building, 0, -60{0}, H5
3550, Block, 0, 0, -70{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva

3650, Building, 0, -60{0}, H7
3650, Block, 0, 0, -70{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva

3750, Building, 0, -60{0}, H4
3750, Block, 0, 0, -70{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva
3760, Vehicles, 0, -40{0}, 0{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1

3830, Building, 0, -60{0}, H5
3830, Block, 0, 0, -70{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva

3880, Building, 0, -60{0}, H4
3880, Block, 0, 0, -70{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva

4020, Building, 0, -60{0}, H7
4020, Block, 0, 0, -70{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva

4110, Building, 0, -60{0}, H5
4110, Block, 0, 0, -70{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva
4120, Vehicles, 0, -40{0}, 0{0}, 4, F*1~56; S*1~53; T*1~28, 1, 1

4210, Building, 0, -60{0}, H13
4185, Block, 0, 0, -70{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva

4310, Building, 0, -60{0}, H5
4310, Block, 0, 0, -70{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva

4410, Building, 0, -60{0}, H4
4410, Block, 0, 0, -70{0}, 0.04, 52, 0.1, 20, 255/255/255, 0, 0, 0, C:\STISIM3\Data\Textures\Concrete3.Jva
4420, Vehicles, 0, -36{0}, 0{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1

//
// Critical Events
//

// Easy version

    // Cross traffic vehicle coming through the intersection
    
    @12600, Vehicles#1, 306, 306{0}, 0{1}, 2, F*1~56; S*1~53; T*1~28, 1, 1
    
// Difficult version 1

    // Hidden pedestrians that cross
    
//    @22225, Pedestrian#1, 0, 3{0}; !30{4}, 3, 13{0}, R, 5
//    @22210, Vehicles, 0, 14{0}, 0{0}, 1, T*1~28, 1, 1
 
/// Pedestrian#2 below is a dang dog 
   
//   @23450, Pedestrian#2, 0, 4{0}; !30{4}, 4, 3{2}, L, 11
//            @23450, Animated Object, 0, -6{1}, 0.45{0}, 0, 0, 0, C:\Stisim3\Data\Animated Objects\ball_roll.mesh, 4{0}; !30{4}, 1, Ball_roll, 1, 0, 1, 1, 0{0}, -3.5{0}
//    @23450, Pedestrian#69, 0, 2.5{0}, *, -3{1}, R, 4, 23
   @23435, Vehicles, 0, 4.5{2}, 0{0}, 3, , T*1~28, 1, 1

 3285, Vehicles, 0, 24{0}, 0{0}, 4, T6, 1, 1

//    @25515, Pedestrian#50, 0, 2.5{0}, *, 3{2}, L, 5
    @25490, Vehicles, 0, 4.5{2}, 0{0}, 3, T*1~28, 1, 1
    @25470, Vehicles, 0, 4.5{2}, 0{0}, 3, T*1~28, 1, 1

   @23210, Vehicles, 0, 14{0}, 0{0}, 1, T*1~28, 1, 1
   @23160, Vehicles, 0, 14{0}, 0{0}, 1, T*1~28, 1, 1



    // Vehicle pulling into traffic
    
//    @23680, Vehicles#3, 0, -5{1}, 0{0}, 1, F*1~56; S*1~53; T*1~28, 1, 1, 6{0}; !40{4}, 11, 1, 3{0}; !30{4}, 1, -9{7}, 20, 2.5, {25}, 2, 20{0}, , , 2.5, {25}, 0, -5{0}, 2, 66{0}, , , 3, 6000{15}, 1, -5{1}, 20, 3, {25}, 2, 0{0}, , , 3
    
    // Vehicle backing
    
    @24255, Vehicles, 0, 20{0}, 0{0}, 4, F1, 1, 0  \\, &
	\\2.5{0}, 2, -14{0}, , , 2, {25}, 2, 0{0}, , , 2, 3{26}, 2, 17{0}, , , 2, {25}, 2, 0{0}, , , 2

    @24200, Vehicles, 0, -4{1}, 0{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
    @24230, Vehicles, 0, -4{1}, 0{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
    
    // Add some background pedestrians
    
    @22100, Pedestrian, 0, 20, 6, 27{0}, B, *1~5; 8; 12~16; 27~30; 35
    @23100, Pedestrian, 0, 10, 6, -27{0}, B, *1~3
    @22800, Pedestrian, 0, 40, 6.5, -27{0}, F, *1~5; 8; 12~16; 27~30; 35
    @22900, Pedestrian, 0, 40, 6.5, 27{0}, F, *1~5
    
    @25800, Pedestrian, 0, 10, 4.5, -27{0}, F, *1~5; 8; 12~16; 27~30; 35
    @25500, Pedestrian, 0, 10, 4, -27{0}, B, *1~3
    
    @25200, Pedestrian, 0, 10, 4, 27{0}, B, %Peds
    @25600, Pedestrian, 0, 10, 4.5, 27{0}, F, *1~5
    @25600, Pedestrian, 0, 10, 4.5, 29{0}, F, *1~5
    @25700, Pedestrian, 0, 10, 4.5, 27{0}, F, *1~5
    @25700, Pedestrian, 0, 10, 4.5, 29{0}, F, *1~5
    
    // Add additional parked cars

    @22380, Vehicles, 0, -4{1}, 0{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
    @22530, Vehicles, 0, -4{1}, 0{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
    @22660, Vehicles, 0, -4{1}, 0{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
    @22845, Vehicles, 0, -4{1}, 0{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
    @23190, Vehicles, 0, -4{1}, 0{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
    @23420, Vehicles, 0, -4{1}, 0{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
    @23820, Vehicles, 0, -4{1}, 0{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
    @24290, Vehicles, 0, -4{1}, 0{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
    @24550, Vehicles, 0, -4{1}, 0{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
    
// Dificult version 2
    
    // Obscured pedestrians walkout
    
//    @32390, Pedestrian#1, 0, 3; !30{4}, 3, 13{0}, R, 4
//    @32375, Vehicles, 0, 14{0}, 0{0}, 1, T*1~28, 1, 1
    
//    @34390, Pedestrian#3, 0, 3, 3, -6{1}, R, 5
//            @34420, Animated Object, 0, -6{1}, 0.45{0}, 0, 0, 0, C:\Stisim3\Data\Animated Objects\ball_roll.mesh, 4{0}; !30{4}, 1, Ball_roll, 1, 0, 1, 1, 0{0}, -3.5{0}
//  @24420, Pedestrian#50, 0, 2.5{0}, *, -3{1}, R, 4, 23
   4400, Vehicles, 0, -4{1}, 0{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0

    // Vehicle backing out event
    
//    @23260, Vehicles#69, 0, -24{0}, 0{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1, 2.5{0}, 2, -25{0}, , , 2, {25}, 2, 0{0}, , , 2, 4{26}, 2, 12{0}, , , 4, {25}, 2, 0{0}, , , 4
//    @33200, Vehicles, 0, 4{2}, 0{0}, 3, F*1~56; S*1~53; T*1~28, 1, 0
//    @33230, Vehicles, 0, 4{2}, 0{0}, 3, F*1~56; S*1~53; T*1~28, 1, 0

    // Add some background pedestrians
    
//    @32300, Pedestrian, 0, 20, 6, 24{0}, B, *1~5; 8; 12~16; 27~30; 35
//    @32600, Pedestrian, 0, 40, 6.5, 26{0}, F, *1~5
//    @32700, Pedestrian, 0, 40, 6.5, -25{0}, F, *1~5; 8; 12~16; 27~30; 35


// Distracted driving 1

    // Obstructed pedestrian coming from right
    
//    2415, Pedestrian#50, 0, 2.5{0}, *, 13{0}, R, 4
    2400, Vehicles, 0, 14{0}, 0{0}, 1, F*1~56, 1, 0
    
    // Ped walking from the right
                                            
//    @44390, Pedestrian#2, 0, 3{0}, 4, -3{1}, R, 5
//    @44370, Vehicles, 0, 14{0}, 0{0}, 1, F*1~56, 1, 0
    
    // Vehicles that are going to pull in behind the driver to hit them if they slow down
    
//    @44010, Vehicles, 0, 14{0}, 0{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0, 4030{20}, 2, 0{3}, , , 1, {25}, 1, 6{0}, 10, 1, 4200{20}, 2, 0{1}, , , .1, 4370{20}, 2, 0{3}, , , .1, 4450{15}, 1, -6{1}, , 2, {25}, 2, 0{0}, , , 2
          
//    @44700, Vehicles, 0, 14{0}, 0{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0, 4720{20}, 2, 0{3}, , , 1, {25}, 1, 6{0}, 10, 1, 5450{20}, 2, 0{1}, , , .1, 6000{20}, 2, 0{3}, , , 1
          
    // Vehicle that pulls into traffic
          
//    @43750, Vehicles, 0, 14{0}, 0{0}, 1, F*1~56; S*1~53; T*1~28, 1, 1, 6{0}, 3, 1, .5, 3{0}, 2, -3{1}, 100, 0, 3, 1{26}, 1, 6{0}, 10, 2, 3890{15}, 2, 10{0}, , , 2, {25}, 4, 1, {25}, 3, 2, .5, 3915{15}, 7, 2, 34, {25}, 2, 50{0}, , , 3
    
// Distracted driving 2

    // Vehicle backing into street
    
//    @53290, Vehicles#1, 0, 30{0}, 0{0}, 4, F*32~36, 1, 1, 5{0}, 2, -18{0}, , , 3, 2{26}, 7, 2, 13, 1{26}, 2, 0{0}, , , 1, 2{26}, 2, 35{0}, , , 4, 3850{15}, 3, 1, .5, {25}, 2, 10{0}, , , 3, 3920{15}, 7, 1, 35, {25}, 2, 50{0}, , , 5
    
//    @53140, Vehicles, 0, -4{1}, 0{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
//    @53180, Vehicles, 0, -4{1}, 0{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0

    // Ped walking from the right
                                            
//    @54400, Pedestrian#2, 0, 3{0}, 4, -3{1}, R, 5
//    @54370, Vehicles, 0, 14{0}, 0{0}, 1, F*1~56, 1, 0
    
    // Vehicles that are going to pull in behind the driver to hit them if they slow down
    
//    @54010, Vehicles, 0, 14{0}, 0{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0, 4030{20}, 2, 0{3}, , , 1, {25}, 1, 6{0}, 10, 1, 4200{20}, 2, 0{1}, , , .1, 4370{20}, 2, 0{3}, , , .1, 4450{15}, 1, -6{1}, , 2, {25}, 2, 0{0}, , , 2

    // Approaching traffic

//    @53000, Vehicles, 0, -6{0}, 44{0}, 3, F*1~56; S*1~53; T*1~28, 1, 1
//    @53500, Vehicles, 0, -6{0}, 44{0}, 3, F*1~56; S*1~53; T*1~28, 1, 1
//    @54000, Vehicles, 0, -6{0}, 44{0}, 3, F*1~56; S*1~53; T*1~28, 1, 1
//    @54250, Vehicles, 0, -6{0}, 44{0}, 3, F*1~56; S*1~53; T*1~28, 1, 1
//    @56000, Vehicles, 0, -6{0}, 44{0}, 3, F*1~56; S*1~53; T*1~28, 1, 1
//    @56250, Vehicles, 0, -6{0}, 44{0}, 3, F*1~56; S*1~53; T*1~28, 1, 1
//    @56600, Vehicles, 0, -6{0}, 44{0}, 3, F*1~56; S*1~53; T*1~28, 1, 1
//    @57000, Vehicles, 0, -6{0}, 44{0}, 3, F*1~56; S*1~53; T*1~28, 1, 1
//    @57300, Vehicles, 0, -6{0}, 44{0}, 3, F*1~56; S*1~53; T*1~28, 1, 1
//    @58000, Vehicles, 0, -6{0}, 44{0}, 3, F*1~56; S*1~53; T*1~28, 1, 1
//    @59000, Vehicles, 0, -6{0}, 44{0}, 3, F*1~56; S*1~53; T*1~28, 1, 1
//    @59400, Vehicles, 0, -6{0}, 44{0}, 3, F*1~56; S*1~53; T*1~28, 1, 1
//    @59900, Vehicles, 0, -6{0}, 44{0}, 3, F*1~56; S*1~53; T*1~28, 1, 1
