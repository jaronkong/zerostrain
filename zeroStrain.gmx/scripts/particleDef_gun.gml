///particleDef_gun();

var t = global.timeTickFactor;
var tPartName = "";
var tPartType = 0;

tPartName = "shotCore"
if not ( ds_map_exists( global.particleMap, tPartName ) ) {
    pBurstCore1 = part_type_create();
    ds_map_add( global.particleMap, tPartName, pBurstCore1 );
}
tPartType = getParticle( tPartName );
part_type_blend(tPartType,1);
part_type_sprite(tPartType, particle_sphere_spr, 0, 0, 0 );
part_type_size(tPartType,0.2,0.3,-0.015 *t,0 *t);
part_type_scale(tPartType,3,1);
part_type_color3(tPartType,make_color_rgb( 255, 255, 20 ),make_color_rgb( 100, 200, 50 ), make_color_rgb( 50, 200, 50 ));
part_type_alpha2(tPartType,1,0);
part_type_speed(tPartType,0.5 *t,1 *t,0 *t,0 *t);
part_type_direction(tPartType,0,359,0 *t,0 *t);
part_type_orientation(tPartType,0,0,0 *t,0 *t,1);
part_type_life(tPartType,10 *t,15 *t);


tPartName = "shotCoreTrail"
if not ( ds_map_exists( global.particleMap, tPartName ) ) {
    pBurstCore2 = part_type_create();
    ds_map_add( global.particleMap, tPartName, pBurstCore2 );
}
tPartType = getParticle( tPartName );
part_type_blend(tPartType,1);
part_type_sprite(tPartType, particle_flare_spr, 0, 0, 0 );
part_type_size(tPartType,0.05,0.2,-0.005 *t,0 *t);
part_type_scale(tPartType,1,1);
part_type_color3(tPartType,make_color_rgb( 200, 255, 200 ),make_color_rgb( 50, 255, 20 ),make_color_rgb( 50, 200, 100 ));
part_type_alpha3(tPartType,0,0.8,0);
part_type_speed(tPartType,1 *t,2 *t,0 *t,1 *t);
part_type_direction(tPartType,0,359,0 *t,0 *t);
part_type_orientation(tPartType,0,0,0 *t,0 *t,1);
part_type_life(tPartType,30 *t,60 *t);

