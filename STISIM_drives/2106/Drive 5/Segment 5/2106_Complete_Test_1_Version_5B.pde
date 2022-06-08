
//
// Define any constants
//


//
// Override any specific configuration settings
//

Config_LoadingMessage = C:\STISIM3\Scenarios\Instructions\Instructions_Normal.txt
Config_Start_Instructions = C:\STISIM3\Scenarios\Instructions\Instructions_Normal.txt
Config_Start_Y = -6{1}

//
// Data collection
//


 2100, Begin Block Save, 1, .01, Crash Avoidance Medium, 1, 6, 4, 7, 23, 18, 74, 75, 46#33, 26
 2700, End Block Save
 2700, Begin Block Save, 1, .01, Amber Dilemma Urban, 1, 6, 7, 23, 18, 74, 75, 46#23
 3400, End Block Save


//
// Define what happens if the driver crashes
//
                                            
0, Crash Settings, 0, 6{0}, 20, 50

//
// Define our initial roadway section
//

0, Roadway, 12, 6, 3, 2, 0, 10, 10, 0.4, 0.4, 50, 0, C:\STISIM3\Data\Textures\Road21.Jva, 255/255/255, 6, 0, 0, C:\STISIM3\Data\Textures\Road21.Jva, 255/255/255, 6, 0, 0, 10, C:\STISIM3\Data\Textures\Grass04.Jpg, 255/255/255, 12, 0, 0, 10, C:\STISIM3\Data\Textures\Grass04.Jpg, 255/255/255, 12, 0, 0, 100, C:\STISIM3\Data\Textures\Grass04.Jpg, 255/255/255, 12, 0, 0, 100, C:\STISIM3\Data\Textures\Grass04.Jpg, 255/255/255, 12, 0, C:\STISIM3\Data\Textures\Grass04.Jpg, 255/255/255, 12, 0, C:\STISIM3\Data\Textures\Grass04.Jpg, 255/255/255, 12, 0, 4, C:\STISIM3\Data\Textures\Road21.Jva, 255/255/255, 6, 0

//
// Set our initial speed limit and show it to the driver
//

  0, Speed Limit, 55, 0
100, Sign, 100, 0, C:\STISIM3\Data\Signs\Speed Limit\SP45MPH.mesh



//
// Add the various sections of the drive
//

    0,Previously Defined Events,C:\STISIM3\Scenarios\2106\Drive 5\Segment 5\PDEs in Complete Test\2106_Metro_A01_Version_5B.pde
 4900,Previously Defined Events,C:\STISIM3\Scenarios\2106\Drive 5\Segment 5\PDEs in Complete Test\2106_Rural_Test_A01_Version_2.pde



//
// Add triggered events to the scenario
//

