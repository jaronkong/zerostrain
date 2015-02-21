///geneComputeEffects( label, genome, length )
//Take a genome array and get a map of tags and values

var aLabel = argument0;
var aGene = argument1;
var aLength = argument2;

var tDataObj = geneGetData( aLabel );
var tData = tDataObj.data;
var tDataTag = tDataObj.geneTag;
var tDataDef = tDataObj.geneDefault;
var tDataOff = tDataObj.geneOffset;

var tResult = ds_map_create( );
for ( var i = 0; i < ds_grid_height( tData ); ++i ) {
    var tTag = ds_grid_get( tData, tDataTag, i );
    var tOff = ds_grid_get( tData, tDataDef, i );
    ds_map_add( tResult, tTag, tOff );
}

for ( var i = 0; i < aLength; ++i ) {
    var tTag = ds_grid_get( tData, tDataTag, aGene[i] );
    var tOff = ds_grid_get( tData, tDataOff, aGene[i] );
    var tOffTag = ds_map_find_first( tOff );
    repeat ( ds_map_size( tOff ) ) {
        var tOffVal = ds_map_find_value( tOff, tOffTag );
        var tOffOrig = ds_map_find_value( tResult, tOffTag );
        ds_map_replace( tResult, tOffTag, ( tOffOrig + tOffVal ) );
        tOffTag = ds_map_find_next( tOff, tOffTag );
    }
}

return tResult;
