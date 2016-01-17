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
 * @param t is the thickness of the cardboard
 */
module corner (t) {
    a = t;
    b = t*10.0;// width, depth
    c = (t*2)+12.7;// height

}

// 1/4th inch ~= 6.35mm
corner(6.35);