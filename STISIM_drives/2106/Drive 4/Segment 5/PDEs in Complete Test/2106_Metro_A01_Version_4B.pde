
//
// Define any constants
//


//
// Define what happens if the driver crashes
//

1000, Crash Settings, 0, -18{1}
3050, Crash Settings, 3, 0
3200, Crash Settings, 0, -18{1}
4800, Crash Settings, 0, -6{1}

//
// Critical events
//

//
2505, Vehicles, 0, 6{0}, 0{0}, 1, CN6, 1, 0
2461, Barrel, 0, 5{0}, 5, 4, C:\STISIM3\Sound\Thud.Wav, 100
2481, Barrel, 0, 7{0}, 5, 4, C:\STISIM3\Sound\Thud.Wav, 100
2501, Barrel, 0, 9{0}, 5, 4, C:\STISIM3\Sound\Thud.Wav, 100
2521, Barrel, 0, 11{0}, 5, 4, C:\STISIM3\Sound\Thud.Wav, 100
2541, Barrel, 0, 9{0}, 5, 4, C:\STISIM3\Sound\Thud.Wav, 100
2561, Barrel, 0, 5{0}, 5, 4, C:\STISIM3\Sound\Thud.Wav, 100
2522, Pedestrian, 0, 0, 0, 5{0}, R, 21
2522, Pedestrian, 0, 0, 0, 3{0}, L, 21

// Force the driver into the outside lane
                                           
1585, Barrel, 0, 5{0}, 5, 1, 0, 0
1595, Barrel, 0, 7{0}, 5, 1, 0, 0
1605, Barrel, 0, 9{0}, 5, 1, 0, 0
1615, Barrel, 0, 11{0}, 5, 1, 0, 0
1630, Vehicles, 0, 6{0}, 0{0}, 1, CN1, 1, 0
1655, Pedestrian, 0, 0, 0, 5{0}, R, 21
1655, Pedestrian#100, 0, 2.5{0}, 0, 2{0}, L, 21

// Pedestirans cut the driver off

1655, Pedestrian#33, 0, 2.5, *, 32{0}, R, 10
1638, Vehicles, 0, 32{0}, 0{0}, 1, T*1~5, 1, 1

// Pedestrian crossing

2204, Pedestrian, 0, 2{17}, 4, 44{0}, R, 15
2202, Pedestrian, 0, 2{18}, 4, 46{0}, R, 30
2204, Pedestrian, 0, 2{18}, 4, 44{0}, R, 3
// NEAR LEFT
2206, Pedestrian, 0, 2{17}, 4, -44{0}, L, 14
// FAR RIGHT
2296, Pedestrian, 0, 2{17}, 4, 44{0}, R, 16
2298, Pedestrian, 0, 2{18}, 4, 46{0}, R, 35

// Pedestrian crossing at RT turn
// near right corner at INT-02

//3061, Pedestrian#3, 0, 3020{20}, 3, 43{0}, B, 4

//
// Vehicle pulling into traffic
//

//      3200, Vehicles#4, 725, -5{1}, 0{0}, 1, C17, 1, 1, {25}, 3, 1, .5, 2.5{0}; !30{4}, 2, 20{0}, , , 2.5, .5{26}, 1, 20{0}, 20, 2.5, 4000{15}, 4, 1, 4500{15}, 1, -5{1}, 20, 2, 2{26}, 2, 0{0}, , , 3

//
// Define any new roadway sections
//

             900, Roadway, 12, 6, 3, 2, 0, 10, 10, 0.4, 0.4, 150, 0, C:\STISIM3\Data\Textures\Road21.Jva, 255/255/255, 6, 0, 0, C:\STISIM3\Data\Textures\Road21.Jva, 255/255/255, 6, 0, 0, 10, C:\STISIM3\Data\Textures\CurbSidewalk_Left.Jva, 255/255/255, 10, 0, 0, 10, C:\STISIM3\Data\Textures\CurbSidewalk_Right.Jva, 255/255/255, 10, 0, 0, 100, C:\STISIM3\Data\Textures\Concrete3.Jva, 255/255/255, 10, 0, 0, 100, C:\STISIM3\Data\Textures\Concrete3.Jva, 255/255/255, 10, 0, C:\STISIM3\Data\Textures\Grass04.Jpg, 255/255/255, 10, 0, C:\STISIM3\Data\Textures\Grass04.Jpg, 255/255/255, 10, 0, 4, C:\STISIM3\Data\Textures\Road21.Jva, 255/255/255, 6, 0

 
             4650, Roadway, 12, 4, 2, 2, 0, 10, 10, 0.4, 0.4, 100, 0, C:\STISIM3\Data\Textures\Road21.Jva, 255/255/255, 6, 0, 0, C:\STISIM3\Data\Textures\Road21.Jva, 255/255/255, 6, 0, 0, 10, C:\STISIM3\Data\Textures\CurbSidewalk_Left.Jva, 255/255/255, 10, 0, 0, 10, C:\STISIM3\Data\Textures\CurbSidewalk_Right.Jva, 255/255/255, 10, 0, 0, 100, C:\STISIM3\Data\Textures\Concrete3.Jva, 255/255/255, 10, 0, 0, 100, C:\STISIM3\Data\Textures\Concrete3.Jva, 255/255/255, 10, 0, C:\STISIM3\Data\Textures\Grass04.Jpg, 255/255/255, 10, 0, C:\STISIM3\Data\Textures\Grass04.Jpg, 255/255/255, 10, 0, 0, C:\STISIM3\Data\Textures\Road21.Jva, 255/255/255, 6, 0

//
// Add any horizontal curves
//

2400, Curve, 0, 200, 200, 200, -0.0005

//
// Include any intersections
//

2250, Intersection, 0, 0, 1, 4, 4, 0
0, Signal Light#15, -2250, 0, 0, 15, 0, 0, 6, 1, 0, 1
2244, Vehicles, 0, -134{0}, 32{0}, 4, F*1~56; S*1~53; T*1~30, 1, 1
2232, Vehicles, 0, -132{0}, 32{0}, 4, F*1~56; S*1~53; T*1~30, 1, 1
2244, Vehicles, 0, -160{0}, 32{0}, 4, F*1~56; S*1~53; T*1~30, 1, 1
2232, Vehicles, 0, -165{0}, 32{0}, 4, F*1~56; S*1~53; T*1~30, 1, 1
2232, Vehicles, 0, -185{0}, 32{0}, 4, F*1~56; S*1~53; T*1~30, 1, 1
2256, Vehicles, 0, 134{0}, 32{0}, 2, F*1~56; S*1~53; T*1~30, 1, 1
2268, Vehicles, 0, 132{0}, 32{0}, 2, F*1~56; S*1~53; T*1~30, 1, 1
2256, Vehicles, 0, 160{0}, 32{0}, 2, F*1~56; S*1~53; T*1~30, 1, 1
2268, Vehicles, 0, 165{0}, 32{0}, 2, F*1~56; S*1~53; T*1~30, 1, 1
2268, Vehicles, 0, 185{0}, 32{0}, 2, F*1~56; S*1~53; T*1~30, 1, 1

// Driver turns right

3100, Intersection, 0, 0, 1, 4, 4, 1
 600, Signal Light#23, -2500, 3.5, 3.5, 15, 0, 0, 6, 1, 0, 1

\\2350,Previously Defined Events,C:\STISIM3\Scenarios\PDEs\Navigation.Pde,-,,750

4160, Intersection, 0, 0, 1, 4, 4, 0
2200, Signal Light#9, -1960, 0, 0, 0, 0, 0, 6, 1, 0, 1
4166, Vehicles#54, 0, 70{0}, 0{0}, 2, C15, 0, 0  //, 2.5{0}, 2, 20, , ,  

//
// Turn off any trees
//


//
// Add speed limits
//

 800, Speed Limit, 45
 990, Sign, 100, 0, C:\STISIM3\Data\Signs\Speed Limit\SP35MPH.mesh
2305, Sign, 100, 0, C:\STISIM3\Data\Signs\Speed Limit\SP35MPH.mesh
3155, Sign, 100, 0, C:\STISIM3\Data\Signs\Speed Limit\SP35MPH.mesh
4215, Sign, 100, 0, C:\STISIM3\Data\Signs\Speed Limit\SP35MPH.mesh


//
// Add our buildings
//

// Right

1050, Building, 0, 60{0}, G6
1180, Building, 0, 60{0}, G37
1320, Building, 0, 60{0}, G25
1440, Building, 0, 60{0}, S3
1520, Building, 0, 56{0}, S4
1600, Building, 0, 60{0}, S5
1720, Building, 0, 60{0}, G25
1850, Building, 0, 65{0}, S7
2000, Building, 0, 60{0}, S9
2150, Building, 0, 60{0}, G7
// INT-01
2390, Building, 0, 60{0}, G58
2575, Building, 0, 60{0}, G36
2780, Building, 0, 60{0}, G34
2990, Building, 0, 60{0}, G3
// INT-02
3200, Building, 0, 135{0}, G40, -90
3325, Building, 0, 155{0}, G48, -90
3560, Building, 0, 60{0}, G57
3725, Building, 0, 60{0}, G58
3900, Building, 0, 60{0}, G24
4035, Building, 0, 60{0}, G22
// INT-03
4251, Building, 0, 45{0}, B4
4300, Building, 0, 135{0}, G40, -90
4400, Building, 0, 155{0}, G48, -90
4610, Building, 0, 63{0}, G57
4810, Building, 0, 60{0}, G49

// Left

1100, Building, 0, -60{0}, G31
1300, Building, 0, -60{0}, G36
1400, Building, 0, -155{0}, G48, 90
1730, Static Object, 0, -68{0}, -725, 180, 0, 0, C:\STISIM3\Data\Buildings\Skyscraper\S_15.Mka
2000, Building, 0, -60{0}, G30
2120, Building, 0, -60{0}, G3
// INT-01
2310, Building, 0, -340{0}, G35, 90
2350, Building, 0, -60{0}, G65
2500, Building, 0, -60{0}, S9
2630, Building, 0, -60{0}, S7
2725, Building, 0, -140{0}, G65, 90
2920, Building, 0, -60{0}, G10
3025, Building, 0, -50{0}, B8
// INT-02
3240, Building, 0, -60{0}, G61
3360, Building, 0, -60{0}, S3
3460, Building, 0, -56{0}, S4
3560, Building, 0, -56{0}, G25
3700, Building, 0, -56{0}, G63
3880, Building, 0, -60{0}, G25
4030, Building, 0, -60{0}, G37
// INT-03
4241, Building, 0, -60{0}, G11
4340, Building, 0, -60{0}, G61
4430, Building, 0, -60{0}, S3
4530, Building, 0, -56{0}, S4
4660, Building, 0, -60{0}, S5

//
// Buildings along the intersections
//

2480, Building, 0, 300{0}, S9, 90
2950, Building, 0, 220{0}, G48
2950, Building, 0, 430{0}, S1, -90
3040, Building, 0, 525{0}, G4, 90
3040, Building, 0, 650{0}, G25, 90
3050, Building, 0, 790{0}, G24, 90
3050, Building, 0, 925{0}, G22, 90
3050, Building, 0, 1101{0}, B4, 90
2975, Building, 0, 1175{0}, G40
3050, Building, 0, 1450{0}, G49, 90
3270, Building, 0, 350{0}, G69, 90
3270, Building, 0, 575{0}, G69, 90
3160, Building, 0, 780{0}, G25, -90
3160, Building, 0, 930{0}, G37, -90
3160, Building, 0, 1100{0}, G11, -90
3160, Building, 0, 1240{0}, S1, -90
3160, Building, 0, 1370{0}, S3, -90
3160, Building, 0, 1480{0}, S4, -90
3160, Building, 0, 1580{0}, S5, -90

//
// Add street lights
//

 990, Static Object, 0, 3{1}, 0, 180, 0, 0, C:\Stisim3\Data\Miscellaneous\StreetLight_1.Mka, 1200, 200
 990, Static Object, 0, -3{2}, 0, 0, 0, 0, C:\Stisim3\Data\Miscellaneous\StreetLight_1.Mka, 1200, 200
 
2310, Static Object, 0, 3{1}, 0, 180, 0, 0, C:\Stisim3\Data\Miscellaneous\StreetLight_1.Mka, 600, 200
2310, Static Object, 0, -3{2}, 0, 0, 0, 0, C:\Stisim3\Data\Miscellaneous\StreetLight_1.Mka, 600, 200

3040, Static Object, 0, 3{1}, 0, 180, 0, 0, C:\Stisim3\Data\Miscellaneous\StreetLight_1.Mka
3040, Static Object, 0, -3{2}, 0, 0, 0, 0, C:\Stisim3\Data\Miscellaneous\StreetLight_1.Mka
                               
3059, Static Object, 0, 20{1}, 0, -90, 0, 0, C:\Stisim3\Data\Miscellaneous\StreetLight_1.Mka
3059, Static Object, 0, 220{1}, 0, -90, 0, 0, C:\Stisim3\Data\Miscellaneous\StreetLight_1.Mka
3059, Static Object, 0, 420{1}, 0, -90, 0, 0, C:\Stisim3\Data\Miscellaneous\StreetLight_1.Mka
3059, Static Object, 0, 620{1}, 0, -90, 0, 0, C:\Stisim3\Data\Miscellaneous\StreetLight_1.Mka
3059, Static Object, 0, 820{1}, 0, -90, 0, 0, C:\Stisim3\Data\Miscellaneous\StreetLight_1.Mka

3141, Static Object, 0, 20{1}, 0, 90, 0, 0, C:\Stisim3\Data\Miscellaneous\StreetLight_1.Mka
3141, Static Object, 0, 220{1}, 0, 90, 0, 0, C:\Stisim3\Data\Miscellaneous\StreetLight_1.Mka
3141, Static Object, 0, 420{1}, 0, 90, 0, 0, C:\Stisim3\Data\Miscellaneous\StreetLight_1.Mka
3141, Static Object, 0, 620{1}, 0, 90, 0, 0, C:\Stisim3\Data\Miscellaneous\StreetLight_1.Mka
3141, Static Object, 0, 820{1}, 0, 90, 0, 0, C:\Stisim3\Data\Miscellaneous\StreetLight_1.Mka

//
// Add generic parked vehicles along the route
//

1200, Vehicles, 0, 34{0}, 0{0}, 1, F*1~56; S*1~53; T*1~30, 1, 1
1600, Vehicles, 0, 32{0}, 0{0}, 1, F*1~56; S*1~53; T*1~30, 1, 1
1680, Vehicles, 0, 32{0}, 0{0}, 1, F*1~56; S*1~53; T*1~30, 1, 1
1720, Vehicles, 0, 34{0}, 0{0}, 1, F*1~56; S*1~53; T*1~30, 1, 1
2080, Vehicles, 0, 34{0}, 0{0}, 1, F*1~56; S*1~53; T*1~30, 1, 1

1100, Vehicles, 0, -34{0}, 0{0}, 3, F*1~56; S*1~53; T*1~30, 1, 1
1500, Vehicles, 0, -34{0}, 0{0}, 3, F*1~56; S*1~53; T*1~30, 1, 1
1750, Vehicles, 0, -34{0}, 0{0}, 3, F*1~56; S*1~53; T*1~30, 1, 1
1920, Vehicles, 0, -34{0}, 0{0}, 3, F*1~56; S*1~53; T*1~30, 1, 1

1450, Static Object, 0, 34{0}, 0, 0, 0, 0, C:\STISIM3\Data\Vehicles\Car_Block_3.mka
1450, Collision Block, 0, 34{0}, 82, 6, , , , 1
1900, Static Object, 0, 34{0}, 0, 0, 0, 0, C:\STISIM3\Data\Vehicles\Car_Block_3.mka
1900, Collision Block, 0, 34{0}, 82, 6, , , , 1
2450, Static Object, 0, -34{0}, 0, 180, 0, 0, C:\STISIM3\Data\Vehicles\Car_Block_5.mka
2447, Collision Block, 0, -34{0}, 130, 6, , , , 1
2500, Static Object, 0, 34{0}, 0, 0, 0, 0, C:\STISIM3\Data\Vehicles\Car_Block_5.mka
2503, Collision Block, 0, 34{0}, 130, 6, , , , 1
2850, Static Object, 0, -34{0}, 0, 180, 0, 0, C:\STISIM3\Data\Vehicles\Car_Block_5.mka
2847, Collision Block, 0, -34{0}, 130, 6, , , , 1

// After the turn

3200, Vehicles, 450, -5{1}, 0{0}, 1, F*1~56; S*1~53; T*1~30, 1, 1
3200, Vehicles, 650, -5{1}, 0{0}, 1, F*1~56; S*1~53; T*1~30, 1, 1
3200, Vehicles, 800, -5{1}, 0{0}, 1, C17, 1, 0
3200, Vehicles, 880, 32{0}, 0{0}, 1, C13, 1, 0, 1000{4}, 11, 1
3200, Vehicles, 1300, -5{1}, 0{0}, 1, C17, 1, 0
                     
3200, Vehicles, 550, -30{0}, 0{0}, 3, F*1~56; S*1~53; T*1~30, 1, 1

3200, Static Object, 1200, -5{1}, 0, 0, 0, 0, C:\STISIM3\Data\Vehicles\Car_Block_3.mka
3200, Collision Block, 1200, -5{1}, 82, 6, , , , 1
3200, Static Object, 1310, 5{2}, 0, 180, 0, 0, C:\STISIM3\Data\Vehicles\Car_Block_3.mka
3200, Collision Block, 1310, 5{2}, 82, 6, , , , 1

//
// Add some cabs and buses
//
                    
1100, Vehicles, 0, 34{0}, 0{0}, 1, C17, 1, 1
1350, Vehicles, 0, 34{0}, 0{0}, 1, C17, 1, 1
1740, Vehicles, 0, 34{0}, 0{0}, 1, C17, 1, 1
1980, Vehicles, 0, 34{0}, 0{0}, 1, C17, 1, 1
2800, Vehicles, 0, 34{0}, 0{0}, 1, C17, 1, 1
2160, Vehicles, 0, 34{0}, 0{0}, 1, C13, 1, 1, 1000{4}, 11, 1
2325, Vehicles, 0, 34{0}, 0{0}, 1, C14, 1, 0, 1000{4}, 11, 1
2375, Vehicles, 0, 34{0}, 0{0}, 1, C14, 1, 0, 1000{4}, 11, 1
2900, Vehicles, 0, 34{0}, 0{0}, 1, C14, 1, 1, 1000{4}, 11, 1
3170, Vehicles, 0, 34{0}, 0{0}, 1, C14, 1, 0
3220, Vehicles, 0, 34{0}, 0{0}, 1, C14, 1, 0

1200, Vehicles, 0, -34{0}, 0{0}, 3, C17, 1, 1
1400, Vehicles, 0, -34{0}, 0{0}, 3, C17, 1, 1
1840, Vehicles, 0, -34{0}, 0{0}, 3, C17, 1, 1
2040, Vehicles, 0, -34{0}, 0{0}, 3, C17, 1, 1
2500, Vehicles, 0, -34{0}, 0{0}, 3, C17, 1, 1
2150, Vehicles, 0, -33{0}, 0{0}, 3, C13, 1, 1

//
// Parked cross traffic vehicles
//

3134, Vehicles, 0, 70{0}, 0{0}, 2, F*1~56; S*1~53; T*1~30, 1, 1
3134, Vehicles, 0, 150{0}, 0{0}, 2, F*1~56; S*1~53; T*1~30, 1, 1
3134, Vehicles, 0, 230{0}, 0{0}, 2, C17, 1, 1
                
3066, Vehicles, 0, 110{0}, 0{0}, 4, F*1~56; S*1~53; T*1~30, 1, 1
3066, Vehicles, 0, 270{0}, 0{0}, 4, F*1~56; S*1~53; T*1~30, 1, 1

//
// Add some oncoming traffic
//

2100, Vehicles, 0, -8{0}, 60{0}, 3, F*1~56; S*1~53; T*1~30, 1, 1
2800, Vehicles, 0, -8{0}, 60{0}, 3, F*1~56; S*1~53; T*1~30, 1, 1
3100, Vehicles, 0, -8{0}, 60{0}, 3, F*1~56; S*1~53; T*1~30, 1, 1
3150, Vehicles, 0, -20{0}, 55{0}, 3, F*1~56; S*1~53; T*1~30, 1, 1
3300, Vehicles, 0, -8{0}, 60{0}, 3, F*1~56; S*1~53; T*1~30, 1, 1
3400, Vehicles, 0, -8{0}, 60{0}, 3, F*1~56; S*1~53; T*1~30, 1, 1
3850, Vehicles, 0, -20{0}, 55{0}, 3, F*1~56; S*1~53; T*1~30, 1, 1
4360, Vehicles, 0, -19{0}, 66{0}, 3, F*1~56; S*1~53; T*1~30, 1, 1
4560, Vehicles, 0, -7{0}, 66{0}, 3, F*1~56; S*1~53; T*1~30, 1, 1
4860, Vehicles, 0, -19{0}, 66{0}, 3, F*1~56; S*1~53; T*1~30, 1, 1
5060, Vehicles, 0, -7{0}, 66{0}, 3, F*1~56; S*1~53; T*1~30, 1, 1
5360, Vehicles, 0, -7{0}, 66{0}, 3, F*1~56; S*1~53; T*1~30, 1, 1
5360, Vehicles, 0, -19{0}, 66{0}, 3, F*1~56; S*1~53; T*1~30, 1, 1

//
// Moving cross traffic vehicles
//

2000, Vehicles, 1108, 300{0}, 60{0}, 2, F*1~56; S*1~53; T*1~30, 1, 1
2000, Vehicles, 1108, 500{0}, 60{0}, 2, F*1~56; S*1~53; T*1~30, 1, 1
2000, Vehicles, 1108, 700{0}, 60{0}, 2, F*1~56; S*1~53; T*1~30, 1, 1
2000, Vehicles, 1120, 300{0}, 60{0}, 2, F*1~56; S*1~53; T*1~30, 1, 1
2000, Vehicles, 1120, 500{0}, 60{0}, 2, F*1~56; S*1~53; T*1~30, 1, 1
2000, Vehicles, 1120, 950{0}, 60{0}, 2, F*1~56; S*1~53; T*1~30, 1, 1
3200, Vehicles, 967, 660{0}, 40{0}, 2, F*1~56; S*1~53; T*1~30, 1, 1
3200, Vehicles, 967, 900{0}, 40{0}, 2, F*1~56; S*1~53; T*1~30, 1, 1

1000, Vehicles, 2092, -300{0}, 60{0}, 4, F*1~56; S*1~53; T*1~30, 1, 1
1000, Vehicles, 2080, -300{0}, 60{0}, 4, F*1~56; S*1~53; T*1~30, 1, 1
2900, Vehicles, 192, 300{0}, 10{0}, 4, F*1~56; S*1~53; T*1~30, 1, 1
2900, Vehicles, 192, 400{0}, 10{0}, 4, F*1~56; S*1~53; T*1~30, 1, 1
2900, Vehicles, 192, 500{0}, 10{0}, 4, F*1~56; S*1~53; T*1~30, 1, 1
2900, Vehicles, 192, 650{0}, 10{0}, 4, F*1~56; S*1~53; T*1~30, 1, 1
3200, Vehicles, 953, -700{0}, 40{0}, 4, F*1~56; S*1~53; T*1~30, 1, 1
3200, Vehicles, 941, -860{0}, 40{0}, 4, F*1~56; S*1~53; T*1~30, 1, 1

//
// Add some genric pedestrians
//

1700, Pedestrian, 0, 0, 0, 55{0}, F, *1~3; 8; 12~16; 27~30; 35
1850, Pedestrian, 0, 4, 5, -44{0}, F, *1~3; 8; 12~16; 27~30; 35
2360, Pedestrian, 0, 7, 4, 45{0}, B, *1~3; 8; 12~16; 27~30; 35
2500, Pedestrian, 0, 7, 4, 46{0}, B, *1~3; 8; 12~16; 27~30; 35
2640, Pedestrian, 0, 7, 4, 44{0}, B, *1~3; 8; 12~16; 27~30; 35
3146, Pedestrian, 0, 0, 0, 44{0}, R, *1~3; 8; 12~16; 27~30; 35
3200, Pedestrian, 1000, 10, 3, 43{0}, F, *1~3; 8; 12~16; 27~30; 35
3200, Pedestrian, 1000, 10, 3, 45{0}, F, *1~3; 8; 12~16; 27~30; 35
3200, Pedestrian, 1005, 10, 3, 44{0}, F, *1~3; 8; 12~16; 27~30; 35
3200, Pedestrian, 940, 6, 3, 47{0}, B, *1~3; 8; 12~16; 27~30; 35
3200, Pedestrian, 1050, 10, 3, -44{0}, F, *1~3; 8; 12~16; 27~30; 35
3200, Pedestrian, 1100, 10, 3, -45{0}, F, *1~3; 8; 12~16; 27~30; 35

//
// Add some road narrows roadway signsr
//

3250, Sign, 11, 1400
3250, Sign, 11, 1700
