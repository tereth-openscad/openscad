
use <BOSL/constants.scad>
include <BOSL/shapes.scad>
include <BOSL/masks.scad>


os=cos(80)*(70/2);

echo(mount_w=mount_w);
a=atan(20/50);
echo(a=a);
echo(b=atan(50/20));
c=atan(50/10)-atan(20/50);
echo(c=c);
d=90-c;
echo(d=d);

x=cos(80)*50;
y=cos(80)*60;

mount_w=sqrt(pow(70-50,2)+pow(60-10,2));
$fn=50;

difference() {
    union() {
        cuboid([70,70,2]);

        left(70/2-1) fwd(70/2) up(.8) yrot(-80)
            linear_extrude(2, center=true)
                polygon(points=[[0,0],[0,70],[70,60],[50,10]]);

        difference() {
            up(60) xrot(22) fwd(mount_w/2) left(33.3)
                difference() {
                    linear_extrude(2, center=true)
                        polygon(points=[[x-1.8,0],[y,mount_w],[mount_w+3,mount_w],[mount_w+3,0]]);
                    right(x-1.8) zrot(atan(mount_w/(y-(x-1.8)))-90) up(1)
                        fillet_mask(l=200, r=1, orient=ORIENT_Y);
                    up(1) right(mount_w+3)
                        fillet_mask(l=200, r=1, orient=ORIENT_Y);
                    down(1) right(mount_w+3)
                        fillet_mask(l=200, r=1, orient=ORIENT_Y);
                }
            up(60) xrot(22)
                cylinder(d=40.6, h=30, center=true);
        }

        left(70/2-2)up(1)
            interior_fillet(l=70, r=5, ang=80, orient=ORIENT_YNEG, $fn=50);
    }

    fwd(70/2)xrot(d+45)
        cuboid([100,200,4], align=V_UP);
    back(70/2)xrot(atan(10/70)+90)
        cuboid([100,200,4], align=V_DOWN);
}




