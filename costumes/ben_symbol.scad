

include <../BOSL/constants.scad>
use <../BOSL/transforms.scad>
use <../BOSL/shapes.scad>

back_layers=5;
symbol_back_layers=1;
scaling=.5;
back_extrude=(back_layers-symbol_back_layers)/scaling*.2;
echo(back_extrude=back_extrude);



linear_extrude(back_extrude)
scale([1,1,1])
    import(file="BenSVG.svg", center=true);

up(back_extrude)
scale([.5,.5,.02])
    surface(file="BenPNG-50dpi.png", center=true);


