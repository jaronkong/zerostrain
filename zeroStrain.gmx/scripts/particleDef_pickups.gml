///particleDef_pickups();

var t = global.timeTickFactor;
var ti = 1/t;
var tPartName = "";
var tPartType = 0;

tPartName = "pickupBurst1"
if not ( ds_map_exists( global.particleMap, tPartName ) ) {
    tPartType = part_type_create();
    ds_map_add( global.particleMap, tPartName, tPartType );
}
tPartType = getParticle( tPartName );
part_type_sprite(tPartType, particle_line_spr, 0, 0, 0 );
part_type_size(tPartType,0.2,0.3,0 *t,0 *t);
part_type_scale(tPartType,1,0.5);
part_type_color2(tPartType,make_color_rgb( 255, 200, 0 ),c_purple);
part_type_alpha3(tPartType,0.1, 1, 0);
part_type_speed(tPartType,1 *t,15 *t, -0.05 *t,0 *t);
part_type_direction(tPartType,0,359,0 *t,0 *t);
part_type_orientation(tPartType,0,0,0 *t,0 *t,1);
part_type_blend(tPartType,1);
part_type_life(tPartType,60 *ti,120 *ti);


tPartName = "pickupBurst2"
if not ( ds_map_exists( global.particleMap, tPartName ) ) {
    tPartType = part_type_create();
    ds_map_add( global.particleMap, tPartName, tPartType );
}
tPartType = getParticle( tPartName );
part_type_sprite(tPartType, particle_flare_spr, 0, 0, 0 );
part_type_size(tPartType,0.2,0.7,-0.004 *t,0 *t);
part_type_scale(tPartType,2,1);
part_type_color3(tPartType,16711680,255,make_color_rgb( 255, 200, 50 ));
part_type_alpha3(tPartType,0,1,0);
part_type_speed(tPartType,4 *t,6 *t,0 *t,0 *t);
part_type_direction(tPartType,0,359,3 *t,0 *t);
part_type_orientation(tPartType,0,0,0 *t,0 *t,1);
part_type_blend(tPartType,1);
part_type_life(tPartType,60 *ti,120 *ti);

tPartName = "pickupBurst3"
if not ( ds_map_exists( global.particleMap, tPartName ) ) {
    tPartType = part_type_create();
    ds_map_add( global.particleMap, tPartName, tPartType );
}
tPartType = getParticle( tPartName );
part_type_sprite(tPartType, particle_flare_spr, 0, 0, 0 );
part_type_size(tPartType,0.2,0.7,-0.004 *t,0 *t);
part_type_scale(tPartType,2,1);
part_type_color3(tPartType,16711680,255,make_color_rgb( 255, 200, 50 ));
part_type_alpha3(tPartType,0,1,0);
part_type_speed(tPartType,4 *t,6 *t,0 *t,0 *t);
part_type_direction(tPartType,0,359,-3 *t,0 *t);
part_type_orientation(tPartType,0,0,0 *t,0 *t,1);
part_type_blend(tPartType,1);
part_type_life(tPartType,60 *ti,120 *ti);
