include <BOSL/constants.scad>
use <BOSL/transforms.scad>
use <BOSL/shapes.scad>
use <BOSL/masks.scad>

include <Round-Anything/polyround.scad>


$fn=75;

hole_id = 15;
hole_od = 35;
hole_h = 15;


extrudeWithRadius(hole_h,-3,3,fn=15)
    circle(d=hole_id);


difference() {
    down(5)
        extrudeWithRadius(hole_h+5,-12,3, fn=60)
            circle(d=hole_od+10);
    extrudeWithRadius(hole_h,2,-3, fn=15)
        circle(d=hole_od);
}


