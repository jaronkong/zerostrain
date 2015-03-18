///particleDef_enemyLaser();

var t = global.timeTickFactor;
var ti = 1/t;
var tPartName = "";
var tPartType = 0;

tPartName = "enemyBeamCore"
if not ( ds_map_exists( global.particleMap, tPartName ) ) {
    tPartType = part_type_create();
    ds_map_add( global.particleMap, tPartName, tPartType );
}
tPartType = getParticle( tPartName );
part_type_blend(tPartType,1);
part_type_sprite(tPartType, particle_sphere_spr, 0, 0, 0 );
part_type_size(tPartType,0.2,0.4,-0.01 *t,0 *t);
part_type_scale(tPartType,3,1);
part_type_color3(tPartType,make_color_rgb( 255, 255, 30 ),make_color_rgb( 100, 0, 255 ), make_color_rgb( 255, 255, 50 ));
part_type_alpha2(tPartType,1,1);
part_type_speed(tPartType,1 *t,2 *t,0 *t,0 *t);
part_type_direction(tPartType,0,359,0 *t,0 *t);
part_type_orientation(tPartType,0,0,0 *t,0 *t,1);
part_type_life(tPartType,20 *ti,30 *ti);


tPartName = "enemyBeamShimmer"
if not ( ds_map_exists( global.particleMap, tPartName ) ) {
    tPartType = part_type_create();
    ds_map_add( global.particleMap, tPartName, tPartType );
}
tPartType = getParticle( tPartName );
part_type_blend(tPartType,1);
part_type_sprite(tPartType, particle_flare_spr, 0, 0, 0 );
part_type_size(tPartType,0.05,0.3,-0.0025 *t,0 *t);
part_type_scale(tPartType,1,1);
part_type_color3(tPartType,make_color_rgb( 255, 20, 20 ),make_color_rgb( 255, 50, 30 ), make_color_rgb( 255, 255, 50 ));
part_type_alpha3(tPartType,0,0.8,0);
part_type_speed(tPartType,0.5 *t,2 *t,0 *t,0.5 *t);
part_type_direction(tPartType,0,359,0 *t,0 *t);
part_type_orientation(tPartType,0,0,0 *t,0 *t,1);
part_type_life(tPartType,60 *ti,120 *ti);

tPartName = "enemyBeamHitBurst"
if not ( ds_map_exists( global.particleMap, tPartName ) ) {
    tPartType = part_type_create();
    ds_map_add( global.particleMap, tPartName, tPartType );
}
tPartType = getParticle( tPartName );
part_type_blend(tPartType,1);
part_type_sprite(tPartType, particle_sphere_spr, 0, 0, 0 );
part_type_size(tPartType,1,1.5,-0.01 *t,0 *t);
part_type_scale(tPartType,1,0.5);
part_type_color3(tPartType,make_color_rgb( 255, 255, 20 ),make_color_rgb( 100, 0, 255 ), make_color_rgb( 255, 255, 50 ));
part_type_alpha3(tPartType,0,0.8,0);
part_type_speed(tPartType,1 *t,12 *t,-0.02 *t,0.5 *t);
part_type_direction(tPartType,0,359,0 *t,0 *t);
part_type_orientation(tPartType,0,0,0 *t,0 *t,1);
part_type_life(tPartType,20 *ti,30 *ti);

tPartName = "enemyBeamHitSparks"
if not ( ds_map_exists( global.particleMap, tPartName ) ) {
    tPartType = part_type_create();
    ds_map_add( global.particleMap, tPartName, tPartType );
}
tPartType = getParticle( tPartName );
part_type_blend(tPartType,1);
part_type_sprite(tPartType, particle_line_spr, 0, 0, 0 );
part_type_size(tPartType,0.4,0.8,-0.001 *t,0 *t);
part_type_scale(tPartType,1,0.5);
part_type_color3(tPartType,make_color_rgb( 255, 255, 50 ),make_color_rgb( 100, 0, 255 ), make_color_rgb( 255, 255, 50 ));
part_type_alpha2(tPartType,1,0);
part_type_speed(tPartType,2 *t,10 *t,-0.05 *t,0.5 *t);
part_type_direction(tPartType,0,359,0 *t,0 *t);
part_type_orientation(tPartType,0,0,0 *t,0 *t,1);
part_type_life(tPartType,20 *ti,120 *ti);
