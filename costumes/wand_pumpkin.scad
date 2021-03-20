

include <BOSL/constants.scad>
use  <BOSL/shapes.scad>
use  <BOSL/transforms.scad>

$fn=25;

difference() {
    right(530) back(35)
        import("Pumpkin_whole.stl");
    cylinder(d=20, h=100, center=true);
}



