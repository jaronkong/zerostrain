///weaponCheckLineColl( weaponProjectile ID );
//Project a line forward and see if collide

var aProjectile = argument0;

var STEP_RES = 2;

var tSpeed, tDir, tX, tY, tWeaponCon;

with ( aProjectile ) {
    tX = x;
    tY = y;
    tSpeed = speed;
    tDir = direction;
    tWeaponCon = ownerController;
}

//Check for collision
for ( var i = 0; i < tSpeed; i += STEP_RES ) {
    var tCheckX = tX + lengthdir_x( i, tDir );
    var tCheckY = tY + lengthdir_y( i, tDir );
    
    var tInstance = instance_position( tCheckX, tCheckY, enemyPar )
    if ( instance_exists( tInstance ) ) {
        weaponDoDamage( tInstance, tWeaponCon );
        return true;
    }
}

return false;


