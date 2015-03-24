///geneGenerateGroupedRandom( label, length )
//Generate random allele groups

var tGroupData = geneGetData( argument0 ).groupData;
var tGroupMax = ( ds_grid_height( tGroupData ) - 1 );
var tResult = false;
var tResultLength = 0;

while ( tResultLength < argument1 ) {
    var tGroup = irandom( tGroupMax );
    var tGroupItems = ds_grid_get( tGroupData, GeneGroup.Items, tGroup );
    var tGroupMax = ( ds_list_size( tGroupItems ) - 1 );
    repeat ( min( irandom_range( 32, 48 ), ( argument1 - tResultLength ) ) ) {
        tResult[tResultLength++] = ds_list_find_value( tGroupItems, irandom( tGroupMax ) );
    }
}

return tResult;
