
// Module names are of the form poly_<inkscape-path-id>().
// As a result you can associate a polygon in this OpenSCAD program with the
//  corresponding SVG element in the Inkscape document by looking for 
//  the XML element with the attribute id="inkscape-path-id".

// Paths have their own variables so they can be imported and used 
//  in polygon(points) structures in other programs.
// The NN_points is the list of all polygon XY vertices. 
// There may be an NN_paths variable as well. If it exists then it 
//  defines the nested paths. Both must be used in the 
//  polygon(points, paths) variant of the command.

profile_scale = 25.4/90; //made in inkscape in mm

// helper functions to determine the X,Y dimensions of the profiles
function min_x(shape_points) = min([ for (x = shape_points) min(x[0])]);
function max_x(shape_points) = max([ for (x = shape_points) max(x[0])]);
function min_y(shape_points) = min([ for (x = shape_points) min(x[1])]);
function max_y(shape_points) = max([ for (x = shape_points) max(x[1])]);

height = 1;
width = 1.0;


path262_0_points = [[52.319842,29.445542],[52.540623,28.766975],[52.848913,28.374416]];

module poly_path262(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path262_0_points)-2]) {
      hull() {
        translate(path262_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path262_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path324_0_points = [[64.625266,4.189079],[64.320950,4.375128],[63.846159,4.215376],[63.429262,3.807352],[63.298632,3.248583]];

module poly_path324(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path324_0_points)-2]) {
      hull() {
        translate(path324_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path324_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path196_0_points = [[-15.721688,7.066658],[-15.289269,7.369045],[-15.175737,7.817677],[-15.370459,8.291693],[-15.862798,8.670229]];

module poly_path196(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path196_0_points)-2]) {
      hull() {
        translate(path196_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path196_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path142_0_points = [[30.586324,-21.401989],[29.487919,-21.768026],[28.582317,-22.370346],[27.967270,-23.121915],[27.740532,-23.935703]];

module poly_path142(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path142_0_points)-2]) {
      hull() {
        translate(path142_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path142_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path308_0_points = [[40.119809,14.831459],[40.239931,15.290205],[40.601012,15.563980],[42.050347,15.730757]];

module poly_path308(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path308_0_points)-2]) {
      hull() {
        translate(path308_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path308_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path144_0_points = [[27.740532,-23.935703],[28.093311,-25.206579]];

module poly_path144(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path144_0_points)-2]) {
      hull() {
        translate(path144_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path144_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path194_0_points = [[-16.286134,6.610289],[-15.721688,7.066658]];

module poly_path194(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path194_0_points)-2]) {
      hull() {
        translate(path194_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path194_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path146_0_points = [[28.093311,-25.206579],[28.234612,-25.598255],[27.740532,-26.103416]];

module poly_path146(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path146_0_points)-2]) {
      hull() {
        translate(path146_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path146_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path294_0_points = [[41.286114,17.932212],[40.299422,17.649991]];

module poly_path294(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path294_0_points)-2]) {
      hull() {
        translate(path294_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path294_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path206_0_points = [[-22.792378,12.458385],[-25.098664,13.183798]];

module poly_path206(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path206_0_points)-2]) {
      hull() {
        translate(path206_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path206_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path150_0_points = [[24.584079,-25.037460],[23.138348,-23.322862]];

module poly_path150(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path150_0_points)-2]) {
      hull() {
        translate(path150_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path150_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path220_0_points = [[-41.072655,16.046672],[-42.746012,15.260193]];

module poly_path220(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path220_0_points)-2]) {
      hull() {
        translate(path220_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path220_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path152_0_points = [[23.138348,-23.322862],[20.893682,-24.743994]];

module poly_path152(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path152_0_points)-2]) {
      hull() {
        translate(path152_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path152_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path192_0_points = [[-13.600822,2.404790],[-15.603063,5.108515],[-16.286134,6.610289]];

module poly_path192(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path192_0_points)-2]) {
      hull() {
        translate(path192_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path192_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path148_0_points = [[27.740532,-26.103416],[26.846186,-26.616922],[26.074654,-26.628214],[25.346947,-26.110618],[24.584079,-25.037460]];

module poly_path148(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path148_0_points)-2]) {
      hull() {
        translate(path148_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path148_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path224_0_points = [[17.123718,-27.851915],[15.114679,-29.445542],[14.590608,-27.558330]];

module poly_path224(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path224_0_points)-2]) {
      hull() {
        translate(path224_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path224_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path208_0_points = [[-25.098664,13.183798],[-25.599467,13.486955]];

module poly_path208(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path208_0_points)-2]) {
      hull() {
        translate(path208_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path208_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path250_0_points = [[-39.042581,28.061041],[-37.596028,28.401799],[-34.331818,28.677183],[-23.482798,28.965972]];

module poly_path250(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path250_0_points)-2]) {
      hull() {
        translate(path250_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path250_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path154_0_points = [[20.893682,-24.743994],[17.123718,-27.851915]];

module poly_path154(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path154_0_points)-2]) {
      hull() {
        translate(path154_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path154_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path264_0_points = [[52.848913,28.374416],[53.626591,29.256782],[53.921268,29.300813],[53.504529,27.809970]];

module poly_path264(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path264_0_points)-2]) {
      hull() {
        translate(path264_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path264_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path212_0_points = [[-28.214352,15.109991],[-30.929424,15.707955]];

module poly_path212(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path212_0_points)-2]) {
      hull() {
        translate(path212_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path212_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path136_0_points = [[34.579283,-18.827231],[33.457379,-19.603341]];

module poly_path136(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path136_0_points)-2]) {
      hull() {
        translate(path136_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path136_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path190_0_points = [[-10.641688,-2.529745],[-11.424356,-0.626756],[-13.600822,2.404790]];

module poly_path190(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path190_0_points)-2]) {
      hull() {
        translate(path190_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path190_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path304_0_points = [[38.325299,14.636043],[38.703534,13.694809]];

module poly_path304(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path304_0_points)-2]) {
      hull() {
        translate(path304_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path304_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path134_0_points = [[35.226923,-16.723161],[35.161765,-17.948576],[34.579283,-18.827231]];

module poly_path134(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path134_0_points)-2]) {
      hull() {
        translate(path134_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path134_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path370_0_points = [[68.520210,-1.576514],[68.662755,-1.197774],[68.520210,-1.576514],[68.520210,-1.576514]];

//MAYBE
module poly_path370(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    linear_extrude(height=h)
      polygon(path370_0_points);
  }
}

path198_0_points = [[-15.862798,8.670229],[-16.398666,9.090228],[-16.568900,9.722517]];

module poly_path198(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path198_0_points)-2]) {
      hull() {
        translate(path198_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path198_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path236_0_points = [[-57.208354,20.614396],[-58.025147,21.057807],[-58.440791,21.766755]];

module poly_path236(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path236_0_points)-2]) {
      hull() {
        translate(path236_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path236_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path156_0_points = [[14.590608,-27.558330],[14.146804,-24.542231]];

module poly_path156(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path156_0_points)-2]) {
      hull() {
        translate(path156_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path156_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path210_0_points = [[-25.599467,13.486955],[-25.864398,14.008032],[-26.523855,14.536231],[-28.214352,15.109991]];

module poly_path210(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path210_0_points)-2]) {
      hull() {
        translate(path210_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path210_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path232_0_points = [[-54.479915,17.364268],[-55.794301,18.322146],[-56.136035,19.300454]];

module poly_path232(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path232_0_points)-2]) {
      hull() {
        translate(path232_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path232_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path158_0_points = [[14.146804,-24.542231],[14.041530,-23.478032],[13.081578,-22.711717]];

module poly_path158(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path158_0_points)-2]) {
      hull() {
        translate(path158_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path158_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path200_0_points = [[-16.568900,9.722517],[-16.858513,10.493388],[-17.915282,11.370548]];

module poly_path200(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path200_0_points)-2]) {
      hull() {
        translate(path200_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path200_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path306_0_points = [[38.703534,13.694809],[39.199062,13.520970],[39.655436,13.730574],[40.119809,14.831459]];

module poly_path306(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path306_0_points)-2]) {
      hull() {
        translate(path306_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path306_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path160_0_points = [[13.081578,-22.711717],[11.936089,-21.533210]];

module poly_path160(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path160_0_points)-2]) {
      hull() {
        translate(path160_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path160_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path274_0_points = [[52.366845,22.959340],[50.822382,22.606561]];

module poly_path274(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path274_0_points)-2]) {
      hull() {
        translate(path274_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path274_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path216_0_points = [[-34.795725,14.929749],[-36.170106,16.105251]];

module poly_path216(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path216_0_points)-2]) {
      hull() {
        translate(path216_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path216_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path252_0_points = [[-23.482798,28.965972],[-9.371688,29.209283]];

module poly_path252(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path252_0_points)-2]) {
      hull() {
        translate(path252_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path252_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path162_0_points = [[11.936089,-21.533210],[10.209304,-19.835945]];

module poly_path162(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path162_0_points)-2]) {
      hull() {
        translate(path162_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path162_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path164_0_points = [[10.209304,-19.835945],[8.689892,-18.551870],[7.836150,-17.063341]];

module poly_path164(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path164_0_points)-2]) {
      hull() {
        translate(path164_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path164_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path238_0_points = [[-58.440791,21.766755],[-59.114192,23.191597],[-60.692755,23.938494]];

module poly_path238(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path238_0_points)-2]) {
      hull() {
        translate(path238_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path238_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path168_0_points = [[6.747342,-15.421147],[5.348678,-16.060518]];

module poly_path168(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path168_0_points)-2]) {
      hull() {
        translate(path168_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path168_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path166_0_points = [[7.836150,-17.063341],[6.747342,-15.421147]];

module poly_path166(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path166_0_points)-2]) {
      hull() {
        translate(path166_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path166_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path246_0_points = [[-63.135021,28.504271],[-44.025453,27.915216]];

module poly_path246(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path246_0_points)-2]) {
      hull() {
        translate(path246_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path246_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path218_0_points = [[-36.170106,16.105251],[-37.454763,16.652884],[-38.749119,16.825080],[-39.979605,16.622716],[-41.072655,16.046672]];

module poly_path218(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path218_0_points)-2]) {
      hull() {
        translate(path218_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path218_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path234_0_points = [[-56.136035,19.300454],[-56.381708,20.167590],[-57.208354,20.614396]];

module poly_path234(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path234_0_points)-2]) {
      hull() {
        translate(path234_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path234_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path140_0_points = [[32.310735,-20.411871],[30.586324,-21.401989]];

module poly_path140(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path140_0_points)-2]) {
      hull() {
        translate(path140_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path140_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path296_0_points = [[40.299422,17.649991],[39.392181,17.367768]];

module poly_path296(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path296_0_points)-2]) {
      hull() {
        translate(path296_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path296_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path244_0_points = [[-65.435374,27.116971],[-68.032647,28.010968],[-68.662755,28.451083],[-63.135021,28.504271]];

module poly_path244(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path244_0_points)-2]) {
      hull() {
        translate(path244_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path244_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path170_0_points = [[5.348678,-16.060518],[4.249627,-16.528895],[3.620324,-15.422501]];

module poly_path170(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path170_0_points)-2]) {
      hull() {
        translate(path170_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path170_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path172_0_points = [[3.620324,-15.422501],[2.208944,-12.160319]];

module poly_path172(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path172_0_points)-2]) {
      hull() {
        translate(path172_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path172_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path174_0_points = [[2.208944,-12.160319],[0.235375,-8.933547],[-0.686938,-8.250993],[-1.584707,-8.169600]];

module poly_path174(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path174_0_points)-2]) {
      hull() {
        translate(path174_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path174_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path288_0_points = [[43.262755,20.814416],[42.521903,20.225260]];

module poly_path288(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path288_0_points)-2]) {
      hull() {
        translate(path288_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path288_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path28_0_points = [[44.012301,18.134174],[45.343068,19.073677]];

module poly_path28(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path28_0_points)-2]) {
      hull() {
        translate(path28_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path28_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path44_0_points = [[45.501760,17.085532],[44.332510,16.450008]];

module poly_path44(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path44_0_points)-2]) {
      hull() {
        translate(path44_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path44_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path214_0_points = [[-33.656305,15.379120],[-34.474166,14.703652],[-34.795725,14.929749]];

module poly_path214(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path214_0_points)-2]) {
      hull() {
        translate(path214_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path214_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path180_0_points = [[-5.985021,-11.277788],[-6.480716,-10.958684],[-6.722876,-9.462810]];

module poly_path180(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path180_0_points)-2]) {
      hull() {
        translate(path180_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path180_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path202_0_points = [[-17.915282,11.370548],[-19.458369,12.224799],[-20.474787,11.967953]];

module poly_path202(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path202_0_points)-2]) {
      hull() {
        translate(path202_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path202_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path132_0_points = [[33.260473,-13.632892],[34.652458,-14.826272],[35.226923,-16.723161]];

module poly_path132(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path132_0_points)-2]) {
      hull() {
        translate(path132_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path132_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path278_0_points = [[49.471645,22.583505],[48.969928,23.075811],[47.778311,23.239732]];

module poly_path278(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path278_0_points)-2]) {
      hull() {
        translate(path278_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path278_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path130_0_points = [[31.238546,-9.640827],[31.965794,-12.199452],[32.560931,-13.093793],[33.260473,-13.632892]];

module poly_path130(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path130_0_points)-2]) {
      hull() {
        translate(path130_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path130_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path76_0_points = [[44.914755,8.693364],[43.894816,8.268784],[43.119740,7.018570]];

module poly_path76(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path76_0_points)-2]) {
      hull() {
        translate(path76_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path76_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path226_0_points = [[-46.348084,11.887599],[-47.727095,13.274225]];

module poly_path226(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path226_0_points)-2]) {
      hull() {
        translate(path226_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path226_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path254_0_points = [[-9.371688,29.209283],[3.046089,29.312415]];

module poly_path254(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path254_0_points)-2]) {
      hull() {
        translate(path254_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path254_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path318_0_points = [[30.560170,29.086815],[30.560170,29.086796],[30.560170,29.086815],[30.560170,29.086815]];

module poly_path318(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    linear_extrude(height=h)
      polygon(path318_0_points);
  }
}

path298_0_points = [[39.392181,17.367768],[38.531550,17.151196],[37.673340,16.617511],[37.033021,15.940760],[36.826064,15.294988]];

module poly_path298(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path298_0_points)-2]) {
      hull() {
        translate(path298_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path298_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path182_0_points = [[-6.722876,-9.462810],[-6.988690,-7.933464],[-7.498986,-7.159794]];

module poly_path182(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path182_0_points)-2]) {
      hull() {
        translate(path182_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path182_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path372_0_points = [[63.392776,2.098185],[65.305129,-1.172493],[63.392776,2.098185],[63.392776,2.098185]];
//MAYBE
module poly_path372(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    linear_extrude(height=h)
      polygon(path372_0_points);
  }
}

path128_0_points = [[31.710033,-7.221051],[31.204018,-8.218249],[31.238546,-9.640827]];

module poly_path128(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path128_0_points)-2]) {
      hull() {
        translate(path128_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path128_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path178_0_points = [[-4.860325,-10.071349],[-5.421590,-10.986395],[-5.985021,-11.277788]];

module poly_path178(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path178_0_points)-2]) {
      hull() {
        translate(path178_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path178_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path256_0_points = [[3.046089,29.312415],[30.560170,29.086815]];

module poly_path256(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path256_0_points)-2]) {
      hull() {
        translate(path256_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path256_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path312_0_points = [[44.073785,17.214490],[44.012301,18.134174]];

module poly_path312(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path312_0_points)-2]) {
      hull() {
        translate(path312_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path312_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path138_0_points = [[33.457379,-19.603341],[32.310735,-20.411871]];

module poly_path138(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path138_0_points)-2]) {
      hull() {
        translate(path138_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path138_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path204_0_points = [[-20.474787,11.967953],[-21.245116,11.873751],[-22.792378,12.458385]];

module poly_path204(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path204_0_points)-2]) {
      hull() {
        translate(path204_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path204_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path574_0_points = [[40.791025,-2.346917],[40.624677,-2.417410],[40.483921,-2.509776],[39.634950,-2.790132],[39.258077,-2.854780],[37.309511,-3.717713],[36.939621,-4.092839],[36.658371,-4.551582],[36.451282,-4.947761],[36.417722,-5.009036],[36.452481,-5.010888],[36.487239,-5.010888],[36.515171,-4.959950],[36.662647,-4.665559],[36.748301,-4.448355],[36.884368,-4.183946],[37.906004,-3.367701],[38.220493,-3.209761],[39.444487,-2.837619],[39.702868,-2.819733],[39.958194,-2.801927],[40.441540,-2.628810],[40.478452,-2.584254],[40.802839,-2.348717],[40.838026,-2.333715],[40.791025,-2.347023],[40.791025,-2.346917]];

module poly_path574(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    linear_extrude(height=h)
      polygon(path574_0_points);
  }
}

path176_0_points = [[-1.584707,-8.169600],[-3.998229,-8.898432],[-4.860325,-10.071349]];

module poly_path176(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path176_0_points)-2]) {
      hull() {
        translate(path176_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path176_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path284_0_points = [[45.125091,22.638300],[44.931482,21.716131],[44.101280,21.358333]];

module poly_path284(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path284_0_points)-2]) {
      hull() {
        translate(path284_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path284_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path184_0_points = [[-7.498986,-7.159794],[-8.101688,-6.181815]];

module poly_path184(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path184_0_points)-2]) {
      hull() {
        translate(path184_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path184_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path186_0_points = [[-8.101688,-6.181815],[-9.371688,-4.334145]];

module poly_path186(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path186_0_points)-2]) {
      hull() {
        translate(path186_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path186_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path286_0_points = [[44.101280,21.358333],[43.262755,20.814416]];

module poly_path286(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path286_0_points)-2]) {
      hull() {
        translate(path286_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path286_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path126_0_points = [[34.525110,-6.909078],[32.831722,-6.386587],[32.257158,-6.627801],[31.710033,-7.221051]];

module poly_path126(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path126_0_points)-2]) {
      hull() {
        translate(path126_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path126_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path42_0_points = [[46.187038,17.508865],[45.501760,17.085532]];

module poly_path42(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path42_0_points)-2]) {
      hull() {
        translate(path42_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path42_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path188_0_points = [[-9.371688,-4.334145],[-10.641688,-2.529745]];

module poly_path188(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path188_0_points)-2]) {
      hull() {
        translate(path188_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path188_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path50_0_points = [[41.896587,14.138280],[40.231603,11.754807],[39.643123,9.833999]];

module poly_path50(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path50_0_points)-2]) {
      hull() {
        translate(path50_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path50_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path56_0_points = [[42.842978,11.694766],[44.194034,13.366239],[45.174846,14.321075]];

module poly_path56(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path56_0_points)-2]) {
      hull() {
        translate(path56_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path56_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path48_0_points = [[43.052422,15.392212],[41.896587,14.138280]];

module poly_path48(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path48_0_points)-2]) {
      hull() {
        translate(path48_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path48_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path36_0_points = [[47.848865,19.157196],[47.496088,18.473126]];

module poly_path36(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path36_0_points)-2]) {
      hull() {
        translate(path36_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path36_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path58_0_points = [[45.174846,14.321075],[45.624796,14.792129],[46.263106,15.188427]];

module poly_path58(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path58_0_points)-2]) {
      hull() {
        translate(path58_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path58_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path84_0_points = [[37.418657,0.628195],[36.947207,-0.234906],[36.922808,-0.869971],[37.348161,-1.284069],[38.225967,-1.484265]];

module poly_path84(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path84_0_points)-2]) {
      hull() {
        translate(path84_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path84_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path54_0_points = [[40.482500,9.238125],[41.365026,9.790657],[42.842978,11.694766]];

module poly_path54(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path54_0_points)-2]) {
      hull() {
        translate(path54_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path54_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path52_0_points = [[39.643123,9.833999],[39.916560,9.440242],[40.482500,9.238125]];

module poly_path52(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path52_0_points)-2]) {
      hull() {
        translate(path52_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path52_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path290_0_points = [[42.521903,20.225260],[41.935852,19.777530],[41.939714,18.909958]];

module poly_path290(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path290_0_points)-2]) {
      hull() {
        translate(path290_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path290_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path222_0_points = [[-42.746012,15.260193],[-43.341806,15.076527],[-43.894767,14.571014],[-44.914614,12.541255]];

module poly_path222(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path222_0_points)-2]) {
      hull() {
        translate(path222_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path222_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path260_0_points = [[30.560170,29.086796],[46.819621,29.305605],[52.319842,29.445542]];

module poly_path260(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path260_0_points)-2]) {
      hull() {
        translate(path260_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path260_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path228_0_points = [[-47.727095,13.274225],[-49.321119,14.800793],[-51.553841,15.953250]];

module poly_path228(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path228_0_points)-2]) {
      hull() {
        translate(path228_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path228_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path60_0_points = [[46.263106,15.188427],[47.346892,15.224461],[47.021532,14.788302],[45.653715,13.660109]];

module poly_path60(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path60_0_points)-2]) {
      hull() {
        translate(path60_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path60_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path292_0_points = [[41.939714,18.909958],[41.957664,18.073916],[41.286114,17.932212]];

module poly_path292(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path292_0_points)-2]) {
      hull() {
        translate(path292_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path292_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path64_0_points = [[46.082390,12.053715],[46.219126,11.755019],[46.716260,11.740785],[47.708472,12.257865]];

module poly_path64(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path64_0_points)-2]) {
      hull() {
        translate(path64_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path64_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path62_0_points = [[45.653715,13.660109],[45.862317,12.720689],[46.082390,12.053715]];

module poly_path62(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path62_0_points)-2]) {
      hull() {
        translate(path62_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path62_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path328_0_points = [[44.073785,17.214490],[44.073785,17.214490],[44.073785,17.214490],[44.073785,17.214490]];

module poly_path328(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    linear_extrude(height=h)
      polygon(path328_0_points);
  }
}

path302_0_points = [[37.690299,15.095379],[38.325299,14.636043]];

module poly_path302(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path302_0_points)-2]) {
      hull() {
        translate(path302_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path302_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path272_0_points = [[54.057755,24.971999],[53.263437,23.158484],[52.903203,22.946717],[52.366845,22.959340]];

module poly_path272(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path272_0_points)-2]) {
      hull() {
        translate(path272_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path272_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path66_0_points = [[47.708472,12.257865],[48.932453,13.288441]];

module poly_path66(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path66_0_points)-2]) {
      hull() {
        translate(path66_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path66_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path72_0_points = [[46.771979,10.876658],[46.027562,10.731284],[45.402205,10.322470],[45.101382,9.846127],[45.330564,9.498166]];

module poly_path72(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path72_0_points)-2]) {
      hull() {
        translate(path72_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path72_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path572_0_points = [[15.264677,-29.066008],[15.019215,-28.428322],[14.360341,-24.794434],[14.158573,-23.393676],[13.154212,-22.537724],[12.082443,-21.415314],[10.252582,-19.643328],[8.909604,-18.483592],[8.065634,-17.112734],[7.262581,-15.660108],[6.948481,-15.312225],[6.564952,-15.292173],[5.326784,-15.870433],[4.416760,-16.403732],[3.903614,-15.673027],[2.010706,-11.389569],[0.946386,-9.559168],[-0.018627,-8.470368],[-1.133590,-8.003686],[-2.894421,-8.324641],[-4.235118,-8.872449],[-4.964060,-9.875448],[-5.766041,-11.002133],[-6.074638,-11.079900],[-6.312300,-10.827329],[-6.530375,-9.600014],[-6.819539,-7.973763],[-7.392337,-7.000174],[-7.948375,-6.110822],[-9.361726,-4.072186],[-10.501191,-2.320356],[-11.806537,0.292923],[-13.622965,2.731016],[-15.454949,5.237519],[-16.076560,6.511663],[-15.775287,6.822755],[-15.204298,7.252907],[-15.037348,7.769468],[-15.221499,8.360293],[-15.833683,8.864492],[-16.241337,9.194467],[-16.406773,9.818439],[-16.658437,10.501601],[-18.837633,12.143362],[-19.652446,12.403736],[-20.353304,12.228110],[-21.079882,12.059449],[-22.124255,12.382624],[-25.028470,13.360858],[-25.463069,13.668849],[-26.466473,14.688675],[-28.106833,15.260484],[-31.277185,16.025297],[-32.728774,16.498133],[-33.119449,16.135366],[-34.007251,15.302860],[-34.459651,14.917070],[-34.648553,15.039308],[-35.675114,15.991922],[-37.142457,16.727061],[-38.638491,16.960122],[-39.934216,16.804723],[-41.159785,16.200477],[-43.083697,15.350400],[-44.144693,14.512628],[-45.135768,12.444119],[-45.490786,11.479318],[-45.902647,11.774908],[-47.916994,13.732928],[-49.495197,15.121839],[-51.658885,16.186526],[-54.184741,17.423625],[-55.747007,18.558473],[-55.958364,19.300547],[-56.236205,20.221509],[-57.039952,20.732501],[-57.936575,21.284612],[-58.324628,21.994958],[-58.713181,22.922854],[-59.248085,23.512177],[-60.423208,24.027908],[-61.897444,24.688414],[-62.594135,25.598871],[-63.006512,26.229323],[-66.104516,27.533637],[-68.230483,28.302582],[-60.317566,28.260847],[-43.385489,27.716054],[-40.385815,27.675219],[-38.948551,27.912425],[-34.742663,28.472687],[-24.344789,28.761986],[-12.674701,28.974375],[23.610939,28.970248],[47.990327,29.182121],[51.611296,29.295807],[52.161134,29.283927],[52.367840,28.765614],[52.745994,28.230517],[53.281994,28.591465],[53.647265,28.852752],[53.472682,28.202339],[53.373979,27.494373],[54.175481,27.001896],[54.981116,27.958428],[55.709755,28.824526],[54.805417,26.921798],[53.879891,24.984448],[52.929561,23.154068],[52.103773,23.102911],[50.679052,22.719988],[49.815540,22.338615],[49.631572,22.641957],[49.163935,23.158835],[47.956223,23.392297],[46.544422,23.566448],[45.065959,23.526139],[44.936253,22.652291],[44.919187,21.913834],[44.588458,21.749504],[43.756983,21.381050],[43.124981,20.924231],[42.426833,20.368194],[41.796897,19.868483],[41.767441,18.902651],[41.801033,18.133703],[41.178846,18.080477],[40.210948,17.813311],[39.294209,17.519272],[38.307739,17.228056],[37.420422,16.615968],[36.726598,15.703116],[36.809089,15.012964],[37.305182,14.908578],[37.897980,14.815832],[38.258611,14.214046],[38.619817,13.562066],[39.152614,13.361903],[39.889643,13.725094],[40.289497,14.703938],[40.579788,15.322247],[41.538516,15.528179],[42.963752,15.911100],[43.892895,16.602014],[44.183833,17.466045],[44.216906,18.102180],[44.958978,18.642716],[46.212647,19.693300],[46.906663,20.353724],[47.158327,20.094308],[47.553651,19.608549],[47.794980,19.382208],[47.561403,19.105221],[47.328342,18.570887],[47.213708,18.210082],[46.878241,18.086678],[45.951684,17.553379],[45.447322,17.236085],[44.031904,16.388591],[43.162190,15.671321],[40.791790,13.000167],[39.896870,11.421167],[39.505047,10.158481],[39.703485,9.408655],[40.273667,9.116609],[40.877057,9.159576],[43.340474,11.998161],[45.121760,14.065218],[45.724306,14.614022],[46.574899,15.037252],[47.092181,15.082210],[46.320134,14.508602],[45.482977,13.730872],[45.674697,12.712330],[46.022504,11.754919],[46.392998,11.582167],[47.211589,11.721438],[48.103490,12.395036],[48.792854,12.968129],[47.637368,11.322233],[46.830182,11.065917],[45.954530,10.869830],[45.273170,10.403427],[44.966214,9.795195],[45.053649,9.486527],[45.556875,9.214869],[46.147020,8.950801],[45.297459,8.881557],[44.089263,8.610772],[42.935846,7.048593],[42.110055,6.180429],[39.931378,4.033790],[36.932078,0.173562],[36.752212,-0.561435],[36.890221,-1.166410],[37.943571,-1.610933],[39.192921,-1.525561],[41.438262,1.020019],[42.750535,2.667646],[44.124921,3.917000],[45.699501,5.636792],[46.027130,5.898793],[46.643114,6.083276],[47.045156,6.265696],[47.046215,6.010413],[47.198660,5.471427],[47.429651,4.021386],[47.651828,2.646716],[48.415640,2.280409],[47.899390,1.887667],[45.825615,1.170916],[45.015939,0.921502],[44.305295,0.185447],[42.670220,-1.633143],[41.290493,-2.223193],[40.483823,-2.507930],[39.622377,-2.790600],[37.743808,-3.410834],[36.659768,-4.545015],[36.113547,-5.504645],[35.475861,-6.883889],[35.419016,-7.144340],[34.928089,-6.895774],[32.959219,-6.198661],[32.370340,-6.366134],[31.757741,-6.906112],[31.159316,-7.804938],[31.040990,-8.938545],[31.217819,-10.527890],[31.669307,-11.942576],[32.342908,-13.064088],[33.186078,-13.773909],[34.076789,-14.459056],[34.717251,-15.388280],[35.034940,-16.829967],[34.924472,-18.063054],[33.688373,-19.308971],[33.155071,-19.544614],[32.229548,-20.219511],[30.285480,-21.307298],[28.696029,-22.086012],[27.710444,-23.270487],[27.603170,-24.231549],[27.854105,-25.150474],[28.052023,-25.570087],[26.677431,-26.474425],[25.792250,-26.247876],[24.643447,-24.808894],[23.607130,-23.458321],[22.969132,-23.169200],[19.541949,-25.634166],[15.264690,-29.065997],[15.264677,-29.066008]];

module poly_path572(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    linear_extrude(height=h)
      polygon(path572_0_points);
  }
}

path32_0_points = [[46.750741,20.523568],[47.302094,20.229967],[47.778311,19.599727]];

module poly_path32(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path32_0_points)-2]) {
      hull() {
        translate(path32_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path32_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path374_0_points = [[63.257770,1.636302],[63.257770,1.636302],[63.257770,1.636302],[63.257770,1.636302]];

module poly_path374(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    linear_extrude(height=h)
      polygon(path374_0_points);
  }
}

path68_0_points = [[48.932453,13.288441],[48.981827,12.890690],[48.676751,12.388111],[47.992124,11.458919]];

module poly_path68(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path68_0_points)-2]) {
      hull() {
        translate(path68_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path68_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path266_0_points = [[53.504529,27.809970],[53.747698,27.298087],[54.243000,27.245527]];

module poly_path266(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path266_0_points)-2]) {
      hull() {
        translate(path266_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path266_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path30_0_points = [[45.343068,19.073677],[46.750741,20.523568]];

module poly_path30(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path30_0_points)-2]) {
      hull() {
        translate(path30_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path30_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path70_0_points = [[47.992124,11.458919],[47.395841,10.933420],[46.771979,10.876658]];

module poly_path70(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path70_0_points)-2]) {
      hull() {
        translate(path70_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path70_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path300_0_points = [[36.826064,15.294988],[37.129196,15.073293],[37.690299,15.095379]];

module poly_path300(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path300_0_points)-2]) {
      hull() {
        translate(path300_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path300_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path74_0_points = [[45.330564,9.498166],[46.535153,8.859284],[44.914755,8.693364]];

module poly_path74(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path74_0_points)-2]) {
      hull() {
        translate(path74_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path74_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path86_0_points = [[38.225967,-1.484265],[39.265456,-1.280245],[40.596271,0.202724]];

module poly_path86(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path86_0_points)-2]) {
      hull() {
        translate(path86_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path86_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path34_0_points = [[47.778311,19.599727],[48.032606,19.334363],[47.848865,19.157196]];

module poly_path34(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path34_0_points)-2]) {
      hull() {
        translate(path34_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path34_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path116_0_points = [[40.581645,-2.670008],[39.727898,-2.952231]];

module poly_path116(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path116_0_points)-2]) {
      hull() {
        translate(path116_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path116_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path82_0_points = [[40.967262,4.970174],[37.418657,0.628195]];

module poly_path82(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path82_0_points)-2]) {
      hull() {
        translate(path82_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path82_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path280_0_points = [[47.778311,23.239732],[46.332678,23.423485]];

module poly_path280(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path280_0_points)-2]) {
      hull() {
        translate(path280_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path280_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path78_0_points = [[43.119740,7.018570],[42.322219,6.078881]];

module poly_path78(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path78_0_points)-2]) {
      hull() {
        translate(path78_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path78_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path88_0_points = [[40.596271,0.202724],[42.274978,2.443030]];

module poly_path88(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path88_0_points)-2]) {
      hull() {
        translate(path88_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path88_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path310_0_points = [[42.050347,15.730757],[43.529217,16.482279],[44.073785,17.214490]];

module poly_path310(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path310_0_points)-2]) {
      hull() {
        translate(path310_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path310_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path46_0_points = [[44.332510,16.450008],[43.052422,15.392212]];

module poly_path46(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path46_0_points)-2]) {
      hull() {
        translate(path46_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path46_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path98_0_points = [[46.875201,6.417548],[47.143310,6.566106],[47.213865,6.182363]];

module poly_path98(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path98_0_points)-2]) {
      hull() {
        translate(path98_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path98_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path282_0_points = [[46.332678,23.423485],[45.296732,23.467817],[45.125091,22.638300]];

module poly_path282(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path282_0_points)-2]) {
      hull() {
        translate(path282_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path282_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path80_0_points = [[42.322219,6.078881],[40.967262,4.970174]];

module poly_path80(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path80_0_points)-2]) {
      hull() {
        translate(path80_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path80_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path276_0_points = [[50.822382,22.606561],[49.849764,22.183705],[49.471645,22.583515]];

module poly_path276(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path276_0_points)-2]) {
      hull() {
        translate(path276_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path276_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path114_0_points = [[41.271596,-2.387788],[40.581645,-2.670008]];

module poly_path114(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path114_0_points)-2]) {
      hull() {
        translate(path114_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path114_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path120_0_points = [[36.876795,-4.484804],[36.168376,-5.741958]];

module poly_path120(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path120_0_points)-2]) {
      hull() {
        translate(path120_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path120_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path90_0_points = [[42.274978,2.443030],[44.038865,4.078716]];

module poly_path90(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path90_0_points)-2]) {
      hull() {
        translate(path90_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path90_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path242_0_points = [[-62.690724,25.404463],[-63.407223,26.309488],[-65.435374,27.116971]];

module poly_path242(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path242_0_points)-2]) {
      hull() {
        translate(path242_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path242_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path94_0_points = [[45.520532,5.662107],[46.028532,6.078881]];

module poly_path94(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path94_0_points)-2]) {
      hull() {
        translate(path94_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path94_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path100_0_points = [[47.213865,6.182363],[47.422730,5.399648]];

module poly_path100(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path100_0_points)-2]) {
      hull() {
        translate(path100_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path100_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path268_0_points = [[54.243000,27.245527],[55.550008,28.954662],[56.018000,29.226856],[55.111048,27.108824]];

module poly_path268(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path268_0_points)-2]) {
      hull() {
        translate(path268_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path268_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path92_0_points = [[44.038865,4.078716],[45.520532,5.662107]];

module poly_path92(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path92_0_points)-2]) {
      hull() {
        translate(path92_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path92_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path270_0_points = [[55.111048,27.108824],[54.057755,24.971999]];

module poly_path270(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path270_0_points)-2]) {
      hull() {
        translate(path270_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path270_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path96_0_points = [[46.028532,6.078881],[46.875201,6.417548]];

module poly_path96(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path96_0_points)-2]) {
      hull() {
        translate(path96_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path96_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path314_0_points = [[-44.914614,12.541255],[-45.407615,11.170269],[-46.348084,11.887599]];

module poly_path314(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path314_0_points)-2]) {
      hull() {
        translate(path314_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path314_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path102_0_points = [[47.422730,5.399648],[47.634396,3.870944]];

module poly_path102(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path102_0_points)-2]) {
      hull() {
        translate(path102_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path102_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path108_0_points = [[47.857940,1.655646],[45.760342,0.972050]];

module poly_path108(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path108_0_points)-2]) {
      hull() {
        translate(path108_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path108_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path104_0_points = [[47.634396,3.870944],[47.754319,2.735162],[48.422384,2.460927]];

module poly_path104(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path104_0_points)-2]) {
      hull() {
        translate(path104_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path104_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path258_0_points = [[-30.929424,15.707955],[-32.700093,16.305919],[-33.656305,15.379120]];

module poly_path258(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path258_0_points)-2]) {
      hull() {
        translate(path258_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path258_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path106_0_points = [[48.422384,2.460927],[48.905587,2.282349],[47.857940,1.655646]];

module poly_path106(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path106_0_points)-2]) {
      hull() {
        translate(path106_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path106_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path570_0_points = [[15.264677,-29.066008],[15.019215,-28.428322],[14.360341,-24.794434],[14.158573,-23.393676],[13.154212,-22.537724],[12.082443,-21.415314],[10.252582,-19.643328],[8.909604,-18.483592],[8.065634,-17.112734],[7.262581,-15.660108],[6.948481,-15.312225],[6.564952,-15.292173],[5.326784,-15.870433],[4.416760,-16.403732],[3.903614,-15.673027],[2.010706,-11.389569],[0.946386,-9.559168],[-0.018627,-8.470368],[-1.133590,-8.003686],[-2.894421,-8.324641],[-4.235118,-8.872449],[-4.964060,-9.875448],[-5.766041,-11.002133],[-6.074638,-11.079900],[-6.312300,-10.827329],[-6.530375,-9.600014],[-6.819539,-7.973763],[-7.392337,-7.000174],[-7.948375,-6.110822],[-9.361726,-4.072186],[-10.501191,-2.320356],[-11.806537,0.292923],[-13.622965,2.731016],[-15.454949,5.237519],[-16.076560,6.511663],[-15.775287,6.822755],[-15.204298,7.252907],[-15.037348,7.769468],[-15.221499,8.360293],[-15.833683,8.864492],[-16.241337,9.194467],[-16.406773,9.818439],[-16.658437,10.501601],[-18.837633,12.143362],[-19.652446,12.403736],[-20.353304,12.228110],[-21.079882,12.059449],[-22.124255,12.382624],[-25.028470,13.360858],[-25.463069,13.668849],[-26.466473,14.688675],[-28.106833,15.260484],[-31.277185,16.025297],[-32.728774,16.498133],[-33.119449,16.135366],[-34.007251,15.302860],[-34.459651,14.917070],[-34.648553,15.039308],[-35.675114,15.991922],[-37.142457,16.727061],[-38.638491,16.960122],[-39.934216,16.804723],[-41.159785,16.200477],[-43.083697,15.350400],[-44.144693,14.512628],[-45.135768,12.444119],[-45.490786,11.479318],[-45.902647,11.774908],[-47.916994,13.732928],[-49.495197,15.121839],[-51.658885,16.186526],[-54.184741,17.423625],[-55.747007,18.558473],[-55.958364,19.300547],[-56.236205,20.221509],[-57.039952,20.732501],[-57.936575,21.284612],[-58.324628,21.994958],[-58.713181,22.922854],[-59.248085,23.512177],[-60.423208,24.027908],[-61.897444,24.688414],[-62.594135,25.598871],[-63.006512,26.229323],[-66.104516,27.533637],[-68.230483,28.302582],[-60.317566,28.260847],[-43.385489,27.716054],[-40.385815,27.675219],[-38.948551,27.912425],[-34.742663,28.472687],[-24.344789,28.761986],[-12.674701,28.974375],[23.610939,28.970248],[47.990327,29.182121],[51.611296,29.295807],[52.161134,29.283927],[52.367840,28.765614],[52.745994,28.230517],[53.281994,28.591465],[53.647265,28.852752],[53.472682,28.202339],[53.373979,27.494373],[54.175481,27.001896],[54.981116,27.958428],[55.709755,28.824526],[54.805417,26.921798],[53.879891,24.984448],[52.929561,23.154068],[52.103773,23.102911],[50.679052,22.719988],[49.815540,22.338615],[49.631572,22.641957],[49.163935,23.158835],[47.956223,23.392297],[46.544422,23.566448],[45.065959,23.526139],[44.936253,22.652291],[44.919187,21.913834],[44.588458,21.749504],[43.756983,21.381050],[43.124981,20.924231],[42.426833,20.368194],[41.796897,19.868483],[41.767441,18.902651],[41.801033,18.133703],[41.178846,18.080477],[40.210948,17.813311],[39.294209,17.519272],[38.307739,17.228056],[37.420422,16.615968],[36.726598,15.703116],[36.809089,15.012964],[37.305182,14.908578],[37.897980,14.815832],[38.258611,14.214046],[38.619817,13.562066],[39.152614,13.361903],[39.889643,13.725094],[40.289497,14.703938],[40.579788,15.322247],[41.538516,15.528179],[42.963752,15.911100],[43.892895,16.602014],[44.183833,17.466045],[44.216906,18.102180],[44.958978,18.642716],[46.212647,19.693300],[46.906663,20.353724],[47.158327,20.094308],[47.553651,19.608549],[47.794980,19.382208],[47.561403,19.105221],[47.328342,18.570887],[47.213708,18.210082],[46.878241,18.086678],[45.951684,17.553379],[45.447322,17.236085],[44.031904,16.388591],[43.162190,15.671321],[40.791790,13.000167],[39.896870,11.421167],[39.505047,10.158481],[39.703485,9.408655],[40.273667,9.116609],[40.877057,9.159576],[43.340474,11.998161],[45.121760,14.065218],[45.724306,14.614022],[46.574899,15.037252],[47.092181,15.082210],[46.320134,14.508602],[45.482977,13.730872],[45.674697,12.712330],[46.022504,11.754919],[46.392998,11.582167],[47.211589,11.721438],[48.103490,12.395036],[48.792854,12.968129],[47.637368,11.322233],[46.830182,11.065917],[45.954530,10.869830],[45.273170,10.403427],[44.966214,9.795195],[45.053649,9.486527],[45.556875,9.214869],[46.147020,8.950801],[45.297459,8.881557],[44.089263,8.610772],[42.935846,7.048593],[42.110055,6.180429],[39.931378,4.033790],[36.932078,0.173562],[36.752212,-0.561435],[36.890221,-1.166410],[37.943571,-1.610933],[39.192921,-1.525561],[41.438262,1.020019],[42.750535,2.667646],[44.124921,3.917000],[45.699501,5.636792],[46.027130,5.898793],[46.643114,6.083276],[47.045156,6.265696],[47.046215,6.010413],[47.198660,5.471427],[47.429651,4.021386],[47.651828,2.646716],[48.415640,2.280409],[47.899390,1.887667],[45.825615,1.170916],[45.015939,0.921502],[44.305295,0.185447],[42.670220,-1.633143],[41.290493,-2.223193],[40.483823,-2.507930],[39.622377,-2.790600],[37.743808,-3.410834],[36.659768,-4.545015],[36.113547,-5.504645],[35.475861,-6.883889],[35.419016,-7.144340],[34.928089,-6.895774],[32.959219,-6.198661],[32.370340,-6.366134],[31.757741,-6.906112],[31.159316,-7.804938],[31.040990,-8.938545],[31.217819,-10.527890],[31.669307,-11.942576],[32.342908,-13.064088],[33.186078,-13.773909],[34.076789,-14.459056],[34.717251,-15.388280],[35.034940,-16.829967],[34.924472,-18.063054],[33.688373,-19.308971],[33.155071,-19.544614],[32.229548,-20.219511],[30.285480,-21.307298],[28.696029,-22.086012],[27.710444,-23.270487],[27.603170,-24.231549],[27.854105,-25.150474],[28.052023,-25.570087],[26.677431,-26.474425],[25.792250,-26.247876],[24.643447,-24.808894],[23.607130,-23.458321],[22.969132,-23.169200],[19.541949,-25.634166],[15.264690,-29.065997],[15.264677,-29.066008]];

module poly_path570(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    linear_extrude(height=h)
      polygon(path570_0_points);
  }
}

path122_0_points = [[36.168376,-5.741958],[35.642755,-6.947135]];

module poly_path122(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path122_0_points)-2]) {
      hull() {
        translate(path122_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path122_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path118_0_points = [[39.727898,-2.952231],[37.996442,-3.470707],[36.876795,-4.484804]];

module poly_path118(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path118_0_points)-2]) {
      hull() {
        translate(path118_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path118_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path230_0_points = [[-51.553841,15.953250],[-54.479915,17.364268]];

module poly_path230(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path230_0_points)-2]) {
      hull() {
        translate(path230_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path230_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path38_0_points = [[47.496088,18.473126],[47.350754,18.069326],[46.922789,17.932199]];

module poly_path38(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path38_0_points)-2]) {
      hull() {
        translate(path38_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path38_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path248_0_points = [[-44.025453,27.915216],[-40.377331,27.840753],[-39.042581,28.061041]];

module poly_path248(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path248_0_points)-2]) {
      hull() {
        translate(path248_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path248_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path40_0_points = [[46.922789,17.932199],[46.187038,17.508865]];

module poly_path40(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path40_0_points)-2]) {
      hull() {
        translate(path40_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path40_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path124_0_points = [[35.642755,-6.947135],[35.489517,-7.328123],[34.525110,-6.909078]];

module poly_path124(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path124_0_points)-2]) {
      hull() {
        translate(path124_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path124_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path110_0_points = [[45.760342,0.972050],[44.988258,0.731759],[44.145474,-0.305229]];

module poly_path110(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path110_0_points)-2]) {
      hull() {
        translate(path110_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path110_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path112_0_points = [[44.145474,-0.305229],[42.735887,-1.841772],[41.271596,-2.387788]];

module poly_path112(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path112_0_points)-2]) {
      hull() {
        translate(path112_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path112_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

path240_0_points = [[-60.692755,23.938494],[-62.070585,24.549606],[-62.690724,25.404463]];

module poly_path240(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    for (t = [0: len(path240_0_points)-2]) {
      hull() {
        translate(path240_0_points[t]) 
          cylinder(h=h, r=w/2, $fn=res);
        translate(path240_0_points[t + 1]) 
          cylinder(h=h, r=w/2, $fn=res);
      }
    }
  }
}

// The shapes
poly_path262(height, width);
poly_path196(height, width);
poly_path142(height, width);
poly_path308(height, width);
poly_path144(height, width);
poly_path194(height, width);
poly_path146(height, width);
poly_path294(height, width);
poly_path206(height, width);
poly_path150(height, width);
poly_path220(height, width);
poly_path152(height, width);
poly_path192(height, width);
poly_path148(height, width);
poly_path224(height, width);
poly_path208(height, width);
poly_path250(height, width);
poly_path154(height, width);
poly_path264(height, width);
poly_path212(height, width);
poly_path136(height, width);
poly_path190(height, width);
poly_path304(height, width);
poly_path134(height, width);
poly_path370(height, width);
poly_path198(height, width);
poly_path236(height, width);
poly_path156(height, width);
poly_path210(height, width);
poly_path232(height, width);
poly_path158(height, width);
poly_path200(height, width);
poly_path306(height, width);
poly_path160(height, width);
poly_path274(height, width);
poly_path216(height, width);
poly_path252(height, width);
poly_path162(height, width);
poly_path164(height, width);
poly_path238(height, width);
poly_path168(height, width);
poly_path166(height, width);
poly_path246(height, width);
poly_path218(height, width);
poly_path234(height, width);
poly_path140(height, width);
poly_path296(height, width);
poly_path244(height, width);
poly_path170(height, width);
poly_path172(height, width);
poly_path174(height, width);
poly_path288(height, width);
poly_path28(height, width);
poly_path44(height, width);
poly_path214(height, width);
poly_path180(height, width);
poly_path202(height, width);
poly_path132(height, width);
poly_path278(height, width);
poly_path130(height, width);
poly_path76(height, width);
poly_path226(height, width);
poly_path254(height, width);
poly_path318(height, width);
poly_path298(height, width);
poly_path182(height, width);
poly_path372(height, width);
poly_path128(height, width);
poly_path178(height, width);
poly_path256(height, width);
poly_path312(height, width);
poly_path138(height, width);
poly_path204(height, width);
poly_path574(height, width);
poly_path176(height, width);
poly_path284(height, width);
poly_path184(height, width);
poly_path186(height, width);
poly_path286(height, width);
poly_path126(height, width);
poly_path42(height, width);
poly_path188(height, width);
poly_path50(height, width);
poly_path56(height, width);
poly_path48(height, width);
poly_path36(height, width);
poly_path58(height, width);
poly_path84(height, width);
poly_path54(height, width);
poly_path52(height, width);
poly_path290(height, width);
poly_path222(height, width);
poly_path260(height, width);
poly_path228(height, width);
poly_path60(height, width);
poly_path292(height, width);
poly_path64(height, width);
poly_path62(height, width);
poly_path328(height, width);
poly_path302(height, width);
poly_path272(height, width);
poly_path66(height, width);
poly_path72(height, width);
poly_path572(height, width);
poly_path32(height, width);
poly_path374(height, width);
poly_path68(height, width);
poly_path266(height, width);
poly_path30(height, width);
poly_path70(height, width);
poly_path300(height, width);
poly_path74(height, width);
poly_path86(height, width);
poly_path34(height, width);
poly_path116(height, width);
poly_path82(height, width);
poly_path280(height, width);
poly_path78(height, width);
poly_path88(height, width);
poly_path310(height, width);
poly_path46(height, width);
poly_path98(height, width);
poly_path282(height, width);
poly_path80(height, width);
poly_path276(height, width);
poly_path114(height, width);
poly_path120(height, width);
poly_path90(height, width);
poly_path242(height, width);
poly_path94(height, width);
poly_path100(height, width);
poly_path268(height, width);
poly_path92(height, width);
poly_path270(height, width);
poly_path96(height, width);
poly_path314(height, width);
poly_path102(height, width);
poly_path108(height, width);
poly_path104(height, width);
poly_path258(height, width);
poly_path106(height, width);
poly_path570(height, width);
poly_path122(height, width);
poly_path118(height, width);
poly_path230(height, width);
poly_path38(height, width);
poly_path248(height, width);
poly_path40(height, width);
poly_path124(height, width);
poly_path110(height, width);
poly_path112(height, width);
poly_path240(height, width);
