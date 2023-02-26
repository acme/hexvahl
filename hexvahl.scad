include <BOSL2/std.scad>

$fa = 1;
$fs = 0.4;

difference() {
  linear_extrude(height=100)
    hexagon(id=65, rounding=5);
  for (yoffset =[20, 50, 80]) {
    #up(yoffset) hexy();
  }
}

module hexy() {
  zrot(30)
    arc_copies(d=60, n=6)
    yrot(90)
    linear_extrude(height=5, scale=1.2)
    hexagon(id=22.5, rounding=1);
}