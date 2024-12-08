
use <BOSL/constants.scad>
include <BOSL/shapes.scad>
include <BOSL/masks.scad>



tine_len=25;
// R + r = tine_len
a = 2 * tan(30) * tine_len;
$fn=50;

circle_r=(a/2)/cos(30);
num_tines=4;
twist=(360/num_tines)*2;

straight_h=130;
taper_h=70;
slice_h=.6;

linear_extrude(straight_h, twist=twist, slices=straight_h/slice_h)
    zrot_copies(n=num_tines)
        build_tine2();

up(straight_h)
difference() {
    linear_extrude(taper_h, twist=twist/2, scale=.5, slices=taper_h/slice_h)
        zrot_copies(n=num_tines)
            build_tine2();
    up(taper_h-5) {
        fillet_r=tine_len-tine_len*(.5*.8)+5;
        fillet_cylinder_mask(r=fillet_r, fillet=fillet_r);
        cuboid([fillet_r*2,fillet_r*2,fillet_r*2], align=V_UP);
    }
}

module build_tine() {
    difference() {
        scale([1,.1,1])
            right(circle_r/2-8)
                minkowski()
                {
                    circle(r=8);
                    circle(r=circle_r, $fn=3);
                }

        left(30) fwd(15)
            square(30);
    }
}

module build_tine2() {
    right(1)
        minkowski()
        {
            circle(r=1);
            //circle(r=circle_r, $fn=3);
            right(tine_len/2)
                square([tine_len,2],center=true);
        }
}

module rounded_square( width, radius_corner ) {
	translate( [ radius_corner, radius_corner, 0 ] )
		minkowski() {
			square( width - 2 * radius_corner );
			circle( radius_corner );
		}
}

