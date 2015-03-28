///geneDescribeEffects( label, effects, compare = -1 )
//Create a grid with textual data about the effects map

var aLabel = argument[0];
var aEffects = argument[1];
var aCompare = -1;

if ( argument_count > 2 ) {
    aCompare = argument[2];
}

var tDoCompare = ds_exists( aCompare, ds_type_map );
var tCmpGrpVal = false;
var tCmpGrpValSum = 0;

var tData = geneGetData( aLabel );
var tGene = tData.geneData;
var tGroup = tData.groupData;

enum GeneDescGroup {
    Title, Value, Change,
    Items, ItemCount,
    Size
}
enum GeneDescGene {
    Title, Value, Change,
    Size
}

var tResult = ds_grid_create( GeneDescGroup.Size, 0 );

for ( var i = 0; i < ds_grid_height( tGroup ); ++i ) {
    var tTitle = ds_grid_get( tGroup, GeneGroup.Title, i );
    var tValueDef = 0;
    var tValue = tValueDef;
    var tCmpVal = tValueDef;
    var tValueIndex = ds_grid_get( tGroup, GeneGroup.Value, i );
    if ( tValueIndex >= 0 ) {
        var tValueTag = ds_grid_get( tGene, Gene.Tag, tValueIndex );
        tValueDef = ds_grid_get( tGene, Gene.Default, tValueIndex );
        tValue = ds_map_find_value( aEffects, tValueTag );
        if ( tDoCompare ) tCmpVal = ds_map_find_value( aCompare, tValueTag );
        else tCmpVal = tValueDef;
    }
    tCmpGrpValSum += tCmpVal;
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
            tItems[GeneDescGene.Change, tItemCount] = noone;
            if ( tDoCompare ) {
                var tCompareValue = ds_map_find_value( aCompare, tItemTag );
                if ( tCompareValue == tItemDef ) {
                    tItems[GeneDescGene.Change, tItemCount] = geneIconAddition_spr;
                } else if ( tItemValue > tCompareValue ) {
                    tItems[GeneDescGene.Change, tItemCount] = geneIconImprove_spr;
                } else if ( tItemValue < tCompareValue ) {
                    tItems[GeneDescGene.Change, tItemCount] = geneIconWorsen_spr;
                }
            }
            tItemCount += 1;
        }
    }
    if ( ( tItemCount > 0 ) || ( tValue != tValueDef ) ) {
        var tIndex = ds_grid_height( tResult );
        ds_grid_resize( tResult, GeneDescGroup.Size, ( tIndex + 1 ) );
        ds_grid_set( tResult, GeneDescGroup.Title, tIndex, tTitle );
        ds_grid_set( tResult, GeneDescGroup.Value, tIndex, tValue );
        ds_grid_set( tResult, GeneDescGroup.Change, tIndex, noone );
        ds_grid_set( tResult, GeneDescGroup.Items, tIndex, tItems );
        ds_grid_set( tResult, GeneDescGroup.ItemCount, tIndex, tItemCount );
        tCmpGrpVal[tIndex] = tCmpVal;
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
if ( tCmpGrpValSum <= 0 ) tCmpGrpValSum = 1;
for ( var i = 0; i < ds_grid_height( tResult ); ++i ) {
    tCmpGrpVal[i] *= ( 100 / tCmpGrpValSum );
}

//Convert to numbers
for ( var i = 0; i < ds_grid_height( tResult ); ++i ) {
    var tValue = ds_grid_get( tResult, GeneDescGroup.Value, i );
    var tValueStr = "";
    if ( tValue > 0 ) tValueStr = ( string_format( tValue, 6, 0 ) + "%" );
    ds_grid_set( tResult, GeneDescGroup.Value, i, tValueStr );
    //Change group change icon
    if ( tDoCompare && ( tValue > 0 ) ) {
        var tChange = GeneDescGroup.Change;
        if ( tCmpGrpVal[i] == 0 ) {
            ds_grid_set( tResult, tChange, i, geneIconAddition_spr );
        } else if ( tValue > tCmpGrpVal[i] ) {
            ds_grid_set( tResult, tChange, i, geneIconImprove_spr );
        } else if ( tValue < tCmpGrpVal[i] ) {
            ds_grid_set( tResult, tChange, i, geneIconWorsen_spr );
        }
    }
}

return tResult;
