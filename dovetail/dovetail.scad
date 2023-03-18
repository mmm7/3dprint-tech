include <BOSL/shapes.scad>

// base: [xyz] size of the attached "box".
// length: length of tail (or depth of groove in box)
// narrow: width of dovetail near base
// wide: width of end of dovetail
// fillet: rounding radius
// inverted: if true, produce "groove" instead of "tail"
// flat_fillet: only round in xy
// de_elephant: with flat_fillet, chamfer bottom by [inset, height]
// gap: inset to create a gap between tail and groove

module dovetail(base,
                length,
                narrow,
                wide,
                fillet,
                inverted = false,
                flat_fillet = false,
                de_elephant = undef,
                gap = 0) {
  points = [[inverted ? base[0] : -base[0], -base[1] / 2],
            [inverted ? base[0] : -base[0], base[1] / 2],
            [0, base[1] / 2],
            [0, narrow / 2],
            [length, wide / 2],
            [length, -wide / 2],
            [0, -narrow / 2],
            [0, -base[1] / 2]];

  if (fillet == 0) {
    linear_extrude(base[2]) {
      offset(-gap) {
        polygon(points = points);
      }
    }
  } else {
    // To get fillets both on internal and external corners,
    // "minkowski" is combined with "offset". The radii must sum
    // up to zero to preserve dimensions.

    // The outer minkowski applies fillet to external corners,
    // as well as elephant's foot compensation if configured.
    minkowski() {
      h = de_elephant != undef ? de_elephant[1] : fillet * 2;
      up(h/2) {
        if (de_elephant != undef) {
          cyl(l = de_elephant[1], d1 = 2 * fillet - de_elephant[0], d2 = 2 * fillet);
        } else if (flat_fillet) {
          cyl(l = 2 * fillet, d = 2 * fillet);
        } else {
          sphere(fillet);
        }
      }

      linear_extrude(base[2] - h) {
        // Offset applies fillet to internal corners.
        // The doubling of radius compensates for outer minkowski.
        offset(-fillet * 2) {
          // Inner minkowski ensures balance of offset/minkowski.
          minkowski() {
            circle(r = fillet - gap);
            polygon(points = points);
          }
        }
      }
    }
  }
}
