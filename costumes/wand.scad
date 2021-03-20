

include <BOSL/constants.scad>
use <BOSL/transforms.scad>
use <BOSL/shapes.scad>




dowel_d=12.9;

difference() {
    xrot(180)
    group () {
        right(5.5)yrot(-16)
            onion(r=10, maxang=30);
        left(5.5)yrot(16)
            onion(r=10, maxang=30);
    }
    cylinder(d=dowel_d, h=100);
}



