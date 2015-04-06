///geneGetEffect( effects, tag, [default = 1] )

var aEffects = argument[0];
var aTag = argument[1];
var aDefault = 1;
if ( argument_count >= 3 ) aDefault = argument[2];

if ( ds_map_exists( aEffects, aTag ) ) {
    return ds_map_find_value( aEffects, aTag );
} else show_debug_message( "Gene not found: " + aTag );

return aDefault;