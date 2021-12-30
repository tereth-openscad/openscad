include <BOSL/constants.scad>
use <BOSL/transforms.scad>
use <BOSL/shapes.scad>
use <BOSL/masks.scad>


$fn=50;


cam_w=25.2;
cam_h=24.2;
cam_t=2;


difference() {
    cuboid([cam_w,cam_h,cam_t]+[2,0,2]);
    fwd(1)
        cuboid([cam_w,cam_h,cam_t]);
    fwd(2)
        cuboid([cam_w-2,cam_h,cam_t+5]);
}


