/**
 * t-splice.scad is part of Paper Laptop project.
 *
 * @author R. S. Doiel, <rsdoiel@gmail.com>
 * copyright (c) 2016 all rights reserved
 * Released under a BSD 2-clause license
 */

/*
# misc notes

|  Inches   | Inches    |  Millimeters |
|(fraction) | (decimal) |              |
+-----------+-----------+--------------+
|    1/16   |    0.0625 | 1.5875       |
|    1/8    |    0.125  | 3.175        |
|    3/16   |    0.1875 | 4.7625       |
|    1/4    |    0.25   | 6.35         |
|    3/8    |    0.375  | 9.525        |
|    1/2    |    0.5    | 12.7         |
|    5/8    |    0.625  | 15.875       |
|    3/4    |    0.75   | 19.05        |
|    7/8    |    0.875  | 22.225       |
|    1      |    1.0    | 25.4         |

## Raspberry Pi Dimensions

85.60mm x 56mm x 21mm
(or roughly 3.37″ x 2.21″ x 0.83″)

 */

 /*
  * Splice: basic splice, units assumed is 1mm
  */
module Splice() {
    // sizing and spacing
    t = 3.175;// Aprox. 1/8 inch.
    side_t = t/2;
    side_l = 20;
    b_spacing = side_l/2;
    inner_h = 21;
    inner_t = t*1.25;
    outer_t = side_t;
    outer_h = inner_h+(2*t);
    bump_r = 2;
    bump_o = -0.3;

    // main fastening surface
    translate([0, t*2.25, t]) {
        difference() {
            // fastener body
            color([1,0,0]) cylinder(h=inner_h, r=t, center=false);
            // bolt hole
            color([0,0,0]) cylinder(h=inner_h, r=t/1.5, center=false);
        }
    }

    // corner bumper
    translate([bump_o, bump_o, 0]) {
        color([1,0,0]) cylinder(h=outer_h, r=bump_r, center=false);
    }

    // middle bumpers side a
    translate([b_spacing * -1, bump_o,0]) {
        color([1,0,0]) cylinder(h=outer_h, r=bump_r, center=false);
    }

    // middle bumpers side b
    translate([b_spacing, bump_o, 0]) {
        color([1,0,0]) cylinder(h=outer_h, r=bump_r, center=false);
    }

    // end bumpers
    translate([side_l, bump_o, 0]) {
        color([1,0,0]) cylinder(h=outer_h, r=bump_r, center=false);
    }
    translate([side_l*-1, bump_o, 0]) {
        color([1,0,0]) cylinder(h=outer_h, r=bump_r, center=false);
    }

    // outer side a
    translate([0, 0, 0]) {
       color([0,1,0]) cube([side_l, side_t, outer_h], center=false);
    }

    // Inner side a
    translate([0, t*1.25, t]) {
       color([0,1,0]) cube([side_l, side_t, inner_h], center=false);
    }

    // outer side b
    translate([-1 * side_l, 0, 0]) {
       color([1,1,0]) cube([side_l, side_t, outer_h], center=false);
    }

    // Inner side b
    translate([side_l*-1, t*1.25, t]) {
       color([1,1,0]) cube([side_l, side_t, inner_h], center=false);
    }

    // filler corner
    translate([8, 1, t]) {
       color([0,0, 1]) cube([outer_t, inner_t, inner_h], center=false);
    }
    translate([-8, 1, t]) {
       color([0,0, 1]) cube([outer_t, inner_t, inner_h], center=false);
    }
}

/*
 * SpliceT: A T shaped splice, units assumed is 1mm
 */
module SpliceT() {
   // sizing and spacing
   t = 3.175;// Aprox. 1/8 inch.
   side_t = t/2;
   side_l = 20;
   b_spacing = side_l/2;
   inner_h = 21;
   inner_t = t*1.25;
   outer_t = side_t;
   outer_h = inner_h+(2*t);
   bump_r = 2;
   bump_o = -0.3;

   // main fastening surface
   translate([0, t*2.25, t]) {
       difference() {
           // fastener body
           color([1,0,1]) cylinder(h=inner_h, r=t, center=false);
           // bolt hole
           color([0,0,0]) cylinder(h=inner_h, r=t/1.5, center=false);
       }
   }

   // corner bumper
   translate([bump_o, bump_o, 0]) {
       color([1,0,0]) cylinder(h=outer_h, r=bump_r, center=false);
   }

   // middle bumpers side a
   translate([b_spacing * -1, bump_o,0]) {
       color([1,0,0]) cylinder(h=outer_h, r=bump_r, center=false);
   }

   // middle bumpers side b
   translate([b_spacing, bump_o, 0]) {
       color([1,0,0]) cylinder(h=outer_h, r=bump_r, center=false);
   }

   // end bumpers
   translate([side_l, bump_o, 0]) {
       color([1,0,0]) cylinder(h=outer_h, r=bump_r, center=false);
   }
   translate([side_l*-1, bump_o, 0]) {
       color([1,0,0]) cylinder(h=outer_h, r=bump_r, center=false);
   }

   // outer side a
   translate([0, 0, 0]) {
      color([0,1,0]) cube([side_l, side_t, outer_h], center=false);
   }

   // inner side a
   translate([0, t*1.25, t]) {
      color([0,1,0]) cube([side_l, side_t, inner_h], center=false);
   }

   // outer side b
   translate([-1 * side_l, 0, 0]) {
      color([1,1,0]) cube([side_l, side_t, outer_h], center=false);
   }

   // inner side b
   translate([side_l*-1, t*1.25, t]) {
      color([1,1,0]) cube([side_l, side_t, inner_h], center=false);
   }

   // port side c
   translate([t*-1, 0, t]) {
      color([0,1,1]) cube([side_t, side_l, inner_h], center=false);
   }

   // starboard side c
   translate([t/2, 0, t]) {
      color([0,1,1]) cube([side_t, side_l, inner_h], center=false);
   }

   // filler corner
   translate([2*t, 1, t]) {
      color([0,0, 1]) cube([outer_t, inner_t, inner_h], center=false);
   }
   translate([-2.5*t, 1, t]) {
      color([0,0, 1]) cube([outer_t, inner_t, inner_h], center=false);
   }
}
