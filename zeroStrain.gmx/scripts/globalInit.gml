///globalInit();

bodyMaps_init();
bodyMaps_load( "bodyMap.ini", BODY_MAPS.ENEMY1 );
bodyMaps_load( "enemy3Map.ini", BODY_MAPS.ENEMY3 );
bodyMaps_load( "enemy4Map.ini", BODY_MAPS.ENEMY4 );

enum WEAPON_TYPE {
    GREEN,
    RED,
    BLUE,
    
    NUM_TYPES
}

global.timeTickFactor = 1; //Percent of real time to run things at. For slowdown effects.

global.pointScore = 0;

ini_open( "scores.ini" );
global.highscore = ini_read_real( "scores", "high", 0 );
ini_close();
