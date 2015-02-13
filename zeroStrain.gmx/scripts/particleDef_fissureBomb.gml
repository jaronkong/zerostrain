///particleDef_fissureBomb();

var t = global.timeTickFactor;
var ti = 1/t;
var tPartName = "";
var tPartType = 0;

tPartName = "fissureSpin1"
if not ( ds_map_exists( global.particleMap, tPartName ) ) {
    pBurstCore1 = part_type_create();
    ds_map_add( global.particleMap, tPartName, pBurstCore1 );
}
tPartType = getParticle( tPartName );
part_type_blend(tPartType,1);
part_type_sprite(tPartType, particle_flare_spr, 0, 0, 0 );
part_type_size(tPartType,1,2,-0.0125 *ti,0 *ti);
part_type_scale(tPartType,1,0.5);
part_type_color3(tPartType,make_color_rgb( 255, 255, 50 ),make_color_rgb( 150, 50, 255 ), make_color_rgb( 100, 150, 200 ));
part_type_alpha3(tPartType,0, 1,0);
part_type_speed(tPartType,5 *ti,10 *ti,0 *ti,0 *ti);
part_type_direction(tPartType,0,359,2 *ti,0 *ti);
part_type_orientation(tPartType,0,0,0 *ti,0 *ti,1);
part_type_life(tPartType,60 *t,200 *t);


tPartName = "fissureSpin2"
if not ( ds_map_exists( global.particleMap, tPartName ) ) {
    pBurstCore2 = part_type_create();
    ds_map_add( global.particleMap, tPartName, pBurstCore2 );
}
tPartType = getParticle( tPartName );
part_type_blend(tPartType,1);
part_type_sprite(tPartType, particle_flare_spr, 0, 0, 0 );
part_type_size(tPartType,1,2,-0.025 *ti,0 *ti);
part_type_scale(tPartType,1,0.5);
part_type_color3(tPartType,make_color_rgb( 255, 255, 50 ),make_color_rgb( 150, 50, 255 ), make_color_rgb( 100, 150, 200 ));
part_type_alpha3(tPartType,0, 1,0);
part_type_speed(tPartType,10 *ti,20 *ti,0 *ti,0 *ti);
part_type_direction(tPartType,0,359,-4 *ti,0 *ti);
part_type_orientation(tPartType,0,0,0 *ti,0 *ti,1);
part_type_life(tPartType,30 *t,100 *t);


tPartName = "fissureBurst1"
if not ( ds_map_exists( global.particleMap, tPartName ) ) {
    pBurstCore2 = part_type_create();
    ds_map_add( global.particleMap, tPartName, pBurstCore2 );
}
tPartType = getParticle( tPartName );
part_type_blend(tPartType,1);
part_type_sprite(tPartType, particle_flare_spr, 0, 0, 0 );
part_type_size(tPartType,1,2,-0.045 *ti,0.2 *ti);
part_type_scale(tPartType,1,0.75);
part_type_color3(tPartType,make_color_rgb( 255, 255, 50 ),make_color_rgb( 100, 150, 200 ), make_color_rgb( 100, 150, 200 ));
part_type_alpha3(tPartType,0.3, 1,0);
part_type_speed(tPartType,2 *ti,10 *ti,-0.05 *ti,0 *ti);
part_type_direction(tPartType,0,359,1 *ti,5 *ti);
part_type_orientation(tPartType,0,0,0 *ti,0 *ti,1);
part_type_life(tPartType,50 *t,100 *t);

tPartName = "fissureBurst2"
if not ( ds_map_exists( global.particleMap, tPartName ) ) {
    pBurstCore2 = part_type_create();
    ds_map_add( global.particleMap, tPartName, pBurstCore2 );
}
tPartType = getParticle( tPartName );
part_type_blend(tPartType,1);
part_type_sprite(tPartType, particle_sphere_spr, 0, 0, 0 );
part_type_size(tPartType,1,2,-0.025 *ti,0.2 *ti);
part_type_scale(tPartType,1,0.75);
part_type_color3(tPartType,make_color_rgb( 255, 255, 50 ),make_color_rgb( 100, 150, 200 ), make_color_rgb( 150, 10, 255 ));
part_type_alpha3(tPartType,0.3, 1,0);
part_type_speed(tPartType,1 *ti,5 *ti,-0.05 *ti,0 *ti);
part_type_direction(tPartType,0,359,-1 *ti,5 *ti);
part_type_orientation(tPartType,0,0,0 *ti,0 *ti,1);
part_type_life(tPartType,50 *t,100 *t);

