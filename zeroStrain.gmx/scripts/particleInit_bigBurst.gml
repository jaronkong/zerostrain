///particleInit_bigBurst();

var t = global.timeTickFactor;
var tPartName = "";
var tPartType = 0;

tPartName = "burstCore1"
if not ( ds_map_exists( global.particleMap, tPartName ) ) {
    pBurstCore1 = part_type_create();
    ds_map_add( global.particleMap, tPartName, pBurstCore1 );
}
tPartType = getParticle( tPartName );
part_type_sprite(tPartType, particle_flare_spr, 0, 0, 0 );
part_type_size(tPartType,0.5,1,0 *t,0 *t);
part_type_scale(tPartType,1,1);
part_type_color2(tPartType,make_color_rgb( 255, 200, 0 ),c_purple);
part_type_alpha2(tPartType,1,0);
part_type_speed(tPartType,0.5 *t,1 *t,0 *t,0 *t);
part_type_direction(tPartType,0,359,0 *t,0 *t);
part_type_orientation(tPartType,0,359,0.5 *t,0 *t,0);
part_type_blend(tPartType,1);
part_type_life(tPartType,30 *t,60 *t);


tPartName = "burstCore2"
if not ( ds_map_exists( global.particleMap, tPartName ) ) {
    pBurstCore2 = part_type_create();
    ds_map_add( global.particleMap, tPartName, pBurstCore2 );
}
tPartType = getParticle( tPartName );
part_type_sprite(tPartType, particle_sphere_spr, 0, 0, 0 );
part_type_size(tPartType,1,2,-0.005 *t,0 *t);
part_type_scale(tPartType,2,1);
part_type_color3(tPartType,16711680,255,make_color_rgb( 255, 200, 50 ));
part_type_alpha3(tPartType,0,0.4,0);
part_type_speed(tPartType,2 *t,15 *t,0 *t,1 *t);
part_type_direction(tPartType,0,359,0 *t,0 *t);
part_type_orientation(tPartType,0,0,0 *t,0 *t,1);
part_type_blend(tPartType,1);
part_type_life(tPartType,30 *t,60 *t);

