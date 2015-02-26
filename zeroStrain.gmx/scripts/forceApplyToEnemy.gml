///forceApplyToEnemy( enemyID, dir, force );

var aEnemy = argument0;
var aDirection = argument1;
var aForce = argument2;

with ( aEnemy ) {
    motion_add( aDirection, aForce / mass );
}
