include <BOSL/constants.scad>
use <BOSL/transforms.scad>
use <BOSL/shapes.scad>
use <BOSL/masks.scad>


$fn=50;

in_to_mm=25.4;

pvc34_id=0.824*in_to_mm;

difference() {
    cyl(l=10, r1=25/2, r2=(pvc34_id-3)/2);
    cyl(l=10.1,r1=20/2, r2=(pvc34_id-8)/2);
}


