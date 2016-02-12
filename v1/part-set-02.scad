/**
 * A collection of parts to print together.
 */
 include <joints.scad>
 
translate([10, 0, 0]) {
    End();
}
translate([100, 48, 0]) {
    rotate(180) {
        End();
    }
}

translate([60, 60, 0]) {
    Splice();
}
translate([60, 100, 0]) {
    Splice();
}