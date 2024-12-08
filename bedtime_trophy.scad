include <BOSL/constants.scad>
use <BOSL/transforms.scad>
use <BOSL/shapes.scad>
use <BOSL/masks.scad>

scale_mult = 1;
// V1
tower_height=60;
base_height=20;

// V2
tower_base_d=10*scale_mult;
tower_height_v2=30*scale_mult;

bed=[30, 50, 5]*scale_mult;
leg=[3,3,3]*scale_mult;
pillow=[bed.x-5*scale_mult,6*scale_mult,3*scale_mult];

gold=[212/255,175/255,55/255];
silver=[192/255,192/255,192/255];
$fn=50;

name_plate_plate=[38*scale_mult,10*scale_mult,1];

name_and_trophy=false;

difference() {
    bed_v2();

    if(!name_and_trophy)
        back(4*scale_mult) orient_name_plate()
            cuboid(name_plate_plate+[8*scale_mult,.8,.4]);
}

module bed_v2() {
    color(gold)
    cuboid(bed, fillet=2, edges=EDGES_Z_ALL+EDGES_TOP);

    color(gold)
    hull() {
        fwd(bed.y/2-tower_base_d)
            cyl(d=tower_base_d);
        up(tower_height_v2-leg.z)
            bed_rot() 
                linear_extrude(.4) {
                    hull() {
                        grid2d(spacing=[bed.x,bed.y], cols=2, rows=2)
                            circle(r=2);
                    }
                }
    }

    color(gold)
    up(tower_height_v2)
        bed_rot() build_bed();

    if(name_and_trophy)
        orient_name_plate()
            name_plate();
}

module orient_name_plate() {
    up(bed.z+1*scale_mult) back(4*scale_mult) right(11*scale_mult)
        yrot(80) zrot(90)
            children();
}

module name_plate() {
    color(gold)
        cuboid(name_plate_plate, fillet=.4);
    color(silver)
        linear_extrude(1)
            text("1st in bed", font="Distant Galaxy", size=9, halign="center", valign="center");
}

module bed_v1() {
    // Base
    hull() {
        cyl(d=60, h=.1, $fn=6);
        up(base_height)
            cyl(d=40,h=.1, $fn=6);
    }

    up(base_height) {
        difference() {
            // Tower
            group() {
                up(tower_height/2) {
                    linear_extrude(height=tower_height, center=true, convexity=10, twist=-200, scale=.7) {
                        zring(n=5, r=10)
                            circle(r=3, $fn=6);
                    }
                }
            }

            up(tower_height-5) bed_rot()
                cuboid([bed.x+5,bed.y+5,20], align=V_UP);
        }

        up(tower_height-5) bed_rot()  {
            hull() {
                down(10)
                    cyl(d=5, h=.1);
                up(10)
                    cuboid([bed.x+5,bed.y+5,.1]);
            }
            up(10+leg.z)
            build_bed();
        }
    }
}


module bed_rot() {
    xrot(20) yrot(15)
        children();
}

module build_bed() {
    // Bed
    cuboid(bed, fillet=1, align=V_UP);

    //Sheet
    fwd((pillow.y+5)/2)
        cuboid([bed.x+1, bed.y-pillow.y-5, bed.z+1], fillet=1, align=V_UP);

    // Legs
    grid2d(spacing=[bed.x-2*leg.x,bed.y-2*leg.y], cols=2, rows=2)
        cuboid(leg, align=V_DOWN, fillet=.6, edges=EDGES_Z_ALL);

    // Pillow
    back(bed.y/2-5*scale_mult) up(4*scale_mult)
        cuboid(pillow, fillet=1.5, align=V_UP);
}



