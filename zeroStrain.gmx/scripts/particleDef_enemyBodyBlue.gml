///particleDef_enemyBody();

var t = global.timeTickFactor;
var ti = 1/t;
var tPartName = "";
var tPartType = 0;

tPartName = "enemyBodyForm1b"
if not ( ds_map_exists( global.particleMap, tPartName ) ) {
    tPartType = part_type_create();
    ds_map_add( global.particleMap, tPartName, tPartType );
}
tPartType = getParticle( tPartName );
part_type_blend(tPartType,1);
part_type_sprite(tPartType, particle_flare_spr, 0, 0, 0 );
part_type_size(tPartType,0.6,1,-0.004 *t,0.1 *t);
part_type_scale(tPartType,1,1);
part_type_color3(tPartType,make_color_rgb( 255, 50, 50 ),make_color_rgb( 60, 50, 255 ), make_color_rgb( 80, 100, 255 ));
part_type_alpha3(tPartType,0, 1,0);
part_type_speed(tPartType,1 *t,2 *t,0 *t,0 *t);
part_type_direction(tPartType,0,359,0 *t,0 *t);
part_type_orientation(tPartType,0,360,0 *t,0 *t,0);
part_type_life(tPartType,25 *ti,70 *ti);


tPartName = "enemyBodyForm2b"
if not ( ds_map_exists( global.particleMap, tPartName ) ) {
    tPartType = part_type_create();
    ds_map_add( global.particleMap, tPartName, tPartType );
}
tPartType = getParticle( tPartName );
part_type_blend(tPartType,1);
part_type_sprite(tPartType, particle_line_spr, 0, 0, 0 );
part_type_size(tPartType,0.1,0.4,-0.0025 *t,0 *t);
part_type_scale(tPartType,2,1);
part_type_color3(tPartType,make_color_rgb( 255, 255, 50 ),make_color_rgb( 60, 50, 255 ), make_color_rgb( 80, 100, 255 ));
part_type_alpha2(tPartType,1, 0);
part_type_speed(tPartType,0 *t,10 *t,0 *t,0 *t);
part_type_direction(tPartType,0,359,0 *t,0 *t);
part_type_orientation(tPartType,0,0,0 *t,0 *t,0);
part_type_life(tPartType,20 *ti,60 *ti);

tPartName = "enemyBodyBurst1b"
if not ( ds_map_exists( global.particleMap, tPartName ) ) {
    tPartType = part_type_create();
    ds_map_add( global.particleMap, tPartName, tPartType );
}
tPartType = getParticle( tPartName );
part_type_blend(tPartType,1);
part_type_sprite(tPartType, particle_sphere_spr, 1, 1, 0 );
part_type_size(tPartType,0.4,1, -0.01 *t,0.1 *t);
part_type_scale(tPartType,2,0.35);
part_type_color3(tPartType,make_color_rgb( 255, 50, 50 ),make_color_rgb( 60, 50, 255 ), make_color_rgb( 80, 100, 255 ));
part_type_alpha2(tPartType, 1,0);
part_type_speed(tPartType,1 *t,15 *t,-0.5 *t,0 *t);
part_type_direction(tPartType,0,359,0 *t,0 *t);
part_type_orientation(tPartType,0,0,0 *t,0 *t,1);
part_type_life(tPartType,15 *ti,30 *ti);


tPartName = "enemyBodyBurst2b"
if not ( ds_map_exists( global.particleMap, tPartName ) ) {
    tPartType = part_type_create();
    ds_map_add( global.particleMap, tPartName, tPartType );
}
tPartType = getParticle( tPartName );
part_type_blend(tPartType,1);
part_type_sprite(tPartType, particle_fire_spr, 1, 1, 0 );
part_type_size(tPartType,0.7,1,-0.005 *t,0.2 *t);
part_type_scale(tPartType,1,1);
part_type_color3(tPartType,make_color_rgb( 255, 255, 50 ),make_color_rgb( 60, 50, 255 ), make_color_rgb( 80, 100, 255 ));
part_type_alpha2(tPartType,1, 0);
part_type_speed(tPartType,0 *t,1 *t,0 *t,0 *t);
part_type_direction(tPartType,0,359,5 *t,0 *t);
part_type_orientation(tPartType,0,360,0 *t,0 *t,0);
part_type_life(tPartType,30 *ti,60 *ti);
