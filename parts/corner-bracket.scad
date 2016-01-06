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
    echo("thickness: ", t);
    a = t;
    b = t*10;
    c = t*20;

    /* baseplate */
    //color([a,0,0]) cube([b,b,a]);
    

    /* outside 1 */
    color([1,0,0]) cube([a,b,c]);
    
    /* outside 2 */
    color([1,0,0]) cube([b,a,c]);

    /* core */
    translate([t, t, t]) {
        color([1,0,0]) cube([t*2,t*2,c-t]);
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

corner(4);