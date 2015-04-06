///dispersion_addToQueue( id );

if ( instance_exists( dispersionController ) ) {
    ds_queue_enqueue( dispersionController.drawQueue, argument0 );
}