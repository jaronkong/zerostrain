///particleInit_bigBurst();

//Be sure to change cleanup code in destroy even when adding new particles!
if ( ds_map_exists( global.particleMap, "burstCore1" ) ) {
    exit;
}

pBurstCore1 = part_type_create();
part_type_sprite(pBurstCore1, particle_explosion_spr, 0, 0, 0 );
part_type_size(pBurstCore1,2,8,0,0);
part_type_scale(pBurstCore1,1,1);
part_type_color2(pBurstCore1,make_color_rgb( 255, 200, 0 ),c_purple);
part_type_alpha2(pBurstCore1,1,0);
part_type_speed(pBurstCore1,0.5,1,0,0);
part_type_direction(pBurstCore1,0,359,0,0);
part_type_orientation(pBurstCore1,0,359,0.5,0,0);
part_type_blend(pBurstCore1,1);
part_type_life(pBurstCore1,60,140);
ds_map_add( global.particleMap, "burstCore1", pBurstCore1 );

pBurstCore2 = part_type_create();
part_type_sprite(pBurstCore2, particle_sphere_spr, 0, 0, 0 );
part_type_size(pBurstCore2,1,2,-0.005,0);
part_type_scale(pBurstCore2,2,1);
part_type_color3(pBurstCore2,16711680,255,make_color_rgb( 255, 200, 50 ));
part_type_alpha3(pBurstCore2,0,0.4,0);
part_type_speed(pBurstCore2,2,15,0,1);
part_type_direction(pBurstCore2,0,359,0,0);
part_type_orientation(pBurstCore2,0,0,0,0,1);
part_type_blend(pBurstCore2,1);
part_type_life(pBurstCore2,50,100);
ds_map_add( global.particleMap, "burstCore2", pBurstCore2 );

pBurstCore3 = part_type_create();
part_type_sprite(pBurstCore3, particle_sphere_spr, 0, 0, 0 );
part_type_size(pBurstCore3,0.20,0.80,-0.005,0);
part_type_scale(pBurstCore3,3,1);
part_type_color3(pBurstCore3,16777215,make_color_rgb( 255, 200, 100 ),255);///65535
part_type_alpha2(pBurstCore3,1,0);
part_type_speed(pBurstCore3,5,20,0,0);
part_type_direction(pBurstCore3,0,359,0,0);
part_type_orientation(pBurstCore3,0,0,0,0,1);
part_type_blend(pBurstCore3,1);
part_type_life(pBurstCore3,40,100);
ds_map_add( global.particleMap, "burstCore3", pBurstCore3 );

pBurstSmoke1 = part_type_create();
part_type_sprite(pBurstSmoke1, particle_snow_spr, 0, 0, 0 );
part_type_size(pBurstSmoke1,4,8,0,0);
part_type_scale(pBurstSmoke1,1,1);
part_type_color1(pBurstSmoke1,c_black);
part_type_alpha2(pBurstSmoke1,0.6,0);
part_type_speed(pBurstSmoke1,0,1,0,0);
part_type_direction(pBurstSmoke1,0,359,0,0);
part_type_orientation(pBurstSmoke1,0,359,-0.5,0,0);
part_type_blend(pBurstSmoke1,false);
part_type_life(pBurstSmoke1,30,100);
ds_map_add( global.particleMap, "burstSmoke1", pBurstSmoke1 );

//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////

pSplashBurst1 = part_type_create();
part_type_sprite(pSplashBurst1, particle_flare_spr, 0, 0, 0 );
part_type_size(pSplashBurst1,0.5,2,-0.005,0);
part_type_scale(pSplashBurst1,2,1);
part_type_color2(pSplashBurst1,c_purple,make_color_rgb( 255, 255, 50 ));
part_type_alpha3(pSplashBurst1,0, 0.7, 0);
part_type_speed(pSplashBurst1,1,40,-0.5,1);
part_type_direction(pSplashBurst1,-20,20,0,0);
part_type_orientation(pSplashBurst1,0,0,0,0,1);
part_type_blend(pSplashBurst1,1);
part_type_life(pSplashBurst1,30,60);
ds_map_add( global.particleMap, "splashBurst1", pSplashBurst1 );

pSplashBurst2 = part_type_create();
part_type_sprite(pSplashBurst2, particle_flare_spr, 0, 0, 0 );
part_type_size(pSplashBurst2,0.5,1,-0.004,0);
part_type_scale(pSplashBurst2,2,1);
part_type_color2(pSplashBurst2,c_purple,make_color_rgb( 255, 255, 50 ));
part_type_alpha3(pSplashBurst2,0, 0.8, 0);
part_type_speed(pSplashBurst2,1,40,-0.5,1);
part_type_direction(pSplashBurst2,-60,60,0,20);
part_type_orientation(pSplashBurst2,0,0,0,0,1);
part_type_blend(pSplashBurst2,1);
part_type_life(pSplashBurst2,30,60);
ds_map_add( global.particleMap, "splashBurst2", pSplashBurst2 );

pSplashSpin1 = part_type_create();
part_type_sprite(pSplashSpin1, particle_sphere_spr, 0, 0, 0 );
part_type_size(pSplashSpin1,0.5,1,0.002,0);
part_type_scale(pSplashSpin1,2.5,0.5);
part_type_color3(pSplashSpin1,c_blue,make_color_rgb( 255, 200, 100 ), c_purple);
part_type_alpha3(pSplashSpin1,0.25, 0.5, 0);
part_type_speed(pSplashSpin1,1,20,0.05,1);
part_type_direction(pSplashSpin1,0,359,2,5);
part_type_orientation(pSplashSpin1,0,0,0,0,1);
part_type_blend(pSplashSpin1,1);
part_type_life(pSplashSpin1,15,50);
ds_map_add( global.particleMap, "splashSpin1", pSplashSpin1 );

pSplashSpin2 = part_type_create();
part_type_sprite(pSplashSpin2, particle_sphere_spr, 0, 0, 0 );
part_type_size(pSplashSpin2,0.5,1,0.002,0);
part_type_scale(pSplashSpin2,2.5,0.5);
part_type_color3(pSplashSpin2,c_blue,make_color_rgb( 255, 255, 100 ), c_purple);
part_type_alpha3(pSplashSpin2,0.25, 0.5, 0);
part_type_speed(pSplashSpin2,1,20,0.05,1);
part_type_direction(pSplashSpin2,0,359,-2,5);
part_type_orientation(pSplashSpin2,0,0,0,0,1);
part_type_blend(pSplashSpin2,1);
part_type_life(pSplashSpin2,15,50);
ds_map_add( global.particleMap, "splashSpin2", pSplashSpin2 );