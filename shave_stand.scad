use <BOSL/constants.scad>
include <BOSL/shapes.scad>
include <BOSL/masks.scad>

brush_handle_d=31;
brush_h=115;
base_thickness=2;
brush_holder_thickness=3;
brush_fillet=3;
fillets_on=false;

extra_width = 5;
extra_depth = 30;
holder_width = brush_handle_d + (brush_fillet * 2) + extra_width;
holder_depth = brush_handle_d + extra_depth;

edge_fillet=1;
corner_fillet=8;

$fn = 20;

module brush_holder() {
    difference() {
        cuboid([holder_width, holder_depth, brush_holder_thickness], fillet=edge_fillet, align=V_UP);
            
        //outside fillets
        if(fillets_on) {
            up(brush_holder_thickness/2) right(holder_width/2) fwd(holder_depth/2)
                round_fillet(holder_width/2,edge_fillet,brush_holder_thickness);
            up(brush_holder_thickness/2) left(holder_width/2) fwd(holder_depth/2)
                zrot(-90) round_fillet(holder_width/2,edge_fillet,brush_holder_thickness);

            up(brush_holder_thickness/2) left(holder_width/2) back(holder_depth/2)
                zrot(180) round_fillet(corner_fillet,edge_fillet,brush_holder_thickness);
            up(brush_holder_thickness/2) right(holder_width/2) back(holder_depth/2)
                zrot(90) round_fillet(corner_fillet,edge_fillet,brush_holder_thickness);
        }

        fwd(holder_depth/2 - (10+brush_handle_d/2)+.01) {
            down(.01)
                cyl(d=brush_handle_d+brush_fillet*2, h=brush_holder_thickness+5, fillet1=brush_fillet, align=V_UP);

            down(.1)
                cuboid([brush_handle_d,brush_handle_d/2+10,brush_holder_thickness + .2], align=V_UP+V_FWD);
        }
    }
}

base();
stand();
up(brush_h + base_thickness)
    brush_holder();

module base() {
    base_depth=holder_depth-10;
    difference() {
        back(5) {
            cuboid([holder_width, base_depth, base_thickness], fillet=edge_fillet, edges=EDGES_TOP, align=V_UP);
        }
        if(fillets_on) {
            back(5) {
                fwd(base_depth/2) right(holder_width/2) up(base_thickness/2)
                    round_fillet(r=holder_width/2, f=edge_fillet, h=base_thickness, bottom=false);
                fwd(base_depth/2) left(holder_width/2) up(base_thickness/2) zrot(-90)
                    round_fillet(r=holder_width/2, f=edge_fillet, h=base_thickness, bottom=false);
                up(base_thickness/2) left(holder_width/2) back(base_thickness/2)
                    zrot(180) round_fillet(corner_fillet,edge_fillet,brush_holder_thickness);
                up(base_thickness/2) right(holder_width/2) back(base_thickness/2)
                    zrot(90) round_fillet(corner_fillet,edge_fillet,brush_holder_thickness);
            }
            sphere_d = holder_depth*4;
            up(sphere_d/2+base_thickness/2)
                sphere(d=sphere_d, $fn=70);
        }
    }
}

module stand() {
    stand_h=brush_h+base_thickness+brush_holder_thickness/2;
    back(holder_depth/2 - 5)
        cuboid([20,10,stand_h], align=V_UP, fillet=2, edges=EDGES_Z_ALL);
        //sparse_strut3d(h=10, w=20, l=stand_h, align=V_UP, strut=2, maxang=50);
}

module round_fillet(r, f, h, top=true, bottom=true) {
    group () {
        fillet_mask_z(brush_holder_thickness, r=r);
        left(r) back(r) {
            difference() {
                group() {
                    if(top)
                        up(h/2)
                            fillet_cylinder_mask(r=r, fillet=f);
                    if(bottom)
                        down(h/2) yrot(180)
                            fillet_cylinder_mask(r=r, fillet=f);
                }
                cuboid([r*10,r*10,h*10], align=V_LEFT);
                cuboid([r*10,r*10,h*10], align=V_BACK);
            }
        }
    }
}

    //group () {
        //fillet_mask_z(brush_holder_thickness, r=8);
        //left(8) back(8)
            //difference() {
                //group() {
                    //up(1)
                    //fillet_cylinder_mask(r=8, fillet=.6);
                    //down(1) yrot(180)
                    //fillet_cylinder_mask(r=8, fillet=.6);
                //}
                //cuboid([40,40,10], align=V_LEFT);
                //cuboid([40,40,10], align=V_BACK);
            //}
    //}


