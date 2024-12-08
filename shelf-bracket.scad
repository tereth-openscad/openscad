include <Round-Anything/polyround.scad>
include <Round-Anything/MinkowskiRound.scad>

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

wall_l=70;
top_l=85;

screw_8_head_d=8.8;
screw_8_shaft_d=4.4;

width=20;
thickness=4;
corner_inset=8;

webbing_t=5;

// !build_screw();
module build_screw() {
    translate([0,0,-10])
        cylinder(d=screw_8_head_d,h=10);
    cylinder(d=screw_8_shaft_d,h=20);
}

bracket_poly = [
       [0,0,0],
       [top_l,0,0],
       [top_l,-thickness,2],
       [corner_inset, -corner_inset,5],
       [thickness, -wall_l,2],
       [0, -wall_l,0],
    ];

function slope_2d(p1,p2)=(p2.y-p1.y)/(p2.x-p1.x);
function interp_x(p1,p2,per)=per*(p2.x-p1.x)+p1.x;
function linear_interp(p1,p2,per=0.5)=[interp_x(p1,p2,per),p1.y+(slope_2d(p1,p2))*(interp_x(p1,p2,per)-p1.x)];
function point_offset(p,x,y)=[p.x+x,p.y+y];

fillet=2;
// Main Bracket
difference() {
    polyRoundExtrude(bracket_poly, width, fillet, fillet);
    translate([2,-wall_l/4,width/2]) rotate([0,-90,0])
        build_screw();
    translate([2,-3*wall_l/4,width/2]) rotate([0,-90,0])
        build_screw();
    translate([top_l/4,-2,width/2]) rotate([-90,0,0])
        build_screw();
    translate([3*top_l/4,-2,width/2]) rotate([-90,0,0])
        build_screw();
}

knee=7;
knee_offset=2;

big_knee_pt=[top_l-20,-thickness-20];
little_knee_pt=[top_l-knee_offset,-knee];

web_shell_poly = [
    [0,0,10], //top left corner
    [top_l,0,0], // end of top bracket
    concat(little_knee_pt,7),
    concat(big_knee_pt,10),
    [(top_l-20)/2-10,-wall_l-(-thickness-20)+10,300],
    [knee,-(wall_l-knee_offset),7],
    [0,-wall_l,0], // bottom of wall
];

t1_p1 = point_offset(linear_interp([corner_inset, -corner_inset], [thickness, -wall_l], .1),4,0); // top point
t1_p2 = point_offset(linear_interp([corner_inset, -corner_inset], [thickness, -wall_l], .7),4,0); // bottom point
t1_p3 = [25, -wall_l/2];

t1 = [
    concat(t1_p1,1),
    concat(t1_p2,1),
    concat(point_offset(linear_interp(t1_p2, t1_p3,per=.3),-.7,.7),20),
    concat(point_offset(linear_interp(t1_p2, t1_p3,per=.7),-.7,.7),20),
    concat(t1_p3,7), // right point
];

t2_p1 = point_offset(linear_interp([corner_inset, -corner_inset], [top_l, -thickness], .085),3,-4); // top point
t2_p2 = point_offset(linear_interp([corner_inset, -corner_inset], [top_l, -thickness], .4),3,-4); // bottom point
t2_p3 = point_offset(t1_p3,5,5);

t2 = [
    concat(t2_p1, 1),
    concat(t2_p2, 1),
    concat(t2_p3, 1),
];

t3_p1 = point_offset(linear_interp([corner_inset, -corner_inset], [top_l, -thickness], .5),3,-4); // top point
t3_p2 = point_offset(big_knee_pt,-5,5);
t3_p3 = point_offset(t2_p3,9,4); 

t3 = [
    concat(t3_p1, 1),
    concat(t3_p2, 1),
    concat(point_offset(linear_interp(t3_p2,t3_p3,.5),-.5,.5),20),
    concat(t3_p3, 1),
];

t4_p1 = point_offset(linear_interp([corner_inset, -corner_inset], [top_l, -thickness], .6),3,-4); // top point
t4_p2 = point_offset(linear_interp([corner_inset, -corner_inset], [top_l, -thickness], .85),0,-4); // top point
t4_p3 = point_offset(t3_p2,5,3); 

t4 = [
    concat(t4_p1, 1),
    concat(t4_p2, 1),
    concat(t4_p3, 1),
];

right=false;
webbing_z = right ? 0 : width-webbing_t;
translate([0,0,webbing_z])
difference() {
    polyRoundExtrude(web_shell_poly, webbing_t,2,2);
    polyRoundExtrude(t1,webbing_t,-1,-1);
    polyRoundExtrude(t2,webbing_t,-1,-1);
    polyRoundExtrude(t3,webbing_t,-1,-1);
    polyRoundExtrude(t4,webbing_t,-1,-1);
}

module gridpattern(memberW = 4, sqW = 12, iter = 5, r = 3){
	round2d(0, r)rotate([0, 0, 45])translate([-(iter * (sqW + memberW) + memberW) / 2, -(iter * (sqW + memberW) + memberW) / 2])difference(){
		square([(iter) * (sqW + memberW) + memberW, (iter) * (sqW + memberW) + memberW]);
		for (i = [0:iter - 1], j = [0:iter - 1]){
			translate([i * (sqW + memberW) + memberW, j * (sqW + memberW) + memberW])square([sqW, sqW]);
		}
	}
}

