

$fn=50;

module x_scale(size) {
    scale([size,1,1])
        children();
}

module y_scale(size) {
    scale([1,size,1])
        children();
}

module make_shape(d,ln_width,fn,thickness=2) {
    linear_extrude(thickness)
        difference() {
            circle(d=d,$fn=fn);
            circle(d=d-ln_width,$fn=fn);
        }
}

//biggest oblong rectangle
y_scale(2) rotate([0,0,45])
    make_shape(16,2,4);

//big middle hexagon
translate([5,-10,0]) y_scale(.9)
    make_shape(16,3,6);

//small middle hexagon
translate([-5,-10,0]) y_scale(.9)
    make_shape(11,3,6);

//left tall hexagon
translate([-10.5,-7.2,0])y_scale(2)
    make_shape(7.5,2,6);

//top left hexagon
translate([-10.5,2.4,0])y_scale(.9)
    make_shape(18,3,6);

//bottom diamond
translate([-1,-20.4,0])
    y_scale(1.6)
        make_shape(13,3,4);

//small square
translate([8,-1.8,0])
    rotate([0,0,45])
        make_shape(8,3,4);

//big right square
translate([8,3.5,0])
    rotate([0,0,45])
        make_shape(16,3,4);

//big top square
translate([0,10,0])
    rotate([0,0,45])
        make_shape(23,3,4);

//small top diamond
translate([-6,19,0])
    make_shape(13,3,4);

//small circle
translate([-2.5,23,0])
    linear_extrude(2)
        difference() {
            circle(d=6);
            circle(d=4);

        }


