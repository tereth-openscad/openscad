

use <BOSL/constants.scad>
include <BOSL/shapes.scad>

//7/16" = 11.1125mm
hole_diam_str="1/2";
hole_diam_in = 1/2;
hole_diameter=hole_diam_in*25.4+.2;

block_size = [75,25,20];

hole_offset = block_size.x/2-hole_diameter-2;

$fn=100;

difference() {
    cuboid(block_size);
    right(hole_offset) down(1) cylinder(d=hole_diameter, h=block_size.z+3, center=true);
    right(block_size.x/2) cuboid([4,1,block_size.z+3]);
    left(block_size.x/2) cuboid([4,1,block_size.z+3]);
    right(hole_offset) fwd(block_size.y/2) cuboid([1,4,block_size.z+3]);
    right(hole_offset) back(block_size.y/2) cuboid([1,4,block_size.z+3]);

    up(block_size.z/2) right(hole_offset-10)
    linear_extrude(2,center=true)
    text(hole_diam_str,valign="center", halign="right");
}




