

//returns the distance from center to create a small circle of radius scr
//scr - small circle radius
//r - sphere radius
function small_circle(scr, r) = sqrt(pow(r,2)-pow(scr,2));

min_wall_thickness=1;

bearing_od = 22;
bearing_id = 8;
light_od = 9;
light_height = 8;
light_base = 29.5;

moon_d = 76.25;
moon_support_od = moon_d+min_wall_thickness;

base_od = moon_d*3/4;
base_height = 17;

layer_thickness=.2;
bottom_thickness=10*layer_thickness;

tolerance=.2;

moon_offset = small_circle(light_od/2, moon_d/2);
echo(moon_offset=moon_offset);

moon_cup_h = 5;
top_bottom_overlap=5;

$fn=100;

show_top=false;
show_bottom=true;
show_light=false;

if(show_light) {
    translate([0,0,bottom_thickness])
        color("Gold", .75)
            build_light(.4);
}

if(show_top) {
    color("gray")
        build_top_interface();
}

if(show_bottom) {
    color("lightblue")
        build_bottom_base();
}

module build_bottom() {
    difference() {
        cylinder(h=base_height+bottom_thickness+min_wall_thickness, r1=base_od/2, r2=(light_base+min_wall_thickness)/2);

        translate([0,0,bottom_thickness])
            build_light(.2);
    }
}

module build_bottom_base() {
    difference() {
        build_bottom();

        translate([0,0,base_height+bottom_thickness-top_bottom_overlap])
            linear_extrude(10)
                circle(d=light_base+10);
    }
}

module build_top_interface() {
    height = base_height+bottom_thickness+min_wall_thickness;
    difference() {
        group() {
            difference() {
                cylinder(h=height, r1=base_od/2, r2=(light_base+min_wall_thickness)/2);

                translate([0,0,-1])
                    linear_extrude(base_height+bottom_thickness-top_bottom_overlap + 1)
                    circle(d=base_od);

            }

            translate([0,0,height+moon_offset])
                difference() {
                    sphere(d=moon_support_od);
                    sphere(d=moon_d);

                    translate([0,0,moon_cup_h])
                        cube([moon_d+2,moon_d+2,moon_d+2],center=true);
                }
        }

        translate([0,0,bottom_thickness])
            build_light(.4);
    }
}

module build_light(tolerance=0) {
    height = base_height+tolerance;
    base_od = light_base+tolerance;
    light_d = light_od+tolerance;
    light_h = light_height+tolerance;
    cylinder(h=height, r=base_od/2);
    translate([0,0,height])
        cylinder(h=light_h-light_d/2, r=light_d/2);
    translate([0,0,height+light_h-light_d/2])
        sphere(d=light_d);
}

