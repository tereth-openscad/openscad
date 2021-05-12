
use <BOSL/constants.scad>
include <BOSL/shapes.scad>
include <BOSL/masks.scad>

pin_d = .7;
flag_h = 10;
flag_l = 15;

line_w = .5;

type1=true;
type2=true;

$fn=50;

if(type1) {
    difference() {
        group() {
            cyl(d=pin_d+line_w*2, h=flag_h, align=V_UP, fillet=.2);
            cuboid([flag_l, 2*.4, flag_h], align=V_RIGHT+V_UP, fillet=.2, edges=EDGES_ALL-EDGES_LEFT);
        }
        down(.1)
            cyl(d=pin_d, h=flag_h+1, align=V_UP);
    }

}


if(type2) {
    back(20) xrot(90)
        difference() {
            group() {
                cyl(d=pin_d+line_w*2, h=flag_h, fillet=.2, align=V_UP);
                cuboid([flag_l, pin_d+2*line_w, flag_h], align=V_RIGHT+V_UP, fillet=.2, edges=EDGES_ALL-EDGES_LEFT);
            }
            down(.1)
                cyl(d=pin_d, h=flag_h+1, align=V_UP);
        }
}
