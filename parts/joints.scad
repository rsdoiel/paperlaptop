/**
 * corner-bracket.scad is part of Paper Laptop.
 * It describes a corner joint for the laptop's sides 
 * and bottom.working sides, bottom and top.
 *
 * @author R. S. Doiel, <rsdoiel@gmail.com>
 * copyright (c) 2016 all rights reserved
 * Released under a BSD 2-clause license
 */

// Guessing fiber board is about 1/4th inch thick, 
// i.e. 6.35mm

/*
 * Corner
 */
module corner (t) {
    a = t; 
    b = t*40.0;
    c = t*4.0;

    /* outside 1 */
    color([1,0,0]) cube([a,b,c+t]);
    
    /* outside 2 */
    color([1,0,0]) cube([b,a,c+t]);

    /* core */
    difference() {
        translate([t, t, t]) {
            color([1,0,0]) cube([t*2,t*2,c-t]);
        }
        translate([t*1.5, t*1.5, t]) {
            /* hole for bolt */
            color([1,1,1]) cylinder(c-t, 3, 3, false);
        }
    }
    difference() {
        a = t * 2;
        translate([a, t, t]) {
            color([0,1,0]) cube([t*2,t*2,c-t]);
        }
        /*
        translate([t*1.5, t*1.5, t]) {
            // hole for bolt
            color([1,1,1]) cylinder(c-t, 3, 3, false);
        }
        */
    }
    difference() {
        a = t * 2;
        translate([t, a, t]) {
            color([0,1,0]) cube([t*2,t*2,c-t]);
        }
        /*
        translate([t*1.5, t*1.5, t]) {
            // hole for bolt
            color([1,1,1]) cylinder(c-t, 3, 3, false);
        }
        */
    }
    
    /* inside 1 */
    translate([t*2, 0, t]) {
        color([1,1,0]) cube([a,b,c-t]);
    }

    /* inside 2 */
    translate([0, t*2, t]) {
        color([1,1,0]) cube([b,a,c-t]);
    }
    
}

// 1/4th inch ~= 6.35mm
corner(6.35);