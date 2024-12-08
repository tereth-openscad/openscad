
use <BOSL/constants.scad>
include <BOSL/shapes.scad>
include <BOSL/masks.scad>

// nut dimensions
nut_flat_d=8.6;
nut_corner_d=9.8;
nut_thickness=3.2+.4;


difference() {
    cuboid([nut_flat_d-.6, 20, nut_thickness-.8],align=V_BACK);
    zrot(360/12)
    cyl(d=nut_corner_d+.6, h=nut_thickness, $fn=6, center=true);
}
