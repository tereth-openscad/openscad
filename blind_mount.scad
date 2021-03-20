

include <BOSL/constants.scad>
use  <BOSL/shapes.scad>

$fn=25;
thickness=1;
width=34.6;

difference() {
    cube([width,31+5.6,10+thickness]);

    translate([-.1,-.1,thickness+.01])
        difference() {
            cube([width+.2,31+.2,10]);
            translate([(width+.2)/2,31.2-10/2,0])
            prismoid(size1=[width,10], size2=[width,0], shift=[0,10/2], h=6.5);
        }

    translate([width/2,16.5-2,-.1])
        linear_extrude(thickness+.2)
            hull() {
                circle(d=4);
                translate([0,9.5-4,0])
                circle(d=4);
            }
}


