/**
 * Corner join for working sides to bottom
 *  (or top)
 * @author R. S. Doiel, <rsdoiel@gmail.com>
 * copyright (c) 2016 all rights reserved
 * Released under a BSD 2-clause license
 */
cube([2,22,12]);
translate([4,2,2]) {
    cube([2,20,10]);
}
cube([20,2,12]);
translate([2,4,2]) {
    cube([18,2,10]);
}
translate([2,2,2]) {
    cube([2,2,10]);
}
translate([0,0,-2]) {
    cube([20,22,2]);
}
