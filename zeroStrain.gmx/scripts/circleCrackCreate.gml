///circleCrackCreate( x, y, size, color, duration(seconds) );

with ( instance_create( argument0, argument1, circleCrack ) ) {
    size = argument2;
    color = argument3;
    fadeRate = 1/(room_speed*argument4);
    image_angle = random( 360 );
}