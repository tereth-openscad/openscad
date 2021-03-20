
include <../BOSL/constants.scad>
use <../BOSL/shapes.scad>
use <../BOSL/transforms.scad>
use <../BOSL/masks.scad>



small_d=9.4;
big_d=30;
big_d_len=28;
hex_bar_d=6.7;
hex_bar_len=38;

cut_height=19.6;

top_to_bottom_of_hex=17.2;

$fn=50;


module cut_out() {
    difference() {
        group() {
            left(small_d/2+2.5)
                cuboid([5,5,20]);
            right(small_d/2+2.5)
                cuboid([5,5,20]);
            down(10-2.5/2)
                cuboid([small_d+1,5,2.5]);
            down(7.5) {
                right(small_d/2)
                    interior_fillet(5,r=2, orient=ORIENT_Y);
                left(small_d/2)
                    interior_fillet(5,r=2, orient=ORIENT_YNEG);
            }
        }

        right(small_d/2+5) down(10)
            fillet_mask_y(5,r=2);
        left(small_d/2+5) down(10)
            fillet_mask_y(5,r=2);
    }

}

difference() {
    intersection() {
        cuboid([hex_bar_len, big_d, cut_height]);

        group() {
            cyl(d=big_d, h=big_d_len, orient=ORIENT_X);

            up(cut_height/2-(top_to_bottom_of_hex-small_d/2)) 
                cyl(d=small_d, h=hex_bar_len, orient=ORIENT_X);
        }
    }

    up(cut_height/2-(top_to_bottom_of_hex-small_d/2))
    cyl(d=hex_bar_d,h=hex_bar_len+1, orient=ORIENT_X, $fn=6);
    zrot(90) up(15)
        cut_out();
}

