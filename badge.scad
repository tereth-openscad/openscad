

include <BOSL/constants.scad>
use <BOSL/shapes.scad>

layer_height=.2;
thickness=1;
card_size=[54,86,thickness];
hole_size=[15,6.5,thickness];
pic_size=[30,30,.2];

name="Moder, Berrin";
$fn=50;

difference() {
    group() {
        rounded_prismoid(size1=card_size,size2=card_size,h=card_size.z,r=5);
        translate([0,15,0])
            linear_extrude(thickness+layer_height)
                text("STAFF", font="Ariel:style=Bold",halign="center");
        translate([0,-35,0])
            linear_extrude(thickness+layer_height)
                text(name, font="Ariel:style=Bold",size=5, halign="center");
    }

    translate([0,(card_size.y/2)-5-(hole_size.y/2),-.1])
        rounded_prismoid(size1=hole_size,size2=hole_size,h=hole_size.z+1,r=2);
    translate([0,-5,card_size.z-(pic_size.z/2)])
        cube(pic_size,center=true);
}



