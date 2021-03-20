

include <../BOSL/constants.scad>
use <../BOSL/transforms.scad>
use <../BOSL/shapes.scad>
use <../BOSL/masks.scad>


button_d=15;
$fn=50;

difference() {
    cylinder(d=button_d, h=3);
    up(3)
        fillet_cylinder_mask( r=button_d/2, fillet=3);
}




