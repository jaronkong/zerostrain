//weaponDoDamage( target ID, weaponController ID );

var aTargetID = argument0;
var aWeaponConID = argument1;

var tDamage = 0;


with ( aWeaponConID ) {
    tDamage = damage;
}

with ( aTargetID ) {
    selfHealth -= tDamage;
}


