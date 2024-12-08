

include <BOSL/constants.scad>
use  <BOSL/shapes.scad>
use  <BOSL/transforms.scad>
use  <BOSL/masks.scad>
use  <BOSL/paths.scad>

$fn = 100;

eye_width=50;
bridge_width=15;

frame = false;
arm = true;
left = false;
right = true;

if(frame) {
    left(eye_width/2+bridge_width/2) make_eye();
    right(eye_width/2+bridge_width/2) make_eye();
    up(1)fwd(2) make_nose();
    fwd(2) arm_nub();
    fwd(2) mirror([1,0,0]) arm_nub();
}

if(arm) {
    if(left) {
        right(1)
        arm();
    }
    if(right) {
        left(1)
        mirror([1,0,0]) arm();
    }
}

module arm() {
    difference() {
        prismoid(size1=[3,4], size2=[2,2], shift=[-.5,0],h=100, align=V_RIGHT+V_UP);
        up(.8) left(.6)
            cuboid([3,2.3,2.3], align=V_UP+V_RIGHT);
    }

    
    polyline = [for (a=[0:10:90]) 10*[0, -2*cos(a), 3*sin(a)]];
    back(20-.01) up(100-.2) right(1) {
        extrude_2d_shapes_along_3dpath(polyline) square(2, center=true);
        //trace_polyline(polyline, showpts=true, size=0.5, color="lightgreen");
    }
}

module arm_nub() {
    right(eye_width+bridge_width/2-1)
        difference() {
            cuboid([7,2,2], align=V_UP+V_RIGHT, fillet=.4, edges=EDGES_X_TOP);
            down(.1) right(6)
                cuboid([1,1,1.1], align=V_UP);
        }
}


module make_eye() {
    cuboid([eye_width,2,2],align=V_BACK+V_UP, fillet=1, edges=EDGES_Z_BK+EDGES_Y_TOP+EDGE_TOP_BK);
    difference() {
        make_frame(eye_width/2,2);
        down(.05)
        make_frame(eye_width/2-2,2.1);
    }
}

module make_frame(r, t) {
    difference() {
        linear_extrude(t)
            difference() {
                circle(r=r);
                back(r)
                    square(2*r, center=true);
            }
        up(t)
            fillet_cylinder_mask(r=r, fillet=1);
    }
}

module make_nose() {
    polyline = [for (a=[0:10:180]) 8.7*[cos(a), .2*sin(a), .2*sin(a)]];
    extrude_2d_shapes_along_3dpath(polyline) circle(r=1);
    //trace_polyline(polyline, showpts=true, size=0.5);
    //cuboid([bridge_width+3,2,2], align=V_UP, fillet=.4);
}

