
//
// by George Park
//

//
// Define any constants
//


//
// Set what happens to the driven vehicle after a crash
//

0,Previously Defined Events,C:\STISIM3\Scenarios\PDEs\CrashSettings_Residential.pde

//
// Load the school zone environment
//

0,Previously Defined Events,C:\STISIM3\Scenarios\PDEs\School_Zone.Pde

//
// Add kids around the school
//

/1974, Pedestrian, 0, 6, 4, -40{0}, L, 5
/2025, Pedestrian, 0, 6, 3.5, -30{0}, L, 4
/2080, Pedestrian, 0, 0, 0, -29{0}, L, 5
/2100, Pedestrian, 0, 0, 0, -32{0}, L, 9
/2143, Pedestrian, 0, 0, 0, -27{0}, L, 4
/2147, Pedestrian, 0, 0, 0, -27{0}, L, 5
/2150, Pedestrian, 0, 0, 0, -27{0}, L, 5
/2154, Pedestrian, 0, 0, 0, -27{0}, L, 8
/2159, Pedestrian, 0, 0, 0, -31{0}, L, 10
/2162, Pedestrian, 0, 0, 0, -33{0}, L, 9
/2164, Pedestrian, 0, 0, 0, -30{0}, L, 4
/2450, Pedestrian, 0, 0, 0, -26{0}, L, 3

2030, Pedestrian, 0, 6, 4, 5{1}, F, 5
2039, Pedestrian, 0, 6, 3, 4{1}, F, 4
2040, Pedestrian, 0, 6, 3, 7{1}, F, 28
2050, Pedestrian, 0, 6, 4, 5{1}, F, 5
2140, Pedestrian, 0, 6, 3, 4{1}, F, 10
2159, Pedestrian, 0, 6, 3, 4{1}, F, 9
2200, Pedestrian, 0, 6, 4, 4{1}, F, 4
2650, Pedestrian, 0, 6, 4, 5{1}, F, 5
2740, Pedestrian, 0, 6, 3, 4{1}, F, 10
2759, Pedestrian, 0, 6, 3, 4{1}, F, 9
2800, Pedestrian, 0, 6, 4, 4{1}, F, 4
2830, Pedestrian, 0, 6, 4, 5{1}, F, 5
2839, Pedestrian, 0, 6, 3, 4{1}, F, 4
2840, Pedestrian, 0, 6, 3, 7{1}, F, 30
2940, Pedestrian, 0, 6, 4, -4{2}, F, 4
2960, Pedestrian, 0, 6, 3, -4{2}, F, 9
2970, Pedestrian, 0, 6, 3, -5{2}, F, 10

1978, Pedestrian, 0, 4, 4, -3{2}, B, 4
2530, Pedestrian, 0, 6, 4, -5{2}, B, 5
2540, Pedestrian, 0, 6, 3, -7{2}, B, 35

/1975, Pedestrian, 0, 4, 3, 35{0}, R, 9
/1976, Pedestrian, 0, 4, 3, 40{0}, R, 4
/2026, Pedestrian, 0, 6, 3, 35{0}, R, 9
/2028, Pedestrian, 0, 6, 3, 40{0}, R, 4
/2028, Pedestrian, 0, 6, 4, 42{0}, R, 5

//
// Add some parked vehicles
//

1800, Static Object, 0, -5{1}, 0, 0, 0, 0, C:\STISIM3\Data\Vehicles\Car_Block_3.mka
1800, Collision Block, 0, -5{1}, 82, 6, , , , 1

1850, Static Object, 0, 5{2}, 0, 180, 0, 0, C:\STISIM3\Data\Vehicles\Car_Block_3.mka
1850, Collision Block, 0, 5{2}, 82, 6, , , , 1

2490, Static Object, 0, -5{1}, 0, 0, 0, 0, C:\STISIM3\Data\Vehicles\Car_Block_4.mka
2486, Collision Block, 0, -5{1}, 105, 6, , , , 1

2710, Static Object, 0, -5{1}, 0, 0, 0, 0, C:\STISIM3\Data\Vehicles\Car_Block_5.mka
2713, Collision Block, 0, -5{1}, 130, 6, , , , 1

2950, Static Object, 0, 5{2}, 0, 180, 0, 0, C:\STISIM3\Data\Vehicles\Car_Block_3.mka
2950, Collision Block, 0, 5{2}, 82, 6, , , , 1

2250, Vehicles, 0, -4{1}, 0{0}, 1, F*1~56; T*1~28, 1, 1
2350, Vehicles, 0, -4{1}, 0{0}, 1, F*1~56; T*1~28, 1, 1
2590, Vehicles, 0, -4{1}, 0{0}, 1, F*1~56; T*1~28, 1, 1
2900, Vehicles, 0, -4{1}, 0{0}, 1, F*1~56; T*1~28, 1, 1
2960, Vehicles, 0, -4{1}, 0{0}, 1, F*1~56; T*1~28, 1, 1

2060, Vehicles, 0, 5{2}, 0{0}, 3, F*1~56; T*1~28, 1, 1
2300, Vehicles, 0, 5{2}, 0{0}, 3, F*1~56; T*1~28, 1, 1
2350, Vehicles, 0, 5{2}, 0{0}, 3, F*1~56; T*1~28, 1, 1
2450, Vehicles, 0, 5{2}, 0{0}, 3, F*1~56; T*1~28, 1, 1
2600, Vehicles, 0, 5{2}, 0{0}, 3, F*1~56; T*1~28, 1, 1
2650, Vehicles, 0, 5{2}, 0{0}, 3, F*1~56; T*1~28, 1, 1
2700, Vehicles, 0, 5{2}, 0{0}, 3, F*1~56; T*1~28, 1, 1
2750, Vehicles, 0, 5{2}, 0{0}, 3, F*1~56; T*1~28, 1, 1
2800, Vehicles, 0, 5{2}, 0{0}, 3, F*1~56; T*1~28, 1, 1

2015, Vehicles, 0, 50{0}, 0{0}, 2, F24, 1, 1
2015, Vehicles, 0, -50{0}, 0{0}, 2, F*1~56; T*1~28, 1, 1
2015, Vehicles, 0, -80{0}, 0{0}, 2, F*1~56; T*1~28, 1, 1

1985, Vehicles, 0, -50{0}, 0{0}, 4, F*1~56; T*1~28, 1, 1
1985, Vehicles, 0, -80{0}, 0{0}, 4, F*1~56; T*1~28, 1, 1
1985, Vehicles, 0, 50{0}, 0{0}, 4, F*1~56; T*1~28, 1, 1

//
// Add a couple of school buses
//

0, Vehicles, 2180, 5{2}, 0{0}, 3, SP18, 1, 0, 1000{4}, 11, 1
0, Vehicles, 2245, 5{2}, 0{0}, 3, SP18, 1, 0, 1000{4}, 11, 1

//
// Add some oncoming traffic
//

1000, Vehicles, 1500, -4{0}, 30{0}, 3, F*1~56; T*1~28, 1, 1
1000, Vehicles, 1600, -4{0}, 30{0}, 3, F*1~56; T*1~28, 1, 1
1000, Vehicles, 1900, -4{0}, 30{0}, 3, F*1~56; T*1~28, 1, 1
1000, Vehicles, 2000, -4{0}, 30{0}, 3, F*1~56; T*1~28, 1, 1

//
// Add a critical event with a car pulling out
//

               //0, Vehicles#9, 2125, -4{1}, 0{0}, 1, F53, 1, 1, 2.5{0}; !30{4}, 1, -10{7}, 20, 2.5, {25}, 2, 20{0}, , , 2.5, -6{0}, 2, 59{0}, , , 3
               
            // 0, Vehicles, 2095, -4{1}, 0{0}, 1, T24, 1, 1, 5{0}, 11, 1

