
//
// by George Park
//

//
// Define any constants
//


//
// Add a signalized intersection
//

0, Signal Light, -2000, 2.5, 3.5, 6, 0, 0, 6, 1, 0, 1
2000, Intersection, 0, 0, 1, 4, 4, 0

//
// Define what will happen if the driver crashes
//

2000, Crash Settings, 0, 6{0}, 1, 25

//
// Define the background buildings and road objects
//

0,Previously Defined Events,C:\STISIM3\Scenarios\PDEs\Structures_A04.pde

//
// Critical Events
//

// Pedestrian crossing from right

@21615, Pedestrian, 0, 4; !30{4}, 3, -8{1}, R, 8
@21630, Vehicles, 0, 32{0}, 0{0}, 1, S43, 1, 0

// Slow vehicles ahead in left lane to force Sv into right lane.

@10, Vehicles, 1000, 6{0}, 10{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
@10, Vehicles, 1100, 6{0}, 10{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
@10, Vehicles, 1300, 6{0}, 10{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
@10, Vehicles, 1400, 6{0}, 10{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0

// Vehicle changing lanes from left to right

   @10, Vehicles#3, 1200, 6{0}, 10{0}, 1, T24, 1, 0, 2.5{0}, 1, 10{7}, 10, 3, {25}, 2, 20{0}, , , 3, 10{0}; !1800{15}, 1, 0{7}, 10, 3, {25}, 2, 60{0}, , , 3, 2000{15}, 1, -5{1}, 10, 3, {25}, 2, 0{0}, , , 3

// Ped walking towards the driver on right

1930, Pedestrian, 0, 6, 3, -12{1}, F, 1

// Double parked delivery vehicle - shouldn't take yellow

2150, Vehicles, 0, 20{0}, 0{0}, 1, C8, 1, 0, 1000{4}, 3, 3, .5

//
// Add background pedestrians
//

1200, Pedestrian, 0, 10, 3, 41{0}, F, 5
1300, Pedestrian, 0, 10, 3, 41{0}, F, 4
1400, Pedestrian, 0, 10, 3, 41{0}, F, 1
1410, Pedestrian, 0, 10, 3, 41{0}, B, 8
1450, Pedestrian, 0, 10, 3, 41{0}, B, 9
1600, Pedestrian, 0, 10, 3, 41{0}, F, 3
1700, Pedestrian, 0, 10, 3, 41{0}, F, 2

1250, Pedestrian, 0, 10, 3, -41{0}, F, 3
1650, Pedestrian, 0, 10, 3, -41{0}, F, 30
1750, Pedestrian, 0, 10, 3, -41{0}, F, 28

//
// Add slow vehicles to force driver into LEFT lane.
//

1500, Vehicles, 800, 18{0}, 10{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
1500, Vehicles, 900, 18{0}, 10{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
1500, Vehicles, 1000, 18{0}, 10{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0

//
// Define some oncoming traffic
//

1000, Vehicles, 1000, -6{0}, 1{1}, 3, F*1~56; S*1~53; T*1~28, 1, 0
1000, Vehicles, 1100, -18{0}, 1{1}, 3, T*30~34, 1, 0
1000, Vehicles, 1200, -6{0}, 1{1}, 3, F*1~56; S*1~53; T*1~28, 1, 0

1550, Vehicles, 1000, -6{0}, 1{1}, 3, F*1~56; S*1~53; T*1~28, 1, 0
1650, Vehicles, 1000, -6{0}, 1{1}, 3, F*1~56; S*1~53; T*1~28, 1, 0
1750, Vehicles, 1000, -6{0}, 1{1}, 3, C16, 1, 0

//
// Add some cross traffic
//

1000, Vehicles, 1018, 1000{0}, 50{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1
1000, Vehicles, 1018, 1400{0}, 50{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1

1000, Vehicles, 1006, 700{0}, 50{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1
1000, Vehicles, 1006, 1300{0}, 50{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1

1000, Vehicles, 982, -400{0}, 50{0}, 4, F*1~56; S*1~53; T*1~28, 1, 1
1000, Vehicles, 982, -1500{0}, 50{0}, 4, F*1~56; S*1~53; T*1~28, 1, 1

1000, Vehicles, 994, -1200{0}, 50{0}, 4, F*1~56; S*1~53; T*1~28, 1, 1
1000, Vehicles, 994, -1850{0}, 50{0}, 4, F*1~56; S*1~53; T*1~28, 1, 1

//
// Add parked vehicles
//

0, Vehicles, 1600, 32{0}, 0{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
0, Vehicles, 1660, 32{0}, 0{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
0, Vehicles, 1720, 32{0}, 0{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
0, Vehicles, 1750, 32{0}, 0{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0

0, Vehicles, 2032, 100{0}, 0{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1
0, Vehicles, 2032, 160{0}, 0{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1

0, Vehicles, 2032, -100{0}, 0{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1
0, Vehicles, 2032, -130{0}, 0{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1
0, Vehicles, 2032, -190{0}, 0{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1

0, Vehicles, 1750, -32{0}, 0{0}, 3, F*1~56; S*1~53; T*1~28, 1, 0
0, Vehicles, 2250, -32{0}, 0{0}, 3, F*1~56; S*1~53; T*1~28, 1, 0

0, Vehicles, 1968, 100{0}, 0{0}, 4, F*1~56; S*1~53; T*1~28, 1, 1
0, Vehicles, 1968, 160{0}, 0{0}, 4, F*1~56; S*1~53; T*1~28, 1, 1
0, Vehicles, 1968, 220{0}, 0{0}, 4, F*1~56; S*1~53; T*1~28, 1, 1

0, Vehicles, 1968, -100{0}, 0{0}, 4, F*1~56; S*1~53; T*1~28, 1, 1
0, Vehicles, 1968, -190{0}, 0{0}, 4, F*1~56; S*1~53; T*1~28, 1, 1
0, Vehicles, 1968, -310{0}, 0{0}, 4, F*1~56; S*1~53; T*1~28, 1, 1

0, Static Object, 1840, 32{0}, 0, 0, 0, 0, C:\STISIM3\Data\Vehicles\Car_Block_5.mka
0, Static Object, 2190, 32{0}, 0, 0, 0, 0, C:\STISIM3\Data\Vehicles\Car_Block_5.mka
0, Static Object, 2340, 32{0}, 0, 0, 0, 0, C:\STISIM3\Data\Vehicles\Car_Block_5.mka

0, Collision Block, 1843, 32{0}, 130, 6, , , , 1
0, Collision Block, 2193, 32{0}, 130, 6, , , , 1
0, Collision Block, 2343, 32{0}, 130, 6, , , , 1

0, Static Object, 1660, -32{0}, 0, 180, 0, 0, C:\STISIM3\Data\Vehicles\Car_Block_5.mka
0, Static Object, 1840, -32{0}, 0, 180, 0, 0, C:\STISIM3\Data\Vehicles\Car_Block_5.mka
0, Static Object, 2160, -32{0}, 0, 180, 0, 0, C:\STISIM3\Data\Vehicles\Car_Block_5.mka
0, Static Object, 2340, -32{0}, 0, 180, 0, 0, C:\STISIM3\Data\Vehicles\Car_Block_5.mka

0, Collision Block, 1657, -32{0}, 130, 6, , , , 1
0, Collision Block, 1837, -32{0}, 130, 6, , , , 1
0, Collision Block, 2157, -32{0}, 130, 6, , , , 1
0, Collision Block, 2337, -32{0}, 130, 6, , , , 1


