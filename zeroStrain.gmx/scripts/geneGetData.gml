///geneGetData( file )
//Get the gene data grid for a label

with ( genomeData ) {
    if ( file == argument0 ) {
        return data;
    }
}

with ( instance_create( x, y, genomeData ) ) {
    file = argument0;
    event_user( 0 );
    return data;
}
