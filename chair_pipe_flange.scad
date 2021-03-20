
include <tsmthread4.scad>
use <BOSL/constants.scad>
include <BOSL/shapes.scad>
include <BOSL/masks.scad>


od_3_4=1.05; //in
foot_height=20; //mm

$fn=50;

wall_t=.11811;
flange_w=2.5;

head_d=11/32;
shank_d=5/32;

module chair_flange() {
    difference() {
        imperial() {
            //top
            up(1)
                cuboid([flange_w,flange_w,wall_t], align=V_UP+V_FWD+V_RIGHT);
            //pipe thread
            fwd(.1)
                cuboid([od_3_4+.5, od_3_4+.5, 1+wall_t], fillet=.15, edges=EDGE_FR_RT+EDGE_BOT_FR+EDGE_BOT_RT, align=V_UP+V_RIGHT+V_FWD);
            //left wall
            cuboid([wall_t, flange_w, 1+wall_t], align=V_UP+V_FWD+V_RIGHT);
            //back wall
            cuboid([flange_w,wall_t,1+wall_t], align=V_UP+V_FWD+V_RIGHT);
        }
        imperial() {
            up(1) fwd(flange_w) right(flange_w)
                fillet_mask_z(l=wall_t, r=1, align=V_UP);

            fwd((od_3_4+.5)/2-.1) right((od_3_4+.5)/2-.1) down(.15) xrot(5) yrot(5)
                    thread_npt(DMAJ=od_3_4+$ID_COMP, PITCH=0.07143, L=1.1);

            //screw holes
            fwd(flange_w-.6) right(flange_w-.6) up(1) down(.0001)
                cyl(d1=head_d, d2=shank_d, l=1/8, align=V_UP);

            fwd(flange_w-.5) up(.5) left(.0001)
                cyl(d1=head_d, d2=shank_d, l=1/8, align=V_RIGHT, orient=ORIENT_XNEG);

            right(flange_w-.5) up(.5) back(.0001)
                cyl(d1=head_d, d2=shank_d, l=1/8, align=V_FWD, orient=ORIENT_Y);
        }
    }
}

chair_foot();
module chair_foot() {
    difference() {
        cyl(d1=44, d2=34, h=foot_height, fillet=2, align=V_UP, $fn=75);
        imperial() {
            xrot(5) yrot(5) up(.15) left(.07) back(.07)
                thread_npt(DMAJ=od_3_4+$ID_COMP, PITCH=0.07143, L=1.1);
        }
    }
}

//make_3_4_pipe(12);

module make_3_4_pipe(l) {
    imperial() {
    fwd((od_3_4+.5)/2) right((od_3_4+.5)/2) down(.15) xrot(5) yrot(5)
        down(.25) {
            thread_npt(DMAJ=od_3_4+$OD_COMP, PITCH=0.07143, L=1);
            down((l-2)/2)
                cyl(d=od_3_4, h=l-2);
            down((l-2)+1)
                thread_npt(DMAJ=od_3_4+$OD_COMP, PITCH=0.07143, L=1);
        }
    }
}


