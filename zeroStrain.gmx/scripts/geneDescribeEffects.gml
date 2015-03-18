///geneDescribeEffects( label, effects )
//Create a grid with textual data about the effects map

var aLabel = argument0;
var aEffects = argument1;

var tData = geneGetData( aLabel );
var tGene = tData.geneData;
var tGroup = tData.groupData;

enum GeneDescGroup {
    Title, Value,
    Items, ItemCount,
    Size
}
enum GeneDescGene {
    Title, Value,
    Size
}

var tResult = ds_grid_create( GeneDescGroup.Size, 0 );

for ( var i = 0; i < ds_grid_height( tGroup ); ++i ) {
    var tTitle = ds_grid_get( tGroup, GeneGroup.Title, i );
    var tValue = 0;
    var tValueIndex = ds_grid_get( tGroup, GeneGroup.Value, i );
    if ( tValueIndex >= 0 ) {
        var tValueTag = ds_grid_get( tGene, Gene.Tag, tValueIndex );
        tValue = ds_map_find_value( aEffects, tValueTag );
    }
    var tItems = false;
    var tItemCount = 0;
    var tList = ds_grid_get( tGroup, GeneGroup.Items, i );
    for ( var j = 0; j < ds_list_size( tList ); ++j ) {
        var tItemIndex = ds_list_find_value( tList, j );
        var tItemTag = ds_grid_get( tGene, Gene.Tag, tItemIndex );
        var tItemTitle = ds_grid_get( tGene, Gene.Title, tItemIndex );
        var tItemDef = ds_grid_get( tGene, Gene.Default, tItemIndex );
        var tItemHide = ds_grid_get( tGene, Gene.Hidden, tItemIndex );
        var tItemValue = ds_map_find_value( aEffects, tItemTag );
        var tItemValStr = ( string_format( ( tItemValue * 100 - 100 ), 4, 1 ) + "%" );
        if ( tItemValue < 1 ) tItemValStr = ( "-" + tItemValStr );
        else tItemValStr = ( "+" + tItemValStr );
        if ( ( tItemValue != tItemDef ) && !tItemHide ) {
            tItems[GeneDescGene.Title, tItemCount] = tItemTitle;
            tItems[GeneDescGene.Value, tItemCount] = tItemValStr;
            tItemCount += 1;
        }
    }
    if ( tItemCount > 0 ) {
        var tIndex = ds_grid_height( tResult );
        ds_grid_resize( tResult, GeneDescGroup.Size, ( tIndex + 1 ) );
        ds_grid_set( tResult, GeneDescGroup.Title, tIndex, tTitle );
        ds_grid_set( tResult, GeneDescGroup.Value, tIndex, tValue );
        ds_grid_set( tResult, GeneDescGroup.Items, tIndex, tItems );
        ds_grid_set( tResult, GeneDescGroup.ItemCount, tIndex, tItemCount );
    }
}

//Compute percentages
var tValueSum = ds_grid_get_sum( tResult,
    GeneDescGroup.Value, 0, GeneDescGroup.Value,
    ( ds_grid_height( tResult ) - 1 )
);
if ( tValueSum <= 0 ) tValueSum = 1;
ds_grid_multiply_region( tResult,
    GeneDescGroup.Value, 0, GeneDescGroup.Value,
    ( ds_grid_height( tResult ) - 1 ), ( 100 / tValueSum )
);

//Convert to numbers
for ( var i = 0; i < ds_grid_height( tResult ); ++i ) {
    var tValue = ds_grid_get( tResult, GeneDescGroup.Value, i );
    var tValueStr = "";
    if ( tValue > 0 ) tValueStr = ( string( tValue ) + "%" );
    ds_grid_set( tResult, GeneDescGroup.Value, i, tValueStr );
}

return tResult;
