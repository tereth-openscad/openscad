
use <BOSL/constants.scad>
include <BOSL/shapes.scad>
include <BOSL/masks.scad>

pixel = [75,156,12];

$fn=100;

big_pixel = pixel + [3,-30,2];
bottom_hole = [40,10,8];

module pixel() {
    translate([0,4,0])
        color("darkgray")
            cuboid(pixel, fillet=1, align=V_BACK);
}

module pixel_holster() {
    color("lightblue")
        difference() {
            cuboid(big_pixel+[3,0,3], fillet=2, align=V_BACK);
            translate([0,3,0])
                cuboid(big_pixel, fillet=1, align=V_BACK);
            translate([0,10,5])
                cuboid(pixel-[10,0,0], fillet=2, align=V_BACK);
            translate([0,-5,0])
                cuboid(bottom_hole, fillet=2, align=V_BACK);

            translate([0,4+5,-big_pixel.z/2]) {
                difference() {
                    cuboid([big_pixel.x/2, big_pixel.y-19, 5], align=V_BACK);
                    sparse_strut(h=big_pixel.x/2, l=big_pixel.y-19, thick=5, strut=3, maxang=45, orient=ORIENT_Y_90, align=V_BACK);
                }
            }
        }
}

color("gray")
pixel_holster();



color("orange")
left(big_pixel.x/2+(11+2)/2)
cable_holster(orient=ORIENT_Y_90, align=V_BACK);
color("darkslategray")
right(big_pixel.x/2+(11+2)/2) yrot(180)
cable_holster(orient=ORIENT_Y_90, align=V_BACK);

module cable_head(walls=0, tail_len=10, head_len=15, orient=ORIENT_Z, align=V_CENTER, center=undef)
{
    cable_diameter=5+2*walls;
    cable_tail = tail_len;
    head_size=[11,6,head_len]+[2*walls,2*walls,0];
    transition_dim=[5,11,9]+[2*walls,2*walls,0];
    total_len = cable_tail+head_size.z+transition_dim.z;

    orient_and_align([11+2*walls,6+2*walls,total_len], orient, align, center=center) {
        translate([0,0,-total_len/2]) {
            cylinder(d=cable_diameter,h=cable_tail);
            translate([0,0,cable_tail+transition_dim.z/2]) {
                intersection() {
                    cylinder(h=transition_dim.z, d1=transition_dim.x, d2=transition_dim.y,center=true);
                    cube([head_size.x,head_size.y,transition_dim.z],center=true);

                }
                translate([0,0,transition_dim.z/2+head_size.z/2])
                intersection() {
                    cylinder(h=head_size.z, d=head_size.x,center=true);
                    cube(head_size,center=true);
                }
            }
        }
    }
}

module cable_holster(orient=ORIENT_Z, align=V_CENTER, center=undef)
{
    tail_len = 5;
    head_len = 5;
    trans_len = 9;
    total_len = tail_len + head_len + trans_len;
    orient_and_align([11+2*2,6+2*2,total_len], orient, align, center=center) {
        translate([0,0,-total_len/2]) {
            difference() {
                cable_head(walls=2, tail_len=tail_len, head_len=head_len, align=V_UP);
                translate([0,0,-1]) {
                    cable_head(walls=1, tail_len=11, head_len=6, align=V_UP);
                    cuboid([5,7,total_len+2], align=V_UP+V_FWD);
                }
                up(total_len) {
                    translate([2.5,-4,0])
                        fillet_mask_y(l=2,r=3);
                    translate([-2.5,-4,0])
                        fillet_mask_y(l=2,r=3);
                }

                up(total_len) {
                    difference() {
                        fillet_hole_mask(d=11+2, fillet=.2);
                        translate([0,-15/2,0])
                            cuboid([13,14/2,5]); 
                        translate([0,+15/2,0])
                            cuboid([13,14/2,5]); 
                    }
                }
            }
        }
    }
}

