include <BOSL/constants.scad>
use <BOSL/transforms.scad>
use <BOSL/shapes.scad>
use <BOSL/masks.scad>

$fn=50;

width=25;
height=80;
depth=58;

rotate([90,0,0])
difference() {
    group() {
        prismoid(size1=[height,width],size2=[0,width],h=depth,shift=[height/2,0]);
        right(height/2) cuboid([10,width,depth],align=V_UP+V_RIGHT);
        right(height/2+10) up(depth) cuboid([3,width,3],align=V_DOWN+V_RIGHT);
    }
    right(30) up(3) screw_blank();
    left(10) up(3) screw_blank();
    left(height/2-20) down(1) cuboid([20,width+1,50],align=V_UP+V_LEFT);
}


module screw_blank() {
    cyl(d=10, h=100, orient=ORIENT_Z, align=V_UP);
    cyl(d=4.2, h=100, orient=ORIENT_Z, align=V_DOWN);
}


