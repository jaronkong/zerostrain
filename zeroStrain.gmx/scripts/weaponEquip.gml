///weaponEquip( weaponObject, playerObject );

var aWeapon = argument0;
var aPlayer = argument1;

with ( aPlayer ) {
    equippedWeapon = instance_create( 0, 0, aWeapon );
    with ( equippedWeapon ) {
        owner = other.id;
        event_user( WEAPON_EV.EQUIPPED );
    }

}

