/**
 * bottom.scad is part of Paper Laptop.
 * It describes lower surface of the base.
 *
 * @author R. S. Doiel, <rsdoiel@gmail.com>
 * copyright (c) 2016 all rights reserved
 * Released under a BSD 2-clause license
 */
 
/*
 * bottom - panel demisions for base.
 * @param length is he x value of base rectangle
 * @param width is the y value of the base rectangle
 */
module bottom(length, width) {
    color([0,0,1]) cube([length, width, 1]); 
}

bottom(20, 10, 1);
