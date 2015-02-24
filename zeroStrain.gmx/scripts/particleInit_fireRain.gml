///particleInit_fireRain();

//Be sure to change cleanup code in destroy even when adding new particles!
if ( ds_map_exists( global.particleMap, "fireRainCore1" ) ) {
    exit;
}


pFireRainCore1 = part_type_create();
part_type_sprite(pFireRainCore1, particle_fire_spr, 1, 1, 0 );
part_type_size(pFireRainCore1,1,4,-0.01,0);
part_type_scale(pFireRainCore1,1,1);
part_type_color2(pFireRainCore1,make_color_rgb( 255, 200, 60 ),c_red);
part_type_alpha3(pFireRainCore1,0.8, 0.2, 0);
part_type_speed(pFireRainCore1,0.5,1,0,0);
part_type_direction(pFireRainCore1,0,359,0,0);
part_type_orientation(pFireRainCore1,0,359,1,0,0);
part_type_blend(pFireRainCore1,1);
part_type_life(pFireRainCore1,60,120);
ds_map_add( global.particleMap, "fireRainCore1", pFireRainCore1 );

pFireRainCoreBurst = part_type_create();
part_type_sprite(pFireRainCoreBurst, particle_explosion_spr, 0, 0, 0 );
part_type_size(pFireRainCoreBurst,8,12,-0.01,0);
part_type_scale(pFireRainCoreBurst,1,1);
part_type_color2(pFireRainCoreBurst,make_color_rgb( 255, 200, 60 ),c_red);
part_type_alpha3(pFireRainCoreBurst,1, 0.2, 0);
part_type_speed(pFireRainCoreBurst,0.5,1,0,0);
part_type_direction(pFireRainCoreBurst,0,359,0,0);
part_type_orientation(pFireRainCoreBurst,0,359,1,0,0);
part_type_blend(pFireRainCoreBurst,1);
part_type_life(pFireRainCoreBurst,60,120);
ds_map_add( global.particleMap, "fireRainCoreBurst", pFireRainCoreBurst );

pFireRainCore2 = part_type_create();
part_type_sprite(pFireRainCore2, particle_line_spr, 0, 0, 0 );
part_type_size(pFireRainCore2,0.5,0.8,-0.01,0.2);
part_type_scale(pFireRainCore2,1.2,1);
part_type_color2(pFireRainCore2,make_color_rgb( 255, 200, 60 ),c_red);
part_type_alpha2(pFireRainCore2,1,0);
part_type_speed(pFireRainCore2,10,40,-0.03,2);
part_type_direction(pFireRainCore2,0,359,0,30);
part_type_orientation(pFireRainCore2,0,0,0,0,1);
part_type_blend(pFireRainCore2,1);
part_type_life(pFireRainCore2,90,120);
ds_map_add( global.particleMap, "fireRainCore2", pFireRainCore2 );

pFireRainCore3 = part_type_create();
part_type_sprite(pFireRainCore3, particle_lightning_spr, 0, 0, 0 );
part_type_size(pFireRainCore3,2,3,0,0);
part_type_scale(pFireRainCore3,2,1);
part_type_color3(pFireRainCore3,c_red, c_orange, c_red);
part_type_alpha2(pFireRainCore3,0.6, 0);
part_type_speed(pFireRainCore3,0,0,0,0);
part_type_direction(pFireRainCore3,0,359,0,0);
part_type_orientation(pFireRainCore3,0,0,0,0,1);
part_type_blend(pFireRainCore3,true);
part_type_life(pFireRainCore3,120,240);
ds_map_add( global.particleMap, "fireRainCore3", pFireRainCore3 );

pFireRainSmoke = part_type_create();
part_type_sprite(pFireRainSmoke, particle_snow_spr, 0, 0, 0 );
part_type_size(pFireRainSmoke,0.5,6,0,0);
part_type_scale(pFireRainSmoke,1,1);
part_type_color1(pFireRainSmoke,c_black);
part_type_alpha2(pFireRainSmoke,0.4,0);
part_type_speed(pFireRainSmoke,0,2,0,0);
part_type_direction(pFireRainSmoke,0,359,0,0);
part_type_orientation(pFireRainSmoke,0,359,0.5,0,0);
part_type_blend(pFireRainSmoke,1);
part_type_life(pFireRainSmoke,5,180);
ds_map_add( global.particleMap, "fireRainSmoke", pFireRainSmoke );

pFireRainAirBurst = part_type_create();
part_type_sprite(pFireRainAirBurst, particle_fire_spr, 1, 1, 0 );
part_type_size(pFireRainAirBurst,1,2.2,-0.001,0);
part_type_scale(pFireRainAirBurst,1,1);
part_type_color2(pFireRainAirBurst,make_color_rgb( 255, 200, 60 ),c_red);
part_type_alpha2(pFireRainAirBurst,0.5,0);
part_type_speed(pFireRainAirBurst,5,15,-0.1,0);
part_type_direction(pFireRainAirBurst,0,359,-1,0);
part_type_orientation(pFireRainAirBurst,0,360,0.5,0,0);
part_type_blend(pFireRainAirBurst,1);
part_type_life(pFireRainAirBurst,60,120);
ds_map_add( global.particleMap, "fireRainAirBurst", pFireRainAirBurst );

pFireRainPetal1 = part_type_create();
part_type_sprite(pFireRainPetal1, particle_fire_spr, 1, 1, 0 );
part_type_size(pFireRainPetal1,1,3.2,-0.001,0);
part_type_scale(pFireRainPetal1,1,1);
part_type_color3(pFireRainPetal1,c_blue, make_color_rgb( 255, 200, 60 ),c_red);
part_type_alpha3(pFireRainPetal1,0, 0.3,0);
part_type_speed(pFireRainPetal1,20,35,-0.1,0);
part_type_direction(pFireRainPetal1,0,359,-0.5,0);
part_type_orientation(pFireRainPetal1,0,360,0.5,0,0);
part_type_blend(pFireRainPetal1,1);
part_type_life(pFireRainPetal1,45,90);
ds_map_add( global.particleMap, "fireRainPetal1", pFireRainPetal1 );

pFireRainPetal2 = part_type_create();
part_type_sprite(pFireRainPetal2, particle_fire_spr, 1, 1, 0 );
part_type_size(pFireRainPetal2,1,3.2,-0.001,0);
part_type_scale(pFireRainPetal2,1,1);
part_type_color3(pFireRainPetal2,c_blue, make_color_rgb( 255, 200, 60 ),c_red);
part_type_alpha3(pFireRainPetal2,0, 0.3,0);
part_type_speed(pFireRainPetal2,20,35,-0.1,0);
part_type_direction(pFireRainPetal2,0,359,-0.5,0);
part_type_orientation(pFireRainPetal2,0,360,0.5,0,0);
part_type_blend(pFireRainPetal2,1);
part_type_life(pFireRainPetal2,45,90);
ds_map_add( global.particleMap, "fireRainPetal2", pFireRainPetal2 );
/*
pFireRainAirBurst = part_type_create();
part_type_sprite(pFireRainAirBurst, particle_line_spr, 0, 0, 0 );
part_type_size(pFireRainAirBurst,3,6,-0.05,0);
part_type_scale(pFireRainAirBurst,3,0.5);
part_type_color2(pFireRainAirBurst,make_color_rgb( 255, 200, 60 ),c_red);
part_type_alpha2(pFireRainAirBurst,1,0);
part_type_speed(pFireRainAirBurst,30,30,-0.1,0);
part_type_direction(pFireRainAirBurst,0,359,0,0);
part_type_orientation(pFireRainAirBurst,0,0,0,0,1);
part_type_blend(pFireRainAirBurst,1);
part_type_life(pFireRainAirBurst,60,90);
ds_map_add( global.particleMap, "fireRainAirBurst", pFireRainAirBurst );
*/
/////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////
pDropFlare = part_type_create();
part_type_sprite(pDropFlare, particle_fire_spr, 1, 1, 0 );
part_type_size(pDropFlare,1,2,-0.01,0);
part_type_scale(pDropFlare,1,1);
part_type_color3(pDropFlare,c_red,make_color_rgb( 255, 200, 60 ), c_red);
part_type_alpha2(pDropFlare,0.5,0);
part_type_speed(pDropFlare,0,0,0,0);
part_type_direction(pDropFlare,0,359,0,0);
part_type_orientation(pDropFlare,0,0,0,0,1);
//part_type_orientation(pDropFlare,0,359,0.5,0,0);
part_type_blend(pDropFlare,1);
part_type_life(pDropFlare,30,60);
ds_map_add( global.particleMap, "dropFlare", pDropFlare );

pDropFlareShadow = part_type_create();
part_type_sprite(pDropFlareShadow, particle_smoke_spr, 0, 0, 0 );
part_type_size(pDropFlareShadow,2,3,-0.01,0);
part_type_scale(pDropFlareShadow,1,1);
part_type_color1(pDropFlareShadow,c_black);
part_type_alpha2(pDropFlareShadow,0.3,0);
part_type_speed(pDropFlareShadow,0,0,0,0);
part_type_direction(pDropFlareShadow,0,359,0,0);
part_type_orientation(pDropFlareShadow,0,359,0.5,0,0);
part_type_blend(pDropFlareShadow,0);
part_type_life(pDropFlareShadow,30,60);
ds_map_add( global.particleMap, "dropFlareShadow", pDropFlareShadow );