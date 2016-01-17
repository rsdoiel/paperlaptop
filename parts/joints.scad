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
 * CornerBasic() - corner joint without fastener hole
 */
module CornerBasic() {
    u = 3.175; // Unit is 3.175mm or 1/8th inch:w
    t = u*2; // Thickness of the 1/4th" Foamboard

    // Inner block, width, depth, height
    translate([0, t, t]) {
            color([1,0,0]) cube([25.4, 25.4, 25.4]); 
    }
    // Outer shell
    color([0,1,0]) cube([50.8,t,25.4+(2*t)]);
    translate([-t,t,0]) {
        color([0,1,0]) cube([t,50.8,25.4+(2*t)]);
    }
    // Outer corners
    translate([u*-1.25,u,0]) {
        color([0,1,0]) cylinder(h=25.4+(2*t),r=1.5*u,center=false);
    }
    translate([u*-1.25,u*18,0]) {
        color([0,1,0]) cylinder(h=25.4+(2*t),r=1.25*u,center=false);
    }
    translate([u*-1.25,u*12,0]) {
        color([0,1,0]) cylinder(h=25.4+(2*t),r=1.25*u,center=false);
    }
    translate([u*-1.25,u*6,0]) {
        color([0,1,0]) cylinder(h=25.4+(2*t),r=1.25*u,center=false);
    }

    translate([u*16,u*0.75,0]) {
        color([0,1,0]) cylinder(h=25.4+(2*t),r=1.25*u,center=false);
    }
    translate([u*10,u*0.75,0]) {
        color([0,1,0]) cylinder(h=25.4+(2*t),r=1.25*u,center=false);
    }
    translate([u*4,u*0.75,0]) {
        color([0,1,0]) cylinder(h=25.4+(2*t),r=1.25*u,center=false);
    }
    
    
    // Inner shell
    translate([t,2*t,t]) {
        color([0,1,0]) cube([50.8-t,t,25.4]);
        color([0,1,0]) cube([t,50.8-t,25.4]);
    }
}

//
// Corner() basic corner joint plus hole for fastener
//
module Corner() {
    difference() {
        u = 3.175;
        CornerBasic();
        // Add a hole for screw
        translate([12,18,0]) {
            color([0,0,1]) cylinder(h=25.4+(4*u),r=u,center=false);
        }
    }
}

Corner();