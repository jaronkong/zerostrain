///spawnEnemy( x, y, direction, enemyType, enemyColor );

var tNewEnemy = instance_create( argument0, argument1, argument3 );

with ( tNewEnemy ) {
    bodyType = argument4;
    direction = argument2;
    image_angle = direction;
    event_user( ENEMY_EV.CREATE );
}

return tNewEnemy;

