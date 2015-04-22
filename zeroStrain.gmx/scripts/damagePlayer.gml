///damagePlayer( playerID, amount );

with ( argument0 ) {
    if ( selfHealth > healthWarningAmount ) {
        if ( selfHealth - argument1 <= healthWarningAmount ) {
            splashBannerCreate( "Health Low", c_red );        
        }
    }
    selfHealth -= argument1;
}

with ( postShader ) {
    var_thresh_block = 0.2;
    var_thresh_line = 0.7;
}
