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


// Unused

flange_t=15;
angle=30;

bracket_t=20;
bracket_h=25;
jut=20;
desk_t=30;
bracket_w=50;
hole_sep=20;
hole_d=5;
screw_d=5;
flange_w=bracket_h*2;

difference() {
    union() {
        build_bracket();
        build_flange();
    }
    cut_bracket_holes();
    cut_screw_holes();
}

module cut_screw_holes() {
    bracket_hyp=sqrt(2*pow(bracket_h,2));
    screw_sep=bracket_hyp/6*cos(45);
    translate([flange_t+desk_t/2,desk_t+flange_t/2,flange_w/2])
        rotate([-90,0,0])
        for(i=[-1,1]) {
            translate([0,i*flange_w/4,0])
            linear_extrude(bracket_h+2,center=true)
                circle(d=screw_d);
        }

    translate([flange_t/2,desk_t/2,bracket_h+5])
        rotate([-90,0,-90])
        linear_extrude(bracket_h+2,center=true)
            circle(d=screw_d);
}

module cut_bracket_holes() {
    translate([-jut-bracket_w*cos(angle)/2,desk_t+flange_t-bracket_w*sin(angle)/2,bracket_h/2])
    rotate([-90,0,30])
        for(i=[-1,1]) {
            translate([i*hole_sep/2,0,0])
            linear_extrude(2*bracket_t+2,center=true)
                circle(d=hole_d);
        }
}

module build_bracket() {
    top_bracket_adj=[cos(angle)*bracket_w, sin(angle)*bracket_w];
    bottom_bracket_adj=[sin(angle)*bracket_t, cos(angle)*bracket_t];
    extrudeWithRadius(bracket_h, 3, 3, 40)polygon(polyRound(
        [
            [0,0,5],
            [flange_t,0,0],
            [flange_t,desk_t,0],
            [desk_t+flange_t, desk_t,0],
            [desk_t+flange_t, desk_t+flange_t,3],
            [-jut, desk_t+flange_t,10],
            [-jut-top_bracket_adj.x,desk_t+flange_t-top_bracket_adj.y,3],
            [-jut-top_bracket_adj.x+bottom_bracket_adj.x,desk_t+flange_t-top_bracket_adj.y-bottom_bracket_adj.y,3],
            [-jut+bottom_bracket_adj.x,desk_t+flange_t-bottom_bracket_adj.y,7],
            //[0,desk_t,10]
        ]
        , fn=fn
    ));
}

module build_flange() {
    extrudeWithRadius(flange_w, 3, 3, 40)polygon(polyRound(
        [
            [0,0,5],
            [flange_t,0,0],
            [flange_t,desk_t,0],
            [desk_t+flange_t, desk_t,0],
            [desk_t+flange_t, desk_t+flange_t,3],
            [0, desk_t+flange_t,10],
        ]
        , fn=fn
    ));
}
