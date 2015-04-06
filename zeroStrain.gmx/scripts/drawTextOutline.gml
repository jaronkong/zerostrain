///drawTextOutline( x, y, str, font, size, outlineWidth, outlineAlpha, outlineCol, xScale, yScale );
//Draw text at a specified size, with an outline

var color = draw_get_color( );
var alpha = draw_get_alpha( );

var oWidth = 1;
var oAlpha = 0.25;
var oColor = c_black;
var scaleX = 1;
var scaleY = 1;

switch ( argument_count ) {
case ( 10 ):
    scaleY = argument[9];
case ( 9 ):
    scaleX = argument[8];
case ( 8 ):
    oColor = argument[7];
case ( 7 ):
    oAlpha = argument[6];
case ( 6 ):
    oWidth = argument[5];
}

/*
if ( argument_count >= 6 ) {
    oWidth = argument[5];
    if ( argument_count >= 7 ) {
        oAlpha = argument[6];
        if ( argument_count >= 8 ) {
            oColor = argument[7];
            if ( argument_count >= 10 ) {
                scaleX = argument[8];
                scaleY = argument[9];
            }
        }
    }
}
*/

//Draw top bottom left and right outline
draw_set_color( oColor );
draw_set_alpha( oAlpha * alpha );
drawTextSize( argument[0], argument[1]-oWidth,
    argument[2], argument[3],
    argument[4], 0, scaleX, scaleY
);

drawTextSize( argument[0], argument[1]+oWidth,
    argument[2], argument[3],
    argument[4], 0, scaleX, scaleY
);
drawTextSize( argument[0]-oWidth, argument[1],
    argument[2], argument[3],
    argument[4], 0, scaleX, scaleY
);
drawTextSize( argument[0]+oWidth, argument[1],
    argument[2], argument[3],
    argument[4], 0, scaleX, scaleY
);

//Draw the actual text block
draw_set_color( color );
draw_set_alpha( alpha );
drawTextSize( argument[0], argument[1],
    argument[2], argument[3],
    argument[4], 0, scaleX, scaleY
);