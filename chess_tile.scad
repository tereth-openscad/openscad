

include <BOSL/constants.scad>
use  <BOSL/shapes.scad>
use  <BOSL/transforms.scad>

$fn = 100;
in_to_mm=25.4;


thickness = .125*in_to_mm + 1;
echo(thickness=thickness);

number_8 = true;

king_d = 20.38;

module screw_head() {
    screw_head_angle=90;
    screw_head_d = (number_8 ? .320 : .270) * in_to_mm + .4;
    screw_shank_d = (number_8 ? .115 : .100) * in_to_mm;
    screw_thread_d = (number_8 ? .163 : .140) * in_to_mm;
    screw_head_h = screw_head_d/2-screw_shank_d/2;

    down(screw_head_h)
    {
        hull() {
            up(screw_head_h)
                cyl(d=screw_head_d,h=1, align=V_DOWN);

            cyl(d=screw_shank_d,h=.1, align=V_UP);
        }
        cyl(d=screw_thread_d, h=10, align=V_DOWN);
    }
}

difference() {
    cuboid([king_d*1.25,king_d*1.25,2], align=V_DOWN, chamfer=.8, edges=EDGES_TOP+EDGES_Z_ALL);
    up(.001)
        screw_head();
}



