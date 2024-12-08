include <BOSL/constants.scad>
use <BOSL/transforms.scad>
use <BOSL/shapes.scad>
use <BOSL/masks.scad>


$fn=50;


cam_w=25.2;
cam_h=25.6;
cam_t=2.4;


difference() {
    cuboid([cam_w,cam_h,cam_t]+[4,0,2]);
    fwd(1)
        cuboid([cam_w,cam_h,cam_t]);
    fwd(2)
        cuboid([cam_w-2,cam_h,cam_t+5]);
}

back(cam_h/2+10) {
    cuboid([cam_w+4,10,cam_t+2],align=V_FWD);
    up((cam_t+2)/2) fwd(1)
        prismoid(size1=[cam_w+4,2], size2=[20,2], h=10, orient=ORIENT_Z);
}

left((cam_w+4)/2-1.5) fwd(cam_h/2+1)
    cuboid([3,2,cam_t+2]);

right((cam_w+4)/2-1.5) fwd(cam_h/2+1)
    cuboid([3,2,cam_t+2]);

