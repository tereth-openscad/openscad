include <BOSL/constants.scad>
use <BOSL/transforms.scad>
use <BOSL/shapes.scad>
use <BOSL/masks.scad>


$fn=20;

small_marer_d=10;
big_marker_d=20;
height=70;


//3x2 big markers

box_x=big_marker_d*3;
box_y=big_marker_d*2;

echo(box_x=box_x);
echo(box_y=box_y);

eraser_w=35;
eraser_l=55;
eraser_h=35;

wall_t=1.2;
bottom_t=2;

difference() {
    group() {
        difference() {
            cuboid([box_x,box_y,height]+[wall_t*2,wall_t*2,bottom_t], align=V_UP, fillet=1, edges=EDGES_Z_RT+EDGES_X_FR+EDGES_Y_TOP+EDGES_Y_RT);
            up(bottom_t)
                cuboid([box_x,box_y,height+.1], align=V_UP);


            //sides
            fwd(box_y/2+wall_t/2) up(bottom_t)
                build_hex_mask([height,box_x]-[wall_t*2+1,wall_t],10,wall_t+.2, orient=ORIENT_Z,align=V_UP);
            //back(box_y/2+wall_t/2) up(bottom_t)
                //build_hex_mask([height/2,box_x]-[wall_t,wall_t],10,wall_t+.2, orient=ORIENT_Z,align=V_UP);
        }

        difference() {
            left(box_x/2+eraser_l/2+wall_t/2)
                difference() {
                    cuboid([eraser_l,box_y,eraser_h]+[0,wall_t*2,bottom_t], align=V_UP, fillet=1, edges=EDGES_Z_LF+EDGES_X_FR+EDGES_Y_LF);
                    up(bottom_t) right(wall_t)
                        cuboid([eraser_l,box_y,eraser_h+.1], align=V_UP);
                    fwd(box_y/2+wall_t/2) up(bottom_t)
                        build_hex_mask([eraser_h,eraser_l]-[wall_t*2+1,wall_t*2],10,wall_t+.2, orient=ORIENT_Z,align=V_UP);
                }
        }
    }
    //down(.1) left(eraser_l/2)
        //build_hex_mask([box_x+eraser_l,box_y],6,2.2, align=V_UP);
}


hex_line_thickness=2;
function hex_flat_len(diam) = diam*sin(60);
function rows_for_size_hex(hex_diam, fill_size) = ceil(fill_size/hex_diam);
module build_hex_mask(size, d, thickness, orient=ORIENT_X, align=V_CENTER) {
    line_t=hex_line_thickness;
    x_stagger = (hex_flat_len(d)+line_t)*sin(60);
    y_stagger = hex_flat_len(d)/2+line_t/2;
    x_rows = rows_for_size_hex(x_stagger, size.x)+1;
    y_rows = rows_for_size_hex(y_stagger, size.y)+1;
    orient_and_align(concat(size,thickness), orient=orient, orig_orient=ORIENT_X, align=align) {
        intersection() {
            grid2d(spacing=[x_stagger,y_stagger], cols=x_rows, rows=y_rows, stagger=true) cylinder(d=d, h=thickness, $fn=6, center=true);
            cuboid([size.x, size.y, thickness], center=true);
        }
    }
}

