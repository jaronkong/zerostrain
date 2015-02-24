///weaponCreateProjectile( x, y, projectile, ownerController );

var aX = argument0;
var aY = argument1;
var aProj = argument2;
var aCon = argument3;

var tNewProj = noone;

if ( instance_exists( aCon ) ) {
    tNewProj = instance_create( aX, aY, aProj );
    with ( tNewProj ) {
        lifespan = aCon.projectileLife;
        hitForce = aCon.hitForce;
        ownerController = aCon.id;
        system1 = aCon.system1;
        emitter1 = part_emitter_create( system1 );
    }
}

return tNewProj;