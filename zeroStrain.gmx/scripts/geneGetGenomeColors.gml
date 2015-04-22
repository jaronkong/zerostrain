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
    tLeft[i] = c_dkgray;
    var tGroup = ds_grid_get( tAlleleData, GeneAllele.Group, aGenome[i] );
    if ( tGroup >= 0 ) tLeft[i] = ds_grid_get( tGroupData, GeneGroup.Color, tGroup );
    tRight[i] = ds_grid_get( tAlleleData, GeneAllele.Color, aGenome[i] );
    tLeft[i] = tRight[i]; //Both sides use allele color
    if ( choose( true, false ) ) {
        var tSwap = tLeft[i];
        tLeft[i] = tRight[i];
        tRight[i] = tSwap;
    }
}

var tColors = false;
tColors[0] = tLeft;
tColors[1] = tRight;

return tColors;
