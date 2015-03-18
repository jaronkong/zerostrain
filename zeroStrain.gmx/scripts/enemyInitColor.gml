///enemyInitColor( enemyID, enum WEAPON_TYPE );

var aID = argument0;
var aType = argument1;

with ( aID ) {
    image_speed = 0;
    
    if ( aType == WEAPON_TYPE.RED ) {
        color1 = make_color_rgb( 255, 50, 60 );
        color2 = make_color_rgb( 255, 100, 70 );
        part_form1 = "enemyBodyForm1";
        part_form2 = "enemyBodyForm2";
        part_destroy1 = "enemyBodyBurst1";
        part_destroy2 = "enemyBodyBurst2";
        part_lineBurst = "enemyLineBurst";
        
        image_index = 0;
        
        bodyType = WEAPON_TYPE.RED;
    }
    else if ( aType == WEAPON_TYPE.BLUE ) {
        color1 = make_color_rgb( 60, 50, 255 );
        color2 = make_color_rgb( 80, 100, 255 );
        part_form1 = "enemyBodyForm1b";
        part_form2 = "enemyBodyForm2b";
        part_destroy1 = "enemyBodyBurst1b";
        part_destroy2 = "enemyBodyBurst2b";
        part_lineBurst = "enemyLineBurstb";
        
        image_index = 1;
        
        bodyType = WEAPON_TYPE.BLUE;

    }
    else if ( aType == WEAPON_TYPE.GREEN ) {
        color1 = make_color_rgb( 60, 255, 50 );
        color2 = make_color_rgb( 80, 255, 100 );
        part_form1 = "enemyBodyForm1g";
        part_form2 = "enemyBodyForm2g";
        part_destroy1 = "enemyBodyBurst1g";
        part_destroy2 = "enemyBodyBurst2g";
        part_lineBurst = "enemyLineBurstg";
        
        image_index = 2;
        
        bodyType = WEAPON_TYPE.GREEN;
    }


}