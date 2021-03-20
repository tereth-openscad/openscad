

rigid_screw_hole=4;

line_width=.4;
layer_hight=.2;

base_thickness=1;
wall_thickness=line_width*5;

hex_angle=360/6;

hex_size_p2p=7.5;
hex_size_r=hex_size_p2p/2;
hex_size_f_r=cos(hex_angle/2)*(hex_size_r+wall_thickness/2);
hex_side_len=sin(hex_angle/2)*(hex_size_r+wall_thickness/2)*2;
echo(hex_size_f_r);
echo(hex_side_len);
hex_diameter=hex_size_p2p;
height=10;
num_bits=4;
bit_spacing=1;

display_text=false;

build_bit_holders=true;

include <../BOSL/constants.scad>
use <../BOSL/shapes.scad>
use <../BOSL/metric_screws.scad>

$fn=50;

//spin=true?
module build_single_bit_holder(spin=false) {
    rotate(spin ? [0,0,hex_angle/2] :[0,0,0])
        difference() {
            group() {
                cylinder(d=hex_diameter+wall_thickness, h=height+base_thickness, $fn=6);
            }

            if(display_text) {
                rotate([0,0,hex_angle])
                    translate([0,-hex_size_f_r+.3,height/2])
                        rotate([0,-90,90])
                            linear_extrude(.4)
                                text(str(hex_diameter),valign="center",halign="center",size=3);
            }

            translate([0,0,base_thickness])
                cylinder(d=hex_diameter, h=height+.1, $fn=6);

            rotate([0,0,hex_angle])
                translate([5,0,(height+base_thickness)/2-.1])
                    cube([10,2,height+base_thickness+1],center=true);

            translate([0,0,-0.1])
                cylinder(d=hex_diameter/2,h=base_thickness+1);
        }
}

bar_width =(num_bits-1)*(hex_size_f_r*2+bit_spacing);
bar_thickness=5;
bar_height=height+base_thickness+10;

head_base_to_flush=3;
round_base=9;

screw_center_to_bottom=4.5;
depth=6;

module build_bar() {
    translate([bar_width/2,-(hex_size_p2p/2+bar_thickness/2),0])
        translate([0,0,(height+base_thickness)/2]) {
            cuboid([bar_width,bar_thickness,height+base_thickness],center=true,fillet=2,edges=EDGE_FR_RT+EDGE_FR_LF);
            translate([0,0,(height+base_thickness)/2])  {
                difference() {
                    rounded_prismoid(size1=[bar_width,bar_thickness],size2=[round_base,bar_thickness],h=10,r1=2,r2=2,shift=[0,-bar_thickness/2]);
                    translate([0,0,10])
                        rotate([90,0,0])
                            cylinder(d=get_metric_socket_cap_diam(4)+.4,h=10,center=true);
                }
            }
        }

    translate([bar_width/2,-(get_metric_socket_cap_height(4)+hex_size_r+wall_thickness),base_thickness+height+10]) {
        //metric_bolt("socket",size=4,l=8,orient=ORIENT_Y);
        difference() {
            group() {
                translate([0,-head_base_to_flush,0])
                    rotate([-90,0,0])
                        cylinder(d=round_base,h=head_base_to_flush+get_metric_socket_cap_height(4)-.4);
                translate([0,0,screw_center_to_bottom+1.2/2])
                    cube([6,13,1.2],center=true);
            }
            translate([0,get_metric_socket_cap_height(4)/2,0])
                rotate([90,0,0])
                    cylinder(d=get_metric_socket_cap_diam(4)+.4,h=get_metric_socket_cap_height(4),center=true);
                rotate([90,0,0])
                    cylinder(d=4+.1,h=10,center=true);
            //metric_bolt("socket",size=4,l=8,orient=ORIENT_Y);
        }
    }
}

if(build_bit_holders) {
    for(i=[0:num_bits-1]) {
        translate([i*(hex_size_f_r*2+bit_spacing),0,0])
            build_single_bit_holder(true);
    }
}


build_bar();





//build_bar();


