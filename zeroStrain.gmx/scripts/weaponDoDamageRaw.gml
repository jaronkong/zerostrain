///weaponDoDamageRaw( targetID, damageAmount );

var aTargetID = argument0;

with ( aTargetID ) {
    selfHealth -= argument1;
    damageFlyNumberCreate( x, y, argument1, -1, 0 );
}


