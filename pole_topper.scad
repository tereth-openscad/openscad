

include <BOSL/constants.scad>
use <BOSL/transforms.scad>
use <BOSL/masks.scad>
use <BOSL/shapes.scad>

small_pipe_id=28;
small_pipe_od=33;
big_pipe_id=43;
big_pipe_od=48;

default_topper_d=150;

default_pipe_h=60;
default_topper_h=20;

pin_d=7; //~1/4 in

is_test=false;
if(is_test) {
    build_pipe_fitting(20);
    build_topper(5, big_pipe_od, 20);
} else {
    build_pipe_fitting();
    build_topper();
    build_topper_supports();
}

module build_pipe_fitting(pipe_h=default_pipe_h) {
    difference() {
        group() {
            cylinder(d=small_pipe_od, h=pipe_h, center=true, $fn=100);

            difference() {
                cylinder(d=big_pipe_od, h=pipe_h, center=true, $fn=100);
                cylinder(d=big_pipe_id, h=pipe_h+1, center=true, $fn=100);
            }
        }

        down(pipe_h/2-10) xrot(90)
            cylinder(d=pin_d, h=big_pipe_od+1, center=true, $fn=100);
    }
}

module build_topper(topper_h=default_topper_h, topper_d=default_topper_d, pipe_h=default_pipe_h) {
    difference() {
        translate([0,0,topper_h/2+pipe_h/2]) {
            cylinder(d=topper_d, h=topper_h, center=true);
        }

        f=min(topper_h, 20);

        up(pipe_h/2+topper_h)
            fillet_cylinder_mask(r=topper_d/2, fillet=f);
    }
}

module build_topper_supports(topper_d=default_topper_d, pipe_h=default_pipe_h) {
    translate([0,0,pipe_h/2]) {
        fillet_hole_mask(d=big_pipe_od, fillet=pipe_h-25, $fn=100);
    }

    zrot(45)
    zrot_copies(n=4, r=big_pipe_od/2-2)
    right((topper_d/2-big_pipe_od/2)/2)xrot(180)
        right_triangle([topper_d/2-big_pipe_od/2-1, 5, pipe_h], center=true);
}


