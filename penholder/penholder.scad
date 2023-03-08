$fn=200;

TOL=0.1;

module ek(tol=0) {
    hull() {
        linear_extrude(0.01) {
            polygon(points = [
                [-5-tol,3], [5+tol,3],
                [4+tol,0], [-4-tol,0],
            ]);
        }

        linear_extrude(19) {
            polygon(points = [
                [-4-tol,3], [4+tol,3],
                [3+tol,0], [-3-tol,0],
            ]);
        }
    }
}

difference() {
    
union() {
    translate([5,0,0])
    ek(tol=-TOL);
    
    translate([-10,-2,0])
    cube([20,2,19]);
    
    translate([-10,-6,0])
    cube([2,6,19]);
}

union() {

    translate([-5.757,0,5])
    rotate([90,0,0])
    cylinder(d=3.2, h=10, center=true);

/*
    translate([10,0,13])
    rotate([90,0,0])
    cylinder(d=3.0, h=10, center=true);
*/
}
}


translate([0,10,0])
difference() {
  translate([-8,0,0]) cube([16,5,19]);
  translate([0,0,19]) mirror([0,0,1]) ek(tol=TOL);
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