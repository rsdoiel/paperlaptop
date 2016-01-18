//
// paperlaptop.scad - parts design to facilitate building
// laptop prototype cases out of cardboard or formboard.
//
// @author R. S. Doiel, <rsdoiel@gmail.com>
// copyright (c) 2016 all rights reserved
// Licensed under the 2-clause BSD License
//
include <joints.scad>


// Four corner joints
module FourCornersGrouped() {
    Corner();
    translate([120,6.35,0]) {
        rotate(90) {
            Corner();
        }
    }
    translate([112, 140, 0]) {
        rotate(180) {
            Corner();
            translate([120,6.35,0]) {
                rotate(90) {
                    Corner();
                }
            }
        }
    }
}
FourCornersGrouped();