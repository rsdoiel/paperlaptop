/**
 * Corner join for working sides to bottom
 *  (or top)
 * @author R. S. Doiel, <rsdoiel@gmail.com>
 * copyright (c) 2016 all rights reserved
 * Released under a BSD 2-clause license
 */

/*
 * Corner
 * @param w - the width, height and depth
 * @param t - thickness of sides to join
 */
module corner (w, t) {
    echo("width: ", w);
    echo("thickness: ", t);

    /* baseplate */
    color([1,0,0]) cube([10,10,1]);

    /* outside 1 */
    color([1,0,0]) cube([1,10,10]);
    
    /* outside 2 */
    color([1,0,0]) cube([10,1,10]);

    /* inside 1 */
    translate([t, 0, t]) {
        color([1,1,0]) cube([1,10,10-t]);
    }

    /* inside 2 */
    translate([0, t, t]) {
        color([1,1,0]) cube([10,1,10-t]);
    }
    
}

corner(1, 2);