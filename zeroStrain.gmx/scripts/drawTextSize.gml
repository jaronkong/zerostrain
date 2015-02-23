///drawTextSize( x, y, string, font, size, angle, xScale, yScale, width, sep )
//Draw text at a specified size

var multiLine = false;
var sep = -1;
var width = 0;
var xscale = 1;
var yscale = 1;
var angle = 0;
var size = font_get_size( argument[3] );

switch ( argument_count ) {
case ( 10 ):
    sep = argument[9];
case ( 9 ):
    multiLine = true;
    width = argument[8];
case ( 8 ):
    yscale = argument[7];
case ( 7 ):
    xscale = argument[6];
case ( 6 ):
    angle = argument[5];
case ( 5 ):
    size = argument[4];
}

/*
if ( argument_count >= 5 ) {
    size = argument[4];
    if ( argument_count >= 6 ) {
        angle = argument[5];
        if ( argument_count >= 8 ) {
            xscale = argument[6];
            yscale = argument[7];
            if ( argument_count >= 9 ) {
                multiLine = true;
                width = argument[8];
                if ( argument_count >= 10 ) {
                    sep = argument[9];
                }
            }
        }
    }
}
*/

draw_set_font( argument[3] );

var scaleX = ( size / font_get_size( argument[3] ) );
var scaleY = scaleX;
if ( multiLine ) width /= scaleX;
scaleX *= xscale;
scaleY *= yscale;

if ( multiLine ) {
    draw_text_ext_transformed( argument[0], argument[1], argument[2],
        sep, width, scaleX, scaleY, angle );
} else if ( !multiLine ) {
    draw_text_transformed( argument[0], argument[1], argument[2], scaleX, scaleY, angle );
}
