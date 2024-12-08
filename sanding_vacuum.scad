include <BOSL/constants.scad>
use <BOSL/transforms.scad>
use <BOSL/shapes.scad>
use <BOSL/masks.scad>
include <Round-Anything/polyround.scad>

$fn=25;


width=73;
length=123.8;
height=20;

side_tine_h = 10;

wall_t=3;

function outerCase() = [
    [0,0,wall_t/2],
    [width+side_tine_h,0,wall_t/2],
    [width+side_tine_h,length+side_tine_h,wall_t/2],
    [0,length+side_tine_h,wall_t/2]
];

tine_l=20;
function bottomTine() = [
    [0,0,0],
    [wall_t,0,0],
    [wall_t,tine_l,0],
    [0,tine_l,0]
];

polyRoundExtrude(bottomTine(), height, wall_t/2, -wall_t/2);

if(false) {
//bottom
polyRoundExtrude(outerCase(), wall_t, 0, wall_t/2);
//walls
extrudeWithRadius(height*2, r1=wall_t/2, r2=wall_t/2) 
    shell2d(-wall_t) {
        polygon(polyRound(outerCase()));
    }
}



