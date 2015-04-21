///damagePlayer( playerID, amount );

with ( argument0 ) {
    if ( selfHealth > healthWarningAmount ) {
        if ( selfHealth - argument1 <= healthWarningAmount ) {
            splashBannerCreate( "Health Low", c_red );        
        }
    }
    selfHealth -= argument1;
}
