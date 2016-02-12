/**
 * hinge.scad is part of Paper Laptop.
 * It describes a simple hinge for attaching the
 * screen section to the base section.
 *
 * @author R. S. Doiel, <rsdoiel@gmail.com>
 * copyright (c) 2016 all rights reserved
 * Released under a BSD 2-clause license
 */
include <joints.scad>

module pinslieve() {
    difference() {
        cylinder(20,10,10,false);
        translate([0,0,-2]) {
            cylinder(24,4,4,false);
        }
    }
}

rotate([0,90,0]) {
    pinslieve();
}

translate([20.25,0,0]) {
    rotate([0,90,0]) {
        pinslieve();
    }
}

translate([40.5,0,0]) {
    rotate([0,90,0]) {
        pinslieve();
    }
}
translate([60.75,0,0]) {
    rotate([0,90,0]) {
        pinslieve();
    }
}

translate([-60,0,0]) {
Corner();
}