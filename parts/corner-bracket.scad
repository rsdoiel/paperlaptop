/**
 * corner-bracket.scad is part of Paper Laptop.
 * It describes a corner joint for the laptop's sides 
 * and bottom.working sides, bottom and top.
 *
 * @author R. S. Doiel, <rsdoiel@gmail.com>
 * copyright (c) 2016 all rights reserved
 * Released under a BSD 2-clause license
 */

/*
 * Corner
 * @param t - thickness of sides to join
 */
module corner (t) {
    echo("thickness: ", t, "mm");
    a = t; 
    b = t*5;
    c = 30;

    /* baseplate */
    //color([a,0,0]) cube([b,b,a]);
    

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

    /* inside 1 */
    translate([t*2, 0, t]) {
        color([1,1,0]) cube([a,b,c-t]);
    }

    /* inside 2 */
    translate([0, t*2, t]) {
        color([1,1,0]) cube([b,a,c-t]);
    }
    
}

// Guessing fiber board is about 1/8th inch thick, 
// i.e. 9.525mm
corner(10);