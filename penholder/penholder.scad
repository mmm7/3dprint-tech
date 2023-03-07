$fn=200;

module ek() {
    hull() {
        linear_extrude(0.01) {
            polygon(points = [
                [-5,3], [5,3],
                [4,0], [-4,0],
            ]);
        }

        linear_extrude(19) {
            polygon(points = [
                [-4,3], [4,3],
                [3,0], [-3,0],
            ]);
        }
    }
}

difference() {
    
union() {
    translate([3,0,0])
    ek();
    
    translate([-10,-2,0])
    cube([20,2,19]);
    
    translate([-10,-6,0])
    cube([2,6,19]);
}

union() {

    translate([-6,0,5])
    rotate([90,0,0])
    cylinder(d=3.0, h=10, center=true);

/*
    translate([10,0,13])
    rotate([90,0,0])
    cylinder(d=3.0, h=10, center=true);
*/
}
}


translate([30,0,0])
difference() {
  translate([-8,0,0]) cube([16,5,18]);
  translate([0,0,19]) mirror([0,0,1]) ek();
}

/*
polyhedron() {
    points = [
        [-5,0,0], [5,0,0],
        [4,3,0], [-4,3,0]
    ],
    faces = [
        [0,1,2,3]
    ]
}
*/