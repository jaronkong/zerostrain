///weaponCheckForwardLineColl( weaponProjectile ID );
//Project a line forward and see if collide
//Returns the id of the hit target if sucessful

var aProjectile = argument0;

var STEP_RES = 2;

var tSpeed = 0;
var tDir = 0;
var tX = 0;
var tY = 0;
var tWeaponCon = noone;

if ( instance_exists( aProjectile ) ) {
    with ( aProjectile ) {
        tX = x;
        tY = y;
        tSpeed = speed;
        tDir = direction;
        tWeaponCon = ownerController;
    }
}

//Check for collision
var tInstance = collision_line( tX, tY,
    tX + lengthdir_x( tSpeed, tDir ),
    tY + lengthdir_y( tSpeed, tDir ),
    enemyPar, true, true
);
if ( instance_exists( tInstance ) ) {
    weaponDoDamage( tInstance, tWeaponCon );
    
    var tEffective = typeGetResolution( tWeaponCon.weaponType, tInstance.bodyType );
    if ( tEffective > 0 ) {
    //    part_particles_create( global.enemySpawnSystem, tX, tY, getParticle("superEffectiveHit"), 1 );
    }
    return tInstance;
}

/*
for ( var i = 0; i < tSpeed; i += STEP_RES ) {
    var tCheckX = tX + lengthdir_x( i, tDir );
    var tCheckY = tY + lengthdir_y( i, tDir );
    
    var tInstance = instance_position( tCheckX, tCheckY, enemyPar )
    if ( instance_exists( tInstance ) ) {
        weaponDoDamage( tInstance, tWeaponCon );
        return tInstance;
    }
}
*/

return noone;
