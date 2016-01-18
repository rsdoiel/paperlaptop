/**
 * top.scad is part of Paper Laptop.
 * It describes a top of the lid of the laptop.
 *
 * @author R. S. Doiel, <rsdoiel@gmail.com>
 * copyright (c) 2016 all rights reserved
 * Released under a BSD 2-clause license
 */
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
/**
 * inside-keyboard.scad is part of Paper Laptop.
 * It describes the inside panel mount for keyboard,
 * trackpad, and any other input surface.
 *
 * @author R. S. Doiel, <rsdoiel@gmail.com>
 * copyright (c) 2016 all rights reserved
 * Released under a BSD 2-clause license
 */
module insideKeyboard(length, width) {
    /* main surface for keyboard mounts */
    color([0,0,1]) cube([length, width, 1]); 
    /* handle extension */
    difference() {
        translate([length/3, (width/5)*-1, 0]) {
            color([0,1,0]) cube([length/3, width/5, 1]);
        }    
        translate([(length/3)*1.15, (width/10)*-1, 0]) {
            //color([1,0,0]) 
            cube([(length/3)*0.75, width/10, 1]);
        }
    }
}

insideKeyboard(20, 10);/**
 * inside-screen.scad is part of Paper Laptop.
 * It describes the inner side of the lid holding
 * the LCD panel.
 *
 * @author R. S. Doiel, <rsdoiel@gmail.com>
 * copyright (c) 2016 all rights reserved
 * Released under a BSD 2-clause license
 */
module insideScreen(length, width) {
    translate([0, width, 0]) {
        mirror() {
            rotate(180) {
                /* main surface for keyboard mounts */
                color([0,0,1]) cube([length, width, 1]); 
                /* handle extension */
                difference() {
                    translate([length/3, (width/5)*-1, 0]) {
                        color([0,1,0]) cube([length/3, width/5, 1]);
                    }    
                    translate([(length/3)*1.15, (width/10)*-1, 0]) {
                        //color([1,0,0]) 
                        cube([(length/3)*0.75, width/10, 1]);
                    }
                }
            }
        }
    }
}

insideScreen(20, 10);
/**
 * side-back-bottom.scad is part of Paper Laptop.
 * It describes the bottom back side of the base.
 *
 * @author R. S. Doiel, <rsdoiel@gmail.com>
 * copyright (c) 2016 all rights reserved
 * Released under a BSD 2-clause license
 */
/**
 * side-back-top.scad is part of Paper Laptop.
 * It describes the top back  side of the lid.
 *
 * @author R. S. Doiel, <rsdoiel@gmail.com>
 * copyright (c) 2016 all rights reserved
 * Released under a BSD 2-clause license
 */
/**
 * side-front-bottom.scad is part of Paper Laptop.
 * It describes the bottom front side of the base.
 *
 * @author R. S. Doiel, <rsdoiel@gmail.com>
 * copyright (c) 2016 all rights reserved
 * Released under a BSD 2-clause license
 */
/**
 * side-front-top.scad is part of Paper Laptop.
 * It describes the top front side of the lid.
 *
 * @author R. S. Doiel, <rsdoiel@gmail.com>
 * copyright (c) 2016 all rights reserved
 * Released under a BSD 2-clause license
 */
/**
 * side-left-bottom.scad is part of Paper Laptop.
 * It describes the bottom left side of the base.
 *
 * @author R. S. Doiel, <rsdoiel@gmail.com>
 * copyright (c) 2016 all rights reserved
 * Released under a BSD 2-clause license
 */
/**
 * side-left-top.scad is part of Paper Laptop.
 * It describes the top left side of the lid.
 *
 * @author R. S. Doiel, <rsdoiel@gmail.com>
 * copyright (c) 2016 all rights reserved
 * Released under a BSD 2-clause license
 */
/**
 * side-right-bottom.scad is part of Paper Laptop.
 * It describes the bottom right side of the bad.
 *
 * @author R. S. Doiel, <rsdoiel@gmail.com>
 * copyright (c) 2016 all rights reserved
 * Released under a BSD 2-clause license
 */
/**
 * side-right-top.scad is part of Paper Laptop.
 * It describes the top right side panel of the laptop lid.
 *
 * @author R. S. Doiel, <rsdoiel@gmail.com>
 * copyright (c) 2016 all rights reserved
 * Released under a BSD 2-clause license
 */
