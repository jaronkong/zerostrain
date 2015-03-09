///clampRange( val, oldMin, oldMax, curve, newMin, newMax )
//Converts a value in a range to a new range
//Values outside range are clamped to it

var curve = 1;
var newMin = 0;
var newMax = 1;
if ( argument_count >= 4 ) {
    curve = argument[3];
    if ( argument_count >= 6 ) {
        newMin = argument[4];
        newMax = argument[5];
    }
}

var range = ( ( argument[0] - argument[1] ) / ( argument[2] - argument[1] ) );
var curved = power( clamp( range, 0, 1 ), curve );
var converted = ( ( curved * ( newMax - newMin ) ) + newMin );
return clamp( converted, min( newMin, newMax ), max( newMin, newMax ) );