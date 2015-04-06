///getPlayAreaBounds();

var retArray;
retArray[0] = 0;
retArray[1] = 0;
retArray[2] = 0;
retArray[3] = 0;

with ( mainController ) {
    retArray[ 0 ] = roomRight;
    retArray[ 1 ] = roomTop;
    retArray[ 2 ] = roomLeft;
    retArray[ 3 ] = roomBottom;
}

return retArray;
