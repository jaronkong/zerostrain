///doTimeSlow( newTickSpeed, duration );

var aNewSpeed = argument0;
var aDuration = argument1;

if ( instance_exists( timeSlow ) ) {
    with ( timeSlow ) {
        if ( slowAmount > aNewSpeed ) {
            slowAmount = aNewSpeed;
            alarm[ 0 ] = aDuration;
        }
    }
}
else {
    with ( instance_create( 0, 0, timeSlow ) ) {
        if ( slowAmount > aNewSpeed ) {
            slowAmount = aNewSpeed;
            alarm[ 0 ] = aDuration;
        }
    }
}
