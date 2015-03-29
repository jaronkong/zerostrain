///drawTextSize_backed( x, y, string, font, size, angle, xScale, yScale, width, sep )
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


draw_set_font( argument[3] );
draw_set_valign( fa_center );
draw_set_halign( fa_left );

var tBackingImage = fontBacking_spr;
var tBackingBaseScale = 1.6;
var tBackingSize = sprite_get_height( tBackingImage );

var scaleX = ( size / font_get_size( argument[3] ) );
var scaleY = scaleX;
if ( multiLine ) width /= scaleX;
scaleX *= xscale;
scaleY *= yscale;

var tBackingScale = size / tBackingSize * tBackingBaseScale;
var tBackingWidthFactor = 0.9;

if ( multiLine ) {
    draw_text_ext_transformed( argument[0], argument[1], argument[2],
        sep, width, scaleX, scaleY, angle );
} else if ( !multiLine ) {
    draw_text_transformed( argument[0], argument[1], argument[2], scaleX, scaleY, angle );
    
    for ( var i = 0; i < string_length( argument[ 2 ] ); ++i ) {
        var tOffset = tBackingSize/2;
        draw_sprite_ext( tBackingImage, 0, argument[0] + i*size*0.7 + tOffset, argument[1], tBackingScale * tBackingWidthFactor, tBackingScale, 0, c_white, 1 );
    }
    
}