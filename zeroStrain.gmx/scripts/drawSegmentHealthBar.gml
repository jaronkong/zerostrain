///Draw segmented health bar

//drawSegmentHealthBar( x1, y1, x2, y2, currentHealth, damageHealth, 
        //maxHealth, barColor, damageColor, backColor, showBack, drawSegments, alpha )

var x1, y1, x2, y2;

x1 = argument0;
y1 = argument1;
x2 = argument2;
y2 = argument3;

var totalDist = x2 - x1; //Total horizontal pixel dist of bar
var scaling = totalDist / argument6;
var currentHealth = floor( argument4 * scaling );
var displayDamageHealth = floor( argument5 * scaling);
var maxHealth = floor( argument6 * scaling );
var alphaFactor = argument12;

var healthIncrement = 250 * scaling; //Each segment is 250 health
var segmentSpacing = 2//max( 2 * scaling, 1 ); //Spacing between bars
var borderSpace = 2;

//dont draw segments unless needed

if ( !argument11 ) {
    //healthIncrement = 30;
    //segmentSpacing = 0;
}



var segmentSize = floor( healthIncrement + segmentSpacing );
var numFullSegments = currentHealth div segmentSize;
var leftoverDist = (currentHealth mod segmentSize);



///Backing
if ( argument10 ) {
    draw_set_color( argument9 );
    draw_set_alpha( 0.5 * alphaFactor );
    
    draw_rectangle( x1 - borderSpace, y1 - borderSpace, x2 + borderSpace, y2 + borderSpace, false );
    
}

if ( currentHealth > 0 ) {

    ///Damage coloring
    draw_set_color( argument8 );
    draw_set_alpha( 0.75 * alphaFactor );
    var farEdge = x1 + ( numFullSegments * segmentSize ) + leftoverDist;
    draw_rectangle( farEdge, y1, farEdge + ( displayDamageHealth - currentHealth ), y2, false );
    
    
    ///Current health coloring
    draw_set_color( argument7 );
    draw_set_alpha( 0.75 * alphaFactor );
    for ( var i = 1; i <= numFullSegments; i ++ ) {
        
        var leftX = x1 + ((i - 1) * segmentSize);
        var rightX = x1 + (i * segmentSize);
        
        draw_rectangle( leftX, y1, rightX - segmentSpacing, y2, false );
    
    }
    
    //Draw the last remaining partial segment
    var leftX = x1 + ( numFullSegments * segmentSize );
    draw_rectangle( leftX, y1, leftX + leftoverDist, y2, false );

}
