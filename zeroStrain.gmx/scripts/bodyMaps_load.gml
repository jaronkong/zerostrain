///bodyMaps_load( fileName, enum BODY_MAPS );

var aFileName = argument0;
var aEnumTarget = argument1;

var tNewBodyMap = ds_list_create();

ini_open( aFileName );

var tIndex = 0;
var tSection = "segment" + string( tIndex );

while ( ini_section_exists( tSection ) ) {
    var tX1 = ini_read_real( tSection, "x1", 1 );
    var tY1 = ini_read_real( tSection, "y1", 1 );
    var tX2 = ini_read_real( tSection, "x2", 1 );
    var tY2 = ini_read_real( tSection, "y2", 1 );
    var tVariance = ini_read_real( tSection, "variance", 1 );
    
    ds_list_add( tNewBodyMap, tX1, tY1, tX2, tY2, tVariance );
    
    tIndex ++;
    tSection = "segment" + string( tIndex );
    
}

ini_close();

ds_map_add( global.bodyMaps, aEnumTarget, tNewBodyMap );
