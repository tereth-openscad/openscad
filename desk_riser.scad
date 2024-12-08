
include <tsmthread4.scad>
use <BOSL/constants.scad>
include <BOSL/shapes.scad>
include <BOSL/masks.scad>



d_foot=40;
d_riser_bottom=80;
riser_h=9*25.4;

wall_t=2;

$fn=75;

difference() {
    cyl(d1=d_riser_bottom, d2=d_foot+wall_t*2, h=riser_h, align=V_UP);
    down(0.01)
    cyl(d1=d_riser_bottom-wall_t*2, d2=d_foot, h=riser_h+.1, align=V_UP);
}

difference() {
    cyl(d1=d_riser_bottom, d2=d_foot+wall_t*2, h=riser_h, align=V_UP);
    down(0.01)
        cyl(d=d_riser_bottom, h=riser_h-30-4, align=V_UP);
    up(riser_h-30+.01)
        cyl(d=d_foot, h=30, align=V_UP);
}

