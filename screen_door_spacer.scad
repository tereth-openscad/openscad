include <BOSL/constants.scad>
use <BOSL/transforms.scad>
use <BOSL/shapes.scad>
use <BOSL/masks.scad>


$fn=20;

thickness=4;
length=6;
width=20;


cuboid([length, width, thickness], align=V_LEFT+V_UP);

cuboid([length, width, thickness/2], align=V_RIGHT+V_UP);

