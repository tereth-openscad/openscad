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

bracket=[110,140];
metal_bracket_h = 13;

beamPoints =  [
    [   0,    0,  0],
    [  20,  .01, 10],
    [ bracket.x-30, bracket.y, 20],
    [ bracket.x, bracket.y,  0],
];

// Test trim shape
buildWindowTrimShape(2,-2);

// Test full beam path
linear_extrude(2) {
    shell2d(-2) {
        projection() {
            buildFullTrim();
        }
        //#rotate([0,0,45])
        //    gridpattern(2,12,50,2);
    }
}

// Build full trim
!buildFullTrim();

translate([-36+3.4+17.5/2,0,0]) rotate([90,0,0])
    buildWindowTrimJoint();

module buildFullTrim() {
    difference() {
        buildWirePath();
        #translate([bracket.x-2,bracket.y+3,0]) buildMetalBracket();
        translate([-36+3.4+17.5/2,0,0]) rotate([90,0,0])
            buildWindowTrimShape(width=10+2+3,shell=-20);
    } 
    //translate([-36+3.4+17.5/2,0,0]) rotate([90,0,0])
        //buildWindowTrimJoint();
}

module buildWirePath() {
    h=metal_bracket_h;
    wall_t = 2;
    channel_w = 10 + (2 * wall_t);
    bottom_slot_w = 6;
    rounding=4;
    difference() {
        polyRoundExtrude(
            beamChain(beamPoints, offset1=channel_w/2, offset2=-channel_w/2),
        h, rounding, 0);
        // cut inside part of channel
        translate([0,0,wall_t])
            polyRoundExtrude(
                beamChain(beamPoints, offset1=channel_w/2-wall_t, offset2=-channel_w/2+wall_t),
            h-wall_t*2, rounding, 0);
        // cut the bottom slot
        polyRoundExtrude(
            beamChain(beamPoints, offset1=bottom_slot_w/2, offset2=-bottom_slot_w/2),
        h-wall_t*2, 1, 0);
    }
}

//buildMetalBracket();
module buildMetalBracket() {
    diam=15;
    height=metal_bracket_h;
    length=30;
    flange_w=36;
    flange_t=1.2;
    translate([0,-length+diam/2,0]) {
        difference() {
            translate([0,length-diam/2,height-diam/2+flange_t]) {
                rotate([90,0,0]) {
                    sphere(d=diam);
                    cylinder(d=diam,h=length-diam/2);
                }
                translate([0,0,-(height-diam/2)/2]) {
                    cylinder(d=diam,h=height-diam/2,center=true);
                    translate([0,-(length-diam/2)/2,0])
                    linear_extrude(height-diam/2, center=true)
                        square([diam,length-diam/2], center=true);
                }
            }
            translate([0,length/2,-diam/2]) linear_extrude(diam/2)
                square([diam,length+1],center=true);
        }
        translate([0,length/2,0]) linear_extrude(flange_t)
            square([flange_w,length+1],center=true);
    }
}

module buildWindowTrimJoint() {
    large_wire_d=7;
    small_wire_d=2.5;
    difference() {
        wire_d=small_wire_d+1;
        buildWindowTrimShape(width=6.6,shell=-1);
        translate([0,wire_d,0])
        union() {
            translate([-1,0,0]) rotate([0,90,0])
                cylinder(d=wire_d,h=40);
            translate([-1,-wire_d,-wire_d/2])
                linear_extrude(wire_d)
                    square([40,wire_d]);
        }
    }
}
module buildWindowTrimShape(width=1,shell=-1) {
    linear_extrude(width,center=true)
        shell2d(shell)
        polygon(polyRound(
            [
               [0,0,0],
               [36,0,0],
               [36,4.5,4],
               [36-3.4,5.2,0],
               [36-3.4-17.5/2+5,24,12],
               [3+13,7.5,3],
               [5,7,20],
               [4,5.6,3],
               [0,5.6,2],
            ], fn=20)
        );
}
