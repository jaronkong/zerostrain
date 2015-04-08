///geneDrawIcon( x, y, s, r, quality )

var aX = argument0;
var aY = argument1;
var aS = argument2;
var aR = argument3;
var aQuality = argument4;

var tGlowColor = merge_color( c_gray, c_yellow, aQuality );
repeat ( round( aQuality * 2.75 ) ) {
    draw_sprite_ext( genePickupGlow_spr, 0, aX, aY, aS, aS, aR, tGlowColor, 1 );
}

var tColor = merge_color( c_olive, c_white, aQuality );
draw_sprite_ext( genePickup_spr, 0, aX, aY, aS, aS, aR, tColor, 1 );