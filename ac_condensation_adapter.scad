
include <tsmthread4.scad>

$fn=100;

od_3_4=1.05;

if(0)
imperial() {
    translate([0,0,.725]) {
    difference() {
        union() {
            thread_npt(DMAJ=od_3_4+$OD_COMP, PITCH=0.07143, L=0.07143*8);
        }
        
        cylinder(d=3/4, h=2);
    }

    translate([0,0,-.725]) 
    difference() {
        cylinder(d=od_3_4,h=.725);
        translate([0,0,-.01])
            cylinder(d=3/4,h=.725+.1);
    }
    }
}

flex_od=.7;
imperial() {
translate([1.5,0,0])
    difference() {
        cylinder(d=od_3_4,h=.725);
        translate([0,0,-.01])
            cylinder(d=flex_od,h=.725+.1);
    }
}

