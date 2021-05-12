use <BOSL/constants.scad>
include <BOSL/shapes.scad>
include <BOSL/masks.scad>

handle_base=15;
handle_depth=15;
knob_thickness=20;
knob_width=30;

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

letter="F";
text_font="Aladin"; // [Aladin, Distant Galaxy, Enliven, Ethnocentric, Forte, Heavy Heap, Huxley Titling, Italianate, LetterOMatic!, Magneto, Martina, Minerva, Nasalization, OpineHeavy, Ravie, Roland, Showcard Gothic, Valken]
text_size=12;

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

module full_knob() {
    difference() {
        group() {
            cuboid([handle_base,handle_depth,handle_base], fillet=2, align=V_FWD, edges=EDGES_Y_ALL);
            fwd(handle_depth)
                cuboid([knob_width,knob_thickness,knob_width], fillet=7, align=V_FWD);
        }

        build_nut_inset();

        fwd(handle_base + knob_thickness-1.9) xrot(90)
        linear_extrude(2)
            text(letter, size=text_size, font=text_font, valign="center", halign="center");
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

full_knob();

