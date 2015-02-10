///particleInit_bigBurst();

var tPartName = "";

tPartName = "burstCore1"
if not ( ds_map_exists( global.particleMap, tPartName ) ) {
    pBurstCore1 = part_type_create();
    ds_map_add( global.particleMap, tPartName, pBurstCore1 );
}
part_type_sprite(pBurstCore1, particle_flare_spr, 0, 0, 0 );
part_type_size(pBurstCore1,0.5,1,0,0);
part_type_scale(pBurstCore1,1,1);
part_type_color2(pBurstCore1,make_color_rgb( 255, 200, 0 ),c_purple);
part_type_alpha2(pBurstCore1,1,0);
part_type_speed(pBurstCore1,0.5,1,0,0);
part_type_direction(pBurstCore1,0,359,0,0);
part_type_orientation(pBurstCore1,0,359,0.5,0,0);
part_type_blend(pBurstCore1,1);
part_type_life(pBurstCore1,30,60);


tPartName = "burstCore2"
if not ( ds_map_exists( global.particleMap, tPartName ) ) {
    pBurstCore2 = part_type_create();
    ds_map_add( global.particleMap, tPartName, pBurstCore2 );
}
part_type_sprite(pBurstCore2, particle_sphere_spr, 0, 0, 0 );
part_type_size(pBurstCore2,1,2,-0.005,0);
part_type_scale(pBurstCore2,2,1);
part_type_color3(pBurstCore2,16711680,255,make_color_rgb( 255, 200, 50 ));
part_type_alpha3(pBurstCore2,0,0.4,0);
part_type_speed(pBurstCore2,2,15,0,1);
part_type_direction(pBurstCore2,0,359,0,0);
part_type_orientation(pBurstCore2,0,0,0,0,1);
part_type_blend(pBurstCore2,1);
part_type_life(pBurstCore2,30,60);

