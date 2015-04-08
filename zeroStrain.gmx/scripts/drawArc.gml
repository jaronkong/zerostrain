///drawArc( degrees, stepSize, radius, initialDir, x, y );
/*
argument0 = size of curve (in degrees)
argument1 = step size
argument2 = distance of edge of curve from origin
argument3 = direction of first point of curve (in degrees)
argument4 = x origin
argument5 = y origin
*/
var i; var xx; var yy;
var preX, prevY;

xx = argument4 + lengthdir_x(argument2,argument3)
yy = argument5 + lengthdir_y(argument2,argument3)
prevX = argument4 + lengthdir_x(argument2,argument3)
prevY = argument5 + lengthdir_y(argument2,argument3)

//draw_primitive_begin(pr_trianglestrip)
for (i=0; i<=argument0; i+=argument1)
{
    xx = argument4 + lengthdir_x(argument2,argument3+i)
    yy = argument5 + lengthdir_y(argument2,argument3+i)
    /*
    if (collision_line(xx, yy, argument4, argument5, blockPar, 1, true))
    {
        if (!collision_line(prevX, prevY, argument4, argument5, blockPar, 1, true)) //If the line before didn't collide with an obstacle
        {
            draw_line(xx, yy, argument4, argument5);
        }
    }
    */
    draw_line_width(xx, yy, prevX, prevY, 6);
    //draw_vertex(xx,yy);

    prevX = xx;
    prevY = yy;
}
//draw_primitive_end()

/*
argument0 = size of curve (in degrees)
argument1 = step size
argument2 = distance of edge of curve from origin
argument3 = direction of first point of curve (in degrees)
argument4 = x origin
argument5 = y origin
*/
