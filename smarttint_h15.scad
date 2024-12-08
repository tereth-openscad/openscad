include <Round-Anything/polyround.scad>

include <BOSL/constants.scad>
use  <BOSL/transforms.scad>
use  <BOSL/shapes.scad>

/* [Box Dimensions] */
// Wall layers (will be multipied by line_w)
wall_layers = 3; // [1:20]
// Bottom layers (will be multipied by layer_t)
bottom_layers = 3; // [1:20]

/* [Printer Information] */
// Print layer thickness
layer_t=.2; // [0.08:.01:0.2]
// Print line width
line_w=.4; // [0.2:.01:0.4]

/* [Quality] */
// Fillet resolution (bigger is cer but takes longer)
fn=20;

/* [Testing] */

// Overall Quality
$fn = 32;

/* [Hidden] */
__version__=0.1;


clip_w = 7;
clip_l = 17;
cap_w = 5;


spacer_h = 3;
spacer_od = 7;
spacer_id = 3;

block_h=17;
block_w=6.5;
block_l=25;

build_spacer();
translate([0,20,0])
    build_spacer();

module build_spacer() {
    difference() {
        union() {
            linear_extrude(1)
                circle(d=10);
            linear_extrude(spacer_h)
                circle(d=spacer_od);
        }
        translate([0,0,-0.05])
            linear_extrude(spacer_h+.1)
                circle(d=spacer_id);
    }
}

module build_block() {
    translate([20,0,0,])
    union() {
        linear_extrude(spacer_h)
            square([block_l, block_l], center=true);
        linear_extrude(block_h)
            square([block_w, block_l], center=true);
    }
}

