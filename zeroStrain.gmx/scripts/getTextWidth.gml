///getTextWidth( string, font, size )

var size = font_get_size( argument[1] );
if ( argument_count >= 3 ) {
    size = argument[2];
}

draw_set_font( argument[1] );

return ( string_width( argument[0] ) * ( size / font_get_size( argument[1] ) ) );