///weaponDoDamage( target ID, weaponController ID );

var aTargetID = argument0;
var aWeaponConID = argument1;

var tDamage = 0;


with ( aWeaponConID ) {
    tDamage = damage;
}

with ( aTargetID ) {
    var tEffective = typeGetResolution( aWeaponConID.weaponType, bodyType );
    
    if ( tEffective > 0 ) {
        tDamage *= 2;
    }
    else if ( tEffective < 0 ) {
        tDamage *= 0.5;
    }

    if ( tEffective > 0 ) {
        part_particles_create( global.enemySpawnSystem, x, y, getParticle("superEffectiveHit"), 1 );
    }
    
    selfHealth -= tDamage;
    damageFlyNumberCreate( x, y, tDamage, aWeaponConID.weaponType, tEffective );
    
    currentInfoAlpha = 1;
}