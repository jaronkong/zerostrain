///particleDef_gun();

var t = global.timeTickFactor;
var ti = 1/t;
var tPartName = "";
var tPartType = 0;

tPartName = "shotCore"
if not ( ds_map_exists( global.particleMap, tPartName ) ) {
    tPartType = part_type_create();
    ds_map_add( global.particleMap, tPartName, tPartType );
}
tPartType = getParticle( tPartName );
part_type_blend(tPartType,1);
part_type_sprite(tPartType, particle_sphere_spr, 0, 0, 0 );
part_type_size(tPartType,0.15,0.3,-0.007 *t,0 *t);
part_type_scale(tPartType,3,1);
part_type_color3(tPartType,make_color_rgb( 255, 255, 20 ),make_color_rgb( 100, 200, 50 ), make_color_rgb( 50, 255, 50 ));
part_type_alpha2(tPartType,1,1);
part_type_speed(tPartType,0.25 *t,0.5 *t,0 *t,0 *t);
part_type_direction(tPartType,0,359,0 *t,0 *t);
part_type_orientation(tPartType,0,0,0 *t,0 *t,1);
part_type_life(tPartType,20 *ti,30 *ti);


tPartName = "shotCoreTrail"
if not ( ds_map_exists( global.particleMap, tPartName ) ) {
    tPartType = part_type_create();
    ds_map_add( global.particleMap, tPartName, tPartType );
}
tPartType = getParticle( tPartName );
part_type_blend(tPartType,1);
part_type_sprite(tPartType, particle_flare_spr, 0, 0, 0 );
part_type_size(tPartType,0.05,0.3,-0.0025 *t,0 *t);
part_type_scale(tPartType,1,1);
part_type_color3(tPartType,make_color_rgb( 200, 255, 200 ),make_color_rgb( 50, 255, 20 ),make_color_rgb( 50, 200, 100 ));
part_type_alpha3(tPartType,0,0.8,0);
part_type_speed(tPartType,0.5 *t,1 *t,0 *t,0.5 *t);
part_type_direction(tPartType,0,359,0 *t,0 *t);
part_type_orientation(tPartType,0,0,0 *t,0 *t,1);
part_type_life(tPartType,60 *ti,120 *ti);

tPartName = "gunHitSparks"
if not ( ds_map_exists( global.particleMap, tPartName ) ) {
    tPartType = part_type_create();
    ds_map_add( global.particleMap, tPartName, tPartType );
}
tPartType = getParticle( tPartName );
part_type_blend(tPartType,1);
part_type_sprite(tPartType, particle_line_spr, 0, 0, 0 );
part_type_size(tPartType,0.1,0.2,-0.0025 *t,0 *t);
part_type_scale(tPartType,1,0.5);
part_type_color3(tPartType,make_color_rgb( 200, 255, 50 ),make_color_rgb( 50, 255, 20 ),make_color_rgb( 50, 200, 100 ));
part_type_alpha3(tPartType,0,0.8,0);
part_type_speed(tPartType,1 *t,8 *t,-0.02 *t,0.5 *t);
part_type_direction(tPartType,0,359,0 *t,0 *t);
part_type_orientation(tPartType,0,0,0 *t,0 *t,1);
part_type_life(tPartType,20 *ti,120 *ti);

tPartName = "gunHitCore"
if not ( ds_map_exists( global.particleMap, tPartName ) ) {
    tPartType = part_type_create();
    ds_map_add( global.particleMap, tPartName, tPartType );
}
tPartType = getParticle( tPartName );
part_type_blend(tPartType,1);
part_type_sprite(tPartType, particle_flare_spr, 0, 0, 0 );
part_type_size(tPartType,0.4,0.8,-0.01 *t,0 *t);
part_type_scale(tPartType,1,0.5);
part_type_color3(tPartType,make_color_rgb( 200, 255, 255 ),make_color_rgb( 50, 255, 20 ),make_color_rgb( 50, 255, 100 ));
part_type_alpha2(tPartType,1,0);
part_type_speed(tPartType,2 *t,10 *t,-0.05 *t,0.5 *t);
part_type_direction(tPartType,0,359,0 *t,0 *t);
part_type_orientation(tPartType,0,0,0 *t,0 *t,1);
part_type_life(tPartType,20 *ti,45 *ti);