///geneGenerateRandom( label, length )
//Generate a purely random genome

var tMax = ( ds_grid_height( geneGetData( argument0 ).alleleData ) - 1 );
var tResult = false;

for ( var i = ( argument1 - 1 ); i >= 0; --i ) {
    tResult[i] = irandom( tMax );
}

return tResult;