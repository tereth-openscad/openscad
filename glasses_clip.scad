
use <BOSL/constants.scad>
include <BOSL/shapes.scad>
include <BOSL/masks.scad>


front_h=4.3;
front_w=4.4;
back_h=6.7;
back_w=2.6;
length=33.2;


difference() {
    prismoid(size1=[front_h,front_w]+[2,2], size2=[back_h,back_w]+[2,2], h=length, shift=[(back_h-front_h)/2,0]);
    prismoid(size1=[front_h,front_w], size2=[back_h,back_w], h=length, shift=[(back_h-front_h)/2,0]);
    cuboid([1,4,length], align=V_UP+V_FWD);
}


