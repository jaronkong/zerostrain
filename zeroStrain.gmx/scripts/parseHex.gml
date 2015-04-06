///parseHex( str )
//Convert a hex string to a number
//Useful to load colors from a file

var tString = argument0;
var tResult = $0;

for ( var i = 0; i < string_length( tString ); ++i ) {
    var tChar = string_char_at( tString, ( i + 1 ) );
    var tValue = 0;
    switch ( tChar ) {
    case ( "$" ):
    case ( "#" ):
        continue;
        break;
    default:
        tValue = real( tChar );
        break;
    case ( "A" ):
    case ( "a" ):
        tValue = 10;
        break;
    case ( "B" ):
    case ( "b" ):
        tValue = 11;
        break;
    case ( "C" ):
    case ( "c" ):
        tValue = 12;
        break;
    case ( "D" ):
    case ( "d" ):
        tValue = 13;
        break;
    case ( "E" ):
    case ( "e" ):
        tValue = 14;
        break;
    case ( "F" ):
    case ( "f" ):
        tValue = 15;
        break;
    }
    tResult = ( ( tResult << 4 ) | tValue );
}

return tResult;