include <Round-Anything/polyround.scad>

include <BOSL/constants.scad>
use  <BOSL/transforms.scad>

/* [Piece Selection] */
// Piece to make
make_pieces = "P"; //[P:Plate, S:Support, T:Test Dowel Hole]

/* [Plate] */
// Plate diameter in mm
plate_d=100.0; // 0.1
// Plate rim width in mm
plate_rim_w=5.0; // 0.1
// Plate rim height in mm
plate_rim_h=5.0; // 0.1
// Plate bottom thickness in mm
plate_t=5.0; // 0.1
// Number of edges on the plate (to make different geometric shapes)
plate_edges=8;

/* [Dowel Hole] */
// Dowel through-hole height in mm
dowel_h=10.0; // 0.1
// Dowel Diameter in mm
dowel_d=10.0; // 0.1
// Dowel hole wall thickness in mm
dowel_t=4.0; // 0.1
// Number of dowel hole outside edges
dowel_edges=50;
// Screw hole in dowel through-hole diameter in mm (3mm is good for #4 wood screw)
screw_d=3.0; // 0.1

/* [Quality] */
// Fillet resolution (bigger is nicer but takes longer)
fn=20;

// Overall Quality
$fn = 20;

__version__=0.1;

echo("Display Plate Version", __version__)

if(make_pieces == "S") {
    build_rod_support();
}

if(make_pieces == "P") {
    build_full_plate();
}

if(make_pieces == "T") {
    build_dowel_hole();
}

module build_plate() {
    difference() {
        extrudeWithRadius(plate_t+plate_rim_h,2,2,fn)
            circle(d=plate_d, $fn=plate_edges);
        up(plate_t + .01)
            extrudeWithRadius(plate_rim_h,2,-2,fn)
                circle(d=plate_d-(plate_rim_w*2), $fn=plate_edges);
    }
}

module build_rod_length() {
    rod_t=10;
    rod_points = [
        [-plate_d/2,rod_t/2,2],
        [plate_d/2,rod_t/2,2],
        [plate_d/2,-rod_t/2,2],
        [-plate_d/2,-rod_t/2,2]
    ];
    polyRoundExtrude(rod_points,rod_t,2,2,fn=20);

}

module build_rod_support() {
    build_rod_length();
    left(plate_d/2+dowel_d/2)
        build_dowel_hole();
    right(plate_d/2+dowel_d/2) rotate([0,0,180])
        build_dowel_hole();
}

module build_full_plate() {
    build_plate();
    left(plate_d/2+dowel_d/2)
        build_dowel_hole();
    right(plate_d/2+dowel_d/2) rotate([0,0,180])
        build_dowel_hole();
}

module build_dowel_hole() {
    difference() {
        extrudeWithRadius(dowel_h,1,1,20)
            circle(d=dowel_d+2*dowel_t, $fn=dowel_edges);

        down(.01)
            extrudeWithRadius(dowel_h+.02,-1,-1,20)
                circle(d=dowel_d, $fn=50);

        up(dowel_h/2) left(dowel_d/2 + dowel_t+2)
            rotate([0,90,0])
                extrudeWithRadius(dowel_t*2, 0,0,10)
                    circle(d=screw_d, $fn=50);
    }
}



