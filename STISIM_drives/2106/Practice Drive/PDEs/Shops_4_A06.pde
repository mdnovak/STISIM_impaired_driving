
//
// by George Park
//

//
// Define any constants
//


//
// Add a signalized intersection
//

0, Signal Light, -2000, 0, 0, 0, 0, 0, 6, 1, 0, 1
2000, Intersection, 0, 0, 1, 4, 4, 2

//
// Define what happens when the drivers crashes
//

   0, Crash Settings, 0, 6{0}, 3, 25
1900, Crash Settings, 3, 6{0}, 3, 25
2200, Crash Settings, 0, 6{0}, 3, 25

//
// Define the background buildings and road objects
//

0,Previously Defined Events,C:\STISIM3\Scenarios\PDEs\Structures_A06.pde

//
// Critical Events
//

// Tell the driver to turn across traffic

1250,Previously Defined Events,C:\STISIM3\Scenarios\PDEs\Navigation.Pde,,-,750

@21900, Vehicles, 1100, -6{0}, 66{0}, 3, C16, 1, 0
      @21900, Vehicles, 1300, -18{0}, 66{0}, 3, S46, 1, 0, -2200{15}, 2, 50{0}, , , 1

@31900, Vehicles, 1600, -6{0}, 66{0}, 3, C16, 1, 0
      @31900, Vehicles, 1800, -18{0}, 66{0}, 3, T10, 1, 0, -2200{15}, 2, 50{0}, , , 1

// Motorcycles speeds up

@11900, Vehicles, 2100, -15{0}, 70{0}, 3, SP14, 1, 0
      @11900, Vehicles, 2300, -15{0}, 70{0}, 3, SP14, 1, 0, -2250{15}, 1, -8{0}, 45, 2, {25}, 2, 88{0}, , , 2

// 700 ft gap

@21900, Vehicles, 3000, -18{0}, 66{0}, 3, F*1~56; S*1~53; T*1~28, 1, 0
@21900, Vehicles#9, 3300, -6{0}, 66{0}, 3, F*1~56; S*1~53; T*1~28, 1, 0

// 700 ft gap

1900, Vehicles, 4000, -6{0}, 66{0}, 3, F*1~56; S*1~53; T*1~28, 1, 0
1900, Vehicles, 4100, -18{0}, 66{0}, 3, F*1~56; S*1~53; T*1~28, 1, 0

// Pedestrian crossing from the left

@31645, Pedestrian#5, 0, 6{0}, 4, -27{0}, L, 2, 54

// Double parked delivery vehicle

0, Vehicles, 1850, 20{0}, 0{0}, 1, C16, 1, 0, {25}, 3, 3, .5
1862, Pedestrian, 0, 0, 0, 14{0}, B, 1
1865, Pedestrian, 0, 0, 0, 14{0}, F, 2

// Pedestrian crossing after left turn

@32150, Pedestrian#6, 120, 90{13}, *, 0{1}, R, 3

//
// Add some pedestrians in the background
//

1630, Pedestrian, 0, 0, 0, -8{1}, R, 8
1955, Pedestrian, 0, 1, 3, 43{0}, B, *1~5; 8; 12~16; 27~30; 35
1959, Pedestrian, 0, 3, 3, 43{0}, B, *1~5; 8; 12~16; 27~30; 35
1963, Pedestrian, 0, 4, 3, 43{0}, B, *1~5; 8; 12~16; 27~30; 35

@11900, Pedestrian#8, 0, 1, 2.5, -41{0}, B, 8
1910, Pedestrian, 0, 1, 3, -41{0}, B, 1
1950, Pedestrian, 0, 1, 3, -41{0}, B, *1~5; 8; 12~16; 27~30; 35
1959, Pedestrian, 0, 3, 3, -41{0}, B, *1~5; 8; 12~16; 27~30; 35
1963, Pedestrian, 0, 4, 3, -41{0}, B, *1~5; 8; 12~16; 27~30; 35
2036, Pedestrian, 0, 6, 3, -44{0}, F, *1~5; 8; 12~16; 27~30; 35
@12044, Pedestrian, 0, 0, 0, -38{0}, L, *1~5; 8; 12~16; 27~30; 35
@12047, Pedestrian, 0, 0, 0, -44{0}, L, *1~5; 8; 12~16; 27~30; 35
@12350, Pedestrian, 0, 3; !30{4}, 3, -12{1}, R, 3

//
// Add oncoming traffic
//

1500, Vehicles, 0, -6{0}, 70{0}, 3, F*1~56; S*1~53; T*1~28, 1, 0
1700, Vehicles, 0, -18{0}, 70{0}, 3, F*1~56; S*1~53; T*1~28, 1, 0

1850, Vehicles, 0, -18{0}, 75{0}, 3, F*1~56; S*1~53; T*1~28, 1, 0
2150, Vehicles, 0, -6{0}, 75{0}, 3, F*1~56; S*1~53; T*1~28, 1, 0
2450, Vehicles, 0, -18{0}, 75{0}, 3, F*1~56; S*1~53; T*1~28, 1, 0
2550, Vehicles, 0, -6{0}, 75{0}, 3, F*1~56; S*1~53; T*1~28, 1, 0
2650, Vehicles, 0, -18{0}, 75{0}, 3, F*1~56; S*1~53; T*1~28, 1, 0

2900, Vehicles, 0, -18{0}, 66{0}, 3, F*1~56; S*1~53; T*1~28, 1, 0
3200, Vehicles, 0, -6{0}, 66{0}, 3, F*1~56; S*1~53; T*1~28, 1, 0
3450, Vehicles, 0, -18{0}, 66{0}, 3, F*1~56; S*1~53; T*1~28, 1, 0

//
// Add parked vehicles
//

// Add some buses at the intersection

2030, Vehicles, 0, -80{0}, 0{0}, 2, C14, 1, 1
2030, Vehicles, 0, -120{0}, 0{0}, 2, C14, 1, 1
2030, Vehicles, 0, -180{0}, 0{0}, 2, C15, 1, 1

// Other parked vehicles

1500, Vehicles, 0, 30{0}, 0{0}, 1, C15, 1, 0
1600, Vehicles, 0, 32{0}, 0{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
1810, Vehicles, 0, 32{0}, 0{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
2250, Vehicles, 0, 32{0}, 0{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0

2100, Vehicles, 0, -32{0}, 0{0}, 3, F*1~56; S*1~53; T*1~28, 1, 0
2370, Vehicles, 0, -32{0}, 0{0}, 3, F*1~56; S*1~53; T*1~28, 1, 0

1735, Static Object, 0, 32{0}, 0, 0, 0, 0, C:\STISIM3\Data\Vehicles\Car_Block_4.mka
1870, Static Object, 0, 32{0}, 0, 0, 0, 0, C:\STISIM3\Data\Vehicles\Car_Block_3.mka
2160, Static Object, 0, 32{0}, 0, 0, 0, 0, C:\STISIM3\Data\Vehicles\Car_Block_5.mka
2340, Static Object, 0, 32{0}, 0, 0, 0, 0, C:\STISIM3\Data\Vehicles\Car_Block_5.mka

1731, Collision Block, 0, 32{0}, 105, 6, , , , 1
1870, Collision Block, 0, 32{0}, 82, 6, , , , 1
2163, Collision Block, 0, 32{0}, 130, 6, , , , 1
2343, Collision Block, 0, 32{0}, 130, 6, , , , 1

1660, Static Object, 0, -32{0}, 0, 180, 0, 0, C:\STISIM3\Data\Vehicles\Car_Block_5.mka
1795, Static Object, 0, -32{0}, 0, 180, 0, 0, C:\STISIM3\Data\Vehicles\Car_Block_4.mka
2235, Static Object, 0, -32{0}, 0, 180, 0, 0, C:\STISIM3\Data\Vehicles\Car_Block_4.mka

1657, Collision Block, 0, -32{0}, 130, 6, , , , 1
1799, Collision Block, 0, -32{0}, 105, 6, , , , 1
2239, Collision Block, 0, -32{0}, 105, 6, , , , 1

0, Vehicles, 2032, 220{0}, 0{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1
0, Vehicles, 2032, 250{0}, 0{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1
0, Vehicles, 2032, 310{0}, 0{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1
0, Vehicles, 2032, 370{0}, 0{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1
0, Vehicles, 2032, 400{0}, 0{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1

0, Vehicles, 2032, -250{0}, 0{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1
0, Vehicles, 2032, -280{0}, 0{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1
0, Vehicles, 2032, -340{0}, 0{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1
0, Vehicles, 2032, -370{0}, 0{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1
0, Vehicles, 2032, -400{0}, 0{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1
0, Vehicles, 2032, -450{0}, 0{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1

0, Vehicles, 1968, 130{0}, 0{0}, 4, F*1~56; S*1~53; T*1~28, 1, 1
0, Vehicles, 1968, 190{0}, 0{0}, 4, F*1~56; S*1~53; T*1~28, 1, 1
0, Vehicles, 1968, 250{0}, 0{0}, 4, F*1~56; S*1~53; T*1~28, 1, 1
0, Vehicles, 1968, 280{0}, 0{0}, 4, F*1~56; S*1~53; T*1~28, 1, 1
0, Vehicles, 1968, 370{0}, 0{0}, 4, F*1~56; S*1~53; T*1~28, 1, 1
0, Vehicles, 1968, 400{0}, 0{0}, 4, F*1~56; S*1~53; T*1~28, 1, 1

0, Vehicles, 1968, -130{0}, 0{0}, 4, F*1~56; S*1~53; T*1~28, 1, 1
0, Vehicles, 1968, -220{0}, 0{0}, 4, F*1~56; S*1~53; T*1~28, 1, 1
0, Vehicles, 1968, -280{0}, 0{0}, 4, F*1~56; S*1~53; T*1~28, 1, 1
0, Vehicles, 1968, -340{0}, 0{0}, 4, F*1~56; S*1~53; T*1~28, 1, 1
