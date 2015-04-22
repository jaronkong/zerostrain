///particleDef_standaloneEffects();

var t = global.timeTickFactor;
var ti = 1/t;
var tPartName = "";
var tPartType = 0;

tPartName = "dnaPopBurst"
if not ( ds_map_exists( global.particleMap, tPartName ) ) {
    tPartType = part_type_create();
    ds_map_add( global.particleMap, tPartName, tPartType );
}
tPartType = getParticle( tPartName );
part_type_blend(tPartType,1);
part_type_sprite(tPartType, particle_line_spr, 0, 0, 0 );
part_type_size(tPartType, 1,1,-0.005 *t,0.05 *t);
part_type_scale(tPartType,1,0.5);
part_type_color3(tPartType,make_color_rgb( 255, 255, 255 ),make_color_rgb( 255, 200, 20 ), make_color_rgb( 80, 30, 50 ));
part_type_alpha2(tPartType,1, 0);
part_type_speed(tPartType,1 *t,15 *t,0 *t,0 *t);
part_type_direction(tPartType,0,359,0 *t,0 *t);
part_type_orientation(tPartType,0,0,0 *t,0 *t,1);
part_type_life(tPartType, 15 *ti,30 *ti);

tPartName = "dnaCollectBurst"
if not ( ds_map_exists( global.particleMap, tPartName ) ) {
    tPartType = part_type_create();
    ds_map_add( global.particleMap, tPartName, tPartType );
}
tPartType = getParticle( tPartName );
part_type_blend(tPartType,1);
part_type_sprite(tPartType, particle_line_spr, 0, 0, 0 );
part_type_size(tPartType, 0.3,0.8,-0.005 *t,0.05 *t);
part_type_scale(tPartType,1,0.5);
part_type_color3(tPartType,make_color_rgb( 255, 255, 255 ),make_color_rgb( 255, 200, 20 ), make_color_rgb( 80, 30, 50 ));
part_type_alpha3(tPartType,0.5, 1, 0);
part_type_speed(tPartType,1 *t,15 *t,-0.2 *t,0 *t);
part_type_direction(tPartType,0,359,2 *t,1 *t);
part_type_orientation(tPartType,0,0,0 *t,0 *t,1);
part_type_life(tPartType, 30 *ti,60 *ti);

tPartName = "dnaCollectBurst2"
if not ( ds_map_exists( global.particleMap, tPartName ) ) {
    tPartType = part_type_create();
    ds_map_add( global.particleMap, tPartName, tPartType );
}
tPartType = getParticle( tPartName );
part_type_blend(tPartType,1);
part_type_sprite(tPartType, particle_line_spr, 0, 0, 0 );
part_type_size(tPartType, 0.3,0.8,-0.005 *t,0.05 *t);
part_type_scale(tPartType,1,0.5);
part_type_color3(tPartType,make_color_rgb( 255, 255, 255 ),make_color_rgb( 255, 200, 20 ), make_color_rgb( 80, 30, 50 ));
part_type_alpha3(tPartType,0.5, 1, 0);
part_type_speed(tPartType,1 *t,15 *t,-0.2 *t,0 *t);
part_type_direction(tPartType,0,359,-2 *t,1 *t);
part_type_orientation(tPartType,0,0,0 *t,0 *t,1);
part_type_life(tPartType, 30 *ti,60 *ti);

tPartName = "dnaMergeFuseLine"
if not ( ds_map_exists( global.particleMap, tPartName ) ) {
    tPartType = part_type_create();
    ds_map_add( global.particleMap, tPartName, tPartType );
}
tPartType = getParticle( tPartName );
part_type_blend(tPartType,1);
part_type_sprite(tPartType, particle_line_spr, 0, 0, 0 );
part_type_size(tPartType, 0.3,0.8,0.03 *t,0.02 *t);
part_type_scale(tPartType,1,0.1);
part_type_color3(tPartType,make_color_rgb( 255, 255, 255 ),make_color_rgb( 255, 200, 20 ), make_color_rgb( 80, 30, 50 ));
part_type_alpha3(tPartType,0.5, 1, 0);
part_type_speed(tPartType,0 *t,0 *t,0 *t,0 *t);
part_type_direction(tPartType,0,0,0 *t,0 *t);
part_type_orientation(tPartType,0,0,0 *t,0 *t,1);
part_type_life(tPartType, 15 *ti,30 *ti);

tPartName = "dnaMergeFuseSparks"
if not ( ds_map_exists( global.particleMap, tPartName ) ) {
    tPartType = part_type_create();
    ds_map_add( global.particleMap, tPartName, tPartType );
}
tPartType = getParticle( tPartName );
part_type_blend(tPartType,1);
part_type_sprite(tPartType, particle_sphere_spr, 0, 0, 0 );
part_type_size(tPartType, 0.01,0.08,-0.001 *t,0.02 *t);
part_type_scale(tPartType,1,1);
part_type_color3(tPartType,make_color_rgb( 255, 255, 255 ),make_color_rgb( 255, 200, 20 ), make_color_rgb( 80, 30, 50 ));
part_type_alpha3(tPartType,0.5, 1, 0);
part_type_speed(tPartType,0 *t,4 *t,-0.04 *t,0 *t);
part_type_direction(tPartType,0,0,0 *t,0 *t);
part_type_gravity(tPartType, 0.025, 270 );
part_type_orientation(tPartType,0,0,0 *t,0 *t,1);
part_type_life(tPartType, 60 *ti,90 *ti);
