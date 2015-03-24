///geneGenerateGroupedQuality( label, length, quality )
//Generate random allele groups of a rough quality

var tGroupData = geneGetData( argument0 ).groupData;
var tGroupMax = ( ds_grid_height( tGroupData ) - 1 );
var tAlleleData = geneGetData( argument0 ).alleleData;
var tResult = false;
var tResultLength = 0;

while ( tResultLength < argument1 ) {
    var tGroup = irandom( tGroupMax );
    var tGroupItems = ds_grid_get( tGroupData, GeneGroup.Items, tGroup );
    var tGroupArray = false;
    var tGroupChance = false;
    var tGroupChanceTotal = 0;
    for ( var i = 0; i < ds_list_size( tGroupItems ); ++i ) {
        tGroupArray[i] = ds_list_find_value( tGroupItems, i );
        var tQuality = ds_grid_get( tAlleleData, GeneAllele.Quality, tGroupArray[i] );
        tGroupChance[i] = ( 1 / power( ( abs( argument2 - tQuality ) + 1 ), 5 ) );
        tGroupChanceTotal += tGroupChance[i];
    }
    repeat ( min( irandom_range( 32, 48 ), ( argument1 - tResultLength ) ) ) {
        tResult[tResultLength++] = chooseWeight( tGroupArray, tGroupChance, tGroupChanceTotal );
    }
}

return tResult;
