///geneGenerateRandom( label, length )

var tMax = ( ds_grid_height( geneGetData( argument0 ) ) - 1 );
var tResult = false;

for ( var i = ( argument1 - 1 ); i >= 0; --i ) {
    tResult[i] = irandom( tMax );
}

return tResult;
