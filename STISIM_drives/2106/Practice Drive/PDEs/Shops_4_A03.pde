
//
// by George Park
//

//
// Define any constants
//


//
// Define what happens when the drivers crashes
//

   0, Crash Settings, 0, 6{0}, 1, 25
1900, Crash Settings, 3, 6{0}, 1, 25
2200, Crash Settings, 0, 6{0}, 1, 25
3400, Crash Settings, 0, 18{0}, 1, 25

//
// Add an intersection
//

   0, Signal Light, -2000, 0, 0, 0, 0, 0, 6, 1, 0, 1
2000, Intersection, 0, 0, 1, 4, 4, 1

//
// Define the background structures
//

0,Previously Defined Events,C:\STISIM3\Scenarios\PDEs\Structures_A03.pde

//
// Critical Events
//

// Tell the driver to turn

1250,Previously Defined Events,C:\STISIM3\Scenarios\PDEs\Navigation.Pde,-,,750

// Parked vehicle pullout from right to #2 lane

      @11840, Vehicles#1, 0, -5{1}, 0{0}, 1, S47, 1, 1, 10{1}, 11, 1, 2{0}; !15{4}, 1, 6{0}, 20, 4, {25}, 2, 22{0}, , , 4, 3800{15}, 1, 7{1}, 20, 4, {25}, 2, 0{0}, , , 4
      
      @21900, Vehicles, 0, -6{1}, 0{0}, 1, C14, 1, 1, 1600{20}, 11, 1, 1500{20}, 1, 18{0}, 20, 4, {25}, 2, 22{0}, , , 4, 2800{15}, 1, 7{1}, 20, 4, {25}, 2, 0{0}, , , 4

// Pedestrian on right

@32036, Pedestrian#2, 0, 1900{20}, 4, 45{0}, F, 5

// Pedestrian cross after the turn

@22100, Pedestrian#7, 280, 5; !40{4}, *, 0{1}, R, 16

//
// Pedestrians before the turn
//

1945, Pedestrian, 0, 0, 0, 55{0}, R, 3
1955, Pedestrian, 0, 8, 3, 41{0}, F, 8
1940, Pedestrian, 0, 8, 3, 41{0}, F, 28
1940, Pedestrian, 0, 8, 3, 44{0}, F, 1
1930, Pedestrian, 0, 8, 3, 41{0}, F, 2
1900, Pedestrian, 0, 0, 0, 47{0}, R, 2
1955, Pedestrian, 0, 55{4}, 3, 38{0}, R, 4, 2
2045, Pedestrian, 0, 1950{20}, 3, 45{0}, F, 29
2043, Pedestrian, 0, 0, 0, 37{0}, R, *1~5; 8; 12~16; 27~30; 35

1959, Pedestrian, 0, 4{0}; !30{4}, 4, 43{0}, B, 3

@31957, Pedestrian, 0, 0, 0, -41{0}, L, *1~5; 8; 12~16; 27~30; 35
1959, Pedestrian, 0, 0, 0, -41{0}, B, *1~5; 8; 12~16; 27~30; 35
@32040, Pedestrian, 0, 0, 0, -38{0}, L, *1~5; 8; 12~16; 27~30; 35
@32040, Pedestrian, 0, 0, 0, -41{0}, L, *1~5; 8; 12~16; 27~30; 35
2040, Pedestrian, 0, 0, 0, -44{0}, F, *1~5; 8; 12~16; 27~30; 35

//
// Pedestrians after the turn
//

2100, Pedestrian, 850, 10, 3, 41{0}, B, 1
2100, Pedestrian, 1000, 10, 3, 44{0}, F, 4
2100, Pedestrian, 1000, 10, 3, 41{0}, F, 5
2100, Pedestrian, 1100, 10, 3, 41{0}, F, 4
2100, Pedestrian, 1150, 10, 3, 41{0}, F, 1
2100, Pedestrian, 1210, 10, 3, 41{0}, B, 8
2100, Pedestrian, 1350, 10, 3, 41{0}, B, 9

2100, Pedestrian, 1150, 10, 3, -41{0}, F, 3
2100, Pedestrian, 1250, 10, 3, -41{0}, F, 8
2100, Pedestrian, 1450, 10, 3, -41{0}, F, 28

//
// Add a construction zone after the turn to block the right lane
//

2200, Barrel, 1060, 34{0}, 6, 4, C:\STISIM3\Sound\Thud.wav, 100
2200, Barrel, 1060, 24{0}, 2, 4, C:\STISIM3\Sound\Thud.wav, 100
2200, Barrel, 1080, 20{0}, 2, 4, C:\STISIM3\Sound\Thud.wav, 100
2200, Barrel, 1105, 17{0}, 2, 4, C:\STISIM3\Sound\Thud.wav, 100
2200, Barrel, 1125, 15{0}, 2, 4, C:\STISIM3\Sound\Thud.wav, 100
2200, Barrel, 1145, 15{0}, 2, 4, C:\STISIM3\Sound\Thud.wav, 100
2200, Barrel, 1165, 15{0}, 2, 4, C:\STISIM3\Sound\Thud.wav, 100
2200, Barrel, 1185, 15{0}, 2, 4, C:\STISIM3\Sound\Thud.wav, 100
2200, Barrel, 1205, 20{0}, 2, 4, C:\STISIM3\Sound\Thud.wav, 100
2200, Barrel, 1225, 24{0}, 2, 4, C:\STISIM3\Sound\Thud.wav, 100

0,Previously Defined Events,C:\STISIM3\Scenarios\PDEs\GravelPile.pde,2200,1150,23{0}
2200, Vehicles, 1110, 22{0}, 0{0}, 1, CN4, 1, 0
2200, Vehicles, 1150, 34{0}, 0{0}, 1, CN1, 1, 0
2200, Vehicles, 1100, 34{0}, 0{0}, 1, CN1, 1, 0

2200, Pedestrian, 1180, 0, 0, 18{0}, F, 20
2200, Pedestrian, 1177, 0, 0, 15{0}, L, 21
2200, Pedestrian, 1178, 0, 0, 21{0}, R, 20

//
// Add the cross traffic vehicles
//

// Vehicles heading left

2018, Vehicles, 0, 1200{0}, 50{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1
2018, Vehicles, 0, 1700{0}, 50{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1
2018, Vehicles, 0, 2000{0}, 50{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1
2018, Vehicles, 0, 2500{0}, 50{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1
2018, Vehicles, 0, 3000{0}, 50{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1
                                   
2006, Vehicles, 0, 1100{0}, 50{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1
2006, Vehicles, 0, 1500{0}, 50{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1
2006, Vehicles, 0, 1900{0}, 50{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1
2006, Vehicles, 0, 2300{0}, 50{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1
2006, Vehicles, 0, 2500{0}, 50{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1
2006, Vehicles, 0, 2800{0}, 50{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1
2006, Vehicles, 0, 3000{0}, 50{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1
2006, Vehicles, 0, 3200{0}, 50{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1

2032, Vehicles, 0, 100{0}, 0{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1
2032, Vehicles, 0, 130{0}, 0{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1
2032, Vehicles, 0, 160{0}, 0{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1
2032, Vehicles, 0, 190{0}, 0{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1
2032, Vehicles, 0, 220{0}, 0{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1
2032, Vehicles, 0, 250{0}, 0{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1
2032, Vehicles, 0, 280{0}, 0{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1
2032, Vehicles, 0, 310{0}, 0{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1
2032, Vehicles, 0, 340{0}, 0{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1
2032, Vehicles, 0, 370{0}, 0{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1
2032, Vehicles, 0, 400{0}, 0{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1

2032, Vehicles, 0, -100{0}, 0{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1
2032, Vehicles, 0, -160{0}, 0{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1
2032, Vehicles, 0, -220{0}, 0{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1
2032, Vehicles, 0, -280{0}, 0{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1
2032, Vehicles, 0, -340{0}, 0{0}, 2, F*1~56; S*1~53; T*1~28, 1, 1

// Vehicles heading right

1970, Vehicles, 0, 70{1}, 0{0}, 4, C13, 1, 1
1968, Vehicles, 0, 140{0}, 0{0}, 4, F*1~56; S*1~53; T*1~28, 1, 1
1968, Vehicles, 0, 160{0}, 0{0}, 4, F*1~56; S*1~53; T*1~28, 1, 1
1968, Vehicles, 0, 190{0}, 0{0}, 4, F*1~56; S*1~53; T*1~28, 1, 1
1968, Vehicles, 0, 220{0}, 0{0}, 4, F*1~56; S*1~53; T*1~28, 1, 1
1968, Vehicles, 0, 250{0}, 0{0}, 4, F*1~56; S*1~53; T*1~28, 1, 1
1968, Vehicles, 0, 280{0}, 0{0}, 4, T22, 1, 1
1968, Vehicles, 0, 310{0}, 0{0}, 4, F*1~56; S*1~53; T*1~28, 1, 1
1968, Vehicles, 0, 340{0}, 0{0}, 4, F*1~56; S*1~53; T*1~28, 1, 1
1968, Vehicles, 0, 370{0}, 0{0}, 4, F*1~56; S*1~53; T*1~28, 1, 1
1968, Vehicles, 0, 400{0}, 0{0}, 4, F*1~56; S*1~53; T*1~28, 1, 1
1968, Vehicles, 0, 450{0}, 0{0}, 4, F*1~56; S*1~53; T*1~28, 1, 1
1968, Vehicles, 0, 500{0}, 0{0}, 4, C15, 1, 1
1968, Vehicles, 0, 560{0}, 0{0}, 4, C15, 1, 1

1968, Vehicles, 0, -130{0}, 0{0}, 4, F*1~56; S*1~53; T*1~28, 1, 1
1968, Vehicles, 0, -220{0}, 0{0}, 4, F*1~56; S*1~53; T*1~28, 1, 1
1968, Vehicles, 0, -280{0}, 0{0}, 4, F*1~56; S*1~53; T*1~28, 1, 1
1968, Vehicles, 0, -340{0}, 0{0}, 4, F*1~56; S*1~53; T*1~28, 1, 1

//
// Add some parked vehicles in the main lanes
//

1600, Vehicles, 0, 32{0}, 0{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
1630, Vehicles, 0, 32{0}, 0{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
2100, Vehicles, 0, 32{0}, 0{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
2310, Vehicles, 0, 32{0}, 0{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0

1750, Vehicles, 0, -32{0}, 0{0}, 3, F*1~56; S*1~53; T*1~28, 1, 0
2100, Vehicles, 0, -32{0}, 0{0}, 3, F*1~56; S*1~53; T*1~28, 1, 0
2130, Vehicles, 0, -32{0}, 0{0}, 3, F*1~56; S*1~53; T*1~28, 1, 0

1750, Static Object, 0, 32{0}, 0, 0, 0, 0, C:\STISIM3\Data\Vehicles\Car_Block_5.mka
2190, Static Object, 0, 32{0}, 0, 0, 0, 0, C:\STISIM3\Data\Vehicles\Car_Block_5.mka
1660, Static Object, 0, -32{0}, 0, 180, 0, 0, C:\STISIM3\Data\Vehicles\Car_Block_5.mka
1840, Static Object, 0, -32{0}, 0, 180, 0, 0, C:\STISIM3\Data\Vehicles\Car_Block_5.mka
2235, Static Object, 0, -32{0}, 0, 180, 0, 0, C:\STISIM3\Data\Vehicles\Car_Block_4.mka

0, Collision Block, 1753, 32{0}, 130, 6, , , , 1
0, Collision Block, 2187, 32{0}, 130, 6, , , , 1
0, Collision Block, 1657, -32{0}, 130, 6, , , , 1
0, Collision Block, 1837, -32{0}, 130, 6, , , , 1
0, Collision Block, 2239, -32{0}, 105, 6, , , , 1
