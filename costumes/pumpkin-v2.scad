//
// Pumpkin-v2, by Rich Altmaier, licensed under Creative Commons - Attribution - Share Alike license.
// Sept 2019



// started with:  
//     Pumpkin OpenScad, by KySyth, on thingiverse, 
//     https://www.thingiverse.com/thing:2004865
//     The Pumpkin OpenScad by KySyth is licensed under the Creative Commons - Attribution - Share Alike license.

  
include <BOSL/constants.scad>
use <BOSL/transforms.scad>
use <BOSL/shapes.scad>
use <BOSL/masks.scad>

module Slice(D, h, fat, number){
    //D is angular location for this segment
    //fat, larger is shorter squatier    
    //number, total number of segments
    segflat =  number > 10 ? 0.5 : (number <=6 ? 0.9 : 0.7);
    //echo(D, segflat);
    rotate([0,0,D])
       scale([segflat,1,1])
         translate([0,h/fat,h/2])sphere(d=h);} 
         


module handle(h, radius) {
    $fn=60;
    translate([-radius,0,0])
        linear_extrude(height=h, scale=0.6, twist=-40)
            translate([radius, 0, 0])
                circle(r=radius);

}

module Pumpkin2(h, segs, fat, tiltAmt=0, handleLen, $fn=50){
    //segs is angle in degrees of one segment,
    //  must evenly divide 360! 
    //fat number, must be 2..5.  2 is shorter and fatter.  5 is spherical. 
    //tiltA, pumpkin is misshapen.  Value should not be more than 10% of h. 
    translate([0,0, -h/2.0]) {
      for (a =[1:segs]){
         angle_location = a*360.0/segs; 
         tilt = sin(angle_location/2.0) *tiltAmt;
         //echo(angle_location, tilt); 
         Slice((360.0/segs)*a, h-tilt, fat, segs);
      }
      //echo("handle", h, tiltAmt, 0.3*h/fat);
      translate([0,-tiltAmt/2.0, h-tiltAmt- 0.3*h/fat]) handle(handleLen, h/8.0); 
    }
    
}

function calc_sphere_cap(R,h)=sqrt(2*R*h-pow(h,2));

dowel_d=12.9;
$fn=100;
module build_want_middle() {
    difference() {
        group() {
            up(20)
                Pumpkin2(25, 8, 5, 0, 0, $fn=100);
            cylinder(d=16,h=12);
            up(2)
                build_squat_donut(15,3,.35);
            down(8)
                build_squat_donut(10,1,.35);
        }
        cylinder(d=dowel_d,h=100,$fn=50,center=true);
    }
}

module build_squat_donut(r=15,top_h=3,percentage=.25) {
    difference() {
        sphere(r=r);
        up(percentage*r*2)
            cuboid([r*2,r*2,r*2],align=V_CENTER);
    }
    down((.5-percentage)*r*2)
        difference() {
            echo(calc_sphere_cap(r,percentage*r*2));
            cylinder(r=calc_sphere_cap(r,percentage*r*2),h=top_h);
            up(top_h)
                fillet_cylinder_mask(r=calc_sphere_cap(r,percentage*r*2),fillet=top_h);
        }
}

build_wand_bottom();
module build_wand_bottom() {
    difference() {
        xrot(180)
        group () {
            right(5.5)yrot(-16)
                onion(r=10, maxang=30);
            left(5.5)yrot(16)
                onion(r=10, maxang=30);
        }
        cylinder(d=dowel_d, h=100);
    }
    down(28)
        Pumpkin2(25, 8, 5, 0, 0, $fn=100);
    down(28+17)
        sphere(d=15);
}

if(0) {
    translate([15,0,0])
      Pumpkin2(10, 20, 4, 1.5, 4.0);
    translate([30,0,0])
      Pumpkin2(10, 10, 4, 0, 2.0);
    translate([45,0,0])
      Pumpkin2(10, 8, 5, 1.5, 4.0);
}


