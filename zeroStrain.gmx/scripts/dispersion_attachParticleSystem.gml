///dispersion_attachParticleSystem( system );

if ( !instance_exists( dispersionController ) ) {
    exit;
}

part_system_automatic_draw( argument0, false );
with ( instance_create( 0, 0, dispersionParticleDrawer ) ) {
    targetSystem = argument0;
}