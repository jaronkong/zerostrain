///geneGetGenomeColors( label, genome, length )
//Get a 2xlength array of gene colors for a dna render object

var aLabel = argument0;
var aGenome = argument1;
var aLength = argument2;

var tData = geneGetData( aLabel );
var tAlleleData = tData.alleleData;
var tGroupData = tData.groupData;

var tLeft = false;
var tRight = false;

for ( var i = 0; i < aLength; ++i ) {
    var tGrpCol = c_dkgray;
    var tGroup = ds_grid_get( tAlleleData, GeneAllele.Group, aGenome[i] );
    if ( tGroup >= 0 ) tGrpCol = ds_grid_get( tGroupData, GeneGroup.Color, tGroup );
    tLeft[i] = tGrpCol;
    tRight[i] = tGrpCol;
}

var tColors = false;
tColors[0] = tLeft;
tColors[1] = tRight;

return tColors;
