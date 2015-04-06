///particleDef_genericDamage();

var t = global.timeTickFactor;
var ti = 1/t;
var tPartName = "";
var tPartType = 0;

tPartName = "superEffectiveHit"
if not ( ds_map_exists( global.particleMap, tPartName ) ) {
    tPartType = part_type_create();
    ds_map_add( global.particleMap, tPartName, tPartType );
}
tPartType = getParticle( tPartName );
part_type_blend(tPartType,1);
part_type_sprite(tPartType, particle_sphere_spr, 0, 0, 0 );
part_type_size(tPartType, 2,2,-0.01 *t,0.05 *t);
part_type_scale(tPartType,4,0.25);
part_type_color3(tPartType,make_color_rgb( 255, 255, 255 ),make_color_rgb( 100, 100, 20 ), make_color_rgb( 80, 30, 50 ));
part_type_alpha2(tPartType,1, 0);
part_type_speed(tPartType,0 *t,0 *t,0 *t,0 *t);
part_type_direction(tPartType,0,359,0 *t,1 *t);
part_type_orientation(tPartType,0,360,0 *t,0 *t,0);
part_type_life(tPartType, 15 *ti,30 *ti);