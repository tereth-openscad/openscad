include <Round-Anything/polyround.scad>

include <BOSL/constants.scad>
use  <BOSL/transforms.scad>
use  <BOSL/shapes.scad>


$fn=30;

outer_d=6;
inner_d=4;
thickness=3;
line_t=1.5;
fillet=.4;

tol=.4;
arm_t=1.6+tol;

difference() {
    union() {
        extrudeWithRadius(line_t, fillet, fillet, 10) polygon(polyRound(mirrorPoints(
            [
                [0,0,0],
                [arm_t+line_t+thickness/2, 0, fillet],
                [arm_t+line_t+thickness/2, outer_d+2*line_t, fillet],
            ], 180)
        ));

        extrudeWithRadius(outer_d+line_t*2, fillet, fillet, 10) polygon(polyRound(mirrorPoints(
            [
                [0,0,0],
                [arm_t+line_t+thickness/2,0,fillet],
                [arm_t+line_t+thickness/2,outer_d+2*line_t,fillet],
                [arm_t+thickness/2,outer_d+2*line_t,fillet],
                [arm_t+thickness/2,line_t,fillet],
                [thickness/2,line_t,fillet],
                [thickness/2,outer_d+2*line_t,fillet],
                [0,outer_d+2*line_t,0],
            ], 180, [1,1])
        ));

        translate([0,0,outer_d+line_t])
            extrudeWithRadius(line_t, fillet, fillet, 10) polygon(polyRound(mirrorPoints(
                [
                    [0,0,0],
                    [arm_t+line_t+thickness/2, 0, fillet],
                    [arm_t+line_t+thickness/2, outer_d+2*line_t, fillet],
                ], 180)
            ));
    }

    cap_d=32;
    translate([0,23,0])
        extrudeWithRadius(outer_d+line_t*2, -fillet,-fillet, 10) circle(d=cap_d, $fn=100);

    translate([-(arm_t+line_t+thickness/2),outer_d/2+line_t,outer_d/2+line_t])rotate([0,90,0])
        extrudeWithRadius(2*(arm_t+line_t+thickness/2), -fillet, -fillet, 10) circle(d=inner_d);
}

