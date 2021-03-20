



inches_to_mm=25.4;

dl_4 = 3.5*inches_to_mm;
dl_2 = 1.5*inches_to_mm;


module post(height) {
    cube([dl_4,dl_4,height],center=true);
}


post(14*inches_to_mm);
translate([76*inches_to_mm,0,0])
    post(14*inches_to_mm);

translate([0,80*inches_to_mm,0])
    post(14*inches_to_mm);
translate([76*inches_to_mm,80*inches_to_mm,0])
    post(14*inches_to_mm);

