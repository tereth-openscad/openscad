include <Round-Anything/polyround.scad>

include <BOSL/constants.scad>
use  <BOSL/shapes.scad>
use  <BOSL/transforms.scad>

//$fn = 100;
$fn = 100;
fn=20;
thickness = 2;

dowel_d = 16.1;
dowel_l = 10;
batt_d = 33.3;
batt_t = 6;
wire = [5,2.5, thickness+.2];
wire_h= wire/2;
wire_pts = [
    [-wire_h.x, -wire_h.y,1],
    [-wire_h.x,  wire_h.y,1],
    [ wire_h.x,  wire_h.y,1],
    [ wire_h.x, -wire_h.y,1]
];

switch = [thickness*3,9,batt_t+thickness+1];

hook_id=2.2;
hook_od=5.6;
hook_h=12;

difference() {
    union() {
        build_batt();
        build_dowel();
            build_hook();
    }
    // This hole is to let air escape so the dowel can be more easily inserted
    down(10)
        cylinder(d=5,h=20);
}

module build_hook() {
    difference() {
    }
}

module build_batt() {
    difference() {
        extrudeWithRadius(batt_t+thickness, r1=1, r2=1, fn=fn)
            circle(r=batt_d/2+thickness);
        up(thickness+0.01)
            extrudeWithRadius(batt_t+0.01, r1=1, r2=-1, fn=fn)
                circle(d=batt_d);

        down(0.01) fwd(batt_d/2-2-wire_h.y)
            polyRoundExtrude(wire_pts,thickness+0.02,-.5,-.5,fn=fn);

        right(batt_d/2)
            cuboid(switch, align=V_UP);

        //down(.1) fwd(batt_d/2-2)
        //    cuboid(wire, align=V_UP+V_BACK);
    }
}

module build_dowel() {
    difference() {
        union() {
            //Dowel body
            down(dowel_l)
                extrudeWithRadius(dowel_l, r1=1, r2=-2, fn=30)
                    circle(d=dowel_d+2*thickness);
            // Hook body
            left(dowel_d/2*sqrt(2)/2)fwd(dowel_d/2*sqrt(2)/2) rotate([-135,0,135])
                cylinder(d=hook_od, h=hook_h);
        }
        // Dowel hole
        down(dowel_l+0.01)
            extrudeWithRadius(dowel_l, r1=-1, r2=0, fn=30)
                circle(d=dowel_d);

        // Cut hook hole
        left(dowel_d/2*sqrt(2)/2)fwd(dowel_d/2*sqrt(2)/2) rotate([-135,0,135])
            down(0.05)
                cylinder(d=hook_id, h=hook_h+.1);
    }
}

