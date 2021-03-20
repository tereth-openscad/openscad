
include <tsmthread4.scad>
use <BOSL/constants.scad>
include <BOSL/shapes.scad>
include <BOSL/masks.scad>


od_3_4=1.05; //in
foot_height=15; //mm

difference() {
    cyl(d1=40, d2=30, h=foot_height, fillet=2, align=V_UP, $fn=75);
    //translate([0,0,-1/64]) thread_npt(DMAJ=od_3_4+$ID_COMP, PITCH=1/11.5, L=8/11.5);
    translate([0,0,2]) {
        imperial() {
            thread_npt(DMAJ=od_3_4+$ID_COMP, PITCH=0.07143, L=1);
        }
    }
}


