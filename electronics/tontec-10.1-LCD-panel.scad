/**
 * tontec-10.1-LCD-panel.scad is part of Paper Laptop.
 * It describes a the general dimensions of the LCD panel,
 * video card and control strip PCBs.
 *
 * General Specifications
 *
 * -Screen size:10.1 inches Display, ration:16:9/4:3 adjustable
 * -Resolution:1280×800 Pixels
 * -Outside dimension:228.6×149.2×2.39typ
 * -Display Area:216.96(H)×135.60(V) mm
 * -Display Component:Color TFT-LCD
 * -Brightness:350cd/m2
 * -Contrast Ratio:600:1
 * -Display Color :16.7M(6bits + Hi-FRC)
 * -Number of connection: 40 PIN LVDS
 * -Backlight: LED
 * -Consumption:6W-7W
 *
 * The five buttons are as follows: S1 = Power, S2=Menu/Select, S3=Up, S4=Down, S5=Video Source Select
 *
 * @author R. S. Doiel, <rsdoiel@gmail.com>
 * copyright (c) 2016 all rights reserved
 * Released under a BSD 2-clause license
 */
module tontec101panel() {
    color([0.5,1,0.5]) cube([228.6, 149.2,2.39]);
}

module tontec101videocard() {
  //FIXME: best guess, need to pickup a mm ruler.
  color([0.5,1,0.5]) cube([100,80,20]);
}

module tontec101controlcard() {
  //FIXME: best guess, need to pickup a mm ruler.
  color([0.5,1,0.5]) cube([100,20,20]);
}


tontec101panel();
translate([-100, 10, 10]) {
  tontec101videocard();
}
translate([-210, 10, 10]) {
    tontec101controlcard();
}
