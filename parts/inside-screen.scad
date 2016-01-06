/**
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
