

include <BOSL/constants.scad>
use  <BOSL/shapes.scad>
use  <BOSL/transforms.scad>

$fn = 100;
thickness = 2;
leg_od = 19.7;
foot_id = leg_od;
foot_h = 30;
foot_t = 2;

foot_od = foot_id + 2*foot_t;

top_foot_extra_d = 2;
bottom_foot_extra_d = 10;


difference() {
    cyl(d1=foot_od+bottom_foot_extra_d,d2=foot_od+top_foot_extra_d,h=foot_h,fillet=2,align=V_UP);
    up(foot_t)
        cyl(d=foot_id,h=foot_h, align=V_UP);
}

up(foot_t)
    cyl(d=12,h=4,fillet2=1, align=V_UP);


