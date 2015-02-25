///globalInit();

bodyMaps_init();
bodyMaps_load( "bodyMap.ini", BODY_MAPS.ENEMY1 );

enum WEAPON_TYPE {
    GREEN,
    RED,
    BLUE,
    
    NUM_TYPES
}

global.timeTickFactor = 1; //Percent of real time to run things at. For slowdown effects.

