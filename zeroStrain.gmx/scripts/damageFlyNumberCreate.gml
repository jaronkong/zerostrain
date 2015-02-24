///damageFlyNumberCreate( x, y, value, damageType, damageResolution );

with ( instance_create( argument0, argument1, damageFlyNumber ) ) {
    value = argument2;
    damageType = argument3;
    
    damageEffectiveness = argument4;
    
    event_user( 0 );
}
