include <BOSL/shapes.scad>

$fn = 16;

h = 3;
r = 1;
size = 25;
dx = size / 2 - r;
node_dx = (size - 4 * r) / 4;

neg = true;
code = 27;

hull() {
  move([dx, dx]) cylinder(h=h, r=r);
  move([-dx, dx]) cylinder(h=h, r=r);
  move([dx, -dx]) cylinder(h=h, r=r);
  move([-dx, -dx]) cylinder(h=h, r=r);
}

move([-dx + r, -dx - r * 0.7]) {
  for (p = [0:4]) {
    if ((code - (code % (2 ^ p))) / (2 ^ p) % 2 != 0) {
      right(p * node_dx) {
        cylinder(h=0.8, r=r);
      }
    }
  }
}

if (neg) {
  move([-dx - r*0.7, -dx + 3 * r/2]) {
    hull() {
      cylinder(h=0.8, r=r);
      ymove(2 * r) cylinder(h=0.8, r=r);
    }
  }
}

