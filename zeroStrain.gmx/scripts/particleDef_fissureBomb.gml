///particleDef_fissureBomb();

var t = global.timeTickFactor;
var ti = 1/t;
var tPartName = "";
var tPartType = 0;

tPartName = "fissureSpin1"
if not ( ds_map_exists( global.particleMap, tPartName ) ) {
    tPartType = part_type_create();
    ds_map_add( global.particleMap, tPartName, tPartType );
}
tPartType = getParticle( tPartName );
part_type_blend(tPartType,1);
part_type_sprite(tPartType, particle_flare_spr, 0, 0, 0 );
part_type_size(tPartType,1,2,-0.0125 *t,0 *t);
part_type_scale(tPartType,1,0.5);
part_type_color3(tPartType,make_color_rgb( 255, 255, 50 ),make_color_rgb( 150, 50, 255 ), make_color_rgb( 100, 150, 200 ));
part_type_alpha3(tPartType,0, 1,0);
part_type_speed(tPartType,5 *t,10 *t,0 *t,0 *t);
part_type_direction(tPartType,0,359,2 *t,0 *t);
part_type_orientation(tPartType,0,0,0 *t,0 *t,1);
part_type_life(tPartType,60 *ti,200 *ti);


tPartName = "fissureSpin2"
if not ( ds_map_exists( global.particleMap, tPartName ) ) {
    tPartType = part_type_create();
    ds_map_add( global.particleMap, tPartName, tPartType );
}
tPartType = getParticle( tPartName );
part_type_blend(tPartType,1);
part_type_sprite(tPartType, particle_flare_spr, 0, 0, 0 );
part_type_size(tPartType,1,2,-0.025 *t,0 *t);
part_type_scale(tPartType,1,0.5);
part_type_color3(tPartType,make_color_rgb( 255, 255, 50 ),make_color_rgb( 150, 50, 255 ), make_color_rgb( 100, 150, 200 ));
part_type_alpha3(tPartType,0, 1,0);
part_type_speed(tPartType,10 *t,20 *t,0 *t,0 *t);
part_type_direction(tPartType,0,359,-4 *t,0 *t);
part_type_orientation(tPartType,0,0,0 *t,0 *t,1);
part_type_life(tPartType,30 *ti,100 *ti);


tPartName = "fissureBurst1"
if not ( ds_map_exists( global.particleMap, tPartName ) ) {
    tPartType = part_type_create();
    ds_map_add( global.particleMap, tPartName, tPartType );
}
tPartType = getParticle( tPartName );
part_type_blend(tPartType,1);
part_type_sprite(tPartType, particle_flare_spr, 0, 0, 0 );
part_type_size(tPartType,1,2,-0.045 *t,0.2 *t);
part_type_scale(tPartType,1,0.75);
part_type_color3(tPartType,make_color_rgb( 255, 255, 50 ),make_color_rgb( 100, 150, 200 ), make_color_rgb( 100, 150, 200 ));
part_type_alpha3(tPartType,0.3, 1,0);
part_type_speed(tPartType,2 *t,10 *t,-0.05 *t,0 *t);
part_type_direction(tPartType,0,359,1 *t,5 *t);
part_type_orientation(tPartType,0,0,0 *t,0 *t,1);
part_type_life(tPartType,50 *ti,100 *ti);

tPartName = "fissureBurst2"
if not ( ds_map_exists( global.particleMap, tPartName ) ) {
    tPartType = part_type_create();
    ds_map_add( global.particleMap, tPartName, tPartType );
}
tPartType = getParticle( tPartName );
part_type_blend(tPartType,1);
part_type_sprite(tPartType, particle_sphere_spr, 0, 0, 0 );
part_type_size(tPartType,1,2,-0.025 *t,0.2 *t);
part_type_scale(tPartType,1,0.75);
part_type_color3(tPartType,make_color_rgb( 255, 255, 50 ),make_color_rgb( 100, 150, 200 ), make_color_rgb( 150, 10, 255 ));
part_type_alpha3(tPartType,0.3, 1,0);
part_type_speed(tPartType,1 *t,5 *t,-0.05 *t,0 *t);
part_type_direction(tPartType,0,359,-1 *t,5 *t);
part_type_orientation(tPartType,0,0,0 *t,0 *t,1);
part_type_life(tPartType,50 *ti,100 *ti);
