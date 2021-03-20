
use <BOSL/constants.scad>
use <BOSL/math.scad>
include <BOSL/shapes.scad>
include <BOSL/masks.scad>
include <BOSL/paths.scad>


$fn=50;

if(0)
{
torus(id=5, od=9);

difference() {
    torus(id=30,od=34);
    pie_slice(ang=180,l=4, d1=34, d2=34, center=true);
}
right(32/2)
cyl(d=2, h=5, orient=ORIENT_Y, align=V_BACK);

left(32/2)
cyl(d=2, h=20, orient=ORIENT_Y, align=V_BACK);
}



path = concat( [for (a=[0:-5:-180]) [20*cos(a), 20*sin(a), 0]] );
path2 = concat( [for (a=[0:360]) [a/5, 20*cos(a),0]]);
echo(path=path);
//path = [ [15,0,0], [0,-15,0], [-15,0,0]];
extrude_2d_shapes_along_3dpath(path2) circle(r=1, $fn=25);
