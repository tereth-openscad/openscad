include <BOSL/constants.scad>
use  <BOSL/shapes.scad>
use  <BOSL/transforms.scad>
use  <BOSL/masks.scad>

$fn = 100;

btn_d=20;
btn_t=3.5;
sphere_r=100;

if(1) {
    difference() {
        cyl(d=btn_d, h=btn_t,fillet=.6);
        up(sphere_r+btn_t/2) down(.5)
            sphere(r=sphere_r);
    }
}

if(0) {
    connector_d=6.8;
    connector_r=connector_d/2;
    connector_l=14;
    connector_taper_l=3;

    cyl(r1=.6,r2=connector_r,h=connector_taper_l, align=V_DOWN);
    cyl(r1=connector_r,r2=connector_r,h=connector_l-2*connector_taper_l, align=V_UP);
    up(connector_l-2*connector_taper_l)
        cyl(r1=connector_r,r2=.6,h=connector_taper_l, align=V_UP);
}
