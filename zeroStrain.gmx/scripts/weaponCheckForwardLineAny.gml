///weaponCheckForwardLineColl( weaponProjectile ID, hitObjectType ID );
//Project a line forward and see if collide
//Returns the id of the hit target if sucessful

var aProjectile = argument0;
var aHitObj = argument1;

var STEP_RES = 2;

var tSpeed = 0;
var tDir = 0;
var tX = 0;
var tY = 0;

if ( instance_exists( aProjectile ) ) {
    with ( aProjectile ) {
        tX = x;
        tY = y;
        tSpeed = speed;
        tDir = direction;
    }
}

//Check for collision
for ( var i = 0; i < tSpeed; i += STEP_RES ) {
    var tCheckX = tX + lengthdir_x( i, tDir );
    var tCheckY = tY + lengthdir_y( i, tDir );
    
    var tInstance = instance_position( tCheckX, tCheckY, aHitObj )
    if ( instance_exists( tInstance ) ) {
        return tInstance;
    }
}

return noone;