///lerpDT( a, b, prop, dt )

if ( argument2 == 1 ) return argument1;

var scale = ( 1 / ( 1 - argument2 ) );
var prop = ( 1 / power( scale, argument3 ) );
return lerp( argument0, argument1, ( 1 - prop ) );