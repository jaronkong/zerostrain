///particleDef_pulseDriver();

var t = global.timeTickFactor;
var ti = 1/t;
var tPartName = "";
var tPartType = 0;

tPartName = "pulseShotCore"
if not ( ds_map_exists( global.particleMap, tPartName ) ) {
    tPartType = part_type_create();
    ds_map_add( global.particleMap, tPartName, tPartType );
}
tPartType = getParticle( tPartName );
part_type_blend(tPartType,1);
part_type_sprite(tPartType, particle_flare_spr, 0, 0, 0 );
part_type_size(tPartType,0.4,0.8,-0.05 *t,0 *t);
part_type_scale(tPartType,3,0.5);
part_type_color3(tPartType,make_color_rgb( 255, 255, 50 ),make_color_rgb( 150, 50, 255 ), make_color_rgb( 50, 50, 255 ));
part_type_alpha2(tPartType,1,0);
part_type_speed(tPartType,1 *t,2 *t,0 *t,0 *t);
part_type_direction(tPartType,0,359,0 *t,0 *t);
part_type_orientation(tPartType,0,0,0 *t,0 *t,1);
part_type_life(tPartType,5 *ti,10 *ti);

tPartName = "pulseShotLineTail"
if not ( ds_map_exists( global.particleMap, tPartName ) ) {
    tPartType = part_type_create();
    ds_map_add( global.particleMap, tPartName, tPartType );
}
tPartType = getParticle( tPartName );
part_type_blend(tPartType,1);
part_type_sprite(tPartType, particle_flare_spr, 0, 0, 0 );
part_type_size(tPartType,0.1,0.2,-0.003 *t,0.1 *t);
part_type_scale(tPartType,3,1);
part_type_color3(tPartType,make_color_rgb( 30, 50, 255 ),make_color_rgb( 200, 50, 255 ), make_color_rgb( 200, 200, 255 ));
part_type_alpha3(tPartType,0.3,0.8,0);
part_type_speed(tPartType,0.5 *t,2 *t,0 *t,1 *t);
part_type_direction(tPartType,0,359,0 *t,0 *t);
part_type_orientation(tPartType,0,0,0 *t,0 *t,1);
part_type_life(tPartType,60 *ti,120 *ti);

tPartName = "pulseShotTrail"
if not ( ds_map_exists( global.particleMap, tPartName ) ) {
    tPartType = part_type_create();
    ds_map_add( global.particleMap, tPartName, tPartType );
}
tPartType = getParticle( tPartName );
part_type_blend(tPartType,1);
part_type_sprite(tPartType, particle_flare_spr, 0, 0, 0 );
part_type_size(tPartType,0.1,0.2,-0.0025 *t,0 *t);
part_type_scale(tPartType,1,1);
part_type_color3(tPartType,make_color_rgb( 30, 50, 255 ),make_color_rgb( 100, 50, 230 ), make_color_rgb( 150, 150, 255 ));
part_type_alpha3(tPartType,0,0.8,0);
part_type_speed(tPartType,0.5 *t,2 *t,0 *t,1 *t);
part_type_direction(tPartType,0,359,0 *t,0 *t);
part_type_orientation(tPartType,0,0,0 *t,0 *t,1);
part_type_life(tPartType,60 *ti,120 *ti);




tPartName = "pulseShotHitCore"
if not ( ds_map_exists( global.particleMap, tPartName ) ) {
    tPartType = part_type_create();
    ds_map_add( global.particleMap, tPartName, tPartType );
}
tPartType = getParticle( tPartName );
part_type_blend(tPartType,1);
part_type_sprite(tPartType, particle_sphere_spr, 0, 0, 0 );
part_type_size(tPartType,1,2, 0.1 *t,0 *t);
part_type_scale(tPartType,1,0.1);
part_type_color3(tPartType,make_color_rgb( 255, 255, 50 ),make_color_rgb( 150, 50, 255 ), make_color_rgb( 50, 50, 255 ));
part_type_alpha2(tPartType,1,0);
part_type_speed(tPartType,5 *t,10 *t,0 *t,0 *t);
part_type_direction(tPartType,0,359,0 *t,0 *t);
part_type_orientation(tPartType,0,0,0 *t,0 *t,1);
part_type_life(tPartType,10 *ti,25 *ti);

tPartName = "pulseShotHitSplash"
if not ( ds_map_exists( global.particleMap, tPartName ) ) {
    tPartType = part_type_create();
    ds_map_add( global.particleMap, tPartName, tPartType );
}
tPartType = getParticle( tPartName );
part_type_blend(tPartType,1);
part_type_sprite(tPartType, particle_flare_spr, 0, 0, 0 );
part_type_size(tPartType,0.2,0.5,-0.001 *t,0 *t);
part_type_scale(tPartType,1,0.5);
part_type_color3(tPartType,make_color_rgb( 255, 255, 50 ),make_color_rgb( 150, 50, 255 ), make_color_rgb( 50, 50, 255 ));
part_type_alpha3(tPartType,0, 1,0);
part_type_speed(tPartType,1 *t,15 *t,-0.2 *t,0 *t);
part_type_direction(tPartType,0,359,0 *t,0 *t);
part_type_orientation(tPartType,0,0,0 *t,0 *t,1);
part_type_life(tPartType,30 *ti,70 *ti);

tPartName = "pulseShotVaporize"
if not ( ds_map_exists( global.particleMap, tPartName ) ) {
    tPartType = part_type_create();
    ds_map_add( global.particleMap, tPartName, tPartType );
}
tPartType = getParticle( tPartName );
part_type_blend(tPartType,1);
part_type_sprite(tPartType, particle_spark_spr, 0, 0, 0 );
part_type_size(tPartType,0.5,1.2,-0.001 *t,0.2 *t);
part_type_scale(tPartType,1,1);
part_type_color3(tPartType,make_color_rgb( 255, 255, 50 ),make_color_rgb( 150, 50, 255 ), make_color_rgb( 50, 50, 255 ));
part_type_alpha2(tPartType,1, 0);
part_type_speed(tPartType,0 *t,2 *t,-0.2 *t,0 *t);
part_type_direction(tPartType,0,359,0 *t,0 *t);
part_type_orientation(tPartType,0,0,0 *t,0 *t,1);
part_type_life(tPartType,60 *ti,100 *ti);

