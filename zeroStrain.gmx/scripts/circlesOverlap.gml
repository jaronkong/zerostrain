///circlesOverlap( x1, y1, r1, x2, y2, r2 );

var aX1 = argument0;
var aY1 = argument1;
var aR1 = argument2;
var aX2 = argument3;
var aY2 = argument4;
var aR2 = argument5;

if ( point_distance( aX1, aY1, aX2, aY2 ) < aR1 + aR2 ) {
    return true;
}

return false;