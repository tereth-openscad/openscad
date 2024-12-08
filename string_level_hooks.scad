
use <BOSL/constants.scad>
include <BOSL/shapes.scad>
include <BOSL/masks.scad>
include <BOSL/paths.scad>

$fn=50;


end_p=[[   0,    0],
       [   0, 13.1-.6],
       [ 2.1, 17.1-.6],
       [10.1, 17.1-.6],
       [12.2, 13.1-.6],
       [12.2,    0], 
       [12.2-1.5,0],
       [ 6.3,    5],
       [ 1.5,    0],
       [   0,    0]];

linear_extrude(6)
    offset(r=.6) offset(delta=-.6)
    offset(r=-1) offset(delta=1)
        polygon(end_p);

up(4) right(12.2/2) back(17.1-.6)
    build_hook();


module build_hook() {
    difference() {
        cyl(r=5,h=2, align=V_UP);
        down(.1)
            cuboid([10,2,3], align=V_UP+V_LEFT+V_BACK);
        down(.1)
        difference() { 
            cyl(r=3,h=2.2, align=V_UP);
            down(.2)
                cuboid([8,8,3],align=V_UP+V_FWD);
        }
    }
}



