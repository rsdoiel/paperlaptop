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
    translate([114, 124, 0]) {
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

// Two End Pieces
module TwoEndsGrouped() {
    translate([0, 132, 0]) {
        End();
    }
    translate([114, 132, 0]) {
        mirror(180) End();
    }
}

module TwoSplicesGrouped() {
    translate([58, 172, 0]) {
        Splice();
    }
    translate([58, 210, 0]) {
        Splice();
    }
}

// Render Parts grouped bottom
FourCornersGrouped();
TwoEndsGrouped();
TwoSplicesGrouped();

// Render Parts grouped top
translate([140, 0, 0]) {
    FourCornersGrouped();
    TwoEndsGrouped();
    TwoSplicesGrouped();
}
