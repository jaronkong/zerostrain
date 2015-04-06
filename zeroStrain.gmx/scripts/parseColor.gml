///parseColor( string )

var aInput = argument0;

var tResult = c_white;

tResult = parseHex( aInput );
tResult = make_color_rgb(
    color_get_blue( tResult ),
    color_get_green( tResult ),
    color_get_red( tResult )
);

return tResult;