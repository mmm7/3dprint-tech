include <dovetail.scad>

$fn=$preview ? 12 : 20;

base = [10, 12, 8];
length = 5;
narrow = 2.8;
wide = 5.2;
fillet = 1;
gap = 0.01;

distance = base[1] + 3;

// Standing up with spherical fillet.
up(base[0]) {
  yrot(-90)
    dovetail(base, length, narrow, wide, fillet);

  right(3)
    yrot(90)
      dovetail(base, length, narrow, wide, fillet, inverted = true);
}

// Lying down with various fillet options.
for (inverted = [0:1]) {
  right(inverted * (length + base[0] + 3)) {
    mirror([inverted, 0, 0]) {
      // flat fillet
      fwd(distance) {
        dovetail(base, length, narrow, wide, fillet,
                 flat_fillet = true,
                 inverted = inverted == 1,
                 gap = gap);
      }

      // flat fillet with elephant foot compensation
      fwd(2 * distance) {
        dovetail(base, length, narrow, wide, fillet,
                 flat_fillet = true,
                 de_elephant = [0.4, 1.5],
                 inverted = inverted == 1,
                 gap = gap);
      }

      // no fillet
      fwd(3 * distance) {
        dovetail(base, length, narrow, wide, 0,
                 inverted = inverted == 1,
                 gap = gap);
      }
    }
  }
}
