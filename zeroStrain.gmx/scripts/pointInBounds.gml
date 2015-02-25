///pointInBounds( x, y )
//Checks if a point is in the bounds of the screen

var aX = argument0;
var aY = argument1;

with ( mainController ) {
    if ( aX < roomLeft ) return false;
    if ( aX > roomRight ) return false;
    if ( aY < roomTop ) return false;
    if ( aY > roomBottom ) return false;
}

return true;
