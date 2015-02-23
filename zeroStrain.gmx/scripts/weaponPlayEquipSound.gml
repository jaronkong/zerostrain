///weaponPlayEquipSound( weaponController ID );

var aWeaponCon = argument0;

with ( aWeaponCon ) {
    if ( weaponType == WEAPON_TYPE.PROJECTILE ) {
        playSound( weapPickup_proj_sd, 1, false );
    }
    else if ( weaponType == WEAPON_TYPE.EXPLOSIVE ) {
        playSound( weapPickup_explo_sd, 1, false );
    }
    else if ( weaponType == WEAPON_TYPE.ENERGY ) {
        playSound( weapPickup_energy_sd, 1, false );
    }
    
}

