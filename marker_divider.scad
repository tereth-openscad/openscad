

include <BOSL/constants.scad>
use <BOSL/transforms.scad>
use <BOSL/shapes.scad>

thickness=1;
h=100;

bottom_d=180;
top_d=203;

is_bottom_piece=true;

build_single=true;

$fn=18;

if(build_single) {
    build_single_piece();
} else {
    build_two_piece();
}

//two piece
module build_two_piece() {
    difference() {
        prismoid(size1=[bottom_d,thickness], size2=[top_d,thickness], h=h);
        translate(is_bottom_piece ? [0,0,h/2] : [0,0,0])
            cuboid([thickness+.1,thickness+.1,h/2], align=V_UP);
    }
}


module build_single_piece() {
    prismoid(size1=[bottom_d,thickness], size2=[top_d,thickness], h=h);
    zrot(60)
    prismoid(size1=[bottom_d,thickness], size2=[top_d,thickness], h=h);
    zrot(120)
    prismoid(size1=[bottom_d,thickness], size2=[top_d,thickness], h=h);

    cylinder(d=8,h=h);
}
