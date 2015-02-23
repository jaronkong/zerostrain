///weaponPlayEquipSound( weaponController ID );

var aWeaponCon = argument0;

with ( aWeaponCon ) {
    if ( weaponType == WEAPON_TYPE.GREEN ) {
        playSound( weapPickup_proj_sd, 1, false );
    }
    else if ( weaponType == WEAPON_TYPE.RED ) {
        playSound( weapPickup_explo_sd, 1, false );
    }
    else if ( weaponType == WEAPON_TYPE.BLUE ) {
        playSound( weapPickup_energy_sd, 1, false );
    }
    
}

