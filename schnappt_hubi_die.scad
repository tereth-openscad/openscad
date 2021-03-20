
include <BOSL/constants.scad>
use <BOSL/transforms.scad>
use <BOSL/shapes.scad>
use <BOSL/masks.scad>


//Die side length
die_side=20;
edge_fillet=2;
corner_rounding=6; //[0:.1:20]
die_size=[die_side,die_side,die_side];

$fn=75;

intersection() {
    difference() {
        cuboid(die_size, fillet=edge_fillet);

        fwd(die_side/2) xrot(90)
            build_clock();
        back(die_side/2) xrot(90) zrot(180)
            build_clock();

        up(die_side/2)
            build_hubi();
        down(die_side/2) zrot(180)
            build_hubi();

            
        right(die_side/2) zrot(90) xrot(90) 
            build_two();

        left(die_side/2) zrot(90) xrot(90)
            build_three();

    }

    sphere(r=die_side-corner_rounding, $fn=200);
}

module build_clock() {
    difference() {
        cyl(r=die_side/3, h=1);
        cyl(r=die_side/3-1, h=1.2);
    }

    cyl(r=1);
    cuboid([1,die_side/4,1], align=V_BACK, fillet=.4, edges=EDGE_BK_RT+EDGE_BK_LF);
}

module build_hubi() {
    body_width=die_side*2/5;
    body_height=die_side/3;

    fwd((body_width/2 - body_width/5)/2)
        difference() {
            group() {
                back(body_height/2)
                    cyl(r=body_width/2, h=1);
                cuboid([body_width,body_height,1]);

                point_size=sqrt(pow(body_width/5,2)/2);
                point_cube=[point_size, point_size,1];

                fwd(body_height/2)
                    grid2d(size=body_width,cols=5,rows=1)
                        zrot(45) cuboid(point_cube);
            }

            back(body_height/2) left(2)
                cyl(r=.8,h=1);
            back(body_height/2) right(2)
                cyl(r=.8,h=1);
        }
}

module build_two() {
    fwd(die_side/5) right(die_side/5)
        cyl(r=2, h=1);
    back(die_side/5) left(die_side/5)
        cyl(r=2, h=1);

}

module build_three() {
    fwd(die_side/5)
        cyl(r=2, h=1);
    back(die_side/5) left(die_side/5)
        cyl(r=2, h=1);
    back(die_side/5) right(die_side/5)
        cyl(r=2, h=1);
}


