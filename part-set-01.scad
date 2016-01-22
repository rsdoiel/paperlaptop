/**
 * A collection of parts to print together.
 */
 include <joints.scad>
 
translate([10, 0, 0]) {
    Corner();
}
translate([82, 60, 0]) {
    rotate(180) {
        Corner();
    }
}
translate([10, 72, 0]) {
    Corner();
}
translate([82, 130, 0]) {
    rotate(180) {
        Corner();
    }
}
