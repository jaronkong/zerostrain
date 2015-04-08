///cameraKick( strength, direction );

with ( cameraController ) {
    cameraFocusX += lengthdir_x( argument0, argument1 );
    cameraFocusY += lengthdir_y( argument0, argument1 );
}