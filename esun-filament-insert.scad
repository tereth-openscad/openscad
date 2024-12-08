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
$fn = 200;

/* [Hidden] */
__version__=0.1;


circle_d=54;
cardboard_t=3;

inner_hole_d=circle_d-line_w*wall_layers*2;

linear_extrude(layer_t*bottom_layers)
difference() {
    circle(d=circle_d+20);
    circle(d=inner_hole_d);
}

linear_extrude(cardboard_t+layer_t*bottom_layers)
difference() {
    circle(d=circle_d);
    circle(d=inner_hole_d);
}


