
//
// by George Park
// 04-28-08
//

// Define any constants
//


//
// Add a signalized intersection
//

0, Signal Light, -2000, 2, 3.5, 6, 0, 0, 6, 1, 0, 1
2000, Intersection, 0, 0, 1, 4, 4, 0

//
// Define the background buildings and road objects
//

0,Previously Defined Events,C:\STISIM3\Scenarios\PDEs\Structures_A05.pde

//
// Critical Events
//

// Pedestrian walking out from left

@32110, Vehicles, 0, 20{0}, 0{0}, 1, C*5; C7; C9; C11; C12, 1, 0, {25}, 3, 3, .5
@32131, Pedestrian#4, 0, 3, *, 18{0}, R, 2, 60

//
// Add background pedestrians
//

2600, Pedestrian, 0, 6, 4, 5{1}, F, *1~5; 8
2500, Pedestrian, 0, 6, 4, 5{1}, F, *1~5; 8
2450, Pedestrian, 0, 6, 4, 5{1}, F, *1~5; 8

//
// Add some cross traffic
//

1000, Vehicles, 1018, 1000{0}, 50{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1
1000, Vehicles, 1018, 1200{0}, 50{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1
1000, Vehicles, 1018, 1400{0}, 50{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1
1000, Vehicles, 1018, 1700{0}, 50{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1
1000, Vehicles, 1018, 2000{0}, 50{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1

1000, Vehicles, 1006, 700{0}, 50{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1
1000, Vehicles, 1006, 900{0}, 50{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1
1000, Vehicles, 1006, 1100{0}, 50{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1
1000, Vehicles, 1006, 1300{0}, 50{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1
1000, Vehicles, 1006, 1500{0}, 50{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1
1000, Vehicles, 1006, 1800{0}, 50{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1

1000, Vehicles, 982, -400{0}, 50{0}, 4, F*1~56; S*1~53; T*1~28, 1, 1
1000, Vehicles, 982, -1500{0}, 50{0}, 4, F*1~56; S*1~53; T*1~28, 1, 1
1000, Vehicles, 982, -1900{0}, 50{0}, 4, F*1~56; S*1~53; T*1~28, 1, 1
1000, Vehicles, 982, -2000{0}, 50{0}, 4, F*1~56; S*1~53; T*1~28, 1, 1
1000, Vehicles, 982, -2500{0}, 50{0}, 4, F*1~56; S*1~53; T*1~28, 1, 1

1000, Vehicles, 994, -1200{0}, 50{0}, 4, F*1~56; S*1~53; T*1~28, 1, 1
1000, Vehicles, 994, -1850{0}, 50{0}, 4, F*1~56; S*1~53; T*1~28, 1, 1
1000, Vehicles, 994, -2300{0}, 50{0}, 4, F*1~56; S*1~53; T*1~28, 1, 1
1000, Vehicles, 994, -2600{0}, 50{0}, 4, F*1~56; S*1~53; T*1~28, 1, 1
1000, Vehicles, 994, -2900{0}, 50{0}, 4, F*1~56; S*1~53; T*1~28, 1, 1

//
// Add on coming traffic
//

1800, Vehicles, 800, -6{0}, 40{0}, 3, C17, 1, 0
2600, Vehicles, 1000, -6{0}, 40{0}, 3, C14, 1, 0
2800, Vehicles, 1200, -6{0}, 40{0}, 3, C14, 1, 0
2900, Vehicles, 1300, -6{0}, 40{0}, 3, E8, 1, 0
1840, Vehicles, 840, -18{0}, 40{0}, 3, 3, F*1~56; S*1~53; T*1~28, 1, 0
2600, Vehicles, 1000, -18{0}, 45{0}, 3, 3, F*1~56; S*1~53; T*1~28, 1, 0

//
// Add some parked vehicles
//

1780, Vehicles, 0, 32{0}, 0{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
2250, Vehicles, 0, 32{0}, 0{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
    
1750, Vehicles, 0, -32{0}, 0{0}, 3, F*1~56; S*1~53; T*1~28, 1, 0
2250, Vehicles, 0, -32{0}, 0{0}, 3, F*1~56; S*1~53; T*1~28, 1, 0

1660, Static Object, 0, 32{0}, 0, 0, 0, 0, C:\STISIM3\Data\Vehicles\Car_Block_5.mka
1855, Static Object, 0, 32{0}, 0, 0, 0, 0, C:\STISIM3\Data\Vehicles\Car_Block_4.mka
2160, Static Object, 0, 32{0}, 0, 0, 0, 0, C:\STISIM3\Data\Vehicles\Car_Block_5.mka
2340, Static Object, 0, 32{0}, 0, 0, 0, 0, C:\STISIM3\Data\Vehicles\Car_Block_5.mka

1663, Collision Block, 0, 32{0}, 130, 6, , , , 1
1851, Collision Block, 0, 32{0}, 105, 6, , , , 1
2163, Collision Block, 0, 32{0}, 130, 6, , , , 1
2343, Collision Block, 0, 32{0}, 130, 6, , , , 1

1660, Static Object, 0, -32{0}, 0, 180, 0, 0, C:\STISIM3\Data\Vehicles\Car_Block_5.mka
1840, Static Object, 0, -32{0}, 0, 180, 0, 0, C:\STISIM3\Data\Vehicles\Car_Block_5.mka
2160, Static Object, 0, -32{0}, 0, 180, 0, 0, C:\STISIM3\Data\Vehicles\Car_Block_5.mka
2340, Static Object, 0, -32{0}, 0, 180, 0, 0, C:\STISIM3\Data\Vehicles\Car_Block_5.mka

1657, Collision Block, 0, -32{0}, 130, 6, , , , 1
1837, Collision Block, 0, -32{0}, 130, 6, , , , 1
2157, Collision Block, 0, -32{0}, 130, 6, , , , 1
2337, Collision Block, 0, -32{0}, 130, 6, , , , 1

2032, Vehicles, 0, 130{0}, 0{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1
2032, Vehicles, 0, 190{0}, 0{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1
2032, Vehicles, 0, 250{0}, 0{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1
2032, Vehicles, 0, 310{0}, 0{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1
2032, Vehicles, 0, 370{0}, 0{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1
2032, Vehicles, 0, 400{0}, 0{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1

2032, Vehicles, 0, -100{0}, 0{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1
2032, Vehicles, 0, -160{0}, 0{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1
2032, Vehicles, 0, -220{0}, 0{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1
2032, Vehicles, 0, -280{0}, 0{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1
2032, Vehicles, 0, -340{0}, 0{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1

1968, Vehicles, 0, 130{0}, 0{0}, 4, F*1~56; S*1~53; T*1~28, 1, 1
1968, Vehicles, 0, 190{0}, 0{0}, 4, F*1~56; S*1~53; T*1~28, 1, 1
1968, Vehicles, 0, 250{0}, 0{0}, 4, F*1~56; S*1~53; T*1~28, 1, 1
1968, Vehicles, 0, 280{0}, 0{0}, 4, F*1~56; S*1~53; T*1~28, 1, 1
1968, Vehicles, 0, 370{0}, 0{0}, 4, F*1~56; S*1~53; T*1~28, 1, 1
1968, Vehicles, 0, 400{0}, 0{0}, 4, F*1~56; S*1~53; T*1~28, 1, 1

1968, Vehicles, 0, -130{0}, 0{0}, 4, F*1~56; S*1~53; T*1~28, 1, 1
1968, Vehicles, 0, -220{0}, 0{0}, 4, F*1~56; S*1~53; T*1~28, 1, 1
1968, Vehicles, 0, -280{0}, 0{0}, 4, F*1~56; S*1~53; T*1~28, 1, 1
1968, Vehicles, 0, -340{0}, 0{0}, 4, F*1~56; S*1~53; T*1~28, 1, 1
