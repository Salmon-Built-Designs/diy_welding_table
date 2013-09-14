/*
 Top Plate where the tools get fixed to
 */

height = 1000;
width = 300;
thickness = 2;
hole_radius = 10;
// This avoids some silly green on the cut operation
hole_height = thinkness + 2;

difference() {
  cube([ height, width, thickness]);
    for ( i = [40 : 100 : height - 20]) {
      for ( j = [40 : 100 : width - 20]) {
      // Move to minus one because
        translate([ i,j,-1]) {
          cylinder(15, hole_radius, hole_radius);
        }
      }
    }
}
