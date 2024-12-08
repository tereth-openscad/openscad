
include <tsmthread4.scad>
use <BOSL/constants.scad>
include <BOSL/shapes.scad>
include <BOSL/masks.scad>


od_3_4=1.05; //in
foot_height=20; //mm

$fn=50;

wall_t=.11811;
flange_w=3;
box_w=od_3_4+.5;
box_h=wall_t+1;
fillet_r=.3;

screw_index=1; // [0:#6, 1:#8, 2:#10]

countersink=false;
head_diameters=[9/32,11/32,25/64];
shank_diameters=[9/64,5/32,3/16];
head_d=head_diameters[screw_index];
shank_d=shank_diameters[screw_index];

chair_flange();
module chair_flange() {
    difference() {
        imperial() {
            //top
            up(1)
                cuboid([flange_w,flange_w,wall_t], align=V_UP+V_FWD+V_RIGHT);
            //pipe box
            cuboid([box_w, box_w, box_h], fillet=0, edges=EDGE_FR_RT+EDGE_BOT_FR+EDGE_BOT_RT, align=V_UP+V_RIGHT+V_FWD);
            //left wall
            cuboid([wall_t, flange_w, box_h], align=V_UP+V_FWD+V_RIGHT);
            //back wall
            cuboid([flange_w,wall_t, box_h], align=V_UP+V_FWD+V_RIGHT);

            right(box_w) fwd(wall_t) zrot(-90)
                interior_fillet(r=fillet_r, l=box_h, orient=ORIENT_Z, align=V_UP);
            right(wall_t) fwd(box_w)  zrot(270)
                interior_fillet(r=fillet_r, l=box_h, orient=ORIENT_Z, align=V_UP);

            right(box_w) up(box_h-wall_t) fwd(wall_t) xrot(180)
                interior_fillet(r=fillet_r, l=flange_w-box_w, orient=ORIENT_X, align=V_RIGHT);
            right(wall_t) up(box_h-wall_t) fwd(box_w) xrot(180)
                interior_fillet(r=fillet_r, l=box_w-wall_t+fillet_r, orient=ORIENT_X, align=V_RIGHT);

            right(wall_t) up(box_h-wall_t) fwd(box_w) yrot(180)
                interior_fillet(r=fillet_r, l=flange_w-box_w, orient=ORIENT_Y, align=V_FWD);
            right(box_w) up(box_h-wall_t) fwd(wall_t) yrot(180)
                interior_fillet(r=fillet_r, l=box_w-wall_t+fillet_r, orient=ORIENT_Y, align=V_FWD);
        }
        imperial() {
            up(1) fwd(flange_w) right(flange_w)
                fillet_mask_z(l=wall_t, r=1, align=V_UP);

            fwd(box_w/2-.1) right(box_w/2-.1) down(.15) xrot(5) yrot(5)
                    thread_npt(DMAJ=od_3_4+$ID_COMP, PITCH=0.07143, L=1.1);

            //screw holes
            fwd(flange_w-.6) right(flange_w-.6) up(1) down(.0001)
                screw_hole();
            fwd(.7) right(box_w+.6) up(1) down(.0001)
                screw_hole();
            fwd(box_w+.6) right(.7) up(1) down(.0001)
                screw_hole();

            fwd(.6) right(.6) up(1) down(.0001)
                screw_hole();

            fwd(flange_w-.5) up(.3) left(.0001) {
                if(countersink) {
                    cyl(d1=head_d, d2=shank_d, l=1/8, align=V_RIGHT, orient=ORIENT_XNEG);
                    right(1/8)
                        cyl(d=head_d, l=fillet_r, align=V_RIGHT, orient=ORIENT_XNEG);
                } else {
                    cyl(d=shank_d, l=1, align=V_CENTER, orient=ORIENT_XNEG);
                }
            }

            if(0) {
                fwd(box_w/2) up(.25) left(.0001) {
                    cyl(d1=head_d, d2=shank_d, l=1/8, align=V_RIGHT, orient=ORIENT_XNEG);
                    right(1/8)
                        cyl(d=head_d, l=2, align=V_RIGHT, orient=ORIENT_XNEG);
                }
            }

            right(flange_w-.5) up(.3) back(.0001) {
                if(countersink) {
                    cyl(d1=head_d, d2=shank_d, l=1/8, align=V_FWD, orient=ORIENT_Y);
                    fwd(1/8)
                    cyl(d=head_d, l=2, align=V_FWD, orient=ORIENT_Y);
                } else {
                    cyl(d=shank_d, l=1, align=V_CENTER, orient=ORIENT_Y);
                }
            }

            if(0) {
                right(box_w/2) up(.25) back(.0001) {
                    cyl(d1=head_d, d2=shank_d, l=1/8, align=V_FWD, orient=ORIENT_Y);
                    fwd(1/8)
                    cyl(d=head_d, l=2, align=V_FWD, orient=ORIENT_Y);
                }
            }


            //clean up the box fillet meeting point
            right(wall_t+fillet_r) up(box_h-wall_t-fillet_r) fwd(box_w+fillet_r) xrot(180)
                cyl(r=fillet_r, l=flange_w, orient=ORIENT_X, align=V_RIGHT);
            right(box_w+fillet_r) up(box_h-wall_t-fillet_r) fwd(wall_t+fillet_r) yrot(180)
                cyl(r=fillet_r, l=flange_w, orient=ORIENT_Y, align=V_FWD);
        }
    }
}

module screw_hole(countersink=false) {
    if(countersink) {
        cyl(d1=head_d, d2=shank_d, l=1/8, align=V_UP);
        cyl(d=head_d, l=1, align=V_DOWN);
    } else {
        cyl(d=shank_d, l=1, align=V_CENTER);
    }

}

// chair_foot();
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


