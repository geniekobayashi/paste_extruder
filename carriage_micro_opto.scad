//
// PFCL25 motor extruder include file
//

include <configuration.scad>

width = 67;
height = carriage_height;

offset = 20;
cutout = 15+0.3;
middle = 2*offset - width/2;

module parallel_joints(reinforced) {
  difference() {
    union() {
      intersection() {
        cube([width, 20, 8], center=true);
        rotate([0, 90, 0]) cylinder(r=5, h=width, center=true);
      }
      intersection() {
        translate([0, 18, 4]) rotate([45, 0, 0])
          cube([width, reinforced, reinforced], center=true);
        translate([0, 0, 20]) cube([width, 35, 40], center=true);
      }
      translate([0, 8, 0]) cube([width, 16, 8], center=true);
    }
    rotate([0, 90, 0]) cylinder(r=1.25, h=80, center=true, $fn=12);

    for (x = [-offset, offset]) {
      translate([x, 6.6, 0])
        cylinder(r=cutout/2, h=100, center=true, $fn=36);
      translate([x, -3.8, 0])
        cube([cutout, 20, 100], center=true);
      //translate([x, 0, 0]) rotate([0, 90, 0]) rotate([0, 0, 30])
       // cylinder(r=3.3, h=19, center=true, $fn=6);
    }
    translate([0, 4, 0])
      cube([2*offset+7, 20, 100], center=true);
    //translate([0, 2, 0]) cylinder(r=middle, h=100, center=true);
    //translate([0, -8, 0]) cube([2*middle, 20, 100], center=true);
  }
}

module lm8uu_mount(d, h) {
  union() {
    difference() {
      intersection() {
        cylinder(r=11, h=h, center=true);
        translate([0, -8, 0]) cube([19, 13, h+1], center=true);
      }
      cylinder(r=d/2, h=h+1, center=true);
    }
  }
}

module belt_mount() {
  difference() {
    union() {
      difference() {
        translate([8, 2, 0]) cube([4, 13, height], center=true);
        for (z = [-3.5, 3.5])
          translate([8, 5, z])
            cube([5, 13, 3], center=true);
      }
      for (y = [1.5, 5, 8.5]) {
        translate([8, y, 0]) cube([4, 1.2, height], center=true);
      }
    }
  }
}

module carriage() {
  translate([0, 0, height/2]) 
  union() {
    for (x = [-30.15, 30.15]) {
      translate([x, 0, 0]) lm8uu_mount(d=15.4, h=24); // d=15 LM8UU
    }
    belt_mount();
    difference() {
      union() {
        translate([0, -5.6, 0])
          cube([50, 5, height], center=true);
        translate([0, -carriage_hinge_offset, -height/2+4])
          parallel_joints(16);
        // endstop column
        translate([15-3, -10-1.85, -height/2+4])
          cube([6, 10, 8], center=true);
        translate([15-3, -15.5-1.85, -height/2+4])
          intersection() {
            cube([6, 20, 8], center=true);
            rotate([0, 90, 0]) cylinder(r=5, h=6, center=true);
          }
      }
      // Screw hole for adjustable top endstop.
      translate([15-3, -16-1.85, -height/2+4])
        cylinder(r=1.25, h=20, center=true, $fn=12);
      for (x = [-30.15, 30.15]) {
        translate([x, 0, 0])
          cylinder(r=8, h=height+1, center=true);
        // Zip tie tunnels.
        for (z = [-height/2+4, height/2-4])
          translate([x, 0, z])
            cylinder(r=13, h=3, center=true);
      }
    }
  }
}

carriage();
//parallel_joints(0);

// Uncomment the following lines to check endstop alignment.
// use <idler_end.scad>;
// translate([0, 0, -20]) rotate([180, 0, 0]) idler_end();
