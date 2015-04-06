///particleDef_torch();

var t = global.timeTickFactor;
var ti = 1/t;
var tPartName = "";
var tPartType = 0;

tPartName = "torchCore"
if not ( ds_map_exists( global.particleMap, tPartName ) ) {
    tPartType = part_type_create();
    ds_map_add( global.particleMap, tPartName, tPartType );
}
tPartType = getParticle( tPartName );
part_type_blend(tPartType,1);
part_type_sprite(tPartType, particle_fire_spr, 1, 1, 1 );
part_type_size(tPartType,0.05,0.1,0.01 *t,0.1 *t);
part_type_scale(tPartType,1,0.5);
part_type_color3(tPartType,make_color_rgb( 255, 50, 50 ),make_color_rgb( 20, 50, 255 ), make_color_rgb( 255, 255, 50 ));
part_type_alpha3(tPartType,0,1,0);
part_type_speed(tPartType,2 *t,6 *t,0 *t,0.3 *t);
part_type_direction(tPartType,0,359,0 *t,0 *t);
part_type_orientation(tPartType,0,0,0 *t,0 *t,1);
part_type_life(tPartType,50 *ti,80 *ti);

tPartName = "torchCore2"
if not ( ds_map_exists( global.particleMap, tPartName ) ) {
    tPartType = part_type_create();
    ds_map_add( global.particleMap, tPartName, tPartType );
}
tPartType = getParticle( tPartName );
part_type_blend(tPartType,1);
part_type_sprite(tPartType, particle_flare_spr, 1, 1, 1 );
part_type_size(tPartType,0.5,0.8, -0.0125 *t,0 *t);
part_type_scale(tPartType,1,0.5);
part_type_color3(tPartType,make_color_rgb( 255, 200, 50 ),make_color_rgb( 20, 200, 255 ), make_color_rgb( 255, 255, 50 ));
part_type_alpha3(tPartType,0, 1,0);
part_type_speed(tPartType,2 *t,7 *t,0 *t,0 *t);
part_type_direction(tPartType,0,359,0 *t,0 *t);
part_type_orientation(tPartType,0,0,0 *t,0 *t,1);
part_type_life(tPartType,60 *ti,90 *ti);

tPartName = "torchCore3"
if not ( ds_map_exists( global.particleMap, tPartName ) ) {
    tPartType = part_type_create();
    ds_map_add( global.particleMap, tPartName, tPartType );
}
tPartType = getParticle( tPartName );
part_type_blend(tPartType,1);
part_type_sprite(tPartType, particle_sphere_spr, 1, 1, 1 );
part_type_size(tPartType,0.2,0.4, 0.0125 *t,0 *t);
part_type_scale(tPartType,1,0.5);
part_type_color3(tPartType,make_color_rgb( 255, 0, 0 ),make_color_rgb( 0, 0, 255 ), make_color_rgb( 255, 255, 0 ));
part_type_alpha3(tPartType,0,0.25,0);
part_type_speed(tPartType,2 *t,7 *t,0 *t,0 *t);
part_type_direction(tPartType,0,359,0 *t,0 *t);
part_type_orientation(tPartType,0,0,0 *t,0 *t,1);
part_type_life(tPartType,60 *ti,90 *ti);


tPartName = "torchBurn"
if not ( ds_map_exists( global.particleMap, tPartName ) ) {
    tPartType = part_type_create();
    ds_map_add( global.particleMap, tPartName, tPartType );
}
tPartType = getParticle( tPartName );
part_type_blend(tPartType,1);
part_type_sprite(tPartType, particle_lightning_spr, 0, 0, 0 );
part_type_size(tPartType,0.5,0.8,0.025 *t,0 *t);
part_type_scale(tPartType,1,0.5);
part_type_color3(tPartType,make_color_rgb( 255, 200, 50 ),make_color_rgb( 20, 200, 255 ), make_color_rgb( 255, 255, 50 ));
part_type_alpha3(tPartType,0, 1,0);
part_type_speed(tPartType,1 *t,2 *t,0 *t,0 *t);
part_type_direction(tPartType,0,359,0 *t,0 *t);
part_type_orientation(tPartType,0,360,-3 *t,0 *t,0);
part_type_life(tPartType,10 *ti,20 *ti);


tPartName = "torchBurn2"
if not ( ds_map_exists( global.particleMap, tPartName ) ) {
    tPartType = part_type_create();
    ds_map_add( global.particleMap, tPartName, tPartType );
}
tPartType = getParticle( tPartName );
part_type_blend(tPartType,1);
part_type_sprite(tPartType, particle_sphere_spr, 0, 0, 0 );
part_type_size(tPartType,0.2,0.5,0 *t,0 *t);
part_type_scale(tPartType,1,0.5);
part_type_color3(tPartType,make_color_rgb( 255, 50, 50 ),make_color_rgb( 20, 200, 255 ), make_color_rgb( 255, 255, 50 ));
part_type_alpha2(tPartType,0.6,0);
part_type_speed(tPartType,2 *t,10 *t,0 *t,0 *t);
part_type_direction(tPartType,0,359,0 *t,0 *t);
part_type_orientation(tPartType,0,0,0 *t,0 *t,1);
part_type_life(tPartType,15 *ti,40 *ti);
