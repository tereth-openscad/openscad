include <BOSL/constants.scad>
use <BOSL/transforms.scad>
use <BOSL/shapes.scad>
use <BOSL/masks.scad>

width=34.5;
length=68;
thick=2;

curve=14;
spout_len=11;

tab_thick=1.4;
tab_len=10.6;
tab_clip_thick=2.45;
tab_clip_width=4.2;
tab_width=6.2;

tube_d=11;

difference() {
    group() {
        cuboid([length, width, thick], align=V_LEFT);

        //back tabs
        //12.5mm from back to tab
        left(length-(12.5+tab_clip_width/2)) up(thick/2) {
            //25mm between tabs backs
            fwd(12.5 + tab_thick/2)
                build_tab();
            back(12.5 + tab_thick/2) zrot(180)
                build_tab();
        }

        //front tabs
        //50.2mm from back to tab
        left(length-(50.2+tab_clip_width/2)) up(thick/2) {
            //25mm between tabs backs
            fwd(12.5 + tab_thick/2)
                build_tab();
            back(12.5 + tab_thick/2) zrot(180)
                build_tab();
        }


        left(.4) up(.1)
        yrot(22.5)
            cuboid([curve, width, thick], align=V_RIGHT);

        right(curve-1.8) down(5.03)
        yrot(45)
        group() {
            cuboid([spout_len, width, thick], align=V_RIGHT);

            right(spout_len) down(thick/2)
                difference() {
                    cuboid([spout_len, width, 10], align=V_RIGHT+V_UP);
                    up(thick) left(.1)
                    cuboid([spout_len+1, width-2*thick, 10], align=V_RIGHT+V_UP);
                }

            right(2*spout_len) down(thick/2) yrot(-10)
                difference() {
                    cuboid([spout_len, width, 10], align=V_RIGHT+V_UP);
                    up(thick) left(.1)
                        cuboid([spout_len+1, width-2*thick, 10], align=V_RIGHT+V_UP);
                }

            right(3*spout_len) down(thick/2) left(spout_len-spout_len*cos(10)) up(spout_len*sin(10)) yrot(-20)
                difference() {
                    cuboid([spout_len, width, 10], align=V_RIGHT+V_UP);
                    up(thick) left(.1)
                        cuboid([spout_len+1, width-2*thick, 10], align=V_RIGHT+V_UP);
                }
        }
    }

    right(2)
        cyl(d=tube_d, h=length+5, orient=ORIENT_X, align=V_LEFT+V_UP);
}


module build_tab() {
    cuboid([tab_width, tab_thick, tab_len], align=V_UP);
    up(tab_len-tab_clip_width/2) fwd(tab_thick/2) xrot(90)
        prismoid(size1=[tab_width,tab_clip_width], size2=[tab_width,0], h=tab_clip_thick-tab_thick, align=V_UP);

}

