///weaponEquip( weaponObject, playerObject );

var aWeapon = argument0;
var aPlayer = argument1;

var tNewWeapon = instance_create( 0, 0, aWeapon );

if ( tNewWeapon.isInstant ) {
    weaponUseInstant( tNewWeapon, aPlayer );
}
else {
    with ( aPlayer ) {
        equippedWeapon = tNewWeapon;
        with ( equippedWeapon ) {
            owner = other.id;
            event_user( WEAPON_EV.EQUIPPED );
        }
    
    }
}
