include <BOSL/constants.scad>
use <BOSL/transforms.scad>
use <BOSL/shapes.scad>
use <BOSL/masks.scad>


wall_thick=2;
white_thick = 11;
top_to_hook=19.2;
top_to_slot=8;
back_slot_inset=5;
front_slot_inset=.8;
width=15;
screw_hole_d=4.2; //#8 screw
screw_head_d=8.4; //#8 screw
detents_r=.6;
detents_d=2.6;
tab_height=screw_head_d+wall_thick;

$fn=50;

difference() {
    group() {
        cuboid([width, white_thick+wall_thick*2, top_to_hook+wall_thick*2], align=V_FWD, fillet=1, edges=EDGE_BOT_FR);

        //screw mount
        up(top_to_hook/2+wall_thick)
            cuboid([width, wall_thick*2, tab_height], align=V_FWD+V_UP, fillet=2, edges=EDGES_Y_TOP+EDGE_TOP_FR);

        up(top_to_hook/2+wall_thick) fwd(wall_thick*2)
            interior_fillet(l=width, r=white_thick/2, orient=ORIENT_XNEG);
    }

    //main cutout
    fwd(wall_thick)
        cuboid([width+1, white_thick, top_to_hook], align=V_FWD);
    //cutout for the clip
    down(wall_thick) fwd(wall_thick+back_slot_inset) 
        cuboid([width+1, white_thick-back_slot_inset-front_slot_inset, top_to_hook+wall_thick], align=V_FWD);

    //front corner fillet
    up(top_to_hook/2+wall_thick) fwd(white_thick+wall_thick*2)
        fillet_mask_x(l=width, r=3);

    //screw hole
    up(top_to_hook/2+tab_height/2+wall_thick/2+.5)
        xrot(90) cylinder(d=screw_hole_d, h=10, center=true);

    //screw head hole
    up(top_to_hook/2+tab_height/2+wall_thick/2+.5) fwd(10/2+wall_thick)
        xrot(90) cylinder(d=screw_head_d, h=10, center=true);
}

//Interior fillets
up(top_to_hook/2)fwd(wall_thick)
    interior_fillet(l=width, r=white_thick/2, orient=ORIENT_X_180);
up(top_to_hook/2)fwd(white_thick+wall_thick)
    interior_fillet(l=width, r=white_thick/2, orient=ORIENT_X_270);


up(top_to_hook/2) down(top_to_slot) fwd(wall_thick-detents_d/2+detents_r)
    yrot(90)
        cylinder(d=detents_d, h=width, center=true);

up(top_to_hook/2) down(top_to_slot) fwd(wall_thick+white_thick+detents_d/2-detents_r)
    yrot(90)
        cylinder(d=detents_d, h=width, center=true);

