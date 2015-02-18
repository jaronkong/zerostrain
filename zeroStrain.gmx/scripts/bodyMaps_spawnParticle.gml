///bodyMaps_spawnParticle( enum BODY_MAP, rootObject, angle, particleSystem, particleType );

var aEnumSource = argument0;
var aRootObj = argument1;
var aAngle = argument2;
var aPartSystem = argument3;
var aPartType = argument4;

var tDataList = global.bodyMaps[? aEnumSource];
var tRandomIndex = irandom( ( ds_list_size( tDataList ) div BODY_MAP_INFO.NUM_ELEMENTS ) - 1 );
var tBaseIndex = tRandomIndex * BODY_MAP_INFO.NUM_ELEMENTS;

var tX1 = tDataList[| tBaseIndex + BODY_MAP_INFO.X1 ];
var tY1 = tDataList[| tBaseIndex + BODY_MAP_INFO.Y1 ];
var tX2 = tDataList[| tBaseIndex + BODY_MAP_INFO.X2 ];
var tY2 = tDataList[| tBaseIndex + BODY_MAP_INFO.Y2 ];
var tVariance = tDataList[| tBaseIndex + BODY_MAP_INFO.VARIANCE ];

var tDir = point_direction( tX1, tY1, tX2, tY2 );
var tXDist = random( point_distance( tX1, tY1, tX2, tY2 ));
var tYDist = random( tVariance );
var tAngle = radtodeg( arctan( tYDist / tXDist ) );

var tTargetDist = sqrt( tXDist*tXDist + tYDist*tYDist );

var tSign = choose( 1, -1 );
var tTargetX = tX1 + lengthdir_x( tTargetDist, tDir + tAngle*tSign );
var tTargetY = tY1 + lengthdir_y( tTargetDist, tDir + tAngle*tSign );

var tActualDist = point_distance( 0, 0, tTargetX, tTargetY );
var tActualAngle = point_direction( 0, 0, tTargetX, tTargetY ) + aAngle;

part_particles_create( aPartSystem, aRootObj.x + lengthdir_x( tActualDist, tActualAngle), 
                                aRootObj.y + lengthdir_y( tActualDist, tActualAngle ),
                                aPartType, 1 );
/*
with ( backgroundController ) {
    ds_list_add( flowerList, tTreeXPos + tTargetX, tHeightOffset + tTargetY, 
                    random_range( 0.5, 1.5 ), 
                    random( 360 ),
                    choose( 
                        make_color_rgb( 255, 192, 187 ), 
                        make_color_rgb( 255, 160, 157 ),
                        make_color_rgb( 255, 146, 145 ) ) );
    //Effects
    part_particles_create( global.backgroundSystem, tTreeXPos + tTargetX, tHeightOffset + tTargetY, getParticle( "flowerPoof" ), 100 );
    part_particles_create( global.backgroundSystem, tTreeXPos + tTargetX, tHeightOffset + tTargetY, getParticle( "flowerPoof2" ), 100 );
    createLightBurstAtPosition( tTreeXPos + tTargetX, tHeightOffset + tTargetY, 6, 300, make_color_rgb( 232, 101, 153 ) );
    createLightBurstAtPosition( tTreeXPos + tTargetX, tHeightOffset + tTargetY, 6, 150, make_color_rgb( 255, 101, 153 ) );

}
*/


