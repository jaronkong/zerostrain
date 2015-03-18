///geneMergeStrands( label, base, option, length )
//Take two strands and create a combined version

var aLabel = argument0;
var aStrandA = argument1;
var aStrandB = argument2;
var aLength = argument3;
var tResult = false;

for ( var i = 0; i < aLength; ++i ) {
    tResult[i] = choose( aStrandA[i], aStrandB[i] );
}

return tResult;
