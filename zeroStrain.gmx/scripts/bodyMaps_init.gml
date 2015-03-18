///bodyMaps_init();

enum BODY_MAPS {
    ENEMY1,
    ENEMY3,
    ENEMY4,
    
    NUM_BODY_MAPS
};

enum BODY_MAP_INFO {
    X1,
    Y1,
    X2,
    Y2,
    VARIANCE,
    
    NUM_ELEMENTS
};

global.bodyMaps = ds_map_create();