$fn=200;

TOL=0.1;

/* Ender 3 S1 Printhead attachment */
module attachment() {
    difference() {
        union() {
            translate([-14,-2,0])
            cube([24,2,24]);
            translate([-10,-8,0])
            cube([2,8,24]);
        }

        union() {
            translate([-5.757,0,5])
            rotate([90,0,0])
            cylinder(d=3.2, h=10, center=true);
        }
    }
}


/* Wedge */
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


module attachment_ek() {
    difference() {
        union() {
            attachment();
            translate([0,0,10]) ek(tol=-TOL);
        }
        translate([0,0,10])
        rotate([-30,0,0])
        translate([-5,0,0])
        cube([10,10,10]);
    }
}

module penholder_ek(d) {
    difference() {
        union() {
            translate([-8,0,0]) cube([16,13,19]);
            translate([0,13,0]) cylinder(d=16, h=19);
        }
        union() {
            translate([0,0,19]) mirror([0,0,1]) ek(tol=TOL);
            translate([0,13,0]) cylinder(d=d, h=200);
            translate([0,9,0]) linear_extrude(height=200) polygon(
                points=[[-d/2,0],[-d/2,4],[d/2,4],[d/2,0],[0,-4]] );
            // Holes for the screws.
            translate([0,20,5]) rotate([90,0,0])
                cylinder(d=2.75, h=10, center=true);
            translate([0,20,14]) rotate([90,0,0])
                cylinder(d=2.75, h=10, center=true);
        }
    }
}


/************** Printhead attachment + penholder with wedge ****************/

attachment_ek();

translate([0,10,0])
penholder_ek(d=10);