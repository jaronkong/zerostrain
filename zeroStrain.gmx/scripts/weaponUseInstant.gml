///weaponUseInstant( weaponInstance, playerObject );

var aWeapon = argument0;
var aPlayer = argument1;

with ( aPlayer ) {
    with ( aWeapon ) {
        owner = other.id;
        event_user( WEAPON_EV.EQUIPPED );
    }

}
