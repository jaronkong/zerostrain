///particleDef_ambBackground();

var t = global.timeTickFactor;
var ti = 1/t;
var tPartName = "";
var tPartType = 0;

tPartName = "ambBackground"
if not ( ds_map_exists( global.particleMap, tPartName ) ) {
    tPartType = part_type_create();
    ds_map_add( global.particleMap, tPartName, tPartType );
}
tPartType = getParticle( tPartName );
part_type_blend(tPartType,1);
part_type_sprite(tPartType, particle_sphere_spr, 0, 0, 0 );
part_type_size(tPartType,0.2,0.3,-0.001 *t,0.05 *t);
part_type_scale(tPartType,1,1);
part_type_color3(tPartType,make_color_rgb( 255, 50, 50 ),make_color_rgb( 255, 30, 255 ), make_color_rgb( 80, 30, 255 ));
part_type_alpha3(tPartType,0, 0.25,0);
part_type_speed(tPartType,1 *t,2 *t,0 *t,0 *t);
part_type_direction(tPartType,0,359,0 *t,1 *t);
part_type_orientation(tPartType,0,360,0 *t,0 *t,0);
part_type_life(tPartType,room_speed*2 *ti,room_speed*4 *ti);

