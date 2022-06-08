
//
// by George Park
//

//
// Define any constants
//


//
// Override any specific configuration settings
//

Config_LoadingMessage = C:\STISIM3\Scenarios\Instructions\Instructions_Merging.txt
Config_Start_Instructions = C:\STISIM3\Scenarios\Instructions\Instructions_Merging.txt
Config_Start_Y = 0{0}

//
// Data collection
//

//1000, Begin Block Save, 1, .01, Freeway Data, 1, 6, 7, 2, 66, 23, 35, 36, 18

//
// Change the settings in case the driver crashes
//

0, Crash Settings, 0, 2{1}, 12
2000, Crash Settings, 0, 2{1}, 3

//
// Provide the driver auditory instructions during the drive
//

1700, Play Recording, C:\STISIM3\Sound\Move_Right_Lane.wav, 0, 100
4000, Play Recording, C:\STISIM3\Sound\Take_Freeway_Exit.wav, 0, 100
5200, Play Recording, C:\STISIM3\Sound\Yield_Move_Left.wav, 0, 100
//7700, Play Recording, C:\STISIM3\Sound\Move_Right_Lane.wav, 0, 100

//
// Define our roadway
//

   0, Roadway, 6, 2, 1, 0, 0.5, 10, 10, 0.4, 0.4, 200, -1, C:\STISIM3\Data\Textures\Road05.Jva, 255/255/255, 6, 6, -1, C:\STISIM3\Data\Textures\Road05.Jva, 255/255/255, 6, 6, 0, 12, C:\STISIM3\Data\Textures\Road05.Jva, 255/255/255, 6, 6, 0, 12, C:\STISIM3\Data\Textures\Road05.Jva, 255/255/255, 6, 6, 0, 20, C:\STISIM3\Data\Textures\Grass05.Jva, 255/255/255, 10, 0, 0, 20, C:\STISIM3\Data\Textures\Grass05.Jva, 255/255/255, 10, 0, C:\STISIM3\Data\Textures\Grass05.Jva, 255/255/255, 10, 0, C:\STISIM3\Data\Textures\Grass05.Jva, 255/255/255, 10, 0, 0, , , , 0
2000, Roadway, 12, 4, 4, 0, 0.5, 10, 10, 0.4, 0.4, 200, -1, C:\STISIM3\Data\Textures\Road05.Jva, 255/255/255, 6, 6, -1, C:\STISIM3\Data\Textures\Road05.Jva, 255/255/255, 6, 6, 0, 12, C:\STISIM3\Data\Textures\Road05.Jva, 255/255/255, 6, 6, 0, 12, C:\STISIM3\Data\Textures\Road05.Jva, 255/255/255, 6, 6, 0, 20, C:\STISIM3\Data\Textures\Grass05.Jva, 255/255/255, 10, 0, 0, 20, C:\STISIM3\Data\Textures\Grass05.Jva, 255/255/255, 10, 0, C:\STISIM3\Data\Textures\Grass05.Jva, 255/255/255, 10, 0, C:\STISIM3\Data\Textures\Grass05.Jva, 255/255/255, 10, 0, 0, , , , 0
7000, Roadway, 12, 3, 3, 0, 0.5, 10, 10, 0.4, 0.4, 200, -1, C:\STISIM3\Data\Textures\Road05.Jva, 255/255/255, 6, 6, -1, C:\STISIM3\Data\Textures\Road05.Jva, 255/255/255, 6, 6, 0, 12, C:\STISIM3\Data\Textures\Road05.Jva, 255/255/255, 6, 6, 0, 12, C:\STISIM3\Data\Textures\Road05.Jva, 255/255/255, 6, 6, -30, 30, C:\STISIM3\Data\Textures\Grass05.Jva, 255/255/255, 10, 0, -30, 30, C:\STISIM3\Data\Textures\Grass05.Jva, 255/255/255, 10, 0, C:\STISIM3\Data\Textures\Grass05.Jva, 255/255/255, 10, 0, C:\STISIM3\Data\Textures\Grass05.Jva, 255/255/255, 10, 0, 0, , , , 0
7500, Roadway, 12, 2, 2, 0, 0.5, 10, 10, 0.4, 0.4, 200, -1, C:\STISIM3\Data\Textures\Road05.Jva, 255/255/255, 6, 6, -1, C:\STISIM3\Data\Textures\Road05.Jva, 255/255/255, 6, 6, 0, 12, C:\STISIM3\Data\Textures\Road05.Jva, 255/255/255, 6, 6, 0, 12, C:\STISIM3\Data\Textures\Road05.Jva, 255/255/255, 6, 6, -30, 30, C:\STISIM3\Data\Textures\Grass05.Jva, 255/255/255, 10, 0, -30, 30, C:\STISIM3\Data\Textures\Grass05.Jva, 255/255/255, 10, 0, C:\STISIM3\Data\Textures\Grass05.Jva, 255/255/255, 10, 0, C:\STISIM3\Data\Textures\Grass05.Jva, 255/255/255, 10, 0, 0, , , , 0

//
// Add any horizontal curves
//

 500, Curve, 0, 250, 250, 250, -0.001
4700, Curve, 0, 250, 250, 250, 0.001

//
// Add speed limit signs
//

   0, Speed Limit, 58, 0
 100, Sign, 100, 0, C:\STISIM3\Data\Signs\Speed Limit\Sp55Mph.mesh, 0, 0, 0, 0
 100, Sign, 100, 0, C:\STISIM3\Data\Signs\Speed Limit\Sp55Mph.mesh, 0, 1, 0, 0
1700, Sign, 100, 0, C:\STISIM3\Data\Signs\Speed Limit\Sp55Mph.mesh, 0, 0, 0, 0
1700, Sign, 100, 0, C:\STISIM3\Data\Signs\Speed Limit\Sp55Mph.mesh, 0, 1, 0, 0
2700, Sign, 100, 0, C:\STISIM3\Data\Signs\Speed Limit\Sp55Mph.mesh, 0, 0, 0, 0
2700, Sign, 100, 0, C:\STISIM3\Data\Signs\Speed Limit\Sp55Mph.mesh, 0, 1, 0, 0
4700, Sign, 100, 0, C:\STISIM3\Data\Signs\Speed Limit\Sp55Mph.mesh, 0, 0, 0, 0
4700, Sign, 100, 0, C:\STISIM3\Data\Signs\Speed Limit\Sp55Mph.mesh, 0, 1, 0, 0
6700, Sign, 100, 0, C:\STISIM3\Data\Signs\Speed Limit\Sp55Mph.mesh, 0, 0, 0, 0
6700, Sign, 100, 0, C:\STISIM3\Data\Signs\Speed Limit\Sp55Mph.mesh, 0, 1, 0, 0

//
// Add various signage
//

 200, Static Object, 0, -12{0}, 0, 0, 0, 0, C:\STISIM3\Data\Signs\TrfSgn19.Mesh
 200, Collision Block, 0, -12{0}, 1, 10, , , , 6
4585, Static Object, 0, 55{0}, 0, 0, 0, 0, C:\STISIM3\Data\Miscellaneous\FreewayExit.Mesh
4585, Collision Block, 0, 55{0}, 1, 10, , , , 6

2000, Sign, 100, 0, C:\STISIM3\Data\Signs\Add_Lane_Left.Mka, 0, 1, 0
2200, Sign, 100, 0, C:\STISIM3\Data\Signs\Road_Narrows_Right.Mka, 0, 1, 0
2400, Sign, 100, 0, C:\STISIM3\Data\Signs\Road_Narrows_Right.Mka, 0, 1, 0
2600, Sign, 100, 0, C:\STISIM3\Data\Signs\Road_Narrows_Right.Mka, 0, 1, 0
5400, Sign, 100, 0, C:\STISIM3\Data\Signs\Add_Lane_Right.Mka, 0, 0, 0
5700, Sign, 9, 0
6950, Sign, 11, 0
7450, Sign, 11, 0

//
// Add some freeway walls
//

   0, Static Object, 0, 13{0}, 0, 0, 0, 0, C:\STISIM3\Data\Miscellaneous\FreewayWall.Mka, 2200, 8.1
4700, Static Object, 0, 36{0}, 0, 0, 0, 0, C:\STISIM3\Data\Miscellaneous\FreewayWall.Mka, 1000, 8.1

//
// Embed barriers in the walls so that a crash occurs if the driver hits the wall
//

   0, Barriers, 0, 0, 13{0}, 13{0}, 2190, 18, 0, 0
4700, Barriers, 0, 0, 36{0}, 36{0}, 990, 18, 0, 0

//
// Use some barrels to close a lane
//

2900, Barrel, 0, 0{0}, 4, , , 0
2905, Barrel, 0, 2{0}, 4, , , 0
2910, Barrel, 0, 4{0}, 4, , , 0
2915, Barrel, 0, 6{0}, 4, , , 0
2920, Barrel, 0, 8{0}, 4, , , 0
2925, Barrel, 0, 10{0}, 4, , , 0

//
// Add some Jesey barriers to block a lines
//

2700, Barriers, 0, 0, 0{0}, 0{0}, 195, 3
2925, Barriers, 0, 0, 13{0}, 11{0}, 2075, 3

//
// Add traffic for the first freeway section
//

2000, Vehicles, 2500, 18{0}, 5{0}, 1, C*1~17; T1~28, 1, 0
2000, Vehicles, 2550, 18{0}, 5{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
2000, Vehicles, 2600, 18{0}, 5{0}, 1, C*1~17; T1~28, 1, 0
2000, Vehicles, 2500, 30{0}, 5{0}, 1, C*1~17; T1~28, 1, 0
2000, Vehicles, 2550, 30{0}, 5{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0



1800, Vehicles, 600, 18{0}, 80{0}, 1, C*1~17; T1~28, 1, 0
1800, Vehicles, 500, 18{0}, 80{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
1800, Vehicles, 400, 18{0}, 80{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
1800, Vehicles, 300, 18{0}, 80{0}, 1, C*1~17; T1~28, 1, 0
1800, Vehicles, 200, 18{0}, 80{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
1800, Vehicles, 100, 18{0}, 80{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
1800, Vehicles, 0, 18{0}, 80{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
1800, Vehicles, -100, 18{0}, 80{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
1800, Vehicles, -200, 18{0}, 80{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
1800, Vehicles, -300, 18{0}, 80{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
1800, Vehicles, -400, 18{0}, 80{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
1800, Vehicles, -500, 18{0}, 80{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0

//      2000, Vehicles, 2500, 30{0}, 2{0}, 1, F*1~56; S*1~53; T*1~28, 1, 1, 3{0}, 1, 12{7}, 20, 2, {25}, 2, 80{0}, , , 2
      
2000, Vehicles, 2600, 42{0}, 80{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
2000, Vehicles, 2650, 42{0}, 80{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
2000, Vehicles, 2700, 42{0}, 80{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
2000, Vehicles, 2750, 42{0}, 80{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
1900, Vehicles, 450, 42{0}, 80{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
1900, Vehicles, 250, 42{0}, 80{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
1900, Vehicles, 100, 42{0}, 80{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
1900, Vehicles, -50, 42{0}, 80{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
1900, Vehicles, -150, 42{0}, 80{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
1900, Vehicles, -250, 42{0}, 80{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
1900, Vehicles, -350, 42{0}, 80{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
1900, Vehicles, -450, 42{0}, 80{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
1900, Vehicles, -550, 42{0}, 80{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0

1900, Vehicles, 200, 30{0}, 88{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
1900, Vehicles, 100, 30{0}, 88{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
1900, Vehicles, 0, 30{0}, 88{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
1900, Vehicles, -100, 30{0}, 88{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
1900, Vehicles, -200, 30{0}, 88{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
1900, Vehicles, -300, 30{0}, 88{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
1900, Vehicles, -400, 30{0}, 88{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
1900, Vehicles, -500, 30{0}, 88{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0


// Second section of vehicles on first half of freeway
2500, Vehicles, 900, 18{0}, 60{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
2500, Vehicles, 1150, 42{0}, 75{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
2500, Vehicles, 1200, 42{0}, 77{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
2500, Vehicles, 950, 30{0}, 80{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
2400, Vehicles, 750, 18{0}, 69{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
2400, Vehicles, 950, 42{0}, 88{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
2400, Vehicles, 800, 30{0}, 75{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
2400, Vehicles, -50, 18{0}, 74{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
2400, Vehicles, -150, 30{0}, 69{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
2400, Vehicles, -250, 42{0}, 68{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
2400, Vehicles, -350, 30{0}, 74{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
2400, Vehicles, -450, 18{0}, 80{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
2400, Vehicles, -550, 42{0}, 80{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
2300, Vehicles, 450, 42{0}, 88{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
2300, Vehicles, 300, 30{0}, 75{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
2300, Vehicles, -50, 18{0}, 74{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
2300, Vehicles, -150, 30{0}, 69{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
2200, Vehicles, -250, 42{0}, 68{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
2200, Vehicles, -350, 30{0}, 74{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
2200, Vehicles, -450, 18{0}, 80{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
2200, Vehicles, -550, 42{0}, 80{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0


//
// Traffic on second section of the freeway
//



5500, Vehicles, 350, 30{0}, 73{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
5500, Vehicles, 150, 30{0}, 73{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
5500, Vehicles, 0, 30{0}, 73{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
5500, Vehicles, -150, 30{0}, 73{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
5500, Vehicles, -250, 30{0}, 73{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
5500, Vehicles, -350, 30{0}, 73{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
5500, Vehicles, -450, 30{0}, 73{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
5500, Vehicles, -550, 30{0}, 73{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
5500, Vehicles, -650, 30{0}, 73{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0

4000, Vehicles, 2900, 18{0}, 66{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
4000, Vehicles, 2950, 18{0}, 66{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
//      4000, Vehicles, 3000, 18{0}, 66{0}, 1, F*1~56; S*1~53; T*1~28, 1, 1, 2{0}, 1, -12{7}, 20, 2, {25}, 2, 80{0}, , , 2
      
4000, Vehicles, 3050, 18{0}, 66{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
4000, Vehicles, 3100, 18{0}, 66{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0

//      4000, Vehicles, 3150, 18{0}, 5{0}, 1, F*1~56; S*1~53; T*1~28, 1, 1, 2{0}, 2, 70{0}, , , 5

5500, Vehicles, 200, 18{0}, 66{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
5500, Vehicles, 100, 18{0}, 66{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
5500, Vehicles, 0, 18{0}, 66{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
5500, Vehicles, -100, 18{0}, 66{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
5500, Vehicles, -200, 18{0}, 66{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
5500, Vehicles, -300, 18{0}, 66{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
5500, Vehicles, -400, 18{0}, 66{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
5500, Vehicles, -500, 18{0}, 66{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
5500, Vehicles, -600, 18{0}, 66{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
5500, Vehicles, -700, 18{0}, 66{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
5500, Vehicles, -800, 18{0}, 66{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
5500, Vehicles, -900, 18{0}, 66{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
5500, Vehicles, -1000, 18{0}, 66{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0

//      5500, Vehicles, 2200, 6{0}, 5{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0, {25}, 3, 3, .5
      
5500, Vehicles, 300, 6{0}, 88{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
5500, Vehicles, 100, 6{0}, 88{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
5500, Vehicles, 0, 6{0}, 88{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
5500, Vehicles, -100, 6{0}, 88{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
5500, Vehicles, -200, 6{0}, 88{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
5500, Vehicles, -300, 6{0}, 88{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
5500, Vehicles, -400, 6{0}, 88{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
5500, Vehicles, -500, 6{0}, 88{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
5500, Vehicles, -600, 6{0}, 88{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
5500, Vehicles, -700, 6{0}, 88{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0
5500, Vehicles, -800, 6{0}, 88{0}, 1, F*1~56; S*1~53; T*1~28, 1, 0


//
// Add triggered events to the scenario
//

