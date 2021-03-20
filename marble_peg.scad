big_d = 8;
big_l = 20;
little_d = 4.6;
little_l = 7.8;

$fn=50;

include <BOSL/constants.scad>
use <BOSL/transforms.scad>
use <BOSL/shapes.scad>


difference() {
    group() {
        cylinder(d=big_d, h=big_l, center=true);
        cylinder(d=little_d, h=big_l+2*little_l, center=true);
    }

    translate([0,0,big_l/2])
        cuboid([5,5,5], fillet=1);



}

