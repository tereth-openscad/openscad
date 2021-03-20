use <BOSL/constants.scad>
include <BOSL/shapes.scad>
include <BOSL/masks.scad>

// 5 in width handle (hole to hole)
handle_w=153;
// thickness of the handle 
handle_base=15;
// How deep the handle is (space between handle and drawer)
handle_depth=25;

// nut dimensions
nut_flat_d=8.6;
nut_corner_d=9.8;
nut_thickness=3.2+.4;

// depth of the nut insert from where the handle would mate with the drawer
nut_depth=5;

// depth for screw behind the nut
extra_screw_depth=10;

// #8 machine screw (diameter)
screw_d=4.17;

fillet_r=3;

$fn=50;

module build_nut_inset() {
    fwd(nut_thickness/2+nut_depth) {
        down(handle_base/2/2)
            cuboid([nut_flat_d+.4, nut_thickness, handle_base/2+.1]);
        xrot(90) zrot(360/6/2)
            cyl(d=nut_corner_d+.6, h=nut_thickness, $fn=6, center=true);

        back((nut_thickness+nut_depth-extra_screw_depth)/2)
            ycyl(d=screw_d+.4,h=nut_depth+extra_screw_depth+.1);
    }
}

module full_handle() {
    difference() {
        group() {
            left(handle_w/2) fwd(fillet_r/2)
                cuboid([handle_base, handle_depth+fillet_r, handle_base], fillet=fillet_r, edges=EDGES_Y_ALL);
            right(handle_w/2) fwd(fillet_r/2)
                cuboid([handle_base, handle_depth+fillet_r, handle_base], fillet=fillet_r, edges=EDGES_Y_ALL);

            fwd(handle_depth/2+handle_base/2) {
                left(handle_w/2) 
                    cuboid([handle_base, handle_base, handle_base],fillet=fillet_r);
                right(handle_w/2)
                    cuboid([handle_base, handle_base, handle_base], fillet=fillet_r);
            }

            fwd((handle_depth+handle_base)/2)
                cuboid([handle_w-handle_base+fillet_r*2, handle_base, handle_base], fillet=fillet_r, edges=EDGES_X_ALL);
        }

        left(handle_w/2) back(handle_depth/2)
            build_nut_inset();
        right(handle_w/2) back(handle_depth/2)
            build_nut_inset();
    }
}

module test_nut() {
    handle_depth=15;
    difference() {
        group() {
            left(handle_w/2) fwd(fillet_r/2)
                cuboid([handle_base, handle_depth+fillet_r, handle_base], fillet=fillet_r, edges=EDGES_Y_ALL);
        }

        left(handle_w/2) back(handle_depth/2)
            build_nut_inset();
    }
}

full_handle();

