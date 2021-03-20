include <BOSL/constants.scad>
use <BOSL/transforms.scad>
use <BOSL/shapes.scad>
use <BOSL/masks.scad>


$fn=50;



h=14;
d=72;


difference() {
    group () {
        pie_slice(45, h=h, r=d/2);
    }
    translate([-0.01, -0.01, 0]) {
        up(1)
            pie_slice(45,h=h+1,r=d/2-1);
        down(.01)
            pie_slice(45,h=2, r=d/2-10);
    }
}

right(d/2-10)
    cuboid([10, 1, h], align=V_UP+ V_RIGHT+V_BACK);

zrot(45)
right(d/2-10)
    cuboid([10, 1, h], align=V_UP+ V_RIGHT+V_BACK);

zrot(22.5)
right(d/2-10)
    cuboid([10, 1, h], align=V_UP+ V_RIGHT+V_BACK);
