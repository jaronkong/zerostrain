///typeGetResolution( weaponType, enemyType );
//return 0 for neutral, 1 for super effective, -1 for not effective

var aWeapType = argument0;
var aEnemyType = argument1;

if ( aWeapType == WEAPON_TYPE.GREEN ) {
    switch ( aEnemyType ) {
        case ( WEAPON_TYPE.GREEN ):
            return 0;
            break;
        case ( WEAPON_TYPE.BLUE ):
            return 1;
            break;
        case ( WEAPON_TYPE.RED ):
            return -1;
            break;
        default:
            return 0;
    }
}
else if ( aWeapType == WEAPON_TYPE.BLUE ) {
    switch ( aEnemyType ) {
        case ( WEAPON_TYPE.GREEN ):
            return -1;
            break;
        case ( WEAPON_TYPE.BLUE ):
            return 0;
            break;
        case ( WEAPON_TYPE.RED ):
            return 1;
            break;
        default:
            return 0;
    }
}
else if ( aWeapType == WEAPON_TYPE.RED ) {
    switch ( aEnemyType ) {
        case ( WEAPON_TYPE.GREEN ):
            return 1;
            break;
        case ( WEAPON_TYPE.BLUE ):
            return -1;
            break;
        case ( WEAPON_TYPE.RED ):
            return 0;
            break;
        default:
            return 0;
    }
}

return 0;

