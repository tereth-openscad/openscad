include <Round-Anything/polyround.scad>

include <BOSL/constants.scad>
use  <BOSL/transforms.scad>
use  <BOSL/shapes.scad>

/* [Box or Lid] */
box_en = "BL"; // [B:Box, L:Lid, BL:Both]

/* [Box Dimensions] */
// Wall layers (will be multipied by line_w)
wall_layers = 3; // [1:20]
// Bottom layers (will be multipied by layer_t)
bottom_layers = 3; // [1:20]
lid_overlap=5; // [1:.1:10]

// Box Height not including bottom
box_height=25; // [5:.1:50]
board_support_platform_h=3; // .1

/* [Board Alignment Options] */
// Enable center line alignment rails on the length side
length_inner_alignment_en=true;
// Enable outer alignment rails on the length side
length_outer_alignment_en=true;
// Enable center line alignment rails on the width side
width_inner_alignment_en=true;
// Enable outer alignment rails on the width side
width_outer_alignment_en=true;

/* [Board Clip Options] */
// Build clips to hold board
clip_en=true;
// Width of clip
clip_w=5; // [1:.1:10]
// Clip tooth depth in mm
clip_tooth=1; // [.1:.1:2]
// Clip height in mm
clip_h=4.0; // [.2:.1:10]

// Cutout around the clip (this is will need supports)
clip_cutout=true;
// Height of the cutout around the clip
clip_cut_h=2; // .1

/* [Power Port Options (DigiKey part: 839-1581-ND)] */
// Digikey part: 839-1581-ND
// Part #: 54-00152
// Power port enable
power_port_en=true;
power_port_sel="A"; // [N:None, D:DigiKey, A:Amazon]
power_port_board_clearance = 5; // [3:.1:20]
//power_port_lid_clearance = 0.6; // [.1:.1:20]

/* [Flange options] */
flange_en=true;
flange_location="W"; // [L:Length,W:Width]
// Width and length of flange
flange_w=15;
// Flange thickness
flange_t=2;
// Diameter of hole in flange
flange_hole_d=5;

/* [Side Vents] */
side_vents_en=true;
side_vent_w=1; // [.2:0.1:10]
// Number of vent slits on each corner
num_vents=2; // [1:10]
// Separation between vent slits
vent_sep=1; // [.4:0.1:5]

/* [Printer Information] */
// Print layer thickness
layer_t=.2; // [0.08:.01:0.2]
// Print line width
line_w=.4; // [0.2:.01:0.4]

/* [Board Dimensions] */
// Board width in mm
board_w=52; // .1
// Board length in mm
board_l=82; // .1
// Board thickness in mm
board_t=2; // .1
// Hole diameter in mm
hole_d=3; // .1

// Middle hole separation distance
middle_hole_sep=35.5; // .1
// Side hole separation distance on the long side
side_hole_sep_l=34.4; // .1
// Side hole separation distance on the short side
side_hole_sep_w=16.5; // .1

/* [Quality] */
// Fillet resolution (bigger is nicer but takes longer)
fn=10;

/* [Testing] */
// Display board outline provided by DigiKey
display_board_outline_svg=false;

// Overall Quality
$fn = 32;

/* [Hidden] */
__version__=0.5;

echo("DigiKey SOLDERBREAD#02-ND Box: Version ", __version__);

wall_t=line_w*wall_layers;
bottom_t=layer_t*bottom_layers;

box_h=box_height+bottom_t;

// Unused
mitre=2.5;

if (box_en == "B" || box_en == "BL") {
    difference() {
        union() {
            difference() {
                build_box();
                up(bottom_t)
                    cuboid([board_w, board_l, box_h], align=V_UP, fillet=.2, edges=EDGES_ALL);
                // Bottom holes
                // forward(15)
                //     cyl(d=15,h=10);
                // back(15)
                //     cyl(d=15,h=10);
            }

            build_inner_pegs();
            build_outer_alignment();
            build_board_support_platforms();
            if(clip_en) {
                build_clips();
                mirror([1,0,0]) build_clips();
            }

            if(display_board_outline_svg) {
                #up(bottom_t+board_support_platform_h) linear_extrude(2) rotate([0,0,90])
                    import("SOLDERBREAD02.svg",dpi=96,center=true);
            }
        }
        if(power_port_sel != "N") {
            translate([-board_w/4, -board_l/2, bottom_t + board_support_platform_h + board_t + power_port_board_clearance]) {
                union() {
                    build_power_port();
                    #build_power_connector();
                }
            }
        }

        if(side_vents_en) {
            for(increment_x=[-1,1]) {
                for(increment_y=[-1,1]) {
                    translate([increment_x*(board_w/2+wall_t/2), increment_y*2*board_l/6, box_h/6])
                        build_side_vents();
                }
            }
        }
    }

    if(flange_en) {
        back(board_l/2+wall_t-.2) up(flange_t/2)
        rotate([-90,0,0])
            build_flange_pr();
    }
}

if (box_en == "L" || box_en == "BL") {
    difference() {
        translate([0,0,box_h-(lid_overlap-bottom_t)])
            build_box(height=lid_overlap+bottom_t, oversize=wall_t*2);
        build_box();
    }
}

module build_side_vents() {
    translate([0,(-num_vents*side_vent_w-(num_vents-1)*vent_sep)/2,0])
    for(count=[0:num_vents-1]) {
        translate([-(wall_t+1)/2,count*(side_vent_w+vent_sep),0])
            linear_extrude(2*box_h/3)
                square([wall_t+1, side_vent_w]);
    }
}

module build_flange_pr() {
    flange_fillet=3;
    difference() {
        extrudeWithRadius(flange_w, -flange_fillet, 1, 40)polygon(polyRound(mirrorPoints(
            [
                [flange_w/2,flange_t/2,.5],
                [-flange_w/2,flange_t/2,.5],
            ]
        ), 10));

        up(flange_w/2 + flange_fillet/2) rotate([90,0,0])
            linear_extrude(flange_t+1, center=true)
                circle(d=flange_hole_d);

        down(.1) left(flange_w) back(flange_t/2)
            linear_extrude(flange_w+2)
                square([2*flange_w, 2*flange_t]);

    }
}

module build_board_support_platforms() {
    intersection() {
        build_box();
        up(bottom_t)
            linear_extrude(board_support_platform_h)
                build_holes(2, true);
    }
}

// Index 1:
//   Digikey part: 839-1581-ND
//   Part #: 54-00152
// Index 2:
//   Amazon part: https://www.amazon.com/dp/B07SV6KCT5
//   5.5 x 2.1 mm DC Power Jack
power_port_h=[9.8,6.8];
power_port_d=[10.9,7.8];
power_nut_t=[2.5, 2];
power_nut_long_d=[15.01, 12.4];
power_nut_short_d=[13, 10.9];
pp_idx = power_port_sel == "D" ? 0 : (power_port_sel == "A" ? 1 : -1);

module build_power_port() {
    up(power_port_h[pp_idx]/2) forward(wall_t/2)  {
        intersection() {
            cuboid([power_port_d[pp_idx], wall_t+1, power_port_h[pp_idx]], align=V_CENTER);
            cyl(d=power_port_d[pp_idx], h=wall_t+1,orient=ORIENT_Y, align=V_CENTER, $fn=100);
        }
        for(increment=[-1,1]) {
            translate([0, increment*(wall_t+5)/2, 0])
                cyl(d=power_nut_long_d[pp_idx], h=5, orient=ORIENT_Y, align=V_CENTER, $fn=100);
        }
    }
}

module build_power_connector() {
    translate([0,wall_t/2+power_nut_t[pp_idx],power_port_h[pp_idx]/2]) rotate([90,0,0])
        linear_extrude(power_nut_t[pp_idx])
            rotate([0,0,360/12])
                circle(d=power_nut_long_d[pp_idx], $fn=6);

}

// Builds half the clips (call twice, 2nd time with mirror)
module build_clips() {
    for(increment_y=[-1,1]) {
        translate([-board_w/2+clip_tooth, increment_y*board_l/6-clip_w/2, bottom_t+board_support_platform_h+board_t+layer_t,])
        rotate([90,0,180])
           polyRoundExtrude(
               [
                   [0,0,0],
                   [clip_tooth,clip_h-clip_tooth,0],
                   [clip_tooth,-clip_tooth,0],
               ] ,clip_w, 0, 0);
    }
}

module build_clip_cutout() {
    clip_cut_t=0.6;
    left(board_w/2) up(bottom_t+board_support_platform_h+board_t+layer_t-clip_cut_t)
        grid2d(spacing=board_l/3, cols=1, rows=2)
                difference() {
                    cuboid([wall_t+2, clip_w+2*clip_cut_t, clip_cut_h], align=V_UP+V_LEFT);
                    up(clip_cut_t) right(.1)
                        cuboid([wall_t+2.1, clip_w, clip_cut_h], align=V_UP+V_LEFT);
                }

    right(board_w/2) up(bottom_t+board_support_platform_h+board_t+layer_t)
        grid2d(spacing=board_l/3, cols=1, rows=2)
            prismoid(size1=[clip_tooth, clip_w], size2=[0,clip_w], h=clip_h, shift=[clip_tooth/2,0], align=V_LEFT+V_UP);
}

module build_box(height=box_h, oversize=0) {
    cuboid([board_w+2*wall_t+oversize, board_l+2*wall_t+oversize, height], 
        align=V_UP, fillet=.2, edges=EDGES_ALL);
}

module build_inner_pegs() {
    intersection() {
        build_box();
        up(bottom_t)
            linear_extrude(board_t+board_support_platform_h)
                build_inner_alignment_pegs(-.4);
    }
}

module build_outer_alignment() {
    intersection() {
        build_box();
        up(bottom_t)
            linear_extrude(box_h)
                build_side_alignment_rails(-.4);
    }
}

// UNUSED MODULE
module build_board() {
    difference() {
        square([board_w,board_l], center=true);

        //TODO: Could use a grid for this
        build_holes(-.4);
    }
}

module build_inner_alignment_pegs(tol) {
    temp_hole_d=hole_d+tol;
    circle(d=temp_hole_d);
    forward(middle_hole_sep)
        circle(d=temp_hole_d);
    back(middle_hole_sep)
        circle(d=temp_hole_d);
}

module build_side_alignment_rails(tol, ignore_alignment=false) {
    temp_hole_d=hole_d+tol;
    if (length_inner_alignment_en || ignore_alignment) {
        right(board_w/2)
            circle(d=temp_hole_d);
        left(board_w/2)
            circle(d=temp_hole_d);
    }

    if (length_outer_alignment_en || ignore_alignment) {
        forward(side_hole_sep_l) {
            right(board_w/2)
                circle(d=temp_hole_d);
            left(board_w/2)
                circle(d=temp_hole_d);
        }
        back(side_hole_sep_l) {
            right(board_w/2)
                circle(d=temp_hole_d);
            left(board_w/2)
                circle(d=temp_hole_d);
        }
    }

    if (width_inner_alignment_en || ignore_alignment) {
        forward(board_l/2)
            circle(d=temp_hole_d);
        back(board_l/2)
            circle(d=temp_hole_d);
    }

    if (width_outer_alignment_en || ignore_alignment) {
        if(!power_port_en || ignore_alignment) {
            forward(board_l/2) left(side_hole_sep_w)
                circle(d=temp_hole_d);
        }
        forward(board_l/2) right(side_hole_sep_w)
            circle(d=temp_hole_d);
        back(board_l/2) left(side_hole_sep_w)
            circle(d=temp_hole_d);
        back(board_l/2) right(side_hole_sep_w)
            circle(d=temp_hole_d);
    }
}

module build_holes(tol, ignore_alignment=false) {
    build_inner_alignment_pegs(tol);
    build_side_alignment_rails(tol, ignore_alignment);
}

