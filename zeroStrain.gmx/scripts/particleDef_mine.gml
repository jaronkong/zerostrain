///particleDef_mine();

var t = global.timeTickFactor;
var ti = 1/t;
var tPartName = "";
var tPartType = 0;

tPartName = "mineCore"
if not ( ds_map_exists( global.particleMap, tPartName ) ) {
    tPartType = part_type_create();
    ds_map_add( global.particleMap, tPartName, tPartType );
}
tPartType = getParticle( tPartName );
part_type_blend(tPartType,1);
part_type_sprite(tPartType, particle_flare_spr, 1, 1, 1 );
part_type_size(tPartType,0.6,0.9,-0.0125 *t,0 *t);
part_type_scale(tPartType,1,1);
part_type_color3(tPartType,make_color_rgb( 255, 50, 50 ),make_color_rgb( 255, 100, 50 ), make_color_rgb( 255, 200, 150 ));
part_type_alpha2(tPartType,1,0);
part_type_speed(tPartType,0 *t,0 *t,0 *t,0 *t);
part_type_direction(tPartType,0,359,0 *t,0 *t);
part_type_orientation(tPartType,0,0,0 *t,0 *t,1);
part_type_life(tPartType,10 *ti,15 *ti);

tPartName = "mineAura"
if not ( ds_map_exists( global.particleMap, tPartName ) ) {
    tPartType = part_type_create();
    ds_map_add( global.particleMap, tPartName, tPartType );
}
tPartType = getParticle( tPartName );
part_type_blend(tPartType,1);
part_type_sprite(tPartType, particle_fire_spr, 1, 1, 1 );
part_type_size(tPartType,0.5,0.8, -0.0125 *t,0 *t);
part_type_scale(tPartType,1,0.5);
part_type_color3(tPartType,make_color_rgb( 20, 20, 255 ),make_color_rgb( 255, 200, 50 ), make_color_rgb( 255, 50, 50 ));
part_type_alpha3(tPartType,0, 1,0);
part_type_speed(tPartType,2 *t,6 *t,0 *t,0 *t);
part_type_direction(tPartType,0,359,8 *t,0 *t);
part_type_orientation(tPartType,0,0,0 *t,0 *t,1);
part_type_life(tPartType,60 *ti,90 *ti);


tPartName = "mineAura2"
if not ( ds_map_exists( global.particleMap, tPartName ) ) {
    tPartType = part_type_create();
    ds_map_add( global.particleMap, tPartName, tPartType );
}
tPartType = getParticle( tPartName );
part_type_blend(tPartType,1);
part_type_sprite(tPartType, particle_flare_spr, 0, 0, 0 );
part_type_size(tPartType,0.5,1.2,-0.025 *t,0 *t);
part_type_scale(tPartType,1,0.5);
part_type_color3(tPartType,make_color_rgb( 20, 20, 255 ),make_color_rgb( 255, 20, 255 ), make_color_rgb( 255, 255, 50 ));
part_type_alpha3(tPartType,0, 1,0);
part_type_speed(tPartType,1 *t,2 *t,0 *t,0 *t);
part_type_direction(tPartType,0,359,-6 *t,0 *t);
part_type_orientation(tPartType,0,0,0 *t,0 *t,1);
part_type_life(tPartType,30 *ti,100 *ti);


tPartName = "mineBurst1"
if not ( ds_map_exists( global.particleMap, tPartName ) ) {
    tPartType = part_type_create();
    ds_map_add( global.particleMap, tPartName, tPartType );
}
tPartType = getParticle( tPartName );
part_type_blend(tPartType,1);
part_type_sprite(tPartType, particle_lightning_spr, 0, 0, 0 );
part_type_size(tPartType,0.5,1,0 *t,0 *t);
part_type_scale(tPartType,2,1);
part_type_color3(tPartType,make_color_rgb( 20, 50, 255 ),make_color_rgb( 255, 200, 150 ), make_color_rgb( 255, 200, 50 ));
part_type_alpha2(tPartType,0.6,0);
part_type_speed(tPartType,0 *t,0 *t,0 *t,0 *t);
part_type_direction(tPartType,0,359,0 *t,0 *t);
part_type_orientation(tPartType,0,359,0 *t,0 *t,1);
part_type_life(tPartType,60 *ti,120 *ti);

tPartName = "mineBurst2"
if not ( ds_map_exists( global.particleMap, tPartName ) ) {
    tPartType = part_type_create();
    ds_map_add( global.particleMap, tPartName, tPartType );
}
tPartType = getParticle( tPartName );
part_type_blend(tPartType,1);
part_type_sprite(tPartType, particle_flare_spr, 0, 0, 0 );
part_type_size(tPartType,1.5,2.5,-0.025 *t,0 *t);
part_type_scale(tPartType,1,1);
part_type_color2(tPartType,make_color_rgb( 255, 100, 50 ),make_color_rgb( 255, 50, 20 ));
part_type_alpha3(tPartType,1, 0.2,0);
part_type_speed(tPartType,0.5 *t,1 *t,0 *t,0 *t);
part_type_direction(tPartType,0,359,0 *t,0 *t);
part_type_orientation(tPartType,0,359,1 *t,0 *t,1);
part_type_life(tPartType,60 *ti,120 *ti);

tPartName = "mineBurst3"
if not ( ds_map_exists( global.particleMap, tPartName ) ) {
    tPartType = part_type_create();
    ds_map_add( global.particleMap, tPartName, tPartType );
}
tPartType = getParticle( tPartName );
part_type_blend(tPartType,1);
part_type_sprite(tPartType, particle_line_spr, 0, 0, 0 );
part_type_size(tPartType,0.1,0.2,0 *t,0 *t);
part_type_scale(tPartType,2,1);
part_type_color3(tPartType,make_color_rgb( 50, 50, 255 ),make_color_rgb( 255, 200, 150 ), make_color_rgb( 255, 50, 50 ));
part_type_alpha3(tPartType,0, 1,0);
part_type_speed(tPartType,1 *t,15 *t,-0.2 *t,0 *t);
part_type_direction(tPartType,0,359,0 *t,8 *t);
part_type_orientation(tPartType,0,0,0 *t,0 *t,1);
part_type_life(tPartType,30 *ti,60 *ti);
