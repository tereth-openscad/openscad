
use <BOSL/constants.scad>
include <BOSL/shapes.scad>
include <BOSL/masks.scad>



clip_h=9.6;
clip_w=2.2;

clip_t=1.4;

lid_l=8;

$fn=50;

cuboid([clip_t*3, clip_w+2, clip_h+2], align=V_LEFT);

//cuboid([clip_t, clip_w, clip_h]);

up(clip_h/2) {
    cuboid([clip_t+2, clip_w, 1], align=V_DOWN+V_RIGHT);
}
down(clip_h/2) {
    cuboid([clip_t+2, clip_w, 1], align=V_UP+V_RIGHT);
}

right(clip_t)  {
    up(clip_h/2) {
        prismoid(size1=[2, clip_w], size2=[0,clip_w],shift=[-.6,0],h=.5, align=V_RIGHT+V_UP);
    }
    down(clip_h/2) xrot(180) {
        prismoid(size1=[2, clip_w], size2=[0,clip_w],shift=[-.6,0],h=.5, align=V_RIGHT+V_UP);
    }
}

cuboid([clip_t, lid_l-clip_w, clip_w+2], align=V_BACK+V_LEFT);
fwd(clip_w/2)
    cuboid([clip_t, lid_l-clip_w/2, clip_w], align=V_BACK+V_RIGHT);

