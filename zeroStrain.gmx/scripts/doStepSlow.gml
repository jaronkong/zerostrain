///doStepSlow( newTickSpeed, duration );

var aNewSpeed = argument0;
var aDuration = argument1;

if ( instance_exists( stepSlow ) ) {
    with ( stepSlow ) {
        if ( stepSpeed > aNewSpeed ) {
            stepSpeed = aNewSpeed;
            alarm[ 0 ] = aDuration;
        }
    }
}
else {
    with ( instance_create( 0, 0, stepSlow ) ) {
        if ( stepSpeed > aNewSpeed ) {
            stepSpeed = aNewSpeed;
            alarm[ 0 ] = aDuration;
        }
    }
}
