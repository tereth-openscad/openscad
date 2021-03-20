
include <BOSL/constants.scad>
use <BOSL/transforms.scad>
use <BOSL/shapes.scad>



plate_dim = [40,150,2];
peg_small_d = 3;
peg_big_d = 6.5;
peg_separation = 109;

$fn=75;

difference(){ 
    cuboid(plate_dim, fillet=1, edges=EDGES_TOP+EDGES_Z_ALL);
    forward(peg_separation/3)
        build_screw_hole();
    back(peg_separation/3)
        build_screw_hole();
}

up(plate_dim.z/2) forward(peg_separation/2)
    build_peg();

up(plate_dim.z/2) back(peg_separation/2)
    build_peg();


module build_screw_hole()
{
    cylinder(d1=5, d2=8, h=plate_dim.z+.1, center=true);
}

module build_peg() {
    cylinder(d1=7, d2=3, h=2.5);
    up(2.5)
        cylinder(d1=3,d2=7,h=3);
}

